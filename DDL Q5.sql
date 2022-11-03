create database hall;
use hall;
create Table t_hall_details(
hall_id Varchar(10) primary key,
hall_name Varchar(25),
city varchar(20),
hall_type varchar(10),
capacity int(10),
cost_perday int(10)
);
create Table t_customer_details(
customer_id Varchar(10) primary key,
customer_name Varchar(20),
mobile_no int(11),
customer_city varchar(20)
);
create Table t_hall_booking(
hall_id Varchar(10),
customer_id Varchar(10),
event_name varchar(20),
event_date DATE
);

ALTER table t_hall_booking
ADD FOREIGN KEY(hall_id) REFERENCES t_hall_details(hall_id),
ADD FOREIGN KEY(customer_id) REFERENCES t_customer_details(customer_id);