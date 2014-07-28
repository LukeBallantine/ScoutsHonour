--USE [ScoutsHonourDb]
--GO

-- Seed Members data (generated from Members.xlsx)
-- Use this to reset seed if required: DBCC CHECKIDENT('Members', RESEED, 0)
DECLARE @hasMembers bit
SET @hasMembers = (SELECT TOP 1 Id FROM Members WHERE GroupId IN (1, 2))
IF (@hasMembers IS NULL)
BEGIN

	INSERT INTO Members VALUES ('Joseph', 'Francis', '021 999 620', '021 038 4913', NULL, 2, 'black', 'Sixer', '15 May 2004', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('James', 'Lambert', '09 575 0506', NULL, NULL, 2, 'black', 'Seconder', '01 May 2003', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Jack', 'Little', '09 521 5421', NULL, NULL, 2, 'black', NULL, '17 Apr 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Ivan', 'Fateeva', '027 298 2668', NULL, NULL, 2, 'black', NULL, '01 May 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Harvey', 'Reiher', '021523270', NULL, NULL, 2, 'black', NULL, '25 Jun 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Jordan', 'Heron', '09 5758254', NULL, NULL, 2, 'black', NULL, '16 Apr 2006', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Devon', 'Barker', '09 521 0243', NULL, NULL, 2, 'black', NULL, '15 Apr 2006', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Devon', 'Banks', '09 5753550', '027 4266927', NULL, 2, 'blue', 'Sixer', '11 Dec 2004', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Elliot', 'Blakey', '09 575 2744', NULL, NULL, 2, 'blue', 'Seconder', '01 Sep 2004', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Nathaniel', 'Snook', '09 575 2298', NULL, NULL, 2, 'blue', NULL, '28 Mar 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Luca', 'Strachan', '09 575 8333', NULL, NULL, 2, 'blue', NULL, '03 Mar 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Henry', 'Ward', '09 5757234', NULL, NULL, 2, 'blue', NULL, '01 May 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Alex', 'Prior', '021 261 0837', NULL, NULL, 2, 'blue', NULL, '10 Apr 2006', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Nico', 'Jancys', '021 33 99 54', NULL, NULL, 2, 'blue', NULL, '19 Apr 2006', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('David', 'Yuan', '09 585 2086', NULL, NULL, 2, 'brown', 'Sixer', '26 Jan 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Joshua', 'Gillespie', '021314047', NULL, NULL, 2, 'brown', 'Seconder', '18 Jan 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Samuel', 'Beadle', '09 528 3260', NULL, NULL, 2, 'brown', NULL, '13 May 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Sam', 'Somerville', '021 861766', NULL, NULL, 2, 'brown', NULL, '15 Jul 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Benjamin', 'Hawken', '021660093', NULL, NULL, 2, 'brown', NULL, '26 Jul 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Jacob', 'Johnston', '0211157612', NULL, NULL, 2, 'brown', NULL, '12 Oct 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Ashton', 'Prangnell', '09 528 7742', '021 775 213', NULL, 2, 'brown', NULL, '04 May 2006', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Leo', 'Clay', '021 470 181', NULL, NULL, 2, 'tawny', 'Sixer', '12 Oct 2004', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Zak', 'Haddon', '09 575 5521', NULL, NULL, 2, 'tawny', 'Seconder', '05 Jan 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Marco', 'McGill', '021 313 474', NULL, NULL, 2, 'tawny', NULL, '30 May 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Tim', 'Howse', '027 4583198', NULL, NULL, 2, 'tawny', NULL, '14 Oct 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('George', 'Lee', '021548375', NULL, NULL, 2, 'tawny', NULL, '13 Nov 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Taylor', 'Nassau', '09 575 2644', NULL, NULL, 2, 'tawny', NULL, '28 Nov 2005', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Elijah', 'McMillan', '09 575 0509', '0210484056', NULL, 2, 'tawny', NULL, '05 May 2006', NULL, 3, NULL, NULL, 2);
	INSERT INTO Members VALUES ('Micah', 'Fitton-Higgins', '027 2079994', NULL, NULL, 2, 'grey', 'Seconder', '10 Feb 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Deyton', 'Bloxham', '027 2889802', NULL, NULL, 2, 'grey', 'Sixer', '28 Nov 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('AJ (Alastair)', 'McGregor', '021 0460400', NULL, NULL, 2, 'grey', NULL, '09 May 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Jacob', 'Attwood', '021 0470700', NULL, NULL, 2, 'grey', NULL, '04 Sep 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Lachie', 'Potter', '021 746 473', NULL, NULL, 2, 'grey', NULL, '24 Oct 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Zachary', 'Deoki', '0272868513', NULL, NULL, 2, 'grey', NULL, '16 Jul 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Mathew', 'Howard', '021 2358215', NULL, NULL, 2, 'red', 'Seconder', '25 Jul 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Callum', 'Gibbs', '027 272 3676', NULL, NULL, 2, 'red', 'Sixer', '30 Nov 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Freddy', 'Yates', '021 976917', NULL, NULL, 2, 'red', NULL, '21 Sep 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Fynn', 'Weir', '021 777620', NULL, NULL, 2, 'red', NULL, '14 Oct 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Oliver', 'Woodhams', '021 497249', NULL, NULL, 2, 'red', NULL, '30 Nov 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Ethan', 'Hicks', '021 781781', NULL, NULL, 2, 'red', NULL, '10 Jul 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Liam', 'Andrews', '021 1240065', NULL, NULL, 2, 'red', NULL, '24 Aug 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Ellis', 'Ballantine', '021 2491414', NULL, NULL, 2, 'white', 'Seconder', '21 Feb 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Fraser', 'Lynch', '021895044', NULL, NULL, 2, 'white', 'Sixer', '06 Jun 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Marlo', 'Devereaux', '027 220 7785', NULL, NULL, 2, 'white', NULL, '22 Apr 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Joshua', 'Bishop', '0272210223', '09 5212149', NULL, 2, 'white', NULL, '16 Jun 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Luke', 'Gordon', '0274906187', '027 2213009', NULL, 2, 'white', NULL, '09 Oct 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Kegan', 'Mahon', '09 575 9757', '027 3038056', NULL, 2, 'yellow', 'Seconder', '27 Apr 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Cameron', 'Adams', '027 255 1301', NULL, NULL, 2, 'yellow', 'Sixer', '06 Mar 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Mathew', 'Calvert', '09 5757839', NULL, NULL, 2, 'yellow', NULL, '19 Nov 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Adam', 'McLoughlin', '021742706', NULL, NULL, 2, 'yellow', NULL, '19 Nov 2004', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('James', 'Joyce', '0210311170', NULL, NULL, 2, 'yellow', NULL, '25 Aug 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Robin', 'Plessius', '021893000', NULL, NULL, 2, 'yellow', NULL, '30 Oct 2005', NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Charlie', 'Dodd', 'abc', NULL, NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1);
	INSERT INTO Members VALUES ('Sam', 'Gerrard', 'abc', NULL, NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, 1);

END

