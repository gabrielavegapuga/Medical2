create database if not exists Medical2;
use Medical2;

create table Specialty(
id_specialty int auto_increment,
specialty varchar(25),
subspecialty varchar(25),
primary key(id_specialty)
);

INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Cardiologia', 'Ecocardiografia');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Cardiologia', 'Patologia cardiovascular');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Ginecologia', 'Ginecologia oncologica');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Ginecologia', 'Uroginecologia');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Oftalmologia', 'Cornea');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Oftalmologia', 'Oculoplastia');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Oftalmologia', 'Glaucoma');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Cirugia plastica', 'Reconstructiva');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Pediatria', 'Neonatal');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Urologia', 'Urolitiasis');

INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Cirugia general', 'Cirugia colorectal');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Cirugia general', 'Cirugia toracica');
INSERT INTO `medical2`.`Specialty` (`specialty`, `subspecialty`) VALUES ('Cirugia general', 'Cirugia intestinal');



create table Schedule_doctor(
id_schedule int auto_increment,
days varchar(70),
time varchar(40),
primary key(id_schedule)
);

INSERT INTO `medical2`.`Schedule_doctor` (`days`, `time`) VALUES ('LUNES, MIERCOLES, VIERNES', '9 - 14');
INSERT INTO `medical2`.`Schedule_doctor` (`days`, `time`) VALUES ('LUNES, MIERCOLES, VIERNES', '14 - 21');
INSERT INTO `medical2`.`Schedule_doctor` (`days`, `time`) VALUES ('MARTES, JUEVES, SABADO', '9 - 14');
INSERT INTO `medical2`.`Schedule_doctor` (`days`, `time`) VALUES ('MARTES, JUEVES, SABADO', '14 - 21');

create table Doctor(
id_doctor int auto_increment,
name varchar(25),
lastname varchar(25),
dni int,
age int,
gender char,
day_birth date,
address varchar(30),
phone int,
email varchar(30),
id_schedule int,
id_specialty int,
primary key(id_doctor),

constraint fk_Doctor_Schedule
foreign key(id_schedule) references Schedule_doctor(id_schedule),
constraint fk_Doctor_Specialty
foreign key(id_specialty) references Specialty(id_specialty)

);

alter table Doctor add id_patient int;

INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Enrique', 'Diaz', '23321976', '62', 'M', '1958-10-12', 'Pje. Florida 400B, Salta, Ar', '4223430', 'ediaz@medical.com.ar');

INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Gregorio', 'Ruiz', '22213433', '45', 'M', '1976-07-30', 'San Martin 5230, Salta, Ar', '4220556', 'gruiz@medical.com.ar');


INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Fundadora', 'Farfan', '34228876', '40', 'F', '1981-01-03', 'Cachi 515, Salta, Ar', '4225445', 'ffarfan@medical.com.ar');

INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Maria Alberta', 'Diaz', '36177887', '35', 'F', '1986-10-12', 'Asuncion 34, Salta, Ar', '4221212', 'madiaz@medical.com.ar');

INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Cecilia', 'Ruiz', '37161678', '33', 'M', '1989-02-14', '10 de Octubre 18, Salta, Ar', '4223039', 'cruiz@medical.com.ar');

INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Morelia', 'Puga', '22454767', '53', 'F', '1968-03-02', 'Tres Cerritos 14-C, Salta, Ar', '4229887', 'mpuga@medical.com.ar');

INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Dario', 'Chirino', '30454610', '41', 'M', '1980-06-06', 'Laprida 34, Salta, Ar', '4223140', 'dchirino@medical.com.ar');


INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Diana', 'Guzman', '28890780', '40', 'F', '1981-02-20', 'Alvarado 800, Salta, Ar', '4222021', 'dguzman@medical.com.ar');


INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Ana Isabel', 'Quintana', '30212130', '37', 'F', '1984-10-21', 'Caseros 423, Salta, Ar', '4222090', 'aiquintana@medical.com.ar');


INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Dario', 'Gonzalez', '25656689', '56', 'M', '1965-11-01', 'Caseros 539, Salta, Ar', '4222343', 'dgonzalez@medical.com.ar');


INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Luis Alberto', 'Gonzalez', '31232300', '38', 'M', '1983-04-19', 'Laprida 4500, Salta, Ar', '4222460', 'lagonzalez@medical.com.ar');


INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Maria Roberta', 'Sanchez', '39141700', '31', 'F', '1990-01-01', 'Cafayate 18-C, Salta, Ar', '4221213', 'mrsanchez@medical.com.ar');


INSERT INTO `medical2`.`Doctor` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Jose Daniel', 'Quilmes', '22101023', '57', 'M', '1964-12-26', 'Entre Rios 4800, Salta, Ar', '4223218', 'jdquilmes@medical.com.ar');

