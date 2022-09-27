public distinct service class OrganizationData {
    private Organization organization;

    function init(string? name, int? organization_id) returns error? {
        Organization org_raw = check db_client -> queryRow(
            `SELECT *
            FROM avinya_db.organization
            WHERE
                id = ${organization_id}
                OR name_en = ${name};`
        );

        self.organization = org_raw.cloneReadOnly();
    }

    resource function get address() returns AddressData|error? {
        return new AddressData(self.organization.address_id);
    }

    resource function get phone() returns int {
        return self.organization.phone;
    }

    resource function get name() returns LocalizedName {
        return {
            "name_en": self.organization["name_en"],
            "name_si": <string>self.organization["name_si"],
            "name_ta": <string>self.organization["name_ta"]
        };
    }

    resource function get child_organizations() returns OrganizationData[]|error? {
        // Get list of child organizations
        stream<ParentChildOrganization, error?> child_org_ids = db_client->query(
            `SELECT *
            FROM avinya_db.parent_child_organization
            WHERE parent_org_id = ${self.organization.id}`
        );

        OrganizationData[] child_orgs = [];

        check from ParentChildOrganization pco in child_org_ids
            do {
                OrganizationData|error candidate_org = new OrganizationData((), pco.child_org_id);
                if !(candidate_org is error) {
                    child_orgs.push(candidate_org);
                }
            };

        return child_orgs;
    }

    resource function get parent_organizations() returns OrganizationData[]|error? {
        // Get list of child organizations
        stream<ParentChildOrganization, error?> parent_org_ids = db_client->query(
            `SELECT *
            FROM avinya_db.parent_child_organization
            WHERE parent_org_id = ${self.organization.id}`
        );

        OrganizationData[] parent_orgs = [];

        check from ParentChildOrganization pco in parent_org_ids
            do {
                OrganizationData|error candidate_org = new OrganizationData((), pco.parent_org_id);
                if !(candidate_org is error) {
                    parent_orgs.push(candidate_org);
                }
            };

        return parent_orgs;
    }
}