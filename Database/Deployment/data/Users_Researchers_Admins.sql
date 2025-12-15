-- ====================================================
-- Converted from SQL Server to MySQL
-- Target: Aiven MySQL Database
-- Charset: utf8mb4
-- ====================================================

USE Insight;
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Peter Long', 'petlong@resnetmail.com', 'User@123', 'Admin', NULL);
INSERT INTO Admin (Admin_ID, Level) VALUES (LAST_INSERT_ID(), 'Director');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Denise Murray', 'denisemurray3@quickmail.net', 'User@123', 'Admin', NULL);
INSERT INTO Admin (Admin_ID, Level) VALUES (LAST_INSERT_ID(), 'Lead');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Audrey Chavez', 'audchavez@intellimail.com', 'User@123', 'Admin', NULL);
INSERT INTO Admin (Admin_ID, Level) VALUES (LAST_INSERT_ID(), 'Director');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Marilyn Coleman', 'marilyncoleman68@scholarnet.co', 'User@123', 'Admin', NULL);
INSERT INTO Admin (Admin_ID, Level) VALUES (LAST_INSERT_ID(), 'Manager');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alexander Gray', 'alexandergray@innovatemail.co', 'User@123', 'Admin', NULL);
INSERT INTO Admin (Admin_ID, Level) VALUES (LAST_INSERT_ID(), 'Manager');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Bryan Dunn', 'bryandunn@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Ohio State University', 'Ethics', '2024-02-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ernest Kennedy', 'kennedyernest@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Artificial Intelligence', '2025-09-07');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Edward Mason', 'edwardmason36@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'MIT', 'Cognitive Psychology', '2021-01-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Audrey Fox', 'audfox@protonmail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Surgery', '2025-06-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alexander Ramirez', 'alexanderramirez@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Boston University', 'Inorganic Chemistry', '2022-11-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Theresa Sanchez', 'theresasanchez76@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Tsinghua University', 'Probability', '2021-09-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Taylor Jackson', 'jacksontaylor@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Cognitive Psychology', '2023-06-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kennedy Dunn', 'kennedydunn@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Georgetown University', 'Aerodynamics', '2022-07-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alyssa Anderson', 'alyanderson@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Biomedical Engineering', '2021-10-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Carolyn Rogers', 'carolynrogers@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Emory University', 'Political Science', '2022-05-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Harry Bradley', 'bradleyharry@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'Economics', '2021-11-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Cynthia Cox', 'cyncox@protonmail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Epidemiology', '2024-07-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jacqueline Fisher', 'jacquelinefisher@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Northwestern University', 'Wind Energy', '2023-07-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Philip Diaz', 'philipdiaz94@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Dartmouth College', 'Macroeconomics', '2021-04-18');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Arthur Matthews', 'artmatthews@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Caltech', 'Nanotechnology', '2025-04-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Shirley Foster', 'shifoster@scholarnet.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Pennsylvania State University', 'Cognitive Psychology', '2024-09-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Abigail Harrison', 'harrisonabigail@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'Probability', '2024-09-07');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dale Nelson', 'nelsondale@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'Natural Language Processing', '2021-12-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Annabelle Morgan', 'annabellemorgan85@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Cornell University', 'Molecular Biology', '2025-07-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kaylee Simpson', 'kayleesimpson@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'American Literature', '2024-07-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sofia Crawford', 'crawfordsofia@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Michigan State University', 'Metaphysics', '2023-01-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Wanda Young', 'youngwanda@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Duke University', 'Tissue Engineering', '2025-08-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Patrick Adams', 'adamspatrick@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Nanomaterials', '2021-07-13');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dale Jimenez', 'daljimenez@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Michigan State University', 'Data Science', '2023-06-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Roy Davis', 'roydavis2@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Caltech', 'Cardiology', '2023-10-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Travis Hill', 'trahill@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Minnesota', 'Biomedical Engineering', '2023-04-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Aaron Robinson', 'aaronrobinson@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Wisconsin Madison', 'Business Administration', '2021-08-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gerald Baker', 'bakergerald@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Yale University', 'Chemical Engineering', '2021-01-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Mia Henderson', 'hendersonmia@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Melbourne', 'Public Health', '2024-07-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jacob Peters', 'jacobpeters@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Boston University', 'Oncology', '2022-06-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Aubrey Ruiz', 'aubreyruiz@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'MIT', 'Nanomaterials', '2021-02-08');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jason Bell', 'jasonbell@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'American Literature', '2023-07-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dustin Young', 'youngdustin@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'Nanomaterials', '2025-08-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sofia Wagner', 'sofiawagner@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'Robotics', '2023-05-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Maya Fox', 'foxmaya@innovatemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Yale University', 'Ecology', '2024-02-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Isabella Morgan', 'isabellamorgan78@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Sociology', '2023-04-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jeremy Baker', 'bakerjeremy@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'Psychiatry', '2024-05-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Heather Perry', 'perryheather@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Psychiatry', '2025-04-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dale Knight', 'daleknight@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Washington', 'Cosmology', '2023-11-05');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Danielle Nguyen', 'daniellenguyen@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Dartmouth College', 'Aerospace Engineering', '2025-05-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Lillian Kennedy', 'lilliankennedy13@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'ETH Zurich', 'Oncology', '2022-10-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Victor Owens', 'victorowens16@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Nanomaterials', '2021-03-30');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Katherine Carpenter', 'carpenterkatherine@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Berkeley', 'International Relations', '2021-08-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alyssa Chavez', 'alyssachavez89@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'Oncology', '2022-06-13');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Violet Boyd', 'vioboyd@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'MIT', 'History', '2022-11-26');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Theresa Walker', 'walkertheresa@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Washington University in St. Louis', 'Macroeconomics', '2023-07-07');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alexander Evans', 'aleevans@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Mathematics', '2021-12-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Douglas Carpenter', 'carpenterdouglas@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Ohio State University', 'Medicine', '2023-07-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dale Cruz', 'dalcruz@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Chemistry', '2021-07-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Marie Bailey', 'baileymarie@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Berkeley', 'Physics', '2023-04-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Larry White', 'whitelarry@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Bioinformatics', '2021-02-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kelly Tucker', 'tuckerkelly@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Pennsylvania State University', 'Machine Learning', '2022-04-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Arthur Tucker', 'tuckerarthur@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Washington', 'Bioinformatics', '2024-02-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jerry Tucker', 'jertucker@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Social Psychology', '2021-12-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ellie Hudson', 'elliehudson@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Michigan State University', 'Nanotechnology', '2021-02-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('William Parker', 'wilparker@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Pennsylvania State University', 'Education', '2021-06-14');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Lillian Price', 'pricelillian@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Toronto', 'Education', '2025-02-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kenneth Woods', 'kennethwoods39@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Melbourne', 'Sustainable Development', '2025-10-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Helen Bryant', 'helenbryant25@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'Mechanical Engineering', '2025-09-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Anthony Burns', 'anthonyburns@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Climate Change', '2023-11-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Russell Sims', 'russellsims11@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'American Literature', '2024-01-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Erin Miller', 'millererin@innovatemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'Computer Vision', '2025-05-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Emily Cook', 'cookemily@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'Nanomaterials', '2025-02-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Matthew Cox', 'matthewcox@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Machine Learning', '2023-04-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Mia Reyes', 'miareyes@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Mathematics', '2023-01-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Steven Bennett', 'stevenbennett5@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Virginia', 'Neuroscience', '2023-12-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Victoria Sims', 'victoriasims21@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'Law', '2022-06-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ann Jordan', 'jordanann@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Duke University', 'Psychiatry', '2021-03-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Austin Riley', 'austinriley@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Cambridge', 'Particle Physics', '2024-06-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Adam Murphy', 'adamurphy@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'Pediatrics', '2022-06-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sydney King', 'sydking@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Sydney', 'Molecular Biology', '2023-07-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Nathan Boyd', 'nathanboyd46@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Johns Hopkins University', 'Tissue Engineering', '2022-05-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Howard Cruz', 'howardcruz@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Nanotechnology', '2021-09-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ralph Edwards', 'edwardsralph@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Modern History', '2021-10-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Madeline Diaz', 'diazmadeline@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'Ancient History', '2024-02-18');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Hannah Graham', 'hangraham@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Boston University', 'Health Policy', '2021-01-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Peyton Willis', 'peytonwillis@intellimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Dartmouth College', 'Climate Change', '2024-02-18');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kelly Burns', 'kellyburns@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Peking University', 'Environmental Science', '2021-10-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Penelope Ramos', 'ramospenelope@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Texas Austin', 'Bioinformatics', '2021-04-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ernest Powell', 'ernpowell@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Bioinformatics', '2021-01-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sharon Sullivan', 'sullivansharon@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Cambridge', 'Geometry', '2022-10-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Albert Foster', 'albertfoster@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Dartmouth College', 'Marketing', '2021-03-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Emily Peterson', 'emipeterson@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Duke University', 'Neurology', '2022-10-11');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Scarlett Ramos', 'scarlettramos@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Algebra', '2024-10-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Christina Morales', 'moraleschristina@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Artificial Intelligence', '2024-09-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Khloe Cook', 'khloecook49@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Berkeley', 'Data Science', '2024-10-14');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Henry Collins', 'henrycollins@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Georgetown University', 'Aerodynamics', '2023-10-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Frances White', 'frawhite@protonmail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Virginia', 'Wind Energy', '2024-03-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Michelle Stevens', 'michellestevens@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of British Columbia', 'Astrophysics', '2023-08-18');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Juan Henderson', 'juanhenderson66@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Texas Austin', 'Algebra', '2024-07-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Trinity Myers', 'trimyers@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Neuroscience', '2025-05-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Aaron Hayes', 'aaronhayes9@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'British Literature', '2021-04-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gabriella Bryant', 'gabriellabryant96@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Dartmouth College', 'Linguistics', '2024-03-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Amber Carter', 'ambcarter@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Johns Hopkins University', 'Robotics', '2023-12-30');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Nicholas Thompson', 'nicholasthompson@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'Nanotechnology', '2023-11-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Michael Bennett', 'micbennett@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Washington', 'Social Psychology', '2021-05-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Travis Gomez', 'travisgomez2@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of British Columbia', 'Cell Biology', '2024-11-14');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kenneth Smith', 'kennethsmith@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Caltech', 'Cosmology', '2023-06-26');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kennedy Nguyen', 'kennedynguyen@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'Natural Language Processing', '2025-06-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gary Torres', 'garytorres74@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Melbourne', 'Tissue Engineering', '2024-05-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Teresa Simpson', 'tersimpson@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Tsinghua University', 'Law', '2022-02-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Steven Rodriguez', 'sterodriguez@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Northwestern University', 'Bioinformatics', '2025-08-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('George Shaw', 'shawgeorge@innovatemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'MIT', 'Metaphysics', '2022-08-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Savannah Harris', 'savannahharris@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Harvard University', 'Anthropology', '2021-10-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Robert Hill', 'roberthill37@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Virginia', 'Biomedical Engineering', '2024-08-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Lucy Morales', 'lucymorales@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of British Columbia', 'Medicine', '2021-08-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Abigail West', 'abigailwest@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Boston University', 'Solar Energy', '2024-06-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Judith Adams', 'judithadams@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Georgetown University', 'Cognitive Psychology', '2021-05-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sharon Duncan', 'sharonduncan50@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Texas Austin', 'Law', '2025-06-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Anthony Watson', 'antwatson@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Pennsylvania State University', 'Inorganic Chemistry', '2025-11-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Aria Richardson', 'aririchardson@protonmail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University College London', 'Astrophysics', '2024-09-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alice Price', 'aliprice@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Cosmology', '2022-10-30');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Raymond Lopez', 'raymondlopez@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Cornell University', 'Thermodynamics', '2024-03-13');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gabriella Sullivan', 'sullivangabriella@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Public Health', '2021-05-05');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jane Weaver', 'janweaver@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Computer Vision', '2022-08-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Rebecca Allen', 'rebeccaallen@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Northwestern University', 'Neuroscience', '2023-03-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Madelyn Perry', 'madperry@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'MIT', 'Renewable Energy', '2025-03-13');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Scott Morales', 'scottmorales32@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Yale University', 'Biology', '2023-11-22');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('George Bennett', 'georgebennett@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Electrical Engineering', '2024-09-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Adam Carter', 'adamcarter29@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Emory University', 'Robotics', '2021-11-25');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Will Hawkins', 'wilhawkins@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'Natural Language Processing', '2022-03-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Todd Bennett', 'toddbennett75@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'Process Engineering', '2024-07-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Roger Dunn', 'rogerdunn@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of British Columbia', 'Medicine', '2024-04-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Addison Jenkins', 'addisonjenkins90@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Neuroscience', '2023-04-22');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Amelia Mcdonald', 'amemcdonald@scholarnet.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Wisconsin Madison', 'Machine Learning', '2024-10-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Arthur Jimenez', 'jimenezarthur@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Cornell University', 'Civil Engineering', '2024-03-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jack Elliott', 'elliottjack@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Berkeley', 'Philosophy', '2021-11-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jonathan Gordon', 'jongordon@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Berkeley', 'Psychology', '2025-12-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jack Walker', 'jacwalker@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Cambridge', 'Law', '2022-12-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alana Russell', 'russellalana@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Texas Austin', 'Cell Biology', '2025-02-26');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Roy Cruz', 'roycruz@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Computer Vision', '2022-01-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jason Tucker', 'jasontucker@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Rice University', 'Astrophysics', '2021-04-30');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Teresa Riley', 'teresariley@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'New York University', 'Business Administration', '2022-06-14');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Zoe Sullivan', 'sullivanzoe@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Emory University', 'Molecular Biology', '2024-01-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Norman Ruiz', 'ruiznorman@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University College London', 'Neuroscience', '2025-03-26');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Madelyn Reed', 'madreed@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Wisconsin Madison', 'Astrophysics', '2021-02-11');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Keith Dunn', 'dunnkeith@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University College London', 'Calculus', '2022-12-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Zoey Carroll', 'zoecarroll@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Nanomaterials', '2021-09-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Diana Berry', 'diaberry@innovatemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Michigan', 'Nanotechnology', '2025-06-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Raymond Weaver', 'weaverraymond@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of British Columbia', 'Health Policy', '2025-02-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Audrey Ramos', 'audreyramos43@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Minnesota', 'Electrical Engineering', '2024-02-05');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Nicole Wagner', 'nicolewagner@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Columbia University', 'Physics', '2021-09-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Brian Ramos', 'briramos@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Inorganic Chemistry', '2025-04-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Carl Wallace', 'carwallace@innovatemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Calculus', '2021-06-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jesse Long', 'jesselong15@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Tsinghua University', 'Data Science', '2023-12-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gerald Reed', 'reedgerald@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Cornell University', 'Metaphysics', '2025-10-07');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Justin Thomas', 'thomasjustin@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Georgetown University', 'Operations Management', '2021-12-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Amber Howard', 'amberhoward51@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Washington', 'Infectious Diseases', '2024-07-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sophia Cruz', 'sopcruz@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'Circuits', '2021-12-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Michael Hayes', 'michaelhayes56@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Texas Austin', 'Organic Chemistry', '2025-09-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kyle Daniels', 'kyldaniels@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Toronto', 'Nanomaterials', '2023-10-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Bruce Lee', 'leebruce@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Nanomaterials', '2024-01-13');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Henry Rivera', 'henrivera@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Rice University', 'International Relations', '2022-05-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Elijah Mills', 'elimills@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Emory University', 'Solar Energy', '2022-04-25');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Janice Henry', 'janhenry@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Sydney', 'Physics', '2022-11-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Penelope Bennett', 'penelopebennett@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Wisconsin Madison', 'Psychiatry', '2024-01-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Theresa Morales', 'moralestheresa@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Statistics', '2024-06-26');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Lillian Robertson', 'robertsonlillian@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'Health Policy', '2022-09-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Willie Clark', 'wilclark@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Finance', '2025-11-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Athena Young', 'athenayoung@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Rice University', 'Metaphysics', '2025-10-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sara Martin', 'saramartin@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Bioinformatics', '2023-03-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jasmine Owens', 'jasmineowens@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'ETH Zurich', 'Nanotechnology', '2023-02-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Nathan Ramos', 'ramosnathan@innovatemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Washington University in St. Louis', 'History', '2024-12-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Roger Murphy', 'murphyroger@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Washington University in St. Louis', 'History', '2025-11-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Mark Sanchez', 'sanchezmark@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Cambridge', 'Ethics', '2021-05-13');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Anthony Ferguson', 'anthonyferguson96@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Cognitive Psychology', '2023-06-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Philip Olson', 'olsonphilip@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Sociology', '2025-10-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Eugene Russell', 'eugenerussell94@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Wisconsin Madison', 'Nanotechnology', '2024-07-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Riley Daniels', 'rileydaniels@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Evolutionary Biology', '2025-06-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dennis Taylor', 'taylordennis@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Operations Management', '2023-03-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gabriella Williams', 'williamsgabriella@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'Pediatrics', '2025-05-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jacqueline Hamilton', 'hamiltonjacqueline@protonmail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Cornell University', 'Cognitive Psychology', '2022-12-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Claire Wagner', 'clairewagner@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Algebra', '2025-11-07');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Caroline Powell', 'carpowell@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Virginia', 'Nanomaterials', '2022-10-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ryan Dixon', 'dixonryan@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Cambridge', 'Metaphysics', '2022-03-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ava Daniels', 'avadaniels@intellimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Melbourne', 'Modern History', '2024-08-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kylie Cook', 'kylcook@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Texas Austin', 'Statistics', '2022-01-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Diane White', 'whitediane@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'Data Science', '2022-05-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ruby Chavez', 'rubychavez91@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Duke University', 'Materials Science', '2021-02-13');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jonathan Weaver', 'jonathanweaver91@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Wind Energy', '2024-06-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Harold Coleman', 'colemanharold@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'Tissue Engineering', '2023-02-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Doris Griffin', 'dorisgriffin6@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Imperial College London', 'Civil Engineering', '2021-04-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Frank Gomez', 'gomezfrank@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Michigan State University', 'Ethics', '2021-03-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Joseph Mcdonald', 'mcdonaldjoseph@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Washington', 'Infectious Diseases', '2023-02-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Logan Morales', 'loganmorales96@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Rice University', 'Economics', '2024-11-12');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Craig Wells', 'crawells@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Georgetown University', 'Public Health', '2021-08-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Wayne Myers', 'myerswayne@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Stanford University', 'History', '2022-01-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Joe Lopez', 'joelopez78@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Stanford University', 'Linguistics', '2023-05-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jonathan Martin', 'jonmartin@institutemail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Physical Chemistry', '2024-06-07');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jean Gutierrez', 'jeangutierrez81@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University College London', 'Climate Change', '2021-08-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Russell Nelson', 'russellnelson26@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'History', '2024-11-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Daniel Stephens', 'danielstephens@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Virginia', 'Chemistry', '2024-08-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sophia Tucker', 'tuckersophia@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'Biomedical Engineering', '2025-06-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Frances Wallace', 'frawallace@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Process Engineering', '2025-05-05');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ryan Collins', 'ryancollins@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Imperial College London', 'Genetics', '2021-12-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Olivia Rivera', 'olirivera@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Washington', 'Electrical Engineering', '2024-12-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Victor Diaz', 'victordiaz@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Johns Hopkins University', 'Conservation Biology', '2024-10-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Allison Willis', 'allisonwillis43@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Columbia University', 'Microeconomics', '2022-07-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Travis Franklin', 'franklintravis@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Columbia University', 'Neuroscience', '2025-08-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jane Shaw', 'janshaw@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Peking University', 'Ethics', '2023-07-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Rose Reed', 'rosereed67@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Johns Hopkins University', 'Robotics', '2021-08-22');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Wanda Nichols', 'wannichols@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Minnesota', 'Circuits', '2025-10-04');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Julia Nelson', 'julnelson@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Washington University in St. Louis', 'Geometry', '2023-08-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Shawn Jenkins', 'jenkinsshawn@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Imperial College London', 'Wind Energy', '2024-03-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Juan Daniels', 'danielsjuan@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of British Columbia', 'Nanotechnology', '2024-02-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Marcus Warren', 'warrenmarcus@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Georgetown University', 'Aerospace Engineering', '2024-10-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ellie Barnes', 'barnesellie@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Columbia University', 'Bioinformatics', '2025-07-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Tyler Jordan', 'tyljordan@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Pennsylvania', 'Medicine', '2021-07-05');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Samantha Perez', 'samanthaperez33@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Solar Energy', '2024-08-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Erin Cruz', 'cruzerin@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of North Carolina Chapel Hill', 'Probability', '2023-11-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Craig Reyes', 'reyescraig@innovatemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'ETH Zurich', 'Public Health', '2023-04-11');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Paige Foster', 'paigefoster45@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'British Literature', '2023-07-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dustin Price', 'pricedustin@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Johns Hopkins University', 'Neuroscience', '2024-04-06');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gregory Allen', 'gregoryallen16@protonmail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Chicago', 'Artificial Intelligence', '2021-05-20');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Caroline Sullivan', 'carolinesullivan90@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'Mathematics', '2022-05-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alana Perkins', 'alanaperkins@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Pennsylvania State University', 'Electrical Engineering', '2024-10-22');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sofia Hunter', 'huntersofia@sciencemail.edu', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Johns Hopkins University', 'Marketing', '2021-10-23');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Zoe Ross', 'zoeross@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Cambridge', 'Archaeology', '2023-07-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ronald Mcdonald', 'ronaldmcdonald69@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Michigan', 'Civil Engineering', '2023-04-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Howard Bryant', 'howardbryant28@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Boston University', 'Literature', '2024-07-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ernest Smith', 'smithernest@geniusmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'Materials Science', '2025-06-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Megan Patel', 'meganpatel69@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Duke University', 'Solar Energy', '2025-01-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Joe Lawrence', 'joelawrence@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'Neuroscience', '2021-09-22');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Frances Mendoza', 'framendoza@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Wind Energy', '2022-10-05');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Anna Walker', 'annawalker16@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Texas Austin', 'Linguistics', '2021-02-26');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Amber Hamilton', 'amberhamilton25@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Georgetown University', 'Conservation Biology', '2021-06-14');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Audrey Weaver', 'audreyweaver@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Texas A&M University', 'Modern History', '2024-11-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Christian Riley', 'chrriley@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Peking University', 'Neuroscience', '2025-07-06');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Zachary Pierce', 'zacpierce@clevermail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Michigan State University', 'Molecular Biology', '2025-10-11');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Aurora Simmons', 'aursimmons@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Cornell University', 'Ethics', '2024-12-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ellie Powell', 'elliepowell@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Melbourne', 'Finance', '2022-08-17');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Roger Harris', 'rogerharris51@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'National University of Singapore', 'Education', '2024-05-19');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jasmine Reynolds', 'reynoldsjasmine@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'MIT', 'Archaeology', '2024-03-30');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Paige Robinson', 'paigerobinson@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Political Science', '2022-04-27');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Dustin Davis', 'dustindavis24@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Tsinghua University', 'Archaeology', '2023-10-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Teresa Hughes', 'teresahughes@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Boston University', 'Circuits', '2022-02-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Chloe Stone', 'stonechloe@knowledgemail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Columbia University', 'Physics', '2024-05-30');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Anthony Stewart', 'antstewart@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Vanderbilt University', 'Natural Language Processing', '2024-12-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Lily Lewis', 'lilylewis64@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Washington University in St. Louis', 'Cosmology', '2021-09-11');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Julia Myers', 'juliamyers74@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'International Relations', '2021-09-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Ruby Henry', 'rubyhenry28@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Dartmouth College', 'Natural Language Processing', '2023-09-05');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Carolyn Coleman', 'carolyncoleman@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Organic Chemistry', '2022-04-08');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Alexa Thompson', 'alethompson@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'New York University', 'Solar Energy', '2023-11-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Raymond Kelly', 'raykelly@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Washington', 'Infectious Diseases', '2024-12-02');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Shawn Lewis', 'shalewis@labmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Florida', 'Surgery', '2021-10-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jerry Hill', 'jerryhill92@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'Composite Materials', '2021-09-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Nathan Wilson', 'nathanwilson69@quickmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Tsinghua University', 'Physics', '2024-04-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Craig Cole', 'cracole@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University College London', 'Mechanical Engineering', '2022-08-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Katherine Rose', 'katherinerose@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'International Relations', '2021-11-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Danielle Taylor', 'danielletaylor35@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Cornell University', 'American Literature', '2021-10-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Kelly Hamilton', 'kelhamilton@scholarnet.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of California Los Angeles', 'Astrophysics', '2022-02-11');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Larry Coleman', 'larrycoleman81@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'ETH Zurich', 'Anthropology', '2022-09-15');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('George Anderson', 'geoanderson@exploremail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Harvard University', 'Nanotechnology', '2023-04-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Roy West', 'roywest@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Electrical Engineering', '2022-01-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Sophia Kim', 'kimsophia@intellimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Rice University', 'Natural Language Processing', '2022-12-18');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jonathan Rose', 'jonathanrose@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Melbourne', 'Biology', '2023-04-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Austin Parker', 'ausparker@academiamail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Oxford', 'Algebra', '2023-08-18');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jacob Nelson', 'jacobnelson@intellimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Virginia', 'Business Administration', '2024-02-21');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Reagan Daniels', 'reagandaniels63@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Data Science', '2021-10-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Jack Sanchez', 'jacsanchez@unimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Michigan', 'History', '2025-09-14');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Nathan King', 'kingnathan@brainymail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Harvard University', 'Machine Learning', '2023-10-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Steven White', 'stevenwhite44@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Ohio State University', 'Chemical Engineering', '2021-03-09');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Isabella Ramos', 'isabellaramos@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'Cosmology', '2021-07-29');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Teresa Gordon', 'tergordon@discovermail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'ETH Zurich', 'Biology', '2023-02-16');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Joe Parker', 'joeparker@thinkmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Illinois Urbana-Champaign', 'Environmental Science', '2024-07-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Anthony Hayes', 'anthayes@fastmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Tsinghua University', 'Mathematics', '2021-05-18');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Peter Cook', 'petcook@smartmail.net', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of British Columbia', 'Epidemiology', '2025-01-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Richard Gonzales', 'gonzalesrichard@wisemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Columbia University', 'Conservation Biology', '2024-05-24');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Aaliyah Hamilton', 'aalhamilton@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Oncology', '2025-02-11');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Harry Garcia', 'harrygarcia4@outlookmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Tokyo', 'Structural Engineering', '2025-04-28');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Vincent Cruz', 'cruzvincent@intellimail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Northwestern University', 'Particle Physics', '2025-07-31');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Norman Warren', 'warrennorman@researchmail.org', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Princeton University', 'Astrophysics', '2025-03-03');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Craig Sims', 'craigsims@resnetmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'University of Virginia', 'Wind Energy', '2025-03-08');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Gregory Bryant', 'grebryant@scholarnet.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Johns Hopkins University', 'Solar Energy', '2025-11-10');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Michael Griffin', 'micgriffin@sharpemail.co', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Purdue University', 'Algebra', '2021-03-01');

INSERT INTO [User] (Name, Email, Password, Role, Photo) VALUES ('Harold Roberts', 'robertsharold@brightmail.com', 'User@123', 'Researcher', NULL);
INSERT INTO Researcher (Researcher_ID, Affiliation, Specialization, Join_Date) VALUES (LAST_INSERT_ID(), 'Boston University', 'Materials Science', '2024-05-30');
