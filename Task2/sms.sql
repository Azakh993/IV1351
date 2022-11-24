CREATE TABLE classroom (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 value VARCHAR(100) NOT NULL
);

ALTER TABLE classroom ADD CONSTRAINT PK_classroom PRIMARY KEY (id);


CREATE TABLE finances (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_difficulty VARCHAR(20) NOT NULL,
 lesson_type VARCHAR(50) NOT NULL,
 price INT NOT NULL,
 sibling_discount INT NOT NULL,
 commission INT NOT NULL
);

ALTER TABLE finances ADD CONSTRAINT PK_finances PRIMARY KEY (id);


CREATE TABLE person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 forename VARCHAR(100) NOT NULL,
 surname VARCHAR(100) NOT NULL,
 phone_number VARCHAR(20) NOT NULL,
 email_address VARCHAR(200) NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE rental_instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_id VARCHAR(100) NOT NULL,
 type VARCHAR(100) NOT NULL,
 brand VARCHAR(100) NOT NULL,
 leasing_cost INT NOT NULL
);

ALTER TABLE rental_instrument ADD CONSTRAINT instrument_id UNIQUE (id);
ALTER TABLE rental_instrument ADD CONSTRAINT PK_rental_instrument PRIMARY KEY (id);


CREATE TABLE skill_level (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 value VARCHAR(20) NOT NULL
);

ALTER TABLE skill_level ADD CONSTRAINT PK_skill_level PRIMARY KEY (id);


CREATE TABLE student (
 person_id INT NOT NULL,
 pin VARCHAR(20) NOT NULL,
 student_id VARCHAR(100) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT person_id UNIQUE (person_id);
ALTER TABLE student ADD CONSTRAINT pin UNIQUE (person_id);
ALTER TABLE student ADD CONSTRAINT student_id UNIQUE (person_id);
ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (person_id);


CREATE TABLE student_instrument (
 instrument_type VARCHAR(100) NOT NULL,
 person_id INT NOT NULL,
 skill_level_id INT NOT NULL
);

ALTER TABLE student_instrument ADD CONSTRAINT PK_student_instrument PRIMARY KEY (instrument_type,person_id);


CREATE TABLE time_slot (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 date DATE NOT NULL,
 start_time TIME(6) NOT NULL,
 end_time TIME(6) NOT NULL,
 slot_type CHAR(20) NOT NULL
);

ALTER TABLE time_slot ADD CONSTRAINT PK_time_slot PRIMARY KEY (id);


CREATE TABLE address (
 address_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_id INT NOT NULL,
 street_address VARCHAR(500) NOT NULL,
 zip_code VARCHAR(20) NOT NULL,
 city VARCHAR(100) NOT NULL
);

ALTER TABLE address ADD CONSTRAINT PK_address PRIMARY KEY (address_id,person_id);


CREATE TABLE application (
 application_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_id INT NOT NULL,
 offered_enrollment BOOL NOT NULL,
 enrollment_accepted BOOL NOT NULL
);

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (application_id);


CREATE TABLE contact_person (
 person_id INT NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (person_id);


CREATE TABLE instructor (
 person_id INT NOT NULL,
 pin VARCHAR(20) NOT NULL,
 staff_id VARCHAR(100) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT staff_id UNIQUE (person_id);
ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (person_id);


CREATE TABLE instructor_instrument (
 instrument_type VARCHAR(100) NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE instructor_instrument ADD CONSTRAINT PK_instructor_instrument PRIMARY KEY (instrument_type,person_id);


CREATE TABLE instructor_time_slots (
 time_slot_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE instructor_time_slots ADD CONSTRAINT PK_instructor_time_slots PRIMARY KEY (time_slot_id,person_id);


CREATE TABLE lease (
 lease_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 rental_instrument_id INT NOT NULL,
 start_date DATE NOT NULL,
 end_date DATE NOT NULL,
 leasing_price INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE lease ADD CONSTRAINT PK_lease PRIMARY KEY (lease_id,rental_instrument_id);


CREATE TABLE lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 classroom_id INT NOT NULL,
 genre VARCHAR(100),
 instrument VARCHAR(100),
 skill_level_id INT NOT NULL,
 minimum_participants INT NOT NULL,
 maximum_participants INT NOT NULL,
 finances_id INT NOT NULL,
 time_slot_id INT NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);


CREATE TABLE lesson_booking (
 booking_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_id INT NOT NULL,
 person_id INT NOT NULL,
 instrument VARCHAR(100),
 skill_level_id INT
);

ALTER TABLE lesson_booking ADD CONSTRAINT PK_lesson_booking PRIMARY KEY (booking_id,lesson_id);


CREATE TABLE sibling (
 sibling_student_id VARCHAR(100) NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_student_id,person_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE student_instrument ADD CONSTRAINT FK_student_instrument_0 FOREIGN KEY (person_id) REFERENCES student (person_id) ON DELETE CASCADE;
ALTER TABLE student_instrument ADD CONSTRAINT FK_student_instrument_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id);


ALTER TABLE address ADD CONSTRAINT FK_address_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE application ADD CONSTRAINT FK_application_0 FOREIGN KEY (person_id) REFERENCES student (person_id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_1 FOREIGN KEY (person_id) REFERENCES student (person_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE instructor_instrument ADD CONSTRAINT FK_instructor_instrument_0 FOREIGN KEY (person_id) REFERENCES instructor (person_id) ON DELETE CASCADE;


ALTER TABLE instructor_time_slots ADD CONSTRAINT FK_instructor_time_slots_0 FOREIGN KEY (time_slot_id) REFERENCES time_slot (id);
ALTER TABLE instructor_time_slots ADD CONSTRAINT FK_instructor_time_slots_1 FOREIGN KEY (person_id) REFERENCES instructor (person_id) ON DELETE CASCADE;


ALTER TABLE lease ADD CONSTRAINT FK_lease_0 FOREIGN KEY (rental_instrument_id) REFERENCES rental_instrument (id);
ALTER TABLE lease ADD CONSTRAINT FK_lease_1 FOREIGN KEY (person_id) REFERENCES student (person_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (classroom_id) REFERENCES classroom (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_2 FOREIGN KEY (finances_id) REFERENCES finances (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_3 FOREIGN KEY (time_slot_id) REFERENCES time_slot (id);


ALTER TABLE lesson_booking ADD CONSTRAINT FK_lesson_booking_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);
ALTER TABLE lesson_booking ADD CONSTRAINT FK_lesson_booking_1 FOREIGN KEY (person_id) REFERENCES student (person_id);
ALTER TABLE lesson_booking ADD CONSTRAINT FK_lesson_booking_2 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (person_id) REFERENCES student (person_id) ON DELETE CASCADE;
