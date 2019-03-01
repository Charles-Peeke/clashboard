DROP DATABASE IF EXISTS clinical;

CREATE DATABASE clinical;
USE clinical;

DROP TABLE IF EXISTS ClinicalStudy;

CREATE TABLE ClinicalStudy (
    NCT_ID                  CHAR(11) PRIMARY KEY NOT NULL,
    BRIEF_TITLE             CHAR(100),
  	ACRONYM                 CHAR(100),
  	BRIEF_SUMMARY           CHAR(100),
  	OVERALL_STATUS          CHAR(100),
  	LAST_KNOWN_STATUS       CHAR(100),
  	WHY_STOPPED             CHAR(100),
  	START_DATE              CHAR(100),
  	COMPLETION_DATE         CHAR(100),
  	PRIMARY_COMPLETION_DATE CHAR(100),
  	PHASE                   CHAR(100),
  	STUDY_TYPE              CHAR(100),
  	HAS_EXPANDED_ACCESS     CHAR(100),
  	TARGET_DURATION         CHAR(100),
  	ENROLLMENT              INT,
  	NUMBER_OF_ARMS          INT,
  	URL                     CHAR(100),
  	DOWNLOAD_DATE           CHAR(100),
  	RESPONSIBLE_PARTY       CHAR(100),
  	RESPONSIBLE_PARTY_TYPE  CHAR(100),
  	DETAILED_DESCRIPTION    CHAR(100)
);


INSERT INTO ClinicalStudy VALUES 
(
"NCT00000001",
"Effects of Malfunctions in Humans",
"ACR",
"Phase I trial to study the effects of Malfunctioning parts of the Human Body.",
"Enrolling by invitation",
"",
"",
"January 0000",
"",
"December 1999",
"Phase 1",
"Interventional",
"No",
"",
1234567890,
1,
"https://github.com/MoravianCollege/clashboard",
"March 01, 2019",
"Merck & Co. Inc.",
"Sponsor",
"OBJECTIVES: I. Determine the objective response to treatment for malfuncitons in patients."
);

INSERT INTO ClinicalStudy VALUES 
(
"NCT00000002",
"Effects of Medicine in Human beings",
"RAND",
"Phase IV trial to study the effects of medicine within human beings.",
"Completed",
"",
"",
"January 2000",
"",
"March 2019",
"Phase 4",
"Interventional",
"No",
"",
3,
2,
"https://github.com/MoravianCollege/clashboard",
"March 01, 2019",
"Merck & Co. Inc.",
"Sponsor",
"OBJECTIVES: IV. Determine the objective response to medicine in patients that are human beings."
);
