CREATE TABLE internship
(
  employer TEXT,
  title TEXT,
  location TEXT,
  eduRequirement TEXT,
  ageRequirement INTEGER,
  datePosted DATE,
  duration TEXT, 
  description TEXT,
  deadline TEXT,
  isPaid BOOLEAN,
  salary INTEGER
);

INSERT INTO internship values
--1st Internship
('• Microsoft', 'Reseach Intern - Cloud AI System', 'Sunnyvale, CA', 'Must be currently enrolled in a PhD program in Computer Science or Electrical engineering. Must have at least 1 year of experience in conducting research, writing peer-reviewed publications and software development', 18, date('2022-05-07'), '12 weeks', 'Our Cloud AI System and Technology teams innovative solutions are used to build and optimize the software/hardware codesign of accelerators that power some of Microsoft’s most important and strategic projects in the cloud. As an intern, you would work with a cross-discipline team of highly capable and motivated people in the Cloud Artificial Intelligence Systems and Technology (CAST) Group.', 'June 30, 2022', false, 0),
--2nd Internship
('• Signify', 'Deep Learning Research Engineering Intern', 'Ontario, CA', 'A graduate-level student in computer science, engineering, or other related disciplines with the following skills: Experience with end to end big data analytics infrastructure pipeline development in AWS or any cloud provider', 18, date('2022-05-19'), '12 weeks', 'We are looking for technical professionals who will take our innovations and help us invent the future of lighting.These internships are a part of Signify’ s Research team located in Burlington, MA and is considered a center of excellence on Artificial Intelligence and Machine learning Innovation for Signify. The team works together with the Signify global Research, businesses and functions on AI/ML.', 'No Deadline', false, 0),
--3rd Internship
('• Tesla','Tech Trainee (Automotive Service Internship)', 'Temecula, CA','High School Diploma or GED, Must be at least 18 years of age, Valid driver’s license, clean driving record and insurable', 21, date('2022-05-04'), 'N/A', 'As a Tech Trainee you are working on one of the most progressive vehicles in the world. This position is customer facing, so solid customer service skills combined with exceptional “hands on” technical ability go hand in hand. This position is located at the service center.', 'No Deadline', false, 0),
--4th Internship
('• NASA', 'Fall 2022 Mechanical Engineering Co-Op Intern', 'Pasadena, CA', 'Must be currently enrolled in a college or university pursuing a Bachelor’s, Master’s, or PhD in a technical or engineering major related to work assignment in Aerospace Engineering', 21, date('2022-05-09'), 'Must have the ability to take off of school for the program and be able to work (40 hours/week) for a period of at least 3+ months', 'You will partner with lead engineers to work on projects like JPL’s spacecrafts, science instruments, mission control systems, and science analysis pipelines', 'No Deadline', false, 0),
--5th Internship
('• Nimble Robotics', 'Operations Engineering Intern', 'Perris, CA', 'Open to all majors', 0, date('2022-05-12'), 'Full time: 30-40 hours per week', 'Main responsibilities will be supervising the operations of our robot fleet, troubleshooting issues as they arise, training on-site staff, and identifying areas for both operational and technical improvements', 'No Deadline', true, 20),
--6th Internship
('• NASA', 'Robotics Engineer II', 'Pasadena, CA', 'Bachelors degree in Mechanical Engineering or related subject area with a minimum of 3 years of related experience', 21, date('2022-05-10'),'Must have the ability to take off of school for the program and be able to work (40 hours/week) for a period of at least 3+ months','As a Mechatronics Engineer, you will work in the Payload and Small Spacecraft Mechanical Engineering Section, which is responsible for: (1) the structures, mechanisms, and mechanical systems engineering of payloads and small spacecraft across all phases of the mission lifecycle and (2) developing science-enabling technology, and infusing it into flight missions.', 'No Deadline', false, 0),
--7th Internship
('• Facebook', 'Research Intern, AI Platform', 'San Bernandino, CA', 'Currently has, or is in the process of obtaining a PhD degree and experience in C++, Java or other related language ', 0, date('2022-05-01'), 'The duration of this internship is 16 weeks with Summer, Fall, and Winter start dates.', 'Facebook is seeking Research Interns to join various teams in developing next generation products and platforms doing research and engineering at scale. As a Research Intern, you will help us bring the best of Artificial Intelligence technology to Facebook products.', 'No Deadline', false, 0),
--8th Internship
('• Google', 'Research Intern, Masters, Fall 2022', 'Mountain View, CA', 'Currently pursuing a Masters degree program or post secondary or training experience with a focus on subjects in software development or other technical related field', 0, date('2022-05-12'), 'Join us for a full-time, 12-14 week paid internship that offers personal and professional development, an executive speaker series, and community-building.', 'The Software Engineering Internship program will give you an opportunity to work on complex computer science solutions, develop scalable, distributed software systems, and also collaborate on multitudes of smaller projects that have universal appeal.', 'July 2, 2022', true, 76000),
--9th Internship
('• Twitter', 'Machine Learning Engineering Intern', 'San Luis Obispo, CA', 'D. in Machine Learning, Engineering Computer Science or a related field', 0, date('2022-05-15'), 'N/A', 'Realizing this involves work in areas such as machine learning, applied data science, recommendation systems, information retrieval systems, natural language processing, large graph analysis, spam, and more. We build relevance and machine learning models and systems to power the core of the Twitter product and growth.', 'No Deadline', false, 0),
--10th Internship
('• SpaceX', 'Summer 2022 Engineering Internship', 'Hawthorne, CA', 'Must be enrolled in a bachelors degree program in an engineering, physics or math discipline by the start of employment', 21, date('2022-05-12'), 'Able to work full time for a minimum of 12 consecutive weeks beginning in May or June 2022', 'As an intern, you will work closely with your mentor and other employees who will help you apply your knowledge and grow your skills on projects that have a significant impact.', 'No Deadline', false, 0);
--Output the entire list
.print
.print 'Internship Information:'
SELECT * FROM internship;

--Sort (1): Ordered by contact name
.print
.print 'Internships in order by contact name: '
select
title
FROM 
  internship
ORDER BY
  title ASC;
.print

--Sort (2): Ordered by location
.print
.print 'Internships in order by location: '
select
title, location
FROM 
  internship
ORDER BY
  title ASC;
.print
  
--Sort (3): Ordered by salary
.print
.print 'Internships in order by salary: '
select
title, salary
FROM 
  internship
ORDER BY
  salary ASC;
.print
  
--Sort (4): Ordered in alphabetical ascending order
.print
.print 'Internships in order by date posted: '
select
title, datePosted
FROM 
  internship
ORDER BY
  datePosted ASC;
.print

--Sort (5): Ordered by deadline
.print
.print 'Internships in order by deadline: '
select
title, deadline
FROM 
  internship
ORDER BY
  deadline ASC;
.print

--Query (1): Filter out all unpaid internships by INTEGER
.print
.print 'Filter out all unpaid internships by int'
select
title, salary
FROM 
  internship
WHERE NOT
  salary = 0;
.print

--Query (2): Filter out all unpaid internships by BOOLEAN
.print
.print 'Filter out all paid internships by boolean'
select
title, isPaid
FROM 
  internship
WHERE NOT
  isPaid = true;
.print

--Query (3): Filter out without a user input age requirement
.print
.print 'Filter out without age requirement'
select
title, ageRequirement
FROM 
  internship
WHERE
  ageRequirement = 0;
.print

--Query (4): Filter out with a user input age requirement
.print
.print 'Filter out with age requirement'
select
title, ageRequirement
FROM 
  internship
WHERE NOT
  ageRequirement = 0;
.print