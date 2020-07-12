drop table if EXISTS `chapter`;

create table `chapter`(
 `id` char(8) not null comment 'ID',
 `course_id` char(8) comment 'course ID',
 `name` varchar(50) comment 'name',
 PRIMARY KEY (`id`)
)ENGINE=innodb DEFAULT CHARSET=utf8mb4;


insert into `chapter` (id, course_id, name) VALUES ('000000', '000000', 'Test Chapter2');
insert into `chapter` (id, course_id, name) VALUES ('000001', '000001', 'Test Chapter3');
insert into `chapter` (id, course_id, name) VALUES ('000002', '000002', 'Test Chapter4');
insert into `chapter` (id, course_id, name) VALUES ('000003', '000003', 'Test Chapter5');
insert into `chapter` (id, course_id, name) VALUES ('000004', '000004', 'Test Chapter6');


drop table if exists `section`;
create table `section`(
 `id` CHAR(8) not null default '' comment 'ID',
 `title` VARCHAR(50) not null,
 `course_id` char(8),
 `chapter_id` char(8),
 `video` varchar(200),
 `time` int,
 `charge` char(1),
 `sort` int,
 `create_at` DATETIME(3),
 `update_at` DATETIME(3),
 PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `section` (id, title, course_id, chapter_id, video, time, charge, sort, create_at, update_at)
    VALUES ('0000003','test section 3', '0000003','0000000','',500,'F',1,now(), now());

drop table if exists `course`;
create table `course`(
    `id` CHAR(8) not null default '' comment 'ID',
    name varchar(50) not null comment 'course_name',
    summary varchar(2000) comment 'summary',
    time int default 0,
    price decimal(8, 2) not null default 0.00,
    image varchar(100),
    level char(1) not null ,
    charge char(1),
    status char(1),
    enroll integer default 0,
    sort int,
    create_at datetime(3),
    update_at datetime(3),
    primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;