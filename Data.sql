INSERT INTO Coach (LName, FName, Phone, EMail)
VALUES
    ('Joe', 'Smith', '713-222-9413', 'joesmile_1061@gmail.com'),
    ('Jane', 'Smith', '713-222-9414', 'janesmile_1061@gmail.com'),
    ('Paul', 'Lam', '713-486-2011', 'paulkkk@hotmail.com'),
    ('Paulina', 'Hall', '832-486-1997', 'paulinathenice@yahoo.com'),
    ('Katrina', 'Bajaj', '832-117-2435', 'KatrinaBajaj@gmail.com');
     
INSERT INTO Caretaker (LName, FName, Phone, EMail)
VALUES
    ('Azalea', 'Khan', '832-116-2992', 'theAKhan@gmail.com'),
    ('Joseph', 'Khan', '832-116-2993', 'theJKhan@gmail.com'),
    ('Jim', 'Khan', '832-116-2994', 'theJKhan2@gmail.com'),
    ('Katie', 'Johnson', '713-014-0090', 'KatieJohnson1010@yahoo.com'),
    ('Elizabeth', 'Johnson', '713-014-2090', 'EJohnson5111@yahoo.com');

INSERT INTO Level
VALUES
    (1, 'Green', 'First Level'),
    (2, 'Blue', 'Second level'),
    (3, 'Yellow', 'Third level'),
    (4, 'Pink', 'Fourth level'),
    (5, 'Orange', 'Fifth level'),
    (6, 'Lime', 'Six level'),
    (7, 'Purple', 'Seventh level'),
    (8, 'Red', 'Eigth level'),
    (9, 'Brown', 'Ninth level'),
    (10, 'Black', 'Tenth level');

INSERT INTO Venue (name, address, city, state, zipcode, phone)
VALUES
    ('UHCL', '2700 Bay Area Boulevard', 'Houston','Texas', 
        '77058', '281-283-3700'),
    ('CLHS', '3300 Bay Area Boulevard', 'Houston', 'Texas',
        '77059', '713-126-4544');
       
INSERT INTO Swimmer
VALUES
    ('Bobby', 'Khan', '832-116-2992', 'theBKhan1@gmail.com',
        '2014-2-12', 3, 1, 'Mother', '2014-2-12'),
    ('Billy', 'Khan', '832-116-2992', 'theBKhan2@gmail.com',
        '2015-12-12', 2, 1, 'Mother', '2015-12-12'),
    ('Nina', 'Khan', '832-116-2992', 'theNinaKhan@gmail.com',
        '2016-5-12', 2, 2, 'Father', '2016-5-12'),
    ('Clara', 'Johnson', '713-222-1010', 'ClaraJohnson_11@yahoo.com',
        '2013-5-12', 3, 4, 'Mother', '2015-5-12'),
    ('Philip', 'Johnson', '713-222-1010', 'PhilipJohnson_108@yahoo.com',
        '2015-5-15', 2, 5, 'Mother', '2015-5-15');
         
INSERT INTO OtherCareTaker
VALUES
    (1,2,'Uncle','2014-2-12'),
    (1,3,'Uncle','2014-2-12'),
    (2,3,'Uncle','2016-1-3'),
    (3,1,'Aunt','2016-5-12'),
    (3,3,'Adult Friend','2016-5-12'),
    (4,5,'Aunt','2016-1-12');  

INSERT INTO LevelHistory
VALUES
    (1,2,'2014-7-15'),
    (2,1,'2015-12-12'),
    (2,2,'2016-4-15'),
    (3,1,'2016-5-12'),
    (4,2,'2014-6-1'),
    (4,3,'2015-10-2'),
    (5,1,'2015-5-15'),
    (5,2,'2016-3-15');
    
INSERT INTO LevelHistory
VALUES
    (1,1,'2014-2-12','Good spirit'),
    (1,3,'2016-1-19','Fast time'),
    (3,2,'2016-7-12', 'Fast advance'),
    (4,1,'2013-5-12','Freestyle best');
     
INSERT INTO Meet
VALUES
    ('UHCL Open', '2016-3-3', '09:00:00', '16:00:00', 1, 1),
    ('Shell Trial', '2016-8-4', '08:00:00', '11:00:00', 2, 1);
        
