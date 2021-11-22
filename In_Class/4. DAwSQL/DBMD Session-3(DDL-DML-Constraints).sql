



CREATE DATABASE LibraryDatabase;

USE LibraryDatabase


CREATE SCHEMA Book;
---
CREATE SCHEMA Person;




--create Book.Author table

CREATE TABLE [Book].[Author](
	[Author_ID] [int],
	[Author_FirstName] [nvarchar](50) Not NULL,
	[Author_LastName] [nvarchar](50) Not NULL
	);



	
--create Publisher Table

CREATE TABLE [Book].[Publisher](
	[Publisher_ID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Publisher_Name] [nvarchar](100) NULL
	);



--create Book.Book table
CREATE TABLE [Book].[Book](
	[Book_ID] [int] PRIMARY KEY NOT NULL,
	[Book_Name] [nvarchar](50) NOT NULL,
	Author_ID INT NOT NULL,
	Publisher_ID INT NOT NULL
	);



--create Person.Person table

CREATE TABLE [Person].[Person](
	[SSN] [bigint] PRIMARY KEY NOT NULL,
	[Person_FirstName] [nvarchar](50) NULL,
	[Person_LastName] [nvarchar](50) NULL
	);


--cretae Person.Person_Mail table

CREATE TABLE [Person].[Person_Mail](
	[Mail_ID] INT PRIMARY KEY IDENTITY (1,1),
	[Mail] NVARCHAR(MAX) NOT NULL,
	[SSN] BIGINT UNIQUE NOT NULL	
	);


	--cretae Person.Person_Phone table

CREATE TABLE [Person].[Person_Phone](
	[Phone_Number] INT PRIMARY KEY NOT NULL,
	[SSN] [bigint] NOT NULL	
	);



--create Person.Loan table

CREATE TABLE [Person].[Loan](
	[SSN] BIGINT NOT NULL,
	[Book_ID] INT NOT NULL,
	PRIMARY KEY ([SSN], [Book_ID])
	);



--INSERT 



INSERT INTO Person.Person (SSN, Person_FirstName, Person_LastName) VALUES (75056659595,'Zehra', 'Tekin')

INSERT Person.Person (SSN, Person_FirstName, Person_LastName) VALUES (75056659595,'Zehra', 'Tekin')


INSERT INTO Person.Person (SSN, Person_FirstName) VALUES (889623212466,'Kerem', 'ATLI')

INSERT INTO Person.Person (SSN, Person_FirstName) VALUES (889623212466,'Kerem')


INSERT INTO Person.Person VALUES (889623212886,'Kerem', NULL)


INSERT Person.Person VALUES (88232556264,'Metin','Sakin')
INSERT Person.Person VALUES (35532888963,'Ali','Tekin')


INSERT INTO Person.Person_Mail (Mail, SSN) 
VALUES ('zehtek@gmail.com', 75056659595),
	   ('meyet@gmail.com', 15078893526),
	   ('metsak@gmail.com', 35532558963)



SELECT * FROM Person.Person_Mail 



--SELECT INTO


SELECT * FROM Person.Person_2


select * into Person.Person_2 from Person.Person


---INSERT INTO SELECT

SELECT * FROM Person.Person_2


INSERT Person.Person_2 (SSN, Person_FirstName, Person_LastName)

SELECT * 
FROM Person.Person 
where Person_FirstName like 'A%'



SELECT * FROM Book.Publisher

--Insert default values

INSERT Book.Publisher
DEFAULT VALUES










