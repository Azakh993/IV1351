INSERT INTO person (forename,surname,phone_number,email_address)
VALUES
('Miranda','Kennedy','1-160-807-1351','urna.suscipit.nonummy@protonmail.net'),
('Jacob','Branch','334-4662','vestibulum.nec@outlook.net'),
('Ulric','Hardin','1-845-484-3083','eu.tempor@aol.org'),
('Susan','Franco','610-1337','dui.cum@yahoo.com'),
('Elaine','Briggs','675-2554','praesent.interdum@yahoo.ca'),
('Daryl','Ruiz','296-1432','orci.luctus@outlook.com'),
('Nolan','Cooper','136-8325','pellentesque@hotmail.com'),
('Amethyst','Lott','1-479-977-6515','mollis.phasellus@icloud.ca'),
('Jorden','Shelton','131-6658','aliquet.vel.vulputate@hotmail.edu'),
('Madeson','Donnell','121-0362','augue@hotmail.couk'),
('Kerry','Justice','317-4027','neque.et@yahoo.com'),
('Bruno','Bowman','1-220-218-1578','integer.in@yahoo.couk'),
('Ian','Leonard','1-845-751-7354','eget.dictum.placerat@google.couk'),
('Elvis','Frazier','313-3647','eget@protonmail.com'),
('Ross','George','1-951-610-5414','imperdiet.dictum.magna@hotmail.edu'),
('Rhonda','Barrera','878-2585','praesent.eu.dui@hotmail.org'),
('Priscilla','Cross','1-288-332-2528','pede.malesuada@hotmail.org'),
('Simone','Olson','1-779-389-7283','lorem@yahoo.ca'),
('Yvette','Hogan','1-406-686-1868','neque@hotmail.couk'),
('Lionel','Landry','924-2138','quam.dignissim.pharetra@protonmail.couk'),
('Amaya','Mueller','1-755-778-2703','eros.proin.ultrices@hotmail.net'),
('Xena','Frye','974-4559','sit.amet@yahoo.com'),
('Cain','Lyons','1-573-177-3178','libero@yahoo.ca'),
('Dale','Osborn','1-517-797-5944','mauris.integer.sem@hotmail.com'),
('Yuri','Lawrence','632-4928','sapien.cursus@icloud.org'),
('Abdul','Gamble','1-265-474-8767','duis.risus.odio@icloud.com'),
('Mira','Todd','317-9817','quisque@hotmail.ca'),
('Brady','Guthrie','750-3965','montes.nascetur.ridiculus@outlook.com'),
('Kadeem','Sims','662-6079','sem@icloud.couk'),
('Zeph','Bentley','335-7815','dui@protonmail.net'),
('Kennedy','Aguirre','1-925-410-5950','enim.consequat.purus@hotmail.net'),
('Barclay','Snyder','1-412-724-5568','lobortis@protonmail.net'),
('Kyra','Cortez','288-4625','odio@google.com'),
('Damon','Glass','1-160-660-4196','et@protonmail.edu'),
('Shelby','Stephens','532-0582','nisi.a@outlook.net'),
('Tanek','Serrano','498-5048','pede.cras@outlook.org'),
('Ebony','Guthrie','761-2716','etiam.bibendum@aol.couk'),
('Uriah','Hudson','513-2642','sed.et@outlook.edu'),
('Garrett','Harris','680-8345','odio.sagittis@outlook.org'),
('Claudia','Madden','286-7706','auctor@protonmail.couk'),
('Neville','Cabrera','718-5770','sed.consequat@icloud.net'),
('Tarik','Vasquez','614-2107','nam@yahoo.com'),
('Joel','Hood','393-0204','quis@yahoo.edu'),
('Ignatius','Prince','1-129-571-6897','adipiscing.elit@hotmail.net'),
('Geraldine','Rodriguez','416-7822','id.erat@outlook.com'),
('Lee','Hendricks','1-226-947-7875','ullamcorper@hotmail.org'),
('Steven','Short','1-485-341-9748','egestas.ligula.nullam@hotmail.ca'),
('Alden','Guerrero','496-4314','erat.eget@hotmail.ca'),
('Guinevere','Monroe','1-863-597-5360','dapibus.gravida@aol.com'),
('Tanner','Sweet','628-1503','at.augue.id@hotmail.org');


