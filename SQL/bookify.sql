
CREATE TABLE employee (
  id int   PRIMARY KEY AUTO_INCREMENT ,
  name varchar(50) ,
  email varchar(50)  
);



INSERT INTO employee ( name, email) 
VALUES
( 'Ahmed', 'ahmedahmed@gmail.com'),
( 'mohamed', 'mohamedmohamed@gmail.com'),
( 'omar', 'omaromar@gmail.com'),
( 'abdellah', 'abdellah@gmail.com');



CREATE TABLE salle (
  id int PRIMARY KEY AUTO_INCREMENT,
  number int  NOT NULL,
  capacity int NOT NULL
);



INSERT INTO salle ( number, capacity)
 VALUES
( 1, 2),
( 2, 2),
( 3, 2),
( 4, 2);



CREATE TABLE equipment (
  id int  PRIMARY KEY AUTO_INCREMENT,
  name varchar(30)  ,
  salle_id int  NOT NULL,
  FOREIGN KEY (salle_id) REFERENCES salle(id);
);




INSERT INTO equipment (name, salle_id)
 VALUES
( 'fridge', 4),
( 'television', 2),
( 'climatiseur', 3),
( 'table', 3);



CREATE TABLE reservation (
  id int PRIMARY KEY AUTO_INCREMENT,
  salle_id int ,
  employee_id int ,
  reservation_date date ,
  start_time time ,
  end_time time 
  FOREIGN KEY (salle_id) REFERENCES salle (id),
  FOREIGN KEY (employee_id) REFERENCES employee(id)
) ;





INSERT INTO reservation ( salle_id, employee_id, reservation_date, start_time, end_time)
 VALUES
( 1, 1, '2023-11-05', '04:40:02', '05:40:02'),
( 2, 2, '2023-11-06', '05:40:02', '06:40:02'),
( 3, 3, '2023-11-08', '06:40:02', '07:40:02'),
( 4, 4, '2023-11-09', '07:40:02', '08:40:02');

-- joins 

SELECT name , salle_id 
FROM equipment
INNER JOIN salle ON equipment.salle_id = salle.id;

-- joins 

SELECT *
FROM reservation
INNER JOIN employee  ON reservation.employee_id = employee.id
INNER JOIN salle ON reservation.salle_id = salle.id;




