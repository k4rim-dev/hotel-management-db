CREATE TABLE "Hotel_Rooms" (
  "room_id" SERIAL PRIMARY KEY,
  "room_type" VARCHAR(50) NOT NULL,
  "price" DECIMAL(10,2) NOT NULL,
  "room_description" TEXT,
  "status" VARCHAR(20) NOT NULL
);

CREATE TABLE "Booking" (
  "booking_id" SERIAL PRIMARY KEY,
  "check_in_date" DATE NOT NULL,
  "check_out_date" DATE NOT NULL,
  "guest_count" INT NOT NULL,
  "status" VARCHAR(20) NOT NULL,
  "room_id" INT NOT NULL,
  "client_id" INT NOT NULL
);

CREATE TABLE "Task" (
  "task_id" SERIAL PRIMARY KEY,
  "booking_id" INT NOT NULL,
  "task_date" DATE NOT NULL,
  "stay_duration" INT NOT NULL,
  "end_date" DATE NOT NULL,
  "task_type" VARCHAR(20) NOT NULL,
  "status" VARCHAR(20) NOT NULL,
  "employee_id" INT NOT NULL
);

CREATE TABLE "Employee" (
  "employee_id" SERIAL PRIMARY KEY,
  "surname" VARCHAR(50) NOT NULL,
  "name" VARCHAR(50) NOT NULL,
  "patronymic" VARCHAR(50),
  "birth_date" DATE NOT NULL,
  "employee_number" INT NOT NULL UNIQUE,
  "position" VARCHAR(50) NOT NULL,
  "phone" VARCHAR(15) NOT NULL,
  "hire_date" DATE NOT NULL,
  "termination_date" DATE
);

CREATE TABLE "Review" (
  "id_review" SERIAL PRIMARY KEY,
  "booking_id" INT NOT NULL,
  "rating" INT NOT NULL CHECK ("rating" BETWEEN 1 AND 5),
  "review_text" TEXT,
  "review_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Compensation_Discount" (
  "compensation_id" SERIAL PRIMARY KEY,
  "client_id" INT NOT NULL,
  "booking_id" INT NOT NULL,
  "description" TEXT,
  "compensation_status" VARCHAR(20) NOT NULL,
  "date_issued" DATE NOT NULL
);

CREATE TABLE "Guest_Preferences" (
  "preference_id" SERIAL PRIMARY KEY,
  "client_id" INT NOT NULL,
  "preference_text" TEXT NOT NULL
);

CREATE TABLE "Hotel_Services" (
  "service_id" SERIAL PRIMARY KEY,
  "service_name" VARCHAR(50) NOT NULL,
  "service_description" TEXT,
  "price" DECIMAL(10,2) NOT NULL
);

CREATE TABLE "Service_Usage" (
  "usage_id" SERIAL PRIMARY KEY,
  "service_id" INT NOT NULL,
  "booking_id" INT NOT NULL,
  "usage_date" DATE NOT NULL
);

CREATE TABLE "Payment" (
  "payment_id" SERIAL PRIMARY KEY,
  "booking_id" INT NOT NULL,
  "payment_date" DATE NOT NULL,
  "amount" DECIMAL(10,2) NOT NULL,
  "payment_type" VARCHAR(20) NOT NULL,
  "payment_status" VARCHAR(20) NOT NULL
);

CREATE TABLE "Client" (
  "client_id" SERIAL PRIMARY KEY,
  "surname" VARCHAR(50) NOT NULL,
  "name" VARCHAR(50) NOT NULL,
  "patronymic" VARCHAR(50),
  "email" VARCHAR(50) UNIQUE NOT NULL,
  "phone" VARCHAR(15) UNIQUE NOT NULL,
  "loyalty_status" VARCHAR(20),
  "registration_date" DATE DEFAULT CURRENT_DATE
);

ALTER TABLE "Booking" 
  ADD FOREIGN KEY ("client_id") REFERENCES "Client" ("client_id") ON DELETE CASCADE;

ALTER TABLE "Booking" 
  ADD FOREIGN KEY ("room_id") REFERENCES "Hotel_Rooms" ("room_id") ON DELETE SET NULL;

ALTER TABLE "Task" 
  ADD FOREIGN KEY ("booking_id") REFERENCES "Booking" ("booking_id") ON DELETE CASCADE;

ALTER TABLE "Task" 
  ADD FOREIGN KEY ("employee_id") REFERENCES "Employee" ("employee_id") ON DELETE SET NULL;

ALTER TABLE "Review" 
  ADD FOREIGN KEY ("booking_id") REFERENCES "Booking" ("booking_id") ON DELETE CASCADE;

ALTER TABLE "Compensation_Discount" 
  ADD FOREIGN KEY ("client_id") REFERENCES "Client" ("client_id") ON DELETE CASCADE;

ALTER TABLE "Compensation_Discount" 
  ADD FOREIGN KEY ("booking_id") REFERENCES "Booking" ("booking_id") ON DELETE CASCADE;

ALTER TABLE "Guest_Preferences" 
  ADD FOREIGN KEY ("client_id") REFERENCES "Client" ("client_id") ON DELETE CASCADE;

ALTER TABLE "Service_Usage" 
  ADD FOREIGN KEY ("service_id") REFERENCES "Hotel_Services" ("service_id") ON DELETE CASCADE;

ALTER TABLE "Service_Usage" 
  ADD FOREIGN KEY ("booking_id") REFERENCES "Booking" ("booking_id") ON DELETE CASCADE;

ALTER TABLE "Payment" 
  ADD FOREIGN KEY ("booking_id") REFERENCES "Booking" ("booking_id") ON DELETE CASCADE;