INSERT INTO rental_instrument (instrument_id,type,brand,leasing_cost)
VALUES
('PT1','flute','Matthews','413'),
('SP5','saxophone','Guthrie','268'),
('IH9','flute','Clements','414'),
('AQ1','cello','Kidd','348'),
('OU2','drums','Gillespie','475'),
('XP4','trumpet','Hooper','390'),
('RI2','trumpet','Blair','423'),
('LN1','guitar','Neal','393'),
('ZX7','violin','Horn','172'),
('XN5','saxophone','Weber','280'),
('GH6','violin','Harrell','100'),
('CF6','cello','Day','117'),
('SR8','piano','Aguirre','214'),
('CT2','guitar','Vega','179'),
('GN3','clarinet','Mcclure','468'),
('UI4','saxophone','Lara','116'),
('ES8','flute','Noel','452'),
('LJ2','cello','Burnett','124'),
('WW5','clarinet','Tran','477'),
('GC0','guitar','Sosa','259'),
('OX7','trumpet','Blake','226'),
('BD3','harp','Holmes','460'),
('SB7','harp','Hurst','313'),
('OU5','harp','Beach','361'),
('GQ2','drums','Todd','117'),
('FI9','guitar','Sherman','423'),
('PY4','piano','Boyer','203'),
('FN6','clarinet','Leblanc','479'),
('DG6','trumpet','Mercer','374'),
('OU8','cello','Hunt','235'),
('SR5','harp','Rice','490'),
('BV9','drums','Gilmore','102'),
('EV1','piano','Fischer','343'),
('DE7','guitar','Walker','349'),
('KM6','trumpet','Aguirre','235'),
('KL6','flute','Nicholson','330'),
('XQ7','harp','Miranda','182'),
('WQ6','piano','Haley','220'),
('DP8','cello','Holloway','198'),
('JT5','flute','Harrington','271');


INSERT INTO finances (lesson_difficulty,lesson_type,price,sibling_discount,commission)
VALUES
('beginner','individual','300','50','150'),
('beginner','group','250','25','130'),
('beginner','ensemble','275','25','140'),
('intermediate','individual','325','50','160'),
('intermediate','group','275','25','140'),
('intermediate','ensemble','300','25','150'),
('advanced','individual','350','50','170'),
('advanced','group','300','25','150'),
('advanced','ensemble','325','25','160');


INSERT INTO time_slot (date,start_time,end_time,slot_type)
VALUES
('2022-11-21','10:00','11:00','individual'),
('2022-11-21','10:00','11:00','group'),
('2022-11-21','10:00','11:00','ensemble'),
('2022-11-21','14:00','15:00','individual'),
('2022-11-21','14:00','15:00','group'),
('2022-11-21','14:00','15:00','ensemble'),
('2022-11-21','16:00','17:00','individual'),
('2022-11-21','16:00','17:00','group'),
('2022-11-21','16:00','17:00','ensemble'),
('2022-11-21','18:00','19:00','individual'),
('2022-11-21','18:00','19:00','group'),
('2022-11-21','18:00','19:00','ensemble'),
('2022-11-22','10:00','11:00','individual'),
('2022-11-22','10:00','11:00','group'),
('2022-11-22','10:00','11:00','ensemble'),
('2022-11-22','14:00','15:00','individual'),
('2022-11-22','14:00','15:00','group'),
('2022-11-22','14:00','15:00','ensemble'),
('2022-11-22','16:00','17:00','individual'),
('2022-11-22','16:00','17:00','group'),
('2022-11-22','16:00','17:00','ensemble'),
('2022-11-22','18:00','19:00','individual'),
('2022-11-22','18:00','19:00','group'),
('2022-11-22','18:00','19:00','ensemble'),
('2022-11-23','10:00','11:00','individual'),
('2022-11-23','10:00','11:00','group'),
('2022-11-23','10:00','11:00','ensemble'),
('2022-11-23','14:00','15:00','individual'),
('2022-11-23','14:00','15:00','group'),
('2022-11-23','14:00','15:00','ensemble'),
('2022-11-23','16:00','17:00','individual'),
('2022-11-23','16:00','17:00','group'),
('2022-11-23','16:00','17:00','ensemble'),
('2022-11-23','18:00','19:00','individual'),
('2022-11-23','18:00','19:00','group'),
('2022-11-23','18:00','19:00','ensemble'),
('2022-11-24','10:00','11:00','individual'),
('2022-11-24','10:00','11:00','group'),
('2022-11-24','10:00','11:00','ensemble'),
('2022-11-24','14:00','15:00','individual'),
('2022-11-24','14:00','15:00','group'),
('2022-11-24','14:00','15:00','ensemble'),
('2022-11-24','16:00','17:00','individual'),
('2022-11-24','16:00','17:00','group'),
('2022-11-24','16:00','17:00','ensemble'),
('2022-11-24','18:00','19:00','individual'),
('2022-11-24','18:00','19:00','group'),
('2022-11-24','18:00','19:00','ensemble'),
('2022-11-25','10:00','11:00','individual'),
('2022-11-25','10:00','11:00','group'),
('2022-11-25','10:00','11:00','ensemble'),
('2022-11-25','14:00','15:00','individual'),
('2022-11-25','14:00','15:00','group'),
('2022-11-25','14:00','15:00','ensemble'),
('2022-11-25','16:00','17:00','individual'),
('2022-11-25','16:00','17:00','group'),
('2022-11-25','16:00','17:00','ensemble'),
('2022-11-25','18:00','19:00','individual'),
('2022-11-25','18:00','19:00','group'),
('2022-11-25','18:00','19:00','ensemble');


