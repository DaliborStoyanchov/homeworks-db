CREATE TABLE student (
	id serial PRIMARY KEY,
	FirstName varchar(100) NOT NULL,
	LastName varchar(100) NOT NULL,
	DateOfBirth date NOT NULL,
	EnrolledDate date NULL,
	Gender nchar(1) NULL,
	NationalIDNumber varchar(20) NULL,
	StudentCardNumber varchar(20) NOT null
	);

CREATE TABLE teacher (
	id serial PRIMARY KEY,
	FirstName varchar(100) NOT NULL,
	LastName varchar(100) NOT NULL,
	DateOfBirth date NOT NULL,
	AcademicRank varchar(20) NOT NULL,
	HireDate date NULL
	);

CREATE TABLE gradeDetails (
	id serial PRIMARY KEY,
	GradeID integer NOT NULL,
	AchievementTypeID integer NULL,
	AchievementPoints integer NULL,
	AchievementMaxPoints integer NULL,
	AchievementDate date NULL
);

CREATE TABLE course (
	id serial PRIMARY KEY,
	Name varchar(100) NOT NULL,
	Credit integer NOT NULL,
	AcademicYear date NOT NULL,
	Semester integer NOT NULL
);

CREATE TABLE grade (
	id serial PRIMARY KEY,
	StudentID integer NOT NULL,
	CourseID integer NOT NULL,
	TeacherID integer NULL,
	Grade integer NOT NULL,
	COMMENT varchar(100) NULL,
	CreatedDate date NOT NULL
);

CREATE TABLE achievementType (
	id serial PRIMARY KEY,
	Name varchar(100) NOT NULL,
	Description varchar(100) NULL,
	ParticipationRate integer NULL
);

SELECT * FROM student;
SELECT * FROM teacher;
SELECT * FROM gradeDetails;
SELECT * FROM course;
SELECT * FROM student;
SELECT * FROM grade;
SELECT * FROM achievementType;

INSERT INTO student(FirstName, LastName, DateOfBirth, EnrolledDate, Gender, NationalIDNumber, StudentCardNumber)
VALUES
('John', 'Johnson', '2000-01-01', '2018-01-01', 'm', 321321, 124)