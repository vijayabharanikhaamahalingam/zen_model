show databases;
CREATE DATABASE zen_db;
use zen_db;
CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
insert into users values(
1,'viji','viji@123.com','gfhgf',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP
);
insert into users values(
2,'ganesh','ganrsh@123.com','thrhgf',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP
);
insert into users values(
3,'jessi','jes@123.com','rfgfb',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP
);
insert into users values(
4,'suba','subi@123.com','fghfhg',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP
);
insert into users values(
5,'ajay','ajay@123.com','mnmgbn',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP
);
commit;

select * from users;

CREATE TABLE course (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(50) NOT NULL UNIQUE,
user_id int,
foreign key(user_id) references users(id)
);
select * from course;
INSERT INTO course VALUES
(1,'FSD',1),
(2,'pyton',1),
(3,'java',2),
(4,'c++',4),
(5,'backend',3),
(6,'javascript',5),
(7,'frontend',2);
commit;

CREATE TABLE session (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
course_id int,
foreign key(course_id) references course(id),
session_day int,
atteded_at DATETIME DEFAULT CURRENT_TIMESTAMP,
recordings VARCHAR(50)
);
INSERT INTO session VALUES
(1,1,1,CURRENT_TIMESTAMP,'http/drive.1'),
(2,2,2,CURRENT_TIMESTAMP,'http/drive.2'),
(3,3,3,CURRENT_TIMESTAMP,'http/drive.3'),
(4,4,4,CURRENT_TIMESTAMP,'http/drive.4'),
(5,5,5,CURRENT_TIMESTAMP,'http/drive.4');
commit;
select * from session;