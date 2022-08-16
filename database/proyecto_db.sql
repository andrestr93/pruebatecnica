/* 2022-08-10 17:38:54 [542 ms] */
CREATE TABLE table_name(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    update_time DATETIME COMMENT 'Update Time',
    content VARCHAR(255) COMMENT 'content'
) DEFAULT CHARSET UTF8 COMMENT 'newTable';
/* 2022-08-10 17:39:50 [4 ms] */
drop table table_name;
/* 2022-08-10 17:40:32 [64 ms] */
CREATE TABLE IF NOT EXISTS USUARIOS(
id_usuario     int(255) auto_increment not null,
rol            varchar(20),
nombre         varchar(100),
CONSTRAINT pk_users PRIMARY KEY(id_usuario)
)ENGINE=InnoDb;
/* 2022-08-10 17:53:33 [169 ms] */
ALTER TABLE USUARIOS MODIFY COLUMN ROL INT (5);
/* 2022-08-10 17:57:28 [10 ms] */
ALTER TABLE USUARIOS ADD CONSTRAINT CK_ROLES CHECK (ROL<=3);
/* 2022-08-10 18:01:33 [1726 ms] */
INSERT INTO usuarios VALUES(NULL, '1', 'Víctor');
/* 2022-08-10 18:01:35 [25 ms] */
INSERT INTO usuarios VALUES(NULL, '2', 'Juan');
/* 2022-08-10 18:01:36 [5 ms] */
INSERT INTO usuarios VALUES(NULL, '2', 'Manolo');
/* 2022-08-10 18:09:17 [55 ms] */
CREATE TABLE IF NOT EXISTS PROYECTOS(
id_proyecto     int(255) auto_increment not null,
nombre         varchar(255),
lenguaje      varchar(255),
id_actividad  varchar(255),
CONSTRAINT pk_proyectos_id PRIMARY KEY(id_proyecto),
CONSTRAINT fk_proyectos_actividad FOREIGN KEY(id_proyecto) REFERENCES usuarios(id_usuario)
)ENGINE=InnoDb;
/* 2022-08-10 18:36:49 [1 ms] */
CREATE TABLE IF NOT EXISTS PROYECTOS(
id_proyecto     int(255) auto_increment not null,
nombre         varchar(255),
lenguaje      varchar(255),
id_actividad  varchar(255),
CONSTRAINT pk_proyectos_id PRIMARY KEY(id_proyecto),
CONSTRAINT fk_proyectos_user FOREIGN KEY(id_proyecto) REFERENCES usuarios(id_usuario)
)ENGINE=InnoDb;
/* 2022-08-10 18:37:43 [5 ms] */
select * from PROYECTOS;
/* 2022-08-10 18:40:32 [5 ms] */
SHOW CREATE TABLE PROYECTOS;
/* 2022-08-10 18:41:06 [1 ms] */
SHOW CREATE TABLE USUARIOS;
/* 2022-08-10 18:41:43 [1 ms] */
SHOW CREATE TABLE PROYECTOS;
/* 2022-08-10 18:44:36 [14 ms] */
drop table proyectos;
/* 2022-08-10 18:44:45 [200 ms] */
CREATE TABLE IF NOT EXISTS PROYECTOS(
id_proyecto     int(255) auto_increment not null,
nombre         varchar(255),
lenguaje      varchar(255),
id_actividad  varchar(255),
CONSTRAINT pk_proyectos_id PRIMARY KEY(id_proyecto),
CONSTRAINT fk_proyectos_user FOREIGN KEY(id_proyecto) REFERENCES usuarios(id_usuario)
)ENGINE=InnoDb;
/* 2022-08-10 18:45:10 [2 ms] */
alter table proyectos;
/* 2022-08-10 18:45:44 [2 ms] */
show create table proyectos;
/* 2022-08-10 18:47:35 [24 ms] */
INSERT INTO proyectos VALUES(NULL, 'Libreria online', 'JavaScript', 1);
/* 2022-08-10 18:47:49 [8 ms] */
INSERT INTO proyectos VALUES(NULL, 'Tienda online', 'Python',2);
/* 2022-08-10 18:49:09 [43 ms] */
delete from proyectos;
/* 2022-08-10 21:25:33 [6 ms] */
select * from proyectos;
/* 2022-08-10 21:26:19 [9 ms] */
INSERT INTO proyectos VALUES(NULL, 'Libreria online', 'JavaScript', 1);
/* 2022-08-10 21:26:23 [6 ms] */
INSERT INTO proyectos VALUES(NULL, 'Tienda online', 'Python',2);
/* 2022-08-10 21:32:42 [18 ms] */
drop table proyectos;
/* 2022-08-10 21:33:47 [47 ms] */
CREATE TABLE IF NOT EXISTS PROYECTOS(
id_proyecto     int(255) auto_increment not null,
nombre         varchar(255),
lenguaje      varchar(255),
id_actividad  varchar(255),
CONSTRAINT pk_proyectos_id PRIMARY KEY(id_proyecto)
)ENGINE=InnoDb;
/* 2022-08-10 21:35:33 [50 ms] */
CREATE TABLE IF NOT EXISTS ACTIVIDAD(
id_actividad    int(255) auto_increment not null,
nombre          varchar(255),
des_actividad        int(255),
id_incidencia         int(255),
CONSTRAINT pk_idactividad PRIMARY KEY(id_actividad)
)ENGINE=InnoDb;
/* 2022-08-10 21:37:59 [5 ms] */
CREATE TABLE IF NOT EXISTS ACTIVIDAD(
id_incidencia    int(255) auto_increment not null,
nombre          varchar(255),
in_descripcion  varchar(255),
CONSTRAINT pk_idincidencia PRIMARY KEY(id_incidencia)
)ENGINE=InnoDb;
/* 2022-08-10 21:43:02 [389 ms] */
alter table usuarios add column id_proyecto int(255);
/* 2022-08-10 21:44:29 [78 ms] */
ALTER TABLE USUARIOS ADD CONSTRAINT FK_ID_PROYECTO_USUARIOS_PROYECTOS FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto);
/* 2022-08-10 21:49:35 [7 ms] */
SELECT * FROM PROYECTOS;
/* 2022-08-10 21:50:00 [8 ms] */
SELECT * FROM USUARIOS;
/* 2022-08-10 21:51:37 [1747 ms] */
DELETE FROM USUARIOS WHERE ROL = 2;
/* 2022-08-10 21:51:49 [5 ms] */
SELECT * FROM USUARIOS;
/* 2022-08-10 21:52:26 [25 ms] */
DELETE FROM USUARIOS WHERE ROL = 1;
/* 2022-08-10 21:52:50 [4 ms] */
SELECT * FROM PROYECTOS;
/* 2022-08-10 21:53:09 [2 ms] */
SELECT * FROM ACTIVIDAD;
/* 2022-08-10 21:53:45 [57 ms] */
CREATE TABLE IF NOT EXISTS INCIDENCIA(
id_incidencia    int(255) auto_increment not null,
nombre          varchar(255),
in_descripcion  varchar(255),
CONSTRAINT pk_idincidencia PRIMARY KEY(id_incidencia)
)ENGINE=InnoDb;
/* 2022-08-10 22:07:01 [1798 ms] */
ALTER TABLE PROYECTOS MODIFY COLUMN id_actividad int(255);
/* 2022-08-10 22:07:08 [58 ms] */
ALTER TABLE PROYECTOS ADD CONSTRAINT FK_ID_ACTIVIDAD_PROYECTOS FOREIGN KEY (id_actividad) REFERENCES actividad (id_actividad);
/* 2022-08-10 22:07:47 [3 ms] */
CREATE TABLE IF NOT EXISTS INCIDENCIA(
id_incidencia    int(255) auto_increment not null,
nombre          varchar(255),
in_descripcion  varchar(255),
CONSTRAINT pk_idincidencia PRIMARY KEY(id_incidencia)
)ENGINE=InnoDb;
/* 2022-08-10 22:10:08 [66 ms] */
ALTER TABLE ACTIVIDAD ADD CONSTRAINT FK_ID_INCIDENCIA_ACTIVIDAD_INCIDENCIA FOREIGN KEY (id_incidencia) REFERENCES INCIDENCIA  (id_incidencia);
/* 2022-08-10 22:20:40 [9 ms] */
INSERT INTO incidencia VALUES (NULL , 'fallo al meter campos formulario' , 'no se puede meter campos en el formulario');
/* 2022-08-10 22:21:55 [5 ms] */
select * from incidencia;
/* 2022-08-10 22:22:50 [10 ms] */
select * from actividad;
/* 2022-08-10 22:23:23 [105 ms] */
alter table actividad modify column des_actividad varchar(255);
/* 2022-08-10 22:23:34 [10 ms] */
INSERT INTO actividad VALUES(NULL, 'creacion de campos de formulario', 'hacer formulario de campos', 1);
/* 2022-08-10 22:28:36 [8 ms] */
INSERT INTO proyectos
VALUES
(
        NULL,
        'Libreria online',
        'JavaScript',
        1
    );
/* 2022-08-10 22:29:12 [2 ms] */
select * from usuarios;
/* 2022-08-10 22:30:00 [22 ms] */
INSERT INTO usuarios
VALUES(NULL, 1, 'Víctor' , 1);
/* 2022-08-10 22:30:46 [24 ms] */
INSERT INTO usuarios VALUES(NULL, 2, 'Juan' , 1);
/* 2022-08-10 22:30:49 [7 ms] */
INSERT INTO usuarios VALUES(NULL, 2, 'Manolo' ,1 );
/* 2022-08-10 22:36:42 [54 ms] */
SELECT * FROM USUARIOS INNER JOIN PROYECTOS ON usuarios.id_usuario = proyectos.id_proyecto;
/* 2022-08-10 22:37:51 [3 ms] */
SELECT * FROM USUARIOS;
/* 2022-08-10 22:38:04 [1 ms] */
SELECT * FROM USUARIOS INNER JOIN PROYECTOS ON usuarios.id_usuario = proyectos.id_proyecto;
/* 2022-08-10 22:39:53 [10 ms] */
SELECT * FROM USUARIOS INNER JOIN PROYECTOS ON usuarios.id_proyecto = proyectos.id_proyecto;
