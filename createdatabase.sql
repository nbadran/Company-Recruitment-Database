SPOOL createdatabase
SET ECHO ON
SET FEEDBACK ON
SET LINESIZE 200
SET WRAP OFF

-- APPLICANT -------------------------------------------------------------------------------------------

CREATE TABLE APPLICANT(	
anumber         		NUMBER(12,0)	NOT NULL PRIMARY KEY, /* Applicant number       */
fname           		VARCHAR(20) 	NOT NULL, /* First name             */
lname		    		VARCHAR(30)		NOT NULL, /* Last name				*/
dob         			DATE     		NOT NULL, /* Date of birth			*/
country		    		VARCHAR(30)		NOT NULL, /* Country				*/
city		    		VARCHAR(30)		NOT NULL, /* City					*/
state		    		VARCHAR(20)		NOT NULL, /* State					*/
phone		    		NUMBER(12,0)	NOT NULL, /* Phone number			*/
email		    		VARCHAR(50) 	NOT NULL, /* E-mail address			*/
years_of_experience     NUMBER(10),     	  	  /* Years of experience	*/
	--CONSTRAINT APPLICANT_pkey PRIMARY KEY ( anumber ), 
	CONSTRAINT APPLICANT_check CHECK (years_of_experience >= 0),
    CONSTRAINT APPLICANT_email_check1 CHECK (email LIKE 'www.%'),      -- check if applicant email starts with www. or not
    CONSTRAINT APPLICANT_email_check2 CHECK (email LIKE '%_@__%.__%')); -- check is applicant email follows email structure with @ and . or not
    --CONSTRAINT APPLICANT_phone_check CHECK (CAST(phone AS VARCHAR) LIKE '04%'));        -- check if applicant phone starts with 04 or not (since the database is assumed for Australia use only)
	
