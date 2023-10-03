create database hotelalura;

use hotelalura;

#GRANT ALL PRIVILEGES ON hotelalura.*;

create table hotelalura.reservas(
	`id` int not null AUTO_INCREMENT,
    `fecha_entrada` Date,
    `fecha_salida` Date,
    `valor` varchar(250),
    `formaPago` varchar(20),
    primary key (`id`)
)

create table hotelalura.huespedes(
	`id` int not null AUTO_INCREMENT,
    `nombre` varchar(20),
    `apellido` varchar(20),
	`fecha_nacimiento` date,
	`nacionalidad` varchar(100),
    `telefono` varchar(20),
    `idReserva` int not null,
    primary key (`id`),
    CONSTRAINT `idReserva` FOREIGN KEY (`idReserva`)
    REFERENCES `hotelalura`.`reservas`(`id`)
)

select * from huespedes
select * from reservas