INSERT INTO classroom (value)
VALUES
('Omar Hyde'),
('Hamilton Baker'),
('Dalton Sexton'),
('Lenore Buckley'),
('Chanda Thomas'),
('Damian Payne'),
('Slade Townsend'),
('Mallory Sherman'),
('Xenos Mcclure'),
('Whitney Mccray'),
('Akeem Mckee'),
('Ignatius Huff'),
('Aurora Hays'),
('Grady Dixon'),
('Henry Pace'),
('Vladimir Goodwin'),
('Leo Walls'),
('Natalie Perkins'),
('Adam Byers'),
('Joseph Pratt');


INSERT INTO skill_level (value)
VALUES
('beginner'),
('intermediate'),
('advanced');


INSERT INTO instructor (person_id, staff_id, pin) VALUES
((SELECT id FROM person WHERE (forename='Nolan' AND surname='Cooper')),'7000','1000000000' ),
((SELECT id FROM person WHERE (forename='Amethyst' AND surname='Lott')),'7001','1001010101'),
((SELECT id FROM person WHERE (forename='Jorden' AND surname='Shelton')),'7002','1002020202' ),
((SELECT id FROM person WHERE (forename='Madeson' AND surname='Donnell')),'7003','1003030303' ),
((SELECT id FROM person WHERE (forename='Kerry' AND surname='Justice')),'7004','1004040404' ),
((SELECT id FROM person WHERE (forename='Bruno' AND surname='Bowman')),'7005','1005050505' );

INSERT INTO address (person_id, street_address,zip_code,city) VALUES
((SELECT person_id FROM instructor WHERE staff_id='7000'),'Ap #881-3151 Non, Rd.','82447-85837','Vannes'),
((SELECT person_id FROM instructor WHERE staff_id='7001'),'539-6397 Ac Av.','4282','Dublin'),
((SELECT person_id FROM instructor WHERE staff_id='7002'),'P.O. Box 183, 8002 Integer Street','715007','Siquirres'),
((SELECT person_id FROM instructor WHERE staff_id='7003'),'2941 Ac Rd.','4743-3335','Cao Lãnh'),
((SELECT person_id FROM instructor WHERE staff_id='7004'),'682-7993 Et St.','12545','Whangarei'),
((SELECT person_id FROM instructor WHERE staff_id='7005'),'Ap #899-6459 Orci Avenue','8542','Yogyakarta');

INSERT INTO instructor_instrument (instrument_type,person_id)
VALUES
('guitar', (SELECT person_id FROM instructor WHERE staff_id='7000')),
('drums',(SELECT person_id FROM instructor WHERE staff_id='7000')),
('voilin', (SELECT person_id FROM instructor WHERE staff_id='7000')),
('trumpet',(SELECT person_id FROM instructor WHERE staff_id='7001')),
('clarinet', (SELECT person_id FROM instructor WHERE staff_id='7001')),
('piano',(SELECT person_id FROM instructor WHERE staff_id='7002'));