INSERT INTO APPLICANT VALUES(1, 'Nabeel', 'Badran', TO_DATE('06-FEB-2002', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0424144553, 'www.nhb403@uowmail.edu.au', '0');
INSERT INTO APPLICANT VALUES(2, 'Romelu', 'Lukaku', TO_DATE('06-DEC-1994', 'DD-MON-YYYY'), 'Australia', 'Brisbane', 'QLD', 0424122332, 'www.rl212@uowmail.edu.au', '5');
INSERT INTO APPLICANT VALUES(3, 'Lautaro', 'Martinez', TO_DATE('22-JUN-1996', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 043211343, 'www.lm212@uowmail.edu.au', '3');
INSERT INTO APPLICANT VALUES(4, 'Paulo', 'Dybala', TO_DATE('01-JAN-2002', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0424199553, 'www.ls453@uowmail.edu.au', '10');
INSERT INTO APPLICANT VALUES(5, 'Hussam', 'Mohd', TO_DATE('09-AUG-1969', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0424221553, 'www.hmd403@uowmail.edu.au', '19');
INSERT INTO APPLICANT VALUES(6, 'Jake', 'Aldi', TO_DATE('12-JUL-2001', 'DD-MON-YYYY'), 'Australia', 'South Australia', 'SA', 0424829173, 'www.ja999@uowmail.edu.au', '2');
INSERT INTO APPLICANT VALUES(7, 'Marta', 'Brasio', TO_DATE('06-FEB-1999', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0433143333, 'www.mb637@uowmail.edu.au', '14');
INSERT INTO APPLICANT VALUES(8, 'Alvaro', 'Morata', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0420082553, 'www.am223@uowmail.edu.au', NULL);
INSERT INTO APPLICANT VALUES(9, 'Pedri', 'Gonzalez', TO_DATE('12-JUL-1992', 'DD-MON-YYYY'), 'Australia', 'Perth', 'WA', 0499994553, 'www.pg999@uowmail.edu.au', '0');
INSERT INTO APPLICANT VALUES(10, 'Pablo', 'Gavi', TO_DATE('21-NOV-1980', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0424100003, 'www.pg821@uowmail.edu.au', '8');
INSERT INTO APPLICANT VALUES(11, 'Chris', 'Jericho', TO_DATE('12-OCT-1999', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0400144503, 'www.cj210@uowmail.edu.au', '5');
INSERT INTO APPLICANT VALUES(12, 'Triple', 'H', TO_DATE('11-NOV-2002', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0428888553, 'www.th777@uowmail.edu.au', NULL);
INSERT INTO APPLICANT VALUES(13, 'Jordan', 'Henderson', TO_DATE('09-FEB-1981', 'DD-MON-YYYY'), 'Australia', 'Perth', 'WA', 0424121253, 'www.jh621@uowmail.edu.au', '29');
INSERT INTO APPLICANT VALUES(14, 'Mo', 'Salah', TO_DATE('15-JAN-1997', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0427774553, 'www.ms921@uowmail.edu.au', '2');
INSERT INTO APPLICANT VALUES(15, 'Sadio', 'Mane', TO_DATE('19-JAN-1998', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0424101013, 'www.sm555@uowmail.edu.au', '4');
INSERT INTO APPLICANT VALUES(16, 'Semi', 'Vlahovic', TO_DATE('21-JUL-1993', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0427272553, 'www.sv299@uowmail.edu.au', '7');
INSERT INTO APPLICANT VALUES(17, 'Sami', 'Khedira', TO_DATE('26-FEB-2002', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0424199993, 'www.sk216@uowmail.edu.au', '0');
INSERT INTO APPLICANT VALUES(18, 'Maurizio', 'Sarri', TO_DATE('10-OCT-2001', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0412123553, 'www.ms333@uowmail.edu.au', '9');
INSERT INTO APPLICANT VALUES(19, 'Maurizio', 'Serry', TO_DATE('11-DEC-1998', 'DD-MON-YYYY'), 'Australia', 'Brisbane', 'QLD', 0424777753, 'www.ms222@uowmail.edu.au', NULL);
INSERT INTO APPLICANT VALUES(20, 'Fabio', 'Coentrao', TO_DATE('23-NOV-2002', 'DD-MON-YYYY'), 'Australia', 'Brisbane', 'QLD', 0424909053, 'www.fc578@uowmail.edu.au', '3');
INSERT INTO APPLICANT VALUES(21, 'Leo', 'Messi', TO_DATE('01-DEC-1990', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0429892553, 'www.lm291@uowmail.edu.au', '2');
INSERT INTO APPLICANT VALUES(22, 'Ricardo', 'Quaresma', TO_DATE('03-JUL-1989', 'DD-MON-YYYY'), 'Australia', 'Wollongong', 'NSW', 0423214553, 'www.rq011@uowmail.edu.au', NULL);
INSERT INTO APPLICANT VALUES(23, 'Ricardo', 'Kaka', TO_DATE('06-AUG-2002', 'DD-MON-YYYY'), 'Australia', 'Sydney', 'NSW', 0424144553, 'www.rk008@uowmail.edu.au', '1');
INSERT INTO APPLICANT VALUES(24, 'Mo', 'Elneny', TO_DATE('26-FEB-2001', 'DD-MON-YYYY'), 'Australia', 'Brisbane', 'QLD', 0424199965, 'www.me921@uowmail.edu.au', '8');
INSERT INTO APPLICANT VALUES(25, 'Diego', 'Milito', TO_DATE('29-AUG-2000', 'DD-MON-YYYY'), 'Australia', 'Perth', 'WA', 0424144888, 'www.dm22@uowmail.edu.au', NULL);

-- POSITION ---------------------------------------------------------------------------------------------

CREATE TABLE POSITION(
pnumber NUMBER(12,0)  		NOT NULL PRIMARY KEY,
title   VARCHAR(30) 	    NOT NULL,
salary  NUMBER(12,0)  		NOT NULL,
bonus   DECIMAL ,
superannuation VARCHAR(10)  DEFAULT 'false', -- default value is false if not specified in the parameter of insert statement
description    VARCHAR(300) ,
	--CONSTRAINT POSITION_pkey PRIMARY KEY (pnumber),
	CONSTRAINT POSITION_check CHECK (superannuation IN ('true', 'false')) );
    
INSERT INTO POSITION VALUES (1, 'SQL Analyst', 90000, 2500.50, 'true', 'This position requires a system analyst that is proficient in SQL specifically.');
INSERT INTO POSITION VALUES (2, 'Help Desk 1', 69000, 1500.50, 'false', 'This position requires a help desk level 2.');
INSERT INTO POSITION VALUES (3, 'Help Desk 2', 73000, 1500.50, 'true', 'This position requires a help desk level 1.');
INSERT INTO POSITION VALUES (4, 'JAVA Developer', 95000, 3500.50, 'true', 'This position requires a JAVA developer for back end techniques and programming.');
INSERT INTO POSITION VALUES (5, 'IT Support Consultant', 88000, 2500.50, 'false', 'This position requires an IT support consultant with 2+ years of experience.');
INSERT INTO POSITION VALUES (6, 'Front End Developer', 815250, 2500.50, 'false', 'This position requires a developer that is proficient in front end programming techniques.');
	
-- LANGUAGE ---------------------------------------------------------------------------------------------

CREATE TABLE LANGUAGE (
l_name VARCHAR(30) NOT NULL,	/*Language name (eg. Java, C++, SQL,..)*/
	CONSTRAINT LANGUAGE_pkey PRIMARY KEY (l_name) );
    
INSERT INTO LANGUAGE VALUES ('Java');
INSERT INTO LANGUAGE VALUES ('SQL');
INSERT INTO LANGUAGE VALUES ('Python');
INSERT INTO LANGUAGE VALUES ('MySQL');
INSERT INTO LANGUAGE VALUES ('C++');
INSERT INTO LANGUAGE VALUES ('Arduino');
INSERT INTO LANGUAGE VALUES ('React');

-- LPOSSESSED -------------------------------------------------------------------------------------------

CREATE TABLE LPOSSESSED(
anumber number(12,0)    NOT NULL,
l_name VARCHAR(30)      NOT NULL,
l_level NUMBER(10)      NOT NULL,
	CONSTRAINT LPOSSESSED_pkey PRIMARY KEY (anumber, l_name),
	CONSTRAINT LPOSSESSED_fkey1 FOREIGN KEY (anumber) REFERENCES APPLICANT (anumber) ON DELETE CASCADE,
	CONSTRAINT LPOSSESSED_fkey2 FOREIGN KEY (l_name) REFERENCES LANGUAGE (l_name),
    CONSTRAINT LPOSSESSED_check CHECK (l_level IN (1,2,3,4,5,6,7,8,9,10)) );

INSERT INTO LPOSSESSED VALUES(1, 'SQL', 5);
INSERT INTO LPOSSESSED VALUES(2, 'Java', 2);
INSERT INTO LPOSSESSED VALUES(3, 'Python', 2);
INSERT INTO LPOSSESSED VALUES(4, 'SQL', 6);
INSERT INTO LPOSSESSED VALUES(5, 'Java', 7);
INSERT INTO LPOSSESSED VALUES(6, 'SQL', 1);
INSERT INTO LPOSSESSED VALUES(7, 'MySQL', 10);
INSERT INTO LPOSSESSED VALUES(8, 'MySQL', 2);
INSERT INTO LPOSSESSED VALUES(9, 'SQL', 4);
INSERT INTO LPOSSESSED VALUES(10, 'React', 7);
INSERT INTO LPOSSESSED VALUES(11, 'React', 3);
INSERT INTO LPOSSESSED VALUES(12, 'Python', 2);
INSERT INTO LPOSSESSED VALUES(13, 'MySQL', 7);
INSERT INTO LPOSSESSED VALUES(14, 'MySQL', 8);
INSERT INTO LPOSSESSED VALUES(15, 'SQL', 8);
INSERT INTO LPOSSESSED VALUES(16, 'Java', 7);
INSERT INTO LPOSSESSED VALUES(17, 'SQL', 6);
INSERT INTO LPOSSESSED VALUES(18, 'Java', 5);
INSERT INTO LPOSSESSED VALUES(19, 'C++', 4);
INSERT INTO LPOSSESSED VALUES(20, 'C++', 6);
INSERT INTO LPOSSESSED VALUES(21, 'SQL', 7);
INSERT INTO LPOSSESSED VALUES(22, 'Java', 8);
INSERT INTO LPOSSESSED VALUES(23, 'React', 9);
INSERT INTO LPOSSESSED VALUES(24, 'Arduino', 10);
INSERT INTO LPOSSESSED VALUES(25, 'Java', 10);

-- LNEEDED ----------------------------------------------------------------------------------------------

CREATE TABLE LNEEDED(
pnumber number(12,0)    NOT NULL,
l_name VARCHAR(30)      NOT NULL,
l_level NUMBER(10)      NOT NULL,
	CONSTRAINT LNEEDED_pkey PRIMARY KEY (pnumber, l_name),
	CONSTRAINT LNEEDED_fkey1 FOREIGN KEY (pnumber) REFERENCES POSITION (pnumber) ON DELETE CASCADE,
	CONSTRAINT LNEEDED_fkey2 FOREIGN KEY (l_name) REFERENCES LANGUAGE (l_name),
    CONSTRAINT LNEEDED_check CHECK (l_level IN (1,2,3,4,5,6,7,8,9,10)) );
	
INSERT INTO LNEEDED VALUES(1, 'SQL', 5);
INSERT INTO LNEEDED VALUES(2, 'MySQL', 7);
INSERT INTO LNEEDED VALUES(2, 'Java', 5);
INSERT INTO LNEEDED VALUES(3, 'Python', 2);
INSERT INTO LNEEDED VALUES(4, 'React', 3);
INSERT INTO LNEEDED VALUES(4, 'MySQL', 2);
INSERT INTO LNEEDED VALUES(5, 'Arduino', 10);
INSERT INTO LNEEDED VALUES(5, 'C++', 6);
INSERT INTO LNEEDED VALUES(6, 'Java', 7);
INSERT INTO LNEEDED VALUES(6, 'C++', 4);

-- APPLIES ----------------------------------------------------------------------------------------------

CREATE TABLE APPLIES(
anumber		NUMBER(12,0) 	NOT NULL, 		/* Applicant number		*/
pnumber		NUMBER(12,0) 	NOT NULL, 		/* Position number		*/
appdate		DATE			NOT NULL, 		/* Application date 	*/
	CONSTRAINT APPLIES_pkey PRIMARY KEY ( anumber, pnumber, appdate ), 
	CONSTRAINT APPLIES_fkey1 FOREIGN KEY ( anumber ) REFERENCES APPLICANT ( anumber ) ON DELETE CASCADE,
	CONSTRAINT APPLIES_fkey2 FOREIGN KEY ( pnumber ) REFERENCES POSITION ( pnumber ) ON DELETE CASCADE );

INSERT INTO APPLIES VALUES(1, 1, TO_DATE('22-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(1, 2, TO_DATE('21-DEC-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(1, 5, TO_DATE('23-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(2, 1, TO_DATE('24-DEC-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(3, 2, TO_DATE('25-JAN-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(4, 3, TO_DATE('26-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(5, 4, TO_DATE('21-DEC-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(6, 5, TO_DATE('24-JAN-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(7, 5, TO_DATE('12-FEB-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(8, 1, TO_DATE('10-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(9, 2, TO_DATE('13-DEC-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(9, 3, TO_DATE('16-FEB-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(9, 6, TO_DATE('14-JUL-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(10, 4, TO_DATE('12-FEB-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(10, 3, TO_DATE('12-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(11, 2, TO_DATE('27-FEB-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(12, 1, TO_DATE('22-DEC-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(12, 2, TO_DATE('12-AUG-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(13, 4, TO_DATE('06-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(13, 3, TO_DATE('22-JAN-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(13, 2, TO_DATE('01-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(14, 1, TO_DATE('05-DEC-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(15, 1, TO_DATE('12-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(16, 1, TO_DATE('21-AUG-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(17, 1, TO_DATE('29-JAN-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(17, 2, TO_DATE('20-JUN-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(18, 2, TO_DATE('25-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(18, 3, TO_DATE('27-FEB-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(18, 6, TO_DATE('28-FEB-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(19, 4, TO_DATE('19-JAN-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(20, 3, TO_DATE('18-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(21, 2, TO_DATE('25-NOV-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(22, 1, TO_DATE('22-DEC-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(23, 2, TO_DATE('28-AUG-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(24, 4, TO_DATE('21-JAN-2022', 'DD-MON-YYYY'));
INSERT INTO APPLIES VALUES(25, 2, TO_DATE('30-DEC-2022', 'DD-MON-YYYY'));

-- COMPANY ----------------------------------------------------------------------------------------------

CREATE TABLE COMPANY(
cname VARCHAR(30) 	NOT NULL PRIMARY KEY,
country VARCHAR(30) NOT NULL,
city VARCHAR(30) 	NOT NULL,
state VARCHAR(30) 	NOT NULL,
phone number(12,0)  NOT NULL,
email VARCHAR(30) 	NOT NULL,
web VARCHAR(30) , 			  
	--CONSTRAINT COMPANY_pkey PRIMARY KEY (cname),
	CONSTRAINT COMPANY_check CHECK (state IN ('NSW', 'NT', 'SA', 'WA', 'QLD', 'VIC', 'TAS')),
    CONSTRAINT COMPANY_email_check CHECK (email LIKE '%_@__%.__%'), -- or LIKE %@%
    CONSTRAINT COMPANY_web_check CHECK (web LIKE 'www.%')); -- checks whether companies website starts with www. or not

INSERT INTO COMPANY VALUES ( 'Google', 'Australia', 'Sydney', 'NSW', 612345678, 'google@gmail.com', 'www.google.com');
INSERT INTO COMPANY VALUES ( 'Amazon', 'Australia', 'Brisbane', 'QLD', 612222888, 'amazon@gmail.com', 'www.amazon.com');
INSERT INTO COMPANY VALUES ( 'Microsoft', 'Australia', 'Melbourne', 'VIC', 612345678, 'microsoft@gmail.com', 'www.microsoft.com');
INSERT INTO COMPANY VALUES ( 'Apple', 'Australia', 'Perth', 'WA', 612345678, 'apple@gmail.com', 'www.apple.com');
INSERT INTO COMPANY VALUES ( 'Tesla', 'Australia', 'Wollongong', 'NSW', 612345678, 'tesla@gmail.com', 'www.tesla.com');

-- EMPLOYED BY ------------------------------------------------------------------------------------------

CREATE TABLE EMPLBY(	                  /* Former employers	(companies the applicant has/is working for) */
anumber         NUMBER(12,0)    NOT NULL,           /* Applicant number */
cname		    VARCHAR(30)	    NOT NULL,           /* Company name		*/
fromdate	    DATE            NOT NULL,           /* Employed from	*/
todate		    DATE            NOT NULL,           /* Employed to		*/
	CONSTRAINT EMPLBY_pkey PRIMARY KEY ( anumber, cname, fromdate ),
	CONSTRAINT EMPLBY_fkey1 FOREIGN KEY ( anumber ) REFERENCES APPLICANT( anumber ),
	CONSTRAINT EMPLBY_fkey2 FOREIGN KEY ( cname ) REFERENCES COMPANY( cname ) );

INSERT INTO EMPLBY VALUES ( 1, 'Amazon', TO_DATE('01-FEB-2018', 'DD-MON-YYYY'),TO_DATE('05-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 1, 'Apple', TO_DATE('01-JUL-2020', 'DD-MON-YYYY'),TO_DATE('08-JUN-2021', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 2, 'Amazon', TO_DATE('09-FEB-2019', 'DD-MON-YYYY'), TO_DATE('25-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 2, 'Tesla', TO_DATE('21-AUG-2020', 'DD-MON-YYYY'),TO_DATE('13-FEB-2022', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 3, 'Apple', TO_DATE('11-FEB-2018', 'DD-MON-YYYY'),TO_DATE('12-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 4, 'Amazon', TO_DATE('28-APR-2019', 'DD-MON-YYYY'),TO_DATE('15-MAY-2022', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 5, 'Tesla', TO_DATE('21-AUG-2016', 'DD-MON-YYYY'),TO_DATE('18-JUN-2022', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 6, 'Tesla', TO_DATE('01-FEB-2015', 'DD-MON-YYYY'),TO_DATE('05-MAY-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 6, 'Amazon', TO_DATE('01-NOV-2020', 'DD-MON-YYYY'),TO_DATE('22-JUN-2020', 'DD-MON-YYYY'));
INSERT INTO EMPLBY VALUES ( 7, 'Tesla', TO_DATE('11-FEB-2016', 'DD-MON-YYYY'),TO_DATE('14-OCT-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 8, 'Google', TO_DATE('21-NOV-2018', 'DD-MON-YYYY'),TO_DATE('23-JUN-2021', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 9, 'Amazon', TO_DATE('05-OCT-2018', 'DD-MON-YYYY'),TO_DATE('09-MAY-2021', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 10, 'Amazon', TO_DATE('28-FEB-2018', 'DD-MON-YYYY'),TO_DATE('22-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 11, 'Microsoft', TO_DATE('01-FEB-2018', 'DD-MON-YYYY'),TO_DATE('05-MAY-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 12, 'Google', TO_DATE('01-FEB-2018', 'DD-MON-YYYY'),TO_DATE('05-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 13, 'Microsoft', TO_DATE('01-OCT-2018', 'DD-MON-YYYY'),TO_DATE('29-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 14, 'Amazon', TO_DATE('21-NOV-2018', 'DD-MON-YYYY'),TO_DATE('25-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 15, 'Amazon', TO_DATE('28-FEB-2018', 'DD-MON-YYYY'),TO_DATE('15-AUG-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 16, 'Google', TO_DATE('01-FEB-2018', 'DD-MON-YYYY'),TO_DATE('05-MAY-2019', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 16, 'Apple', TO_DATE('28-FEB-2020', 'DD-MON-YYYY'),TO_DATE('22-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 17, 'Google', TO_DATE('01-NOV-2018', 'DD-MON-YYYY'),TO_DATE('21-OCT-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 17, 'Apple', TO_DATE('02-MAY-2021', 'DD-MON-YYYY'),TO_DATE('29-AUG-2022', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 18, 'Amazon', TO_DATE('06-FEB-2018', 'DD-MON-YYYY'),TO_DATE('05-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 19, 'Apple', TO_DATE('01-MAY-2018', 'DD-MON-YYYY'),TO_DATE('05-OCT-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 20, 'Amazon', TO_DATE('21-FEB-2018', 'DD-MON-YYYY'), TO_DATE('11-NOV-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 21, 'Apple', TO_DATE('28-NOV-2018', 'DD-MON-YYYY'),TO_DATE('11-NOV-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 22, 'Apple', TO_DATE('09-FEB-2018', 'DD-MON-YYYY'),TO_DATE('16-AUG-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 23, 'Google', TO_DATE('28-OCT-2018', 'DD-MON-YYYY'),TO_DATE('22-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 24, 'Microsoft', TO_DATE('01-MAY-2018', 'DD-MON-YYYY'),TO_DATE('22-JUN-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 25, 'Amazon', TO_DATE('10-NOV-2018', 'DD-MON-YYYY'),TO_DATE('09-OCT-2020', 'DD-MON-YYYY') );
INSERT INTO EMPLBY VALUES ( 25, 'Google', TO_DATE('21-FEB-2021', 'DD-MON-YYYY'),TO_DATE('22-JUN-2022', 'DD-MON-YYYY') );


COMMIT;

PROMPT Done.
SPOOL OFF