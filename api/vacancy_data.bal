public isolated service class VacancyData {
    private Vacancy vacancy;

    isolated function init(string? name = null, int? vacancy_id = 0, Vacancy? vacancy = null) returns error? {
        if(vacancy != null) { // if vacancy is provided, then use that and do not load from DB
            self.vacancy = vacancy.cloneReadOnly();
            return;
        }

        string _name = "%" + (name ?: "") + "%";
        int id = vacancy_id ?: 0;

        Vacancy org_raw;
        if(id > 0) { // vacancy_id provided, give precedance to that
            org_raw = check db_client -> queryRow(
            `SELECT *
            FROM avinya_db.vacancy
            WHERE
                id = ${id};`);
        } else 
        {
            org_raw = check db_client -> queryRow(
            `SELECT *
            FROM avinya_db.vacancy
            WHERE
                name LIKE ${_name};`);
        }
        
        self.vacancy = org_raw.cloneReadOnly();
    }

    isolated resource function get name() returns string? {
        lock {
                return self.vacancy.name;
        }
    }

    isolated resource function get avinya_type() returns AvinyaTypeData|error? {
        int id = 0;
        lock {
            id = self.vacancy.avinya_type_id ?: 0;
            if( id == 0) {
                return null; // no point in querying if address id is null
            } 
        }
        
        return new AvinyaTypeData(id);
    }

    isolated resource function get description() returns string? {
        lock {
            return self.vacancy.description;
        }
    }

    isolated resource function get head_count() returns int? {
        lock {
            return self.vacancy.head_count;
        }
    }

    isolated resource function get evaluation_criteria() returns EvaluationCriteriaData[]|error? {
        // Get list of people in the organization
        stream<EvaluationCriteria, error?> evaluation_criteria;
        lock {
            evaluation_criteria = db_client->query(
                `SELECT *
                FROM avinya_db.evaluation_criteria
                WHERE id IN 
                (SELECT evaluation_criteria_id FROM vacancy_evaluation_criteria 
	                WHERE vacancy_id = ${self.vacancy.id});`
            );
        }

        EvaluationCriteriaData[] evaluationCriteriaData = [];

        check from EvaluationCriteria evaluation_criterion in evaluation_criteria
            do {
                EvaluationCriteriaData|error evaluationCriterionData = new EvaluationCriteriaData((), 0, evaluation_criterion);
                if !(evaluationCriterionData is error) {
                    evaluationCriteriaData.push(evaluationCriterionData);
                }
            };
        
        check evaluation_criteria.close();
        return evaluationCriteriaData;
    }
}