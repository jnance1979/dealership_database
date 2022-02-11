CREATE TABLE "customer" (
  "id" serial PRIMARY key,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255)
);

CREATE TABLE "salesperson" (
  "id" serial PRIMARY key,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255)
);

CREATE TABLE "mechanic" (
  "id" serial PRIMARY key,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255)
);

CREATE TABLE "vehicle" (
  "id" serial PRIMARY key,
  "year" int,
  "make" varchar(255),
  "model" varchar(255),
  "price" float
);

CREATE TABLE "invoice" (
  "id" serial PRIMARY key,
  "salesperson_id" int,
  "customer_id" int,
  "vehicle_id" int,
  "sale_date" date
);

CREATE TABLE "service_ticket" (
  "id" serial PRIMARY key,
  "vehicle_id" int,
  "mechanic_id" int,
  "customer_id" int,
  "work_performed" varchar(255),
  "parts_ordered" varchar(255),
  "completion_date" date,
  "cost" float
);

CREATE TABLE "service_record" (
  "vehicle_id" int,
  "service_ticket_id" int
);

ALTER TABLE "invoice"
ADD "final_cost" float;

ALTER TABLE vehicle
RENAME TO vehicle_for_sale;

CREATE TABLE "vehicle_for_service" (
  "id" serial PRIMARY key,
  "year" int,
  "make" varchar(255),
  "model" varchar(255)
);

drop table service_record



ALTER TABLE "invoice" ADD FOREIGN KEY ("salesperson_id") REFERENCES "salesperson" ("id");

ALTER TABLE "invoice" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "invoice" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicle" ("id");

ALTER TABLE "service_record" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicle" ("id");

ALTER TABLE "service_record" ADD FOREIGN KEY ("service_ticket_id") REFERENCES "service_ticket" ("id");

ALTER TABLE "service_ticket" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicle" ("id");

ALTER TABLE "service_ticket" ADD FOREIGN KEY ("mechanic_id") REFERENCES "mechanic" ("id");

ALTER TABLE "service_ticket" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "service_ticket" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicle_for_sale" ("id");

ALTER TABLE "service_record" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicle_for_sale" ("id");