INSERT INTO instructor_time_slots (time_slot_id,person_id) 
VALUES
((SELECT id FROM time_slot WHERE (date='2022-11-21' AND start_time='10:00' AND slot_type='individual')), (SELECT person_id FROM instructor WHERE staff_id='7000')),
((SELECT id FROM time_slot WHERE (date='2022-11-21' AND start_time='14:00' AND slot_type='group')), (SELECT person_id FROM instructor WHERE staff_id='7000')),
((SELECT id FROM time_slot WHERE (date='2022-11-22' AND start_time='10:00' AND slot_type='individual')), (SELECT person_id FROM instructor WHERE staff_id='7000')),
((SELECT id FROM time_slot WHERE (date='2022-11-22' AND start_time='14:00' AND slot_type='group')), (SELECT person_id FROM instructor WHERE staff_id='7000')),
((SELECT id FROM time_slot WHERE (date='2022-11-22' AND start_time='16:00' AND slot_type='ensemble')), (SELECT person_id FROM instructor WHERE staff_id='7000')),
((SELECT id FROM time_slot WHERE (date='2022-11-23' AND start_time='14:00' AND slot_type='group')), (SELECT person_id FROM instructor WHERE staff_id='7000'));


INSERT INTO student (person_id, student_id, pin) VALUES
((SELECT id FROM person WHERE (forename='Miranda' AND surname='Kennedy')),'2000','1019191920' ),
((SELECT id FROM person WHERE (forename='Jacob' AND surname='Branch')),'2001','1020202021' ),
((SELECT id FROM person WHERE (forename='Ulric' AND surname='Hardin')),'2002','1021212122' ),
((SELECT id FROM person WHERE (forename='Susan' AND surname='Franco')),'2003','1022222223' ),
((SELECT id FROM person WHERE (forename='Elaine' AND surname='Briggs')),'2004','1023232324' ),
((SELECT id FROM person WHERE (forename='Daryl' AND surname='Ruiz')),'2005','1024242425' );

INSERT INTO application (person_id, offered_enrollment, enrollment_accepted) VALUES
((SELECT id FROM person WHERE (forename='Miranda' AND surname='Kennedy')),TRUE,TRUE ),
((SELECT id FROM person WHERE (forename='Jacob' AND surname='Branch')),TRUE,TRUE ),
((SELECT id FROM person WHERE (forename='Ulric' AND surname='Hardin')),TRUE,TRUE ),
((SELECT id FROM person WHERE (forename='Susan' AND surname='Franco')),TRUE,TRUE ),
((SELECT id FROM person WHERE (forename='Elaine' AND surname='Briggs')),TRUE,TRUE ),
((SELECT id FROM person WHERE (forename='Daryl' AND surname='Ruiz')),TRUE,TRUE );

INSERT INTO address (person_id, street_address,zip_code,city) VALUES
((SELECT person_id FROM student WHERE student_id='2000'),'Ap #814-9769 Ullamcorper, Ave','X64 1RD','Sevastopol'),
((SELECT person_id FROM student WHERE student_id='2001'),'Ap #819-2850 Luctus St.','J8X 3C1','Parndorf'),
((SELECT person_id FROM student WHERE student_id='2002'),'Ap #953-2028 Ac, St.','631282','Ferlach'),
((SELECT person_id FROM student WHERE student_id='2003'),'345-6286 At Road','429521','Horsham'),
((SELECT person_id FROM student WHERE student_id='2004'),'8569 Fringilla Road','25472','Pachuca'),
((SELECT person_id FROM student WHERE student_id='2005'),'Ap #719-7955 Erat Ave','380145','Weiz');

INSERT INTO contact_person (person_id) VALUES
((SELECT id FROM person WHERE (forename='Ian' AND surname='Leonard'))),
((SELECT id FROM person WHERE (forename='Elvis' AND surname='Frazier'))),
((SELECT id FROM person WHERE (forename='Ross' AND surname='George'))),
((SELECT id FROM person WHERE (forename='Rhonda' AND surname='Barrera'))),
((SELECT id FROM person WHERE (forename='Priscilla' AND surname='Cross'))),
((SELECT id FROM person WHERE (forename='Simone' AND surname='Olson')));

