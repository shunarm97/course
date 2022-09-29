CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "password" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "age" int,
  "id_roles" uuid
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "id_categories" uuid
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "id_course" uuid
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "users_courses" (
  "id" uuid PRIMARY KEY,
  "id_user" uuid,
  "id_course" uuid
);

ALTER TABLE "users" ADD FOREIGN KEY ("id_roles") REFERENCES "roles" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_categories") REFERENCES "categories" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");



insert into categories (
id, 
name
) values (
'd7e57716-e734-4f48-abbc-9457668692b5',
'historia'
), (
'45c435b8-6447-41be-9e15-2fd6c25cce07',
'informatica'
),(
'7a44a171-8825-4136-adf4-0c57e4abbf29', 
'literatura'
);

insert into roles (
id, 
name
) values ( 
'c9061965-eb84-4f2d-8e5c-90e11a8be366',
'student'
), (
'001748c2-f285-431b-89f2-0e2b5ea3b73f',
'teacher'
), ( 
'ba990673-54e5-4e43-8956-0fae6c07370f',
'admin'
);

insert into courses  (
id,
title,
description,
level,
teacher,
id_categories 
) values (
'acdf530c-6e12-4c25-93fb-1dec5f9b0662',
'la evolucion de la computadora',
'vamos a ver la creacion de una pag de red social hasta grandes proyectos',
'principiantes',
'cristiano ronaldo',
'45c435b8-6447-41be-9e15-2fd6c25cce07'
), (
'6a7e1480-28d1-4647-bfcb-67ef9af8c0d5',
'la odisea',
'es un libro para muy popular que lo van analizar',
'avanzado',
'megan fox',
'7a44a171-8825-4136-adf4-0c57e4abbf29'
), (
'711eddf1-8579-4ef2-8be7-e7261e261bcf',
'la historia de adolfo hyler',
'habla de como se covirtio en el anticrito',
'medio',
'marco polo',
'd7e57716-e734-4f48-abbc-9457668692b5'
);


insert into course_videos (
id,
title,
url,
id_course
) values (
'46b8c42b-e730-4966-b830-cbf415cfc32b',
'hiler su inicios',
'https://wdwdawfgse5e6k4u5h3w45liq4q34q354945t93',
'711eddf1-8579-4ef2-8be7-e7261e261bcf'
), ( 
'85ba13fa-89a8-471e-a794-2fbce3c2857d',
'el fin de hyler',
'https://wj3q38r8w8rwh3riw3rw873hrrw3',
'711eddf1-8579-4ef2-8be7-e7261e261bcf'
), (
'9edae890-5e75-430a-9d21-98c80fe8d3c7',
'la primera computadora',
'https://gb87ff873f7qw3h7f78f78w38f',
'acdf530c-6e12-4c25-93fb-1dec5f9b0662'
);


insert into users  (
id,
name,
password,
email,
age,
id_roles 
) values (
'736315d6-4101-4dba-bae7-b628fec2bdc7',
'maria pantoja',
'mar123',
'mar@example.com',
15,
'c9061965-eb84-4f2d-8e5c-90e11a8be366'
), (
'17bd3f7f-24c7-4d01-9611-198977ef857d',
'jose paredes',
'jos123',
'jos@example.com',
20,
'001748c2-f285-431b-89f2-0e2b5ea3b73f'
), (
'c7d74283-f709-4bb5-a816-ae31555ec8a5',
'alexander toscano',
'alex123',
'alex@example.com',
25,
'ba990673-54e5-4e43-8956-0fae6c07370f'
);

insert into users_courses (
id,
id_user,
id_course 
) values (
'4ba1c21b-1598-4d65-85e1-11b0555210dc',
'736315d6-4101-4dba-bae7-b628fec2bdc7',
'711eddf1-8579-4ef2-8be7-e7261e261bcf'
)
