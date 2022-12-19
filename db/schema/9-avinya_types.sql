USE avinya_db;
INSERT INTO `avinya_type` (id, active, global_type, name, foundation_type, focus, level) VALUES (1,1,'Organization','Foundatio, The Super Parent Organization',NULL,NULL,1000),(2,1,'Organization','Avinya Acadamy School',NULL,NULL,500),(3,1,'Team','Advisors Team','Advisors',NULL,400),(4,1,'Team','Executive Team','Executive',NULL,300),(5,1,'Team','Technology Team','Technology',NULL,250),(6,1,'Team','Team of educators','Educator',NULL,250),(7,1,'Team','Team who handles operations','Operations',NULL,250),(8,1,'Team','HR Team','HR',NULL,250),(9,1,'Team','Foundation Program','Educator','Foundation',200),(10,1,'Team','Vocational IT','Educator','Vocational-IT',200),(11,1,'Team','Vocational Healthcare','Educator','Vocational-Healthcare',200),(12,1,'Team','Vocational Hospitality','Educator','Vocational-Hospitality',200),(13,1,'Team','Shool Operations','Operations','Operations',250),(14,1,'Employee','Executive Director','Executive',NULL,1000),(15,1,'Employee','CTO','Technology',NULL,900),(16,1,'Employee','Head - Foundation Program','Educator','Foundation',800),(17,1,'Employee','Head - IT','Educator','Vocational-IT',800),(18,1,'Employee','Head - Healthcare','Educator','Vocational-Healthcare',800),(19,1,'Employee','Head - Hospitality','Educator','Vocational-Hospitality',800),(20,1,'Employee','Head - Operations','Operations','Operations',800),(21,1,'Employee','Head - HR','HR','HR',800),(22,1,'Employee','Head - School Operations','Operations','Operations',700),(23,1,'Employee','Strategy and Technology Consultant','Technology',NULL,700),(24,1,'Employee','Software Engineer','Technology','Technology',200),(25,1,'Employee','Educator - Foundation Program','Educator','Foundation',500),(26,1,'applicant','student-applicant','student','empower',0);

INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Avinya Board of Directors', 'foundation-bod', 'team', null, null, 12000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Avinya Foundation', 'foundation', 'team', 'leadership', null, 10000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Technology Team', 'technology-team', 'team', 'leadership', 'technology', 9000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Empower Curriculum Team', 'empower-curriculum-team', 'team', 'leadership', 'empower', 8000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Operations Team', 'operations-team', 'team', 'leadership', 'operations', 9000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Avinya Academies', 'avinya-academies', 'team', null, null, 4000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Avinya Academy - Bandaragama', 'avinya-single-academy', 'team', null, null, 3000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('AA Bandaragama - Educators, Bootcamp Program, Vocational Program(s)', 'academy-team', 'team', 'academic', null, 2000);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Bootcamp Teacher Job Applicant', 'bootcamp-job-applicant', 'applicant', 'educator', 'empower', 0);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Bootcamp Applicant', 'student-applicant', 'applicant', 'student', 'empower', 0);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Empower Student', 'empower-student', 'customer', 'student', 'empower', 500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Parent of Bootcamp Applicant', 'empower-parent-applicant', 'applicant', 'parent', 'empower', 0);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Parent of Empower Student', 'parent-of-empower-student', 'customer', 'parent', 'empower', 500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Guardian of Empower Student', 'guardian-of-empower-student', 'customer', 'guardian', 'empower', 500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Foundation-Level Employee', 'foundation-employee', 'employee', 'leadership', null, 8500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Bootcamp Teacher', 'bootcamp-teacher', 'employee', 'educator', 'empower', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Campus Lead', 'academy-staff', 'employee', 'staff', 'operations', 2500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Campus Operations Associate', 'academy-operations-associate', 'employee', 'staff', 'operations', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('IT Vocational Teacher', 'it-vocational-teacher', 'employee', 'educator', 'it', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Hospitality Vocational Teacher', 'hospitality-vocational-teacher', 'employee', 'educator', 'hospitality', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Healthcare Vocational Teacher', 'healthcare-vocational-teacher', 'employee', 'educator', 'healthcare', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Lakshman', 'sinhala-communicator', 'consultant', 'leadership', 'marketing', 4500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Dan', 'architect', 'consultant', 'leadership', null, 4500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Sampath', 'architect-prospect', 'volunteer', 'leadership', null, 3500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Rukmal', 'consultant-tech', 'consultant', 'leadership', 'technology', 8500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Samisa', 'cto', 'employee', 'leadership', 'technology', 9500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Dee', 'bootcamp-head', 'employee', 'leadership', 'empower', 9500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Anju', 'ed', 'employee', 'leadership', null, 10500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Jivaka', 'cfo-advisor', 'consultant', 'leadership', 'finance', 9500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Sanjiva', 'board-chairman', 'director', 'leadership', null, 11500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Mrs. Fernando', 'advisory-board-member', 'advisor', 'leadership', null, 10500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Software Engineer 1', 'foundation-software-engineers', 'employee', 'leadership', 'technology', 4500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Software Engineering Intern', 'foundation-software-interns', 'employee', 'leadership', 'technology', 3500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Indrajit Coomaraswamy', 'board-member', 'director', 'leadership', null, 10500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Law Office', 'lawyers', 'consultant', 'leadership', 'operations', 4500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Security Officer (on campus)', 'academy-security-contractor', 'contractor', 'support', 'security', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Cafeteria Staff', 'cafeteria-contractor', 'contractor', 'support', 'cafeteria', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Janitorial', 'janitor-contractor', 'contractor', 'support', 'janitor', 1500);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Parent-Teacher Meeting', 'parent-teacher-meeting', 'meeting', 'parent', 'empower', 750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Teacher-Student One-on-One', 'teacher-student-one-on-one', 'meeting', 'student', 'empower', 1750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Teacher-Teacher Meeting', 'teacher-teacher-meeting', 'meeting', 'teacher', 'empower', 2750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Class teaching session', 'pcti', 'meeting', 'academic', 'empower', 1750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Class discussion session', 'class-tutorial', 'meeting', 'academic', 'empower', 1750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Class presentation session', 'class-presentation', 'meeting', 'academic', 'empower', 1750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Group meeting', 'student-group-meeting', 'meeting', 'student', 'empower', 1750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Group project', 'group-project', 'meeting', 'student', 'empower', 1750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Academic Day', 'school-day', 'meeting', 'academic', null, 3750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Vacation', 'vacation-day', 'meeting', 'vacation', null, 3750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Tea', 'tea-break', 'meeting', 'vacation', 'empower', 2750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Lunch', 'lunch-break', 'meeting', 'vacation', 'empower', 2750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Breakfast', 'breakfast-break', 'meeting', 'vacation', 'empower', 2750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Homeroom', 'homeroom', 'meeting', 'academic', 'homeroom', 1750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('Teacher Foundation Meeting', 'teacher-foundation-meeting', 'meeting', 'leadership', 'empower', 2750);
INSERT INTO avinya_type (description, name, global_type, foundation_type, focus, level) VALUES ('unassigned', 'unassigned', 'unassigned', 'unassigned', 'unassigned', 0);