INSERT INTO student_instrument (instrument_type,person_id,skill_level_id) 
VALUES
('guitar', (SELECT person_id FROM student WHERE student_id='2000'), (SELECT id FROM skill_level WHERE value='beginner')),
('drums', (SELECT person_id FROM student WHERE student_id='2000'), (SELECT id FROM skill_level WHERE value='advanced')),
('violin', (SELECT person_id FROM student WHERE student_id='2001'), (SELECT id FROM skill_level WHERE value='intermediate')),
('violin',(SELECT person_id FROM student WHERE student_id='2002'), (SELECT id FROM skill_level WHERE value='intermediate')),
('piano', (SELECT person_id FROM student WHERE student_id='2003'), (SELECT id FROM skill_level WHERE value='advanced')),
('guitar',(SELECT person_id FROM student WHERE student_id='2004'), (SELECT id FROM skill_level WHERE value='beginner'));

INSERT INTO sibling (person_id, sibling_student_id) 
VALUES
((SELECT person_id FROM student WHERE student_id='2004'),'2005'),
((SELECT person_id FROM student WHERE student_id='2005'),'2004');

INSERT INTO lease (rental_instrument_id,start_date,end_date,leasing_price,person_id)
VALUES
((SELECT id FROM rental_instrument WHERE instrument_id='PT1'), '2022-11-24','2023-11-24', (SELECT leasing_cost FROM rental_instrument WHERE instrument_id='PT1'), (SELECT person_id FROM student WHERE student_id='2003')),
((SELECT id FROM rental_instrument WHERE (type='cello' AND brand='Hunt')), '2022-11-20','2023-11-20', (SELECT leasing_cost FROM rental_instrument WHERE (type='cello' AND brand='Hunt')), (SELECT person_id FROM student WHERE student_id='2003'));


INSERT INTO lesson (classroom_id, genre, instrument, skill_level_id, minimum_participants, maximum_participants, finances_id, time_slot_id)
VALUES
((SELECT id FROM classroom WHERE value='Omar Hyde'), NULL, 'guitar', (SELECT id FROM skill_level WHERE value='beginner'), 2, 10, (SELECT id FROM finances WHERE (lesson_difficulty='beginner' AND lesson_type='group')), (SELECT id FROM time_slot WHERE (date='2022-11-21' AND start_time='14:00' AND slot_type='group'))),
((SELECT id FROM classroom WHERE value='Hamilton Baker'), NULL, 'drums', (SELECT id FROM skill_level WHERE value='advanced'), 1, 1, (SELECT id FROM finances WHERE (lesson_difficulty='advanced' AND lesson_type='individual')), (SELECT id FROM time_slot WHERE (date='2022-11-21' AND start_time='10:00' AND slot_type='individual'))),
((SELECT id FROM classroom WHERE value='Chanda Thomas'), NULL, 'violin', (SELECT id FROM skill_level WHERE value='intermediate'), 2, 8, (SELECT id FROM finances WHERE (lesson_difficulty='intermediate' AND lesson_type='group')), (SELECT id FROM time_slot WHERE (date='2022-11-22' AND start_time='14:00' AND slot_type='group'))),
((SELECT id FROM classroom WHERE value='Omar Hyde'), NULL, NULL, (SELECT id FROM skill_level WHERE value='beginner'), 4, 10, (SELECT id FROM finances WHERE (lesson_difficulty='beginner' AND lesson_type='ensemble')), (SELECT id FROM time_slot WHERE (date='2022-11-21' AND start_time='16:00' AND slot_type='ensemble')));

INSERT INTO lesson_booking (lesson_id, person_id, instrument, skill_level_id) 
VALUES
((SELECT id FROM lesson WHERE (instrument='guitar' AND skill_level_id=(SELECT id FROM skill_level WHERE value='beginner') AND time_slot_id=(SELECT time_slot_id FROM time_slot WHERE date='2022-11-21' AND start_time='14:00' AND slot_type='group'))), (SELECT person_id FROM student WHERE student_id='2000'), NULL, NULL),
((SELECT id FROM lesson WHERE (instrument='guitar' AND skill_level_id=(SELECT id FROM skill_level WHERE value='beginner') AND time_slot_id=(SELECT time_slot_id FROM time_slot WHERE date='2022-11-21' AND start_time='14:00' AND slot_type='group'))), (SELECT person_id FROM student WHERE student_id='2004'), NULL, NULL),
((SELECT id FROM lesson WHERE (instrument='drums' AND skill_level_id=(SELECT id FROM skill_level WHERE value='advanced') AND time_slot_id=(SELECT time_slot_id FROM time_slot WHERE date='2022-11-21' AND start_time='10:00' AND slot_type='individual'))), (SELECT person_id FROM student WHERE student_id='2000'), NULL, (SELECT id FROM skill_level WHERE value='advanced'));