INSERT INTO Event
VALUES
    ('50M Butterfly', '09:10:00', '09:30:00', 1, 2),
    ('100M Freestyle', '09:40:00', '09:50:00', 1, 2),
    ('100M Butterfly', '10:10:00', '10:30:00', 1, 3),
    ('200M Freestyle', '10:40:00', '10:50:00', 1, 3),
    ('50M Butterfly', '09:10:00', '09:30:00', 2, 2),
    ('100M Freestyle', '09:40:00', '09:50:00', 2, 2),
    ('100M Butterfly', '10:10:00', '10:30:00', 2, 3),
    ('200M Freestyle', '10:40:00', '10:50:00', 2, 3);

INSERT INTO Participation
VALUES
(2,1);


INSERT INTO Participation
VALUES
    (3,1,1);
	
INSERT INTO Participation
VALUES
    (5,1,1,'2016-2-20 10:00:00', 1, 'Winner', 'Good!', 2);
	
INSERT INTO Participation
VALUES
    (3,2);
	
INSERT INTO Participation
VALUES
    (2,2,1);
	
INSERT INTO Participation
VALUES
    (5,2,1,'2016-2-20 10:00:00', 1, 'Winner', 'Second winner', 2);
	
INSERT INTO Participation
VALUES
    (1,3);
	
INSERT INTO Participation
VALUES
    (4,3,1);
		
INSERT INTO Participation
VALUES
    (1,4);
	
INSERT INTO Participation
VALUES
    (4,5,1,'2016-1-15 12:00:00', 1, 'Runner up');

INSERT INTO Participation
VALUES
    (2,5);
	
INSERT INTO Participation
VALUES
    (3,5,1);

INSERT INTO Participation
VALUES
    (5,5,1,'2016-3-20 10:00:00', 1, '1:12:20', 'Good!', 1);
	
INSERT INTO Participation
VALUES
    (2,6,1,'2016-3-9 10:00:00', 1, 'Good', 'Need to focus', 3);
	
INSERT INTO Participation
VALUES
    (3,6);
	
INSERT INTO Participation
VALUES
    (5,6,1);
	
INSERT INTO Participation
VALUES
    (1,7);
	
INSERT INTO Participation
VALUES
    (4,7,1);
	
INSERT INTO Participation
VALUES
    (1,8,1,'2016-1-21 12:00:00', 1, 'winner');
	
INSERT INTO Participation
VALUES
    (4,8);
    

INSERT INTO V_TaskList
VALUES  
    (1,0,'UHCL meet volunteer tasks');

INSERT INTO V_TaskList
VALUES    
    (2,1,'Shell Trial meet volunteer tasks','3 credits', 0);
    
INSERT INTO V_Task
VALUES 
    (1,'Officiating','Must be trained',2);

INSERT INTO V_Task
VALUES
    (1,'Recording',3);

INSERT INTO V_Task
VALUES
    (1,'Diecting traffic');

INSERT INTO V_Task
VALUES
    (2,'Officiating','Must be trained',3);

INSERT INTO V_Task
VALUES
    (2,'Recording',2);

INSERT INTO V_Task
VALUES
    (2,'Diecting traffic');
    
INSERT INTO Commitment
VALUES
    (1,1,'2015-10-10 11:11:12'),
    (4,1,'2015-10-11 12:11:20'),
    (2,2,'2016-1-10 11:05:12'),
    (3,2,'2016-1-11 12:12:20'),
    (5,2,'2016-1-17 09:19:25'),
    (1,3,'2015-10-10 11:11:12');
    
INSERT INTO Commitment
VALUES
    (1,4,'2016-05-11 11:47:22',1,'Very dependable',1),
    (4,4,'2016-05-12 06:37:12',0,'Sick and called',1),
    (5,4,'2016-05-12 06:37:12',1,'Brought fruit',2);
	
INSERT INTO Commitment
VALUES
    (2,5,'2016-03-11 11:33:12',1),
    (4,5,'2016-03-17 12:35:14',0);
	
INSERT INTO Commitment
VALUES
    (1,5,'2016-05-11 11:47:22'),
    (5,6,'2016-06-11 09:15:22');






    