DROP TABLE IF exists FEEDBACK_DETAILS;
DROP TABLE IF EXISTS STUDENT_DETAILS;


CREATE TABLE STUDENT_DETAILS(
    STUDENT_ID INTEGER PRIMARY KEY,
    ACADEMIC_YEAR INTEGER NOT NULL,
    SEMESTER INTEGER NOT NULL,
    BRANCH VARCHAR(4),
    SECTION VARCHAR(5),
    COURSE VARCHAR(20)
);

CREATE TABLE FEEDBACK_DETAILS(
    FEEDBACK_ID INTEGER auto_increment PRIMARY KEY,
    FEEDBACK_DATE DATE,
    STUDENT_ID INTEGER,
    COURSE VARCHAR(20),
    Q1 INTEGER,
    Q21 INTEGER,
    Q22 INTEGER,
    Q23 INTEGER,
    Q24 INTEGER,
    Q25 INTEGER,
    Q3 INTEGER,
    Q4 INTEGER,

    CONSTRAINT FD_K FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT_DETAILS(STUDENT_ID)
);


select * from student_details;
SELECT * FROM feedback_details;