create table Medical_record(
id_record int auto_increment,
description varchar(150),
primary key(id_record)
);

Select * from Medical_record;


INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('2lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('3lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('4lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('5lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('6lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('7lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('8lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('9lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('10lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('11lorem ipsum dolor sit amet');
INSERT INTO `medical2`.`Medical_record` (`description`) VALUES ('12lorem ipsum dolor sit amet');

create table Appointment(
id_app int auto_increment,
day date,
time time,
primary key(id_app)
);

INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-15', '10:00:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-15', '12:30:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-15', '18:00:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-16', '09:00:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-16', '11:00:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-16', '12:00:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-16', '17:00:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-17', '11:00:00');
INSERT INTO `medical2`.`Appointment` (`day`, `time`) VALUES ('2021-04-17', '18:00:00');


create table Patient(
id_patient int auto_increment,
name varchar(25),
lastname varchar(25),
dni int,
age int,
gender char,
day_birth date,
address varchar(30),
phone int,
email varchar(30),
id_app int,
id_record int,
primary key(id_patient),

constraint fk_Patient_Appointment
foreign key(id_app) references Appointment(id_app),
constraint fk_Patient_Record
foreign key(id_record) references Medical_record(id_record)
);

alter table Patient add id_doctor int;

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Jose', 'Herrera', '23433212', '56', 'M', '1965-05-04', 'Laprida 67, Cerrillos',
'4223321', 'joseh89@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Ernestina', 'Angeles', '32443422', '43', 'F', '1978-03-01', 'Pellegrini 80-D, Salta',
'4224140', 'eeer98@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Juan Luis', 'Herrera', '31438080', '32', 'M', '1989-12-13', 'Santa Maria 4320, Salta',
'4222129', 'juan_her31@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Luisa Maria', 'Gutierrez', '23412209', '65', 'F', '1956-01-23', 'Las torres 510, Salta',
'4215454', 'marlu_lu@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Carla', 'Enriquez', '38786700', '23', 'F', '1998-11-30', 'Caseros 9030, Salta',
'4222121', 'carli_09@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Florencia', 'Vega', '28713487', '57', 'F', '1966-11-02', 'San Juan 520, Cerrillos',
'4234570', 'florcg34@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Juan', 'Lopez', '31231415', '34', 'M', '1987-12-08', 'San Martin 32-A, Salta',
'4225059', 'lopezjuan.30@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Diego', 'Berlan', '36780320', '27', 'M', '1994-06-14', 'Ramos Mejia 67, Salta',
'4222078', 'dieberlan_l@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Florencia', 'Diez', '25679090', '56', 'F', '1965-02-19', 'Laprida 45, Salta',
'4222090', 'flor_10d@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Roberto Josue', 'Herrera', '34567856', '42', 'M', '1979-05-12', 'Lamadrid Eje 5, Cerrillos',
'4226087', 'robertjo_08@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Roberto', 'Quiroga', '23432214', '61', 'M', '1960-05-04', 'San Jose 200, Salta',
'4224545', 'quiro3456@gmail.com');

INSERT INTO `medical2`.`Patient` (`name`, `lastname`, `dni`, `age`, `gender`, `day_birth`, `address`, `phone`, `email`)
VALUES ('Sarah', 'Castro', '29898900', '32', 'F', '1989-07-21', 'San Luis 265-C',
'4223334', 'castrosarahh3@gmail.com');


create table doctor_x_patient (

id_doctor int,
id_patient int,


constraint fk_dxp_doctor
foreign key(id_doctor) references Doctor(id_doctor),
constraint fk_dxp_patient
foreign key(id_patient) references Patient(id_patient)
);

INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('1','1');

INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('4','2');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('10','3');

INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('1','6');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('13','7');

INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('2','9');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('12','10');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('4','11');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('6','12');

INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('8','2');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('6','2');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('6','2');

INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('1','7');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('4','7');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('12','8');

INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('6','9');
INSERT INTO doctor_x_patient(`id_doctor`, `id_patient`) VALUES ('4','10');

select * from appointment;
select * from doctor;
select * from medical_record;
select * from doctor_x_patient;
select * from patient;
select * from schedule_doctor;
select * from specialty;
select * from specialty where id_specialty=2;
select * from patient where id_app=9;

select doc.name, doc.lastname, spe.*, sch.* from doctor as doc, specialty as spe, schedule_doctor as sch where
doc.id_specialty=spe.id_specialty and doc.id_schedule=sch.id_schedule and spe.id_specialty=2;

select app.*, pat.name, pat.lastname, pat.dni, pat.id_app, pat.id_doctor, doc.name, doc.lastname
from appointment as app, patient as pat, doctor as doc
where year(day)=2021 and month(day)=04 and day(day)=17
and app.id_app=pat.id_app and pat.id_doctor=doc.id_doctor;
