insert into customer 	(first_name,		last_name,      	email)
			values 		('Quentin',		'Jones',	        'qjones34@gmail.com'),
						('Sally',		'Ride',			'countrygrrl22@yahoo.com'),
						('Brian',		'Butcher',			'bboos@hotmail.com'),
						('Jhonny',     	'Davis',			'duckman66@gmail.com');
						
					
CREATE or replace FUNCTION Insert_stuff(_first_name text, _last_name text, _email text)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO mechanic(first_name, last_name, email)
        VALUES(_first_name, _last_name, _email);
      END;
  $BODY$
  LANGUAGE plpgsql volatile;
 
 select * from Insert_stuff('Silky', 'Johnston', 'playerhater@gmail.com');
 select Insert_stuff('Rhonda', 'Simpson', 'nicelady@gmail.com');
 select Insert_stuff('David', 'Puddy', 'eightball@gmail.com');
 select Insert_stuff('Danny', 'Devito', 'shortround58@gmail.com');
 select Insert_stuff('Willy Mo', 'Pena', 'totes223@gmail.com');
 
CREATE or replace FUNCTION Insert_stuff(_first_name text, _last_name text, _email text)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO salesperson(first_name, last_name, email)
        VALUES(_first_name, _last_name, _email);
      END;
  $BODY$
  LANGUAGE plpgsql volatile;
 
 select Insert_stuff('Slick Ronny', 'Jackson', 'srjackson@thedealership.com');
 select Insert_stuff('Ed', 'Jabroni', 'ejabroni@thedealership.com');
 select Insert_stuff('Jennifer', 'Jackson', 'jjackson@thedealership.com');
 select Insert_stuff('Arthur', 'Wilson', 'awilson@thedealership.com');
 select Insert_stuff('Katie', 'Baker', 'kbaker@thedealership.com');

insert into vehicle_for_sale (year, 	make, 	model, 			price)
			values 		(2022,		'Ford',	    'Farcus', 		8990.00),
						(2021,		'BMW',		'X5',			54900.00),
						(2022,		'Mazda',	'Mazda6',		36540.00),
						(2021,     	'BMW',		'X9',			68900.00),
						(2020,		'Honda',	'Civic',		19300.00),
						(2021,     	'Toyota',	'Camry',		28900.00);

insert into vehicle_for_service (year, 	make, 	model)
			values 		(2012,		'Toyota',	'Rav4'),
						(1978,		'Cadillac',	'Eldorado'),
						(2016,		'Mazda',	'Mazda6'),
						(2014,     	'Jaguar',	'XJ7'),
						(1998,		'Jeep',		'Cherokee'),
						(2003,     	'Toyota',	'Supra');
					
insert into customer 	(first_name,		last_name,      	email)
			values 		('Jason',		'Sebastian',	        'jcbass@gmail.com'),
						('Wanda',		'Hykes',			'wanda222@yahoo.com'),
						('Lisa',		'Simpson',			'saxxygirl33@hotmail.com'),
						('Alison',     	'Weigman',			'breesmom@gmail.com');

  CREATE or replace FUNCTION Insert_stuff(_vehicle_id int, _mechanic_id int, _customer_id int, _work_performed text, _parts_ordered text, _completion_date date, _cash float)
  RETURNS void AS
  $BODY$
      BEGIN
        INSERT INTO service_ticket(vehicle_id, mechanic_id, customer_id, work_performed, parts_ordered, completion_date, "cost")
        VALUES(_vehicle_id, _mechanic_id, _customer_id, _work_performed, _parts_ordered, _completion_date, _cash);
      END;
  $BODY$
  LANGUAGE plpgsql volatile;
 
select Insert_stuff(6, 2, 5, 'oil/filter change', 'n/a', date '2022-01-04', 88.67);
select Insert_stuff(5, 3, 7, 'rebuilt alternator', 'rotor', '2022-01-09', 497.65);
select Insert_stuff(4, 1, 8, 'mirror replacement', 'driver mirror', '2022-01-11', 501.54);
select Insert_stuff(3, 4, 1, 'oil/filter change', 'n/a', '2022-01-21', 69.56);
select Insert_stuff(2, 5, 3, 'engine replacement', 'engine', '2022-01-23', 4589.01);
select Insert_stuff(1, 2, 4, 'tire rotation', 'n/a', '2022-01-24', 102.25);
select Insert_stuff(1, 4, 4, 'change air freshener', 'new-car scent', '2022-01-24', 3.99);
 
insert into invoice 	(salesperson_id,	customer_id, vehicle_id, sale_date, final_cost)
			values 		(4, 	1, 	6, 	'2020-08-04', 	32209.09),
						(1, 	7, 	4, 	'2021-11-14', 	67009.22),
						(3, 	8, 	3, 	'2021-12-21', 	39764.74),
						(5, 	2, 	1, 	'2021-12-29', 	9932.20),
						(2, 	1, 	5, 	'2022-02-07', 	22923.87);
					
					