create database empresa1;
use empresa1;
show tables;
show create table alumnos; #mostrar las llaver foraneas (constraint)
#region tabla alumnos
describe alumnos;
create table alumnos(
matricula int primary key auto_increment,
nombre varchar(20),
apellidopaterno varchar(20),
apellidomaterno varchar(20),
fechanacimiento varchar(20),
domicilio varchar(20),
email varchar(20),
sexo varchar(10),
fkestados varchar(20),
fkciudad varchar(200),
foreign key(fkestados) references estados(codigo));
alter table alumnos add fkgrupo int;
alter table alumnos add constraint fkgrupo foreign key (fkgrupo) references grupoi(idgrupoi) on delete cascade on update cascade;
alter table alumnos drop foreign key alumnos_ibfk_2; #eliminar la constraint 
alter table alumnos drop foreign key fkgrupo;
create view v_alumnos as
select matricula as 'Matricula',
alumnos.nombre as 'Nombrealumno',
apellidopaterno as 'Apellidopaterno',
apellidomaterno as 'Apellidomaterno',
fechanacimiento as 'Fechanacimiento',
domicilio,
email as 'Correo',
sexo,
fkestados as 'Estados',
fkciudad as 'ciudad',
nombreGrupo as 'Grupo' from alumnos,grupoi where alumnos.fkgrupo = grupoi.idgrupoi;
select * from v_alumnos;

select Apellidopaterno from v_alumnos where Nombrealumno='hector';
select Apellidomaterno from v_alumnos where Nombrealumno='hector';

select * from v_materia;
select * from alumnos;
drop view v_alumnos;
select * from v_alumnos ;
#end region
#region tabla usuario
create table usuario(Idusuario int primary key auto_increment, nombre varchar(50), apellidopaterno varchar(50),
apellidomaterno varchar(50), contrasenia varchar(20));
#end region
drop table fechas;
#region tabla fechas
create table fechas(
id int auto_increment primary key,
anio varchar(6));
#end region
#region años
insert into Fechas values(null,'1955');
insert into Fechas values(null,'1956');
insert into Fechas values(null,'1957');
insert into Fechas values(null,'1958');
insert into Fechas values(null,'1959');
insert into Fechas values(null,'1960');
insert into Fechas values(null,'1961');
insert into Fechas values(null,'1962');
insert into Fechas values(null,'1963');
insert into Fechas values(null,'1964');
insert into Fechas values(null,'1965');
insert into Fechas values(null,'1966');
insert into Fechas values(null,'1967');
insert into Fechas values(null,'1968');
insert into Fechas values(null,'1969');
insert into Fechas values(null,'1970');
insert into Fechas values(null,'1971');
insert into Fechas values(null,'1972');
insert into Fechas values(null,'1973');
insert into Fechas values(null,'1974');
insert into Fechas values(null,'1975');
insert into Fechas values(null,'1976');
insert into Fechas values(null,'1977');
insert into Fechas values(null,'1978');
insert into Fechas values(null,'1979');
insert into Fechas values(null,'1980');
insert into Fechas values(null,'1981');
insert into Fechas values(null,'1982');
insert into Fechas values(null,'1983');
insert into Fechas values(null,'1984');
insert into Fechas values(null,'1985');
insert into Fechas values(null,'1986');
insert into Fechas values(null,'1987');
insert into Fechas values(null,'1988');
insert into Fechas values(null,'1989');
insert into Fechas values(null,'1990');
insert into Fechas values(null,'1991');
insert into Fechas values(null,'1992');
insert into Fechas values(null,'1993');
insert into Fechas values(null,'1994');
insert into Fechas values(null,'1995');
insert into Fechas values(null,'1996');
insert into Fechas values(null,'1997');
insert into Fechas values(null,'1998');
insert into Fechas values(null,'1999');
insert into Fechas values(null,'2000');
insert into Fechas values(null,'2001');
insert into Fechas values(null,'2002');
insert into Fechas values(null,'2003');
insert into Fechas values(null,'2004');
insert into Fechas values(null,'2005');
insert into Fechas values(null,'2006');
insert into Fechas values(null,'2007');
insert into Fechas values(null,'2008');
insert into Fechas values(null,'2009');
insert into Fechas values(null,'2010');
insert into Fechas values(null,'2011');
insert into Fechas values(null,'2012');
insert into Fechas values(null,'2013');
insert into Fechas values(null,'2014');
insert into Fechas values(null,'2015');
insert into Fechas values(null,'2016');
insert into Fechas values(null,'2017');
insert into Fechas values(null,'2018');
insert into Fechas values(null,'2019');
insert into Fechas values(null,'2020');
insert into Fechas values(null,'2021');
insert into Fechas values(null,'2022');
insert into Fechas values(null,'2023');
insert into Fechas values(null,'2024');
insert into Fechas values(null,'2025');
insert into Fechas values(null,'2026');
insert into Fechas values(null,'2027');
insert into Fechas values(null,'2028');
insert into Fechas values(null,'2029');
insert into Fechas values(null,'2030');
insert into Fechas values(null,'2031');
insert into Fechas values(null,'2032');
insert into Fechas values(null,'2033');
insert into Fechas values(null,'2034');
insert into Fechas values(null,'2035');
insert into Fechas values(null,'2036');
insert into Fechas values(null,'2037');
insert into Fechas values(null,'2038');
insert into Fechas values(null,'2039');
insert into Fechas values(null,'2040');
insert into Fechas values(null,'2041');
insert into Fechas values(null,'2042');
insert into Fechas values(null,'2043');
insert into Fechas values(null,'2044');
insert into Fechas values(null,'2045');
insert into Fechas values(null,'2046');
insert into Fechas values(null,'2047');
insert into Fechas values(null,'2048');
insert into Fechas values(null,'2049');
insert into Fechas values(null,'2050');
#end region
#region tabla estados
drop table estados;
create table estados (
codigo varchar(20) primary key,
nombre varchar(20));
#end region
#region tabla ciudades
drop table ciudades;
create table ciudades(
codigoCiudad int auto_increment primary key,
ciudad varchar(20),
fkestado varchar(20),
foreign key(fkestado) references estados(codigo));
#end region
#region tabla estudios
drop table estudios;
create table estudios(
idestudios int auto_increment primary key,
estudio varchar(100),
lugar varchar(100),
fknombre int,
archivo varchar(50),
foreign key(fknombre) references maestro(idmaestro));

create view v_estudios as 
select idestudios as 'ID',
estudio as 'Estudio_del_maestro',
lugar as 'Lugar_de_estudio',
maestro.nombre as 'Nombre_del_maestro',
archivo as 'Documento' from estudios,maestro where estudios.fknombre = maestro.idmaestro;

#end region
#region tabla maestro
drop table maestro;
select * from maestros;
select * from maestro;
create table maestro(
idmaestro int auto_increment primary key,
cnumero varchar(15),
nombre varchar(20),
apellidopaterno varchar(20),
apellidomaterno varchar(20),
direccion varchar(20),
fkestados varchar(20),
fkciudades varchar(200),
numerocedula varchar(20),
fechanacimiento varchar(20),
titulo varchar(20),
foreign key(fkestados) references estados(codigo));
alter table maestro add fkgrupo int;
alter table maestro add constraint foreign key(fkgrupo) references grupoi(idgrupoi);
alter table maestro add fkmateria int; 
alter table maestro add constraint foreign key(fkmateria) references materia(idmateriaa);
describe maestro;
alter table maestro drop fkmateria ;
show create table maestro;



#end region
#region tabla escuela
create table escuela(
idescuela int auto_increment primary key,
nombreescuela varchar(30),
rfc varchar(20),
domicilio varchar(30),
telefono varchar(15),
correo varchar(30),
pagina varchar(40),
director varchar(30),
logo varchar(30));
#end region
#region tabla materia anterior
drop table materiaanterior;
create table materiaanterior(
idmateria int auto_increment primary key,
codigoa varchar(20),
nombremateria varchar(30),
teoria int,
practica int);

drop table materiaanterior;
#end region
#region tabla de materia
drop table materia;
create table materia(
idmateriaa int auto_increment primary key,
codidom varchar(20),
nombremateriaa varchar(30),
teoria int,
practica int,
fkmateriaa int,
fkmaterias int,
foreign key(fkmateriaa) references materiaanterior(idmateria),
foreign key(fkmaterias) references materiasiguiente(idmaterias)
);
select * from materia;
Create view v_materias as 
select idmateriaa as 'ID',
codidom as 'Codigo',
nombremateriaa as 'Materia',
materia.teoria as 'Horas de teoria',
materia.practica as 'Horas de practica',
materiaanterior.nombremateria as 'Materia anterior',
materiasiguiente.nombrematerias as 'Materia siguiente',
(materia.teoria + materia.practica) as 'Total horas'
from materiaanterior,materia,materiasiguiente
where materia.fkmateriaa = materiaanterior.idmateria and materia.fkmaterias = materiasiguiente.idmaterias;

select * from v_materias;
drop view v_materias;
select * from v_materias where Materia like '%j%';
#end region
#region tabla de materia siguiente
create table materiasiguiente(
idmaterias int auto_increment primary key,
codigos varchar(20),
nombrematerias varchar(30),
teoria int,
practica int);
select * from materiaanterior;
select * from materiasiguiente;
#end region
#region tabla grupo insertar
drop table grupoi;
create table grupoi(
idgrupoi int auto_increment primary key,
nombreGrupo varchar(30)
 );
select * from grupoi;
#end region
#region tabla grupo
drop table grupo;
create table grupo (
idgrupo int auto_increment primary key,
fknombre int,
fkalumno int,
foreign key(fkalumno) references alumnos(matricula),
foreign key(fknombre) references grupoi(idgrupoi)
);
drop view v_grupo;
create view v_grupo as
select idgrupo as 'ID',
grupo.fknombre as 'Grupo',
alumnos.nombre as 'Nombre del alumno' from alumnos,grupo where grupo.fkalumno = alumnos.matricula;
drop view v_grupo;
insert into grupoi values(null,'Quinto A');
insert into grupo values(null,1,3);
select * from alumnos;
select * from v_grupo ;
#end region
#region tabla calificaciones
create table calificaciones(
idcalificacion int auto_increment primary key,
alumno varchar(30),
apellidop varchar(30),
apellidom varchar(30),
fkmateria int,
parcial1 double,
parcial2 double,
parcial3 Double,
parcial4 Double,
foreign key(fkmateria) references materia(idmateriaa));
describe calificaciones;
drop table calificaciones;
drop view v_calificacion;

create view v_calificacion as
select idcalificacion as 'ID',
calificaciones.alumno as 'Nombre_del_alumno',
calificaciones.apellidop as 'Apellido_paterno',
calificaciones.apellidom as 'Apellido_materno',
materia.nombremateriaa as 'Materia',
parcial1 as 'Parcial_1',
parcial2 as 'Parcial_2',
parcial3 as 'Parcial_3',
parcial4 as 'Parcial_4',
((parcial1+parcial2+parcial3+parcial4)/4) as 'Promedio'
from materia,calificaciones 
where calificaciones.fkmateria = materia.idmateriaa;
SELECT * FROM v_calificacion;
select * from calificaciones;
insert into calificaciones values(null,'Axel','Anda','Perez',4,10,10,10,10);
select * from alumnos;
select * from materia;
drop view v_calificacion;
#end region
select * from materia;
select * from materiaanterior;
select * from materiasiguiente;
#region tabla asignacion
drop table asignacion;
select * from asignacion;
select fkmaestro from asignacion;
select * from asignacion where fkmaestro=1;
create table asignacion(
idasignacion int auto_increment primary key,
fkmaestro int,
fkmateria int,
fkgrupo int,
foreign key (fkmaestro) references maestro(idmaestro),
foreign key (fkmateria) references materia(idmateriaa),
foreign key (fkgrupo) references grupoi(idgrupoi));
insert into asignacion values(null,1,1,7);
delete from asignacion where idasignacion=1;
select * from asignacion;
select * from asignacion where fkmaestro = 1;
select * from maestro;
drop view v_asignacion;
insert into asignacion values(null,7,3,11);
create view v_asignacion as
select idasignacion as 'ID',
maestro.nombre as 'Nombre_del_maestro',
maestro.apellidopaterno as 'Apellido_paterno',
maestro.apellidomaterno as 'Apellido_materno',
materia.nombremateriaa as 'Nombre_de_la_materia',
grupoi.nombreGrupo as 'Grupo' from asignacion,maestro,materia,grupoi where asignacion.fkmaestro = maestro.idmaestro and
asignacion.fkmateria = materia.idmateriaa and asignacion.fkgrupo = grupoi.idgrupoi;
select * from v_asignacion;
select * from v_asignacion where Nombre_del_maestro like '%j%';

select * from v_alumnos;
select * from v_alumnos where Grupo like'%Q%';
select apellidopaterno from maestro where nombre like '%juan%';
select * from maestro;
select * from v_maestro;

#end region
select materiaanterior.nombremateria,materia.nombremateriaa,materiasiguiente.nombrematerias from materiaanterior,materia,materiasiguiente;
select nombremateriaa from materia;
select * from materiasiguiente;
#region insertar estados
insert into estados values ('AGU','Aguascalientes');
insert into estados values ('BCN','Baja California');
insert into estados values ('BCS','Baja California Sur');
insert into estados values ('CAM','Campeche');
insert into estados values ('CHP','Chiapas');
insert into estados values ('CHH','Chihuahua');
insert into estados values ('CMX3','Ciudad de México');
insert into estados values ('COA','Coahuila');
insert into estados values ('COL','Colima');
insert into estados values ('DUR','Durango');
insert into estados values ('GUA','Guanajuato');
insert into estados values ('GRO','Guerrero');
insert into estados values ('HID','Hidalgo');
insert into estados values ('JAL','Jalisco');
insert into estados values ('MEX','México');
insert into estados values ('MIC','Michoacán');
insert into estados values ('MOR','Morelos');
insert into estados values ('NAY','Nayarit');
insert into estados values ('NLE','Nuevo León');
insert into estados values ('OAX','Oaxaca');
insert into estados values ('PUE','Puebla');
insert into estados values ('QUE','Querétaro');
insert into estados values ('ROO','Quintana Roo');
insert into estados values ('SLP','San Luis Potosí');
insert into estados values ('SIN','Sinaloa');
insert into estados values ('SON','Sonora');
insert into estados values ('TAB','Tabasco');
insert into estados values ('TAM','Tamaulipas');
insert into estados values ('TLA','Tlaxcala');
insert into estados values ('VER','Veracruz');
insert into estados values ('YUC','Yucatán');
insert into estados values ('ZAC','Zacatecas');
#end region
#region estados
#region ciudades aguascalientes
insert into ciudades values(null,'Aguascalientes','AGU');
insert into ciudades values(null,'Asientos','AGU');
insert into ciudades values(null,'Calvillo','AGU');
insert into ciudades values(null,'Cosío','AGU');
insert into ciudades values(null,'Jesús María','AGU');
insert into ciudades values(null,'Pabellón de Arteaga','AGU');
insert into ciudades values(null,'Rincón de Romos','AGU');
insert into ciudades values(null,'San José de Gracia','AGU');
insert into ciudades values(null,'Tepezalá','AGU');
insert into ciudades values(null,'El Llano','AGU');
insert into ciudades values(null,'San Francisco de los Romo','AGU');
#end region
#region baja california
insert into ciudades values(null,'Santa Isabel','BCN');
insert into ciudades values(null,'Ciudad Guadalupe Victoria','BCN');
insert into ciudades values(null,'San Felipe','BCN');
insert into ciudades values(null,'Progreso','BCN');
insert into ciudades values(null,'Ciudad Coahuila','BCN');
insert into ciudades values(null,'Ciudad Morelos','BCN');
insert into ciudades values(null,'Tecolotes (Baja California)','BCN');
insert into ciudades values(null,'Batáquez','BCN');
insert into ciudades values(null,'San Quintín','BCN');
insert into ciudades values(null,'La Rumorosa','BCN');
insert into ciudades values(null,'Los Algodones','BCN');
insert into ciudades values(null,'Ejido Punta Colonet','BCN');
insert into ciudades values(null,'Cataviña','BCN');
insert into ciudades values(null,'Venustiano Carranza','BCN');
insert into ciudades values(null,'Estación Delta','BCN');
insert into ciudades values(null,'Estación Coahuila','BCN');
insert into ciudades values(null,'Mexicali','BCN');
insert into ciudades values(null,'Tijuana','BCN');
insert into ciudades values(null,'Ensenada','BCN');
insert into ciudades values(null,'Tecate','BCN');
insert into ciudades values(null,'Rosarito','BCN');
#end region
#region baja california s
insert into ciudades values(null,'La Paz','BCS');
insert into ciudades values(null,'San José del Cabo','BCS');
insert into ciudades values(null,'Cabo San Lucas','BCS');
insert into ciudades values(null,'Colonia del Sol','BCS');
insert into ciudades values(null,'Ciudad Constitución','BCS');
insert into ciudades values(null,'Loreto','BCS');
insert into ciudades values(null,'Guerrero Negro','BCS');
insert into ciudades values(null,'Santa Rosalía','BCS');
insert into ciudades values(null,'Las Palmas','BCS');
insert into ciudades values(null,'Las Veredas','BCS');
insert into ciudades values(null,'Ciudad Insurgentes','BCS');
insert into ciudades values(null,'San José Viejo','BCS');
insert into ciudades values(null,'Villa Alberto Andrés Alvarado Arámburo','BCS');
insert into ciudades values(null,'Puerto San Carlos','BCS');
insert into ciudades values(null,'Todos Santos','BCS');
insert into ciudades values(null,'El Centenario','BCS');
insert into ciudades values(null,'Heroica Mulegé','BCS');
insert into ciudades values(null,'Bahía Tortugas','BCS');
insert into ciudades values(null,'El Pescadero','BCS');
insert into ciudades values(null,'Puerto Adolfo López Mateos','BCS');
#end region
#region ciudad
insert into ciudades values(null,'Calkiní','CAM');
insert into ciudades values(null,'Campeche','CAM');
insert into ciudades values(null,'Carmen','CAM');
insert into ciudades values(null,'Champotón','CAM');
insert into ciudades values(null,'Hecelchakán','CAM');
insert into ciudades values(null,'Hopelchén','CAM');
insert into ciudades values(null,'Palizada','CAM');
insert into ciudades values(null,'Tenabo','CAM');
insert into ciudades values(null,'Escárcega','CAM');
insert into ciudades values(null,'Calakmul','CAM');
insert into ciudades values(null,'Candelaria','CAM');
insert into ciudades values(null,'Seybaplaya','CAM');
insert into ciudades values(null,'Dzitbalché','CAM');
#end region
#region ciudad
insert into ciudades values(null,'Tuxtla Gutiérrez','CHP');
insert into ciudades values(null,'Tapachula','CHP');
insert into ciudades values(null,'San Cristóbal de las Casas','CHP');
insert into ciudades values(null,'Comitán de Domínguez','CHP');
insert into ciudades values(null,'Cintalapa de Figueroa','CHP');
insert into ciudades values(null,'Chiapa de Corzo','CHP');
insert into ciudades values(null,'Palenque','CHP');
insert into ciudades values(null,'Ocosingo','CHP');
insert into ciudades values(null,'Ocozocoautla de Espinosa','CHP');
insert into ciudades values(null,'Villaflores','CHP');
#end region
#region chihuahua
insert into ciudades values(null,'Ciudad Juárez','CHH');
insert into ciudades values(null,'Chihuahua','CHH');
insert into ciudades values(null,'Delicias','CHH');
insert into ciudades values(null,'Cuauhtémoc','CHH');
insert into ciudades values(null,'Parral','CHH');
insert into ciudades values(null,'Nuevo Casas Grandes','CHH');
insert into ciudades values(null,'Camargo','CHH');
insert into ciudades values(null,'Jiménez','CHH');
insert into ciudades values(null,'Ojinaga','CHH');
insert into ciudades values(null,'Meoqui','CHH');
insert into ciudades values(null,'Aldama','CHH');
insert into ciudades values(null,'Madera','CHH');
insert into ciudades values(null,'Guachochi','CHH');
insert into ciudades values(null,'Ascensión','CHH');
insert into ciudades values(null,'Saucillo','CHH');
insert into ciudades values(null,'San Juanito','CHH');
#end region
#region mexico
insert into ciudades values(null,'Acambay de Ruíz Castañeda','CMX');
insert into ciudades values(null,'Acolman','CMX');
insert into ciudades values(null,'Aculco','CMX');
insert into ciudades values(null,'Almoloya de Alquisiras','CMX');
insert into ciudades values(null,'Almoloya de Juárez','CMX');
insert into ciudades values(null,'Almoloya del Río','CMX');
insert into ciudades values(null,'Amanalco','CMX');
insert into ciudades values(null,'Amatepec','CMX');
insert into ciudades values(null,'Amecameca','CMX');
insert into ciudades values(null,'Apaxco','CMX');
insert into ciudades values(null,'Atenco','CMX');
insert into ciudades values(null,'Atizapán','CMX');
insert into ciudades values(null,'Atizapán de Zaragoza','CMX');
insert into ciudades values(null,'Atlacomulco','CMX');
insert into ciudades values(null,'Atlautla','CMX');
insert into ciudades values(null,'Axapusco','CMX');
insert into ciudades values(null,'Ayapango','CMX');
insert into ciudades values(null,'Calimaya','CMX');
insert into ciudades values(null,'Capulhuac','CMX');
insert into ciudades values(null,'Coacalco de Berriozábal','CMX');
insert into ciudades values(null,'Coatepec Harinas','CMX');
insert into ciudades values(null,'Cocotitlán','CMX');
insert into ciudades values(null,'Coyotepec','CMX');
insert into ciudades values(null,'Cuautitlán','CMX');
insert into ciudades values(null,'Chalco','CMX');
insert into ciudades values(null,'Chapa de Mota','CMX');
insert into ciudades values(null,'Chapultepec','CMX');
insert into ciudades values(null,'Chiautla','CMX');
insert into ciudades values(null,'Chicoloapan','CMX');
insert into ciudades values(null,'Chiconcuac','CMX');
insert into ciudades values(null,'Chimalhuacán','CMX');
insert into ciudades values(null,'Donato Guerra','CMX');
insert into ciudades values(null,'Ecatepec de Morelos','CMX');
insert into ciudades values(null,'Ecatzingo','CMX');
insert into ciudades values(null,'Huehuetoca','CMX');
insert into ciudades values(null,'Hueypoxtla','CMX');
insert into ciudades values(null,'Huixquilucan','CMX');
insert into ciudades values(null,'Isidro Fabela','CMX');
insert into ciudades values(null,'Ixtapaluca','CMX');
insert into ciudades values(null,'Ixtapan de la Sal','CMX');
insert into ciudades values(null,'Ixtapan del Oro','CMX');
insert into ciudades values(null,'Ixtlahuaca','CMX');
insert into ciudades values(null,'Xalatlaco','CMX');
insert into ciudades values(null,'Jaltenco','CMX');
insert into ciudades values(null,'Jilotepec','CMX');
insert into ciudades values(null,'Jilotzingo','CMX');
insert into ciudades values(null,'Jiquipilco','CMX');
insert into ciudades values(null,'Jocotitlán','CMX');
insert into ciudades values(null,'Joquicingo','CMX');
insert into ciudades values(null,'Juchitepec','CMX');
insert into ciudades values(null,'Lerma','CMX');
insert into ciudades values(null,'Malinalco','CMX');
insert into ciudades values(null,'Melchor Ocampo','CMX');
insert into ciudades values(null,'Metepec','CMX');
insert into ciudades values(null,'Mexicaltzingo','CMX');
insert into ciudades values(null,'Morelos','CMX');
insert into ciudades values(null,'Naucalpan de Juárez','CMX');
insert into ciudades values(null,'Nezahualcóyotl','CMX');
insert into ciudades values(null,'Nextlalpan','CMX');
insert into ciudades values(null,'Nicolás Romero','CMX');
insert into ciudades values(null,'Nopaltepec','CMX');
insert into ciudades values(null,'Ocoyoacac','CMX');
insert into ciudades values(null,'Ocuilan','CMX');
insert into ciudades values(null,'El Oro','CMX');
insert into ciudades values(null,'Otumba','CMX');
insert into ciudades values(null,'Otzoloapan','CMX');
insert into ciudades values(null,'Otzolotepec','CMX');
insert into ciudades values(null,'Ozumba','CMX');
insert into ciudades values(null,'Papalotla','CMX');
insert into ciudades values(null,'La Paz','CMX');
insert into ciudades values(null,'Polotitlán','CMX');
insert into ciudades values(null,'Rayón','CMX');
insert into ciudades values(null,'San Antonio la Isla','CMX');
insert into ciudades values(null,'San Felipe del Progreso','CMX');
insert into ciudades values(null,'San Martín de las Pirámides','CMX');
insert into ciudades values(null,'San Mateo Atenco','CMX');
insert into ciudades values(null,'San Simón de Guerrero','CMX');
insert into ciudades values(null,'Santo Tomás','CMX');
insert into ciudades values(null,'Soyaniquilpan de Juárez','CMX');
insert into ciudades values(null,'Sultepec','CMX');
insert into ciudades values(null,'Tecámac','CMX');
insert into ciudades values(null,'Tejupilco','CMX');
insert into ciudades values(null,'Temamatla','CMX');
insert into ciudades values(null,'Temascalapa','CMX');
insert into ciudades values(null,'Temascalcingo','CMX');
insert into ciudades values(null,'Temascaltepec','CMX');
insert into ciudades values(null,'Temoaya','CMX');
insert into ciudades values(null,'Tenancingo','CMX');
insert into ciudades values(null,'Tenango del Aire','CMX');
insert into ciudades values(null,'Tenango del Valle','CMX');
insert into ciudades values(null,'Teoloyucán','CMX');
insert into ciudades values(null,'Teotihuacán','CMX');
insert into ciudades values(null,'Tepetlaoxtoc','CMX');
insert into ciudades values(null,'Tepetlixpa','CMX');
insert into ciudades values(null,'Tepotzotlán','CMX');
insert into ciudades values(null,'Tequixquiac','CMX');
insert into ciudades values(null,'Texcaltitlán','CMX');
insert into ciudades values(null,'Texcalyacac','CMX');
insert into ciudades values(null,'Texcoco','CMX');
insert into ciudades values(null,'Tezoyuca','CMX');
insert into ciudades values(null,'Tianguistenco','CMX');
insert into ciudades values(null,'Timilpan','CMX');
insert into ciudades values(null,'Tlalmanalco','CMX');
insert into ciudades values(null,'Tlalnepantla de Baz','CMX');
insert into ciudades values(null,'Tlatlaya','CMX');
insert into ciudades values(null,'Toluca','CMX');
insert into ciudades values(null,'Tonatico','CMX');
insert into ciudades values(null,'Tultepec','CMX');
insert into ciudades values(null,'Tultitlán','CMX');
insert into ciudades values(null,'Valle de Bravo','CMX');
insert into ciudades values(null,'Villa de Allende','CMX');
insert into ciudades values(null,'Villa del Carbón','CMX');
insert into ciudades values(null,'Villa Guerrero','CMX');
insert into ciudades values(null,'Villa Victoria','CMX');
insert into ciudades values(null,'Xonacatlán','CMX');
insert into ciudades values(null,'Zacazonapan','CMX');
insert into ciudades values(null,'Zacualpan','CMX');
insert into ciudades values(null,'Zinacantepec','CMX');
insert into ciudades values(null,'Zumpahuacán','CMX');
insert into ciudades values(null,'Zumpango','CMX');
insert into ciudades values(null,'Cuautitlán Izcalli','CMX');
insert into ciudades values(null,'Valle de Chalco Solidaridad','CMX');
insert into ciudades values(null,'Luvianos','CMX');
insert into ciudades values(null,'San José del Rincón','CMX');
insert into ciudades values(null,'Tonanitla','CMX');
#end region
#region ciudad
insert into ciudades values(null,'Abasolo ','COA');
insert into ciudades values(null,'Acuña','COA');
insert into ciudades values(null,'Allende','COA');
insert into ciudades values(null,'Arteaga','COA');
insert into ciudades values(null,'Candela ','COA');
insert into ciudades values(null,'Castaños','COA');
insert into ciudades values(null,'Cuatro Ciénegas','COA');
insert into ciudades values(null,'Escobedo ','COA');
insert into ciudades values(null,'Francisco I. Madero','COA');
insert into ciudades values(null,'Frontera','COA');
insert into ciudades values(null,'General Cepeda','COA');
insert into ciudades values(null,'Guerrero ','COA');
insert into ciudades values(null,'Hidalgo ','COA');
insert into ciudades values(null,'Jiménez','COA');
insert into ciudades values(null,'Juárez ','COA');
insert into ciudades values(null,'Lamadrid ','COA');
insert into ciudades values(null,'Matamoros','COA');
insert into ciudades values(null,'Monclova','COA');
insert into ciudades values(null,'Morelos','COA');
insert into ciudades values(null,'Múzquiz','COA');
insert into ciudades values(null,'Nadadores','COA');
insert into ciudades values(null,'Nava','COA');
insert into ciudades values(null,'Ocampo','COA');
insert into ciudades values(null,'Parras','COA');
insert into ciudades values(null,'Piedras Negras','COA');
insert into ciudades values(null,'Progreso ','COA');
insert into ciudades values(null,'Ramos Arizpe','COA');
insert into ciudades values(null,'Sabinas','COA');
insert into ciudades values(null,'Sacramento ','COA');
insert into ciudades values(null,'Saltillo','COA');
insert into ciudades values(null,'San Buenaventura','COA');
insert into ciudades values(null,'San Juan de Sabinas','COA');
insert into ciudades values(null,'San Pedro','COA');
insert into ciudades values(null,'Sierra Mojada','COA');
insert into ciudades values(null,'Torreón','COA');
insert into ciudades values(null,'Viesca','COA');
insert into ciudades values(null,'Villa Unión','COA');
insert into ciudades values(null,'Zaragoza','COA');
#end region
#region ciudad
insert into ciudades values(null,'Armería','COL');
insert into ciudades values(null,'Colima','COL');
insert into ciudades values(null,'Comala','COL');
insert into ciudades values(null,'Coquimatlán','COL');
insert into ciudades values(null,'Cuauhtémoc','COL');
insert into ciudades values(null,'Ixtlahuacán','COL');
insert into ciudades values(null,'Manzanillo','COL');
insert into ciudades values(null,'Minatitlán','COL');
insert into ciudades values(null,'Tecomán','COL');
insert into ciudades values(null,'Villa de Álvarez','COL');
#end region
#region durango
insert into ciudades values(null,'Canatlán','DUR');
insert into ciudades values(null,'Canelas','DUR');
insert into ciudades values(null,'Coneto de Comonfort','DUR');
insert into ciudades values(null,'Cuencamé','DUR');
insert into ciudades values(null,'Durango','DUR');
insert into ciudades values(null,'General Simón Bolívar','DUR');
insert into ciudades values(null,'Gómez Palacio','DUR');
insert into ciudades values(null,'Guadalupe Victoria','DUR');
insert into ciudades values(null,'Guanaceví','DUR');
insert into ciudades values(null,'Hidalgo','DUR');
insert into ciudades values(null,'Indé','DUR');
insert into ciudades values(null,'Lerdo','DUR');
insert into ciudades values(null,'Mapimí','DUR');
insert into ciudades values(null,'Mezquital','DUR');
insert into ciudades values(null,'Nazas','DUR');
insert into ciudades values(null,'Nombre de Dios','DUR');
insert into ciudades values(null,'Ocampo','DUR');
insert into ciudades values(null,'El Oro','DUR');
insert into ciudades values(null,'Otáez','DUR');
insert into ciudades values(null,'Pánuco de Coronado','DUR');
insert into ciudades values(null,'Peñón Blanco','DUR');
insert into ciudades values(null,'Poanas','DUR');
insert into ciudades values(null,'Pueblo Nuevo','DUR');
insert into ciudades values(null,'Rodeo','DUR');
insert into ciudades values(null,'San Bernardo','DUR');
insert into ciudades values(null,'San Dimas','DUR');
insert into ciudades values(null,'San Juan de Guadalupe','DUR');
insert into ciudades values(null,'San Juan del Río','DUR');
insert into ciudades values(null,'San Luis del Cordero','DUR');
insert into ciudades values(null,'San Pedro del Gallo','DUR');
insert into ciudades values(null,'Santa Clara','DUR');
insert into ciudades values(null,'Santiago Papasquiaro','DUR');
insert into ciudades values(null,'Súchil','DUR');
insert into ciudades values(null,'Tamazula','DUR');
insert into ciudades values(null,'Tepehuanes','DUR');
insert into ciudades values(null,'Tlahualilo','DUR');
insert into ciudades values(null,'Topia','DUR');
insert into ciudades values(null,'Vicente Guerrero','DUR');
insert into ciudades values(null,'Nuevo Ideal','DUR');
#end region
#region guanajuato
insert into ciudades values(null,'Abasolo','GUA');
insert into ciudades values(null,'Acámbaro','GUA');
insert into ciudades values(null,'San Miguel de Allende','GUA');
insert into ciudades values(null,'Apaseo el Alto','GUA');
insert into ciudades values(null,'Apaseo el Grande','GUA');
insert into ciudades values(null,'Atarjea','GUA');
insert into ciudades values(null,'Celaya','GUA');
insert into ciudades values(null,'Manuel Doblado','GUA');
insert into ciudades values(null,'Comonfort','GUA');
insert into ciudades values(null,'Coroneo','GUA');
insert into ciudades values(null,'Cortazar','GUA');
insert into ciudades values(null,'Cuerámaro','GUA');
insert into ciudades values(null,'Doctor Mora','GUA');
insert into ciudades values(null,'Dolores Hidalgo Cuna de la Independencia Nacional','GUA');
insert into ciudades values(null,'','GUA');
insert into ciudades values(null,'Guanajuato','GUA');
insert into ciudades values(null,'Huanímaro','GUA');
insert into ciudades values(null,'Irapuato','GUA');
insert into ciudades values(null,'Jaral del Progreso','GUA');
insert into ciudades values(null,'Jerécuaro','GUA');
insert into ciudades values(null,'León','GUA');
insert into ciudades values(null,'Moroleón','GUA');
insert into ciudades values(null,'Ocampo','GUA');
insert into ciudades values(null,'Pénjamo','GUA');
insert into ciudades values(null,'Pueblo Nuevo','GUA');
insert into ciudades values(null,'Purísima del Rincón','GUA');
insert into ciudades values(null,'Romita','GUA');
insert into ciudades values(null,'Salamanca','GUA');
insert into ciudades values(null,'Salvatierra','GUA');
insert into ciudades values(null,'San Diego de la Unión','GUA');
insert into ciudades values(null,'San Felipe','GUA');
insert into ciudades values(null,'San Francisco del Rincón','GUA');
insert into ciudades values(null,'San José Iturbide','GUA');
insert into ciudades values(null,'San Luis de la Paz','GUA');
insert into ciudades values(null,'Santa Catarina ','GUA');
insert into ciudades values(null,'Santa Cruz de Juventino Rosas','GUA');
insert into ciudades values(null,'Santiago Maravatío','GUA');
insert into ciudades values(null,'Silao de la Victoria','GUA');
insert into ciudades values(null,'Tarandacuao','GUA');
insert into ciudades values(null,'Tarimoro','GUA');
insert into ciudades values(null,'Tierra Blanca','GUA');
insert into ciudades values(null,'Uriangato','GUA');
insert into ciudades values(null,'Valle de Santiago','GUA');
insert into ciudades values(null,'Victoria','GUA');
insert into ciudades values(null,'Villagrán','GUA');
insert into ciudades values(null,'Xichú','GUA');
insert into ciudades values(null,'Yuriria','GUA');
#end region
#region guerrero
insert into ciudades values(null,'Acapulco de Juárez','GRO');
insert into ciudades values(null,'Ahuacuotzingo','GRO');
insert into ciudades values(null,'Ajuchitlán del Progreso','GRO');
insert into ciudades values(null,'Alcozauca de Guerrero','GRO');
insert into ciudades values(null,'Alpoyeca','GRO');
insert into ciudades values(null,'Apaxtla','GRO');
insert into ciudades values(null,'Arcelia','GRO');
insert into ciudades values(null,'Atenango del Río','GRO');
insert into ciudades values(null,'Atlamajalcingo del Monte','GRO');
insert into ciudades values(null,'Atlixtac','GRO');
insert into ciudades values(null,'Atoyac de Álvarez','GRO');
insert into ciudades values(null,'Ayutla de los Libres','GRO');
insert into ciudades values(null,'Azoyú','GRO');
insert into ciudades values(null,'Benito Juárez','GRO');
insert into ciudades values(null,'Buenavista de Cuéllar','GRO');
insert into ciudades values(null,'Coahuayutla de José María Izazaga','GRO');
insert into ciudades values(null,'Cocula','GRO');
insert into ciudades values(null,'Copala','GRO');
insert into ciudades values(null,'Copalillo','GRO');
insert into ciudades values(null,'Copanatoyac','GRO');
insert into ciudades values(null,'Coyuca de Benítez','GRO');
insert into ciudades values(null,'Coyuca de Catalán','GRO');
insert into ciudades values(null,'Cuajinicuilapa','GRO');
insert into ciudades values(null,'Cualác','GRO');
insert into ciudades values(null,'Cuautepec ','GRO');
insert into ciudades values(null,'Cuetzala del Progreso','GRO');
insert into ciudades values(null,'Cutzamala de Pinzón','GRO');
insert into ciudades values(null,'Chilapa de Álvarez','GRO');
insert into ciudades values(null,'Chilpancingo de los Bravo','GRO');
insert into ciudades values(null,'Florencio Villarreal ','GRO');
insert into ciudades values(null,'General Canuto A. Neri','GRO');
insert into ciudades values(null,'General Heliodoro Castillo','GRO');
insert into ciudades values(null,'Huamuxtitlán','GRO');
insert into ciudades values(null,'Huitzuco de los Figueroa','GRO');
insert into ciudades values(null,'Iguala de la Independencia','GRO');
insert into ciudades values(null,'Igualapa ','GRO');
insert into ciudades values(null,'Ixcateopan de Cuauhtémoc','GRO');
insert into ciudades values(null,'Zihuatanejo de Azueta','GRO');
insert into ciudades values(null,'Juan R. Escudero','GRO');
insert into ciudades values(null,'Leonardo Bravo','GRO');
insert into ciudades values(null,'Malinaltepec ','GRO');
insert into ciudades values(null,'Mártir de Cuilapan','GRO');
insert into ciudades values(null,'Metlatónoc ','GRO');
insert into ciudades values(null,'Mochitlán','GRO');
insert into ciudades values(null,'Olinalá','GRO');
insert into ciudades values(null,'Ometepec','GRO');
insert into ciudades values(null,'Pedro Ascencio Alquisiras ','GRO');
insert into ciudades values(null,'Petatlán','GRO');
insert into ciudades values(null,'Pilcaya','GRO');
insert into ciudades values(null,'Pungarabato','GRO');
insert into ciudades values(null,'Quechultenango','GRO');
insert into ciudades values(null,'San Luis Acatlán','GRO');
insert into ciudades values(null,'San Marcos','GRO');
insert into ciudades values(null,'San Miguel Totolapan ','GRO');
insert into ciudades values(null,'Taxco de Alarcón','GRO');
insert into ciudades values(null,'Tecoanapa','GRO');
insert into ciudades values(null,'Técpan de Galeana','GRO');
insert into ciudades values(null,'Teloloapan','GRO');
insert into ciudades values(null,'Tepecoacuilco de Trujano','GRO');
insert into ciudades values(null,'Tetipac','GRO');
insert into ciudades values(null,'Tixtla de Guerrero','GRO');
insert into ciudades values(null,'Tlacoachistlahuaca ','GRO');
insert into ciudades values(null,'Tlacoapa ','GRO');
insert into ciudades values(null,'Tlalchapa','GRO');
insert into ciudades values(null,'Tlalixtaquilla de Maldonado','GRO');
insert into ciudades values(null,'Tlapa de Comonfort','GRO');
insert into ciudades values(null,'Tlapehuala','GRO');
insert into ciudades values(null,'La Unión de Isidoro Montes de Oca','GRO');
insert into ciudades values(null,'Xalpatláhuac ','GRO');
insert into ciudades values(null,'Xochihuehuetlán','GRO');
insert into ciudades values(null,'Xochistlahuaca ','GRO');
insert into ciudades values(null,'Zapotitlán Tablas ','GRO');
insert into ciudades values(null,'Zirándaro','GRO');
insert into ciudades values(null,'Zitlala','GRO');
insert into ciudades values(null,'Eduardo Neri','GRO');
insert into ciudades values(null,'Acatepec','GRO');
insert into ciudades values(null,'Marquelia ','GRO');
insert into ciudades values(null,'Cochoapa el Grande','GRO');
insert into ciudades values(null,'José Joaquín de Herrera ','GRO');
insert into ciudades values(null,'Juchitán ','GRO');
insert into ciudades values(null,'Iliatenco','GRO');
#end region
#region ciudad
insert into ciudades values(null,'Acatlán','HID');
insert into ciudades values(null,'Acaxochitlán','HID');
insert into ciudades values(null,'Actopan','HID');
insert into ciudades values(null,'Agua Blanca de Iturbide','HID');
insert into ciudades values(null,'Ajacuba','HID');
insert into ciudades values(null,'Alfajayucan','HID');
insert into ciudades values(null,'Almoloya','HID');
insert into ciudades values(null,'Apan','HID');
insert into ciudades values(null,'Atitalaquia','HID');
insert into ciudades values(null,'Atlapexco','HID');
insert into ciudades values(null,'Atotonilco de Tula','HID');
insert into ciudades values(null,'Atotonilco el Grande','HID');
insert into ciudades values(null,'Calnali','HID');
insert into ciudades values(null,'Cardonal','HID');
insert into ciudades values(null,'Chapantongo','HID');
insert into ciudades values(null,'Chapulhuacán','HID');
insert into ciudades values(null,'Chilcuautla','HID');
insert into ciudades values(null,'Cuautepec de Hinojosa','HID');
insert into ciudades values(null,'El Arenal','HID');
insert into ciudades values(null,'Eloxochitlán','HID');
insert into ciudades values(null,'Emiliano Zapata','HID');
insert into ciudades values(null,'Epazoyucan','HID');
insert into ciudades values(null,'Francisco I. Madero','HID');
insert into ciudades values(null,'Huasca de Ocampo','HID');
insert into ciudades values(null,'Huautla','HID');
insert into ciudades values(null,'Huazalingo','HID');
insert into ciudades values(null,'Huehuetla','HID');
insert into ciudades values(null,'Huejutla de Reyes','HID');
insert into ciudades values(null,'Huichapan','HID');
insert into ciudades values(null,'Ixmiquilpan','HID');
insert into ciudades values(null,'Jacala de Ledezma','HID');
insert into ciudades values(null,'Jaltocán','HID');
insert into ciudades values(null,'Juárez Hidalgo','HID');
insert into ciudades values(null,'La Misión','HID');
insert into ciudades values(null,'Lolotla','HID');
insert into ciudades values(null,'Metepec','HID');
insert into ciudades values(null,'Metztitlán','HID');
insert into ciudades values(null,'Mineral de la Reforma','HID');
insert into ciudades values(null,'Mineral del Chico','HID');
insert into ciudades values(null,'Mineral del Monte','HID');
insert into ciudades values(null,'Mixquiahuala de Juárez','HID');
insert into ciudades values(null,'Molango de Escamilla','HID');
insert into ciudades values(null,'Nicolás Flores','HID');
insert into ciudades values(null,'Nopala de Villagrán','HID');
insert into ciudades values(null,'Omitlán de Juárez','HID');
insert into ciudades values(null,'Pachuca de Soto','HID');
insert into ciudades values(null,'Pacula','HID');
insert into ciudades values(null,'Pisaflores','HID');
insert into ciudades values(null,'Progreso de Obregón','HID');
insert into ciudades values(null,'San Agustín Metzquititlán','HID');
insert into ciudades values(null,'San Agustín Tlaxiaca','HID');
insert into ciudades values(null,'San Bartolo Tutotepec','HID');
insert into ciudades values(null,'San Felipe Orizatlán','HID');
insert into ciudades values(null,'San Salvador','HID');
insert into ciudades values(null,'Santiago de Anaya','HID');
insert into ciudades values(null,'Santiago Tulantepec de Lugo Guerrero','HID');
insert into ciudades values(null,'Singuilucan','HID');
insert into ciudades values(null,'Tasquillo','HID');
insert into ciudades values(null,'Tecozautla','HID');
insert into ciudades values(null,'Tenango de Doria','HID');
insert into ciudades values(null,'Tepeapulco','HID');
insert into ciudades values(null,'Tepehuacán de Guerrero','HID');
insert into ciudades values(null,'Tepeji del Río de Ocampo','HID');
insert into ciudades values(null,'Tepetitlán','HID');
insert into ciudades values(null,'Tetepango','HID');
insert into ciudades values(null,'Tezontepec de Aldama','HID');
insert into ciudades values(null,'Tianguistengo','HID');
insert into ciudades values(null,'Tizayuca','HID');
insert into ciudades values(null,'Tlahuelilpan','HID');
insert into ciudades values(null,'Tlahuiltepa','HID');
insert into ciudades values(null,'Tlanalapa','HID');
insert into ciudades values(null,'Tlanchinol','HID');
insert into ciudades values(null,'Tlaxcoapan','HID');
insert into ciudades values(null,'Tolcayuca','HID');
insert into ciudades values(null,'Tula de Allende','HID');
insert into ciudades values(null,'Tulancingo de Bravo','HID');
insert into ciudades values(null,'Villa de Tezontepec','HID');
insert into ciudades values(null,'Xochiatipan','HID');
insert into ciudades values(null,'Xochicoatlán','HID');
insert into ciudades values(null,'Yahualica','HID');
insert into ciudades values(null,'Zacualtipán de Ángeles','HID');
insert into ciudades values(null,'Zapotlán de Juárez','HID');
insert into ciudades values(null,'Zempoala','HID');
insert into ciudades values(null,'Zimapán','HID');
#end region
#region jalisco
insert into ciudades values(null,'Acatic','JAL');
insert into ciudades values(null,'Acatlán de Juárez','JAL');
insert into ciudades values(null,'Ahualulco de Mercado','JAL');
insert into ciudades values(null,'Amacueca','JAL');
insert into ciudades values(null,'Amatitán','JAL');
insert into ciudades values(null,'Ameca','JAL');
insert into ciudades values(null,'Arandas','JAL');
insert into ciudades values(null,'Atemajac de Brizuela','JAL');
insert into ciudades values(null,'Atengo','JAL');
insert into ciudades values(null,'Atenguillo ','JAL');
insert into ciudades values(null,'Atotonilco el Alto','JAL');
insert into ciudades values(null,'Atoyac','JAL');
insert into ciudades values(null,'Autlán de Navarro','JAL');
insert into ciudades values(null,'Ayotlán','JAL');
insert into ciudades values(null,'Ayutla','JAL');
insert into ciudades values(null,'Bolaños','JAL');
insert into ciudades values(null,'Cabo Corrientes','JAL');
insert into ciudades values(null,'Cañadas de Obregón ','JAL');
insert into ciudades values(null,'Casimiro Castillo','JAL');
insert into ciudades values(null,'Chapala','JAL');
insert into ciudades values(null,'Chimaltitán ','JAL');
insert into ciudades values(null,'Chiquilistlán','JAL');
insert into ciudades values(null,'Cihuatlán','JAL');
insert into ciudades values(null,'Cocula','JAL');
insert into ciudades values(null,'Colotlán','JAL');
insert into ciudades values(null,'Concepción de Buenos Aires','JAL');
insert into ciudades values(null,'Cuautitlán de García Barragán','JAL');
insert into ciudades values(null,'Cuautla ','JAL');
insert into ciudades values(null,'Cuquío','JAL');
insert into ciudades values(null,'Degollado','JAL');
insert into ciudades values(null,'Ejutla ','JAL');
insert into ciudades values(null,'El Arenal','JAL');
insert into ciudades values(null,'El Grullo','JAL');
insert into ciudades values(null,'El Limón','JAL');
insert into ciudades values(null,'El Salto','JAL');
insert into ciudades values(null,'Encarnación de Díaz','JAL');
insert into ciudades values(null,'Etzatlán','JAL');
insert into ciudades values(null,'Gómez Farías','JAL');
insert into ciudades values(null,'Guachinango ','JAL');
insert into ciudades values(null,'Guadalajara','JAL');
insert into ciudades values(null,'Hostotipaquillo','JAL');
insert into ciudades values(null,'Huejúcar','JAL');
insert into ciudades values(null,'Huejuquilla el Alto','JAL');
insert into ciudades values(null,'Ixtlahuacán de los Membrillos','JAL');
insert into ciudades values(null,'Ixtlahuacán del Río','JAL');
insert into ciudades values(null,'Jalostotitlán','JAL');
insert into ciudades values(null,'Jamay','JAL');
insert into ciudades values(null,'Jesús María','JAL');
insert into ciudades values(null,'Jilotlán de los Dolores','JAL');
insert into ciudades values(null,'Jocotepec','JAL');
insert into ciudades values(null,'Juanacatlán','JAL');
insert into ciudades values(null,'Juchitlán','JAL');
insert into ciudades values(null,'La Barca','JAL');
insert into ciudades values(null,'La Huerta','JAL');
insert into ciudades values(null,'La Manzanilla de la Paz ','JAL');
insert into ciudades values(null,'Lagos de Moreno','JAL');
insert into ciudades values(null,'Magdalena','JAL');
insert into ciudades values(null,'Mascota','JAL');
insert into ciudades values(null,'Mazamitla','JAL');
insert into ciudades values(null,'Mexticacán','JAL');
insert into ciudades values(null,'Mezquitic ','JAL');
insert into ciudades values(null,'Mixtlán ','JAL');
insert into ciudades values(null,'Ocotlán','JAL');
insert into ciudades values(null,'Ojuelos de Jalisco','JAL');
insert into ciudades values(null,'Pihuamo','JAL');
insert into ciudades values(null,'Poncitlán','JAL');
insert into ciudades values(null,'Puerto Vallarta','JAL');
insert into ciudades values(null,'Quitupan','JAL');
insert into ciudades values(null,'San Cristóbal de la Barranca ','JAL');
insert into ciudades values(null,'San Diego de Alejandría','JAL');
insert into ciudades values(null,'San Gabriel','JAL');
insert into ciudades values(null,'San Ignacio Cerro Gordo','JAL');
insert into ciudades values(null,'San Juan de los Lagos','JAL');
insert into ciudades values(null,'San Juanito de Escobedo','JAL');
insert into ciudades values(null,'San Julián','JAL');
insert into ciudades values(null,'San Marcos ','JAL');
insert into ciudades values(null,'San Martín de Bolaños ','JAL');
insert into ciudades values(null,'San Martín Hidalgo','JAL');
insert into ciudades values(null,'San Miguel el Alto','JAL');
insert into ciudades values(null,'San Pedro Tlaquepaque','JAL');
insert into ciudades values(null,'San Sebastián del Oeste','JAL');
insert into ciudades values(null,'Santa María de los Ángeles ','JAL');
insert into ciudades values(null,'Santa María del Oro ','JAL');
insert into ciudades values(null,'Sayula','JAL');
insert into ciudades values(null,'Tala','JAL');
insert into ciudades values(null,'Talpa de Allende','JAL');
insert into ciudades values(null,'Tamazula de Gordiano','JAL');
insert into ciudades values(null,'Tapalpa','JAL');
insert into ciudades values(null,'Tecalitlán','JAL');
insert into ciudades values(null,'Techaluta de Montenegro ','JAL');
insert into ciudades values(null,'Tecolotlán','JAL');
insert into ciudades values(null,'Tenamaxtlán','JAL');
insert into ciudades values(null,'Teocaltiche','JAL');
insert into ciudades values(null,'Teocuitatlán de Corona','JAL');
insert into ciudades values(null,'Tepatitlán de Morelos','JAL');
insert into ciudades values(null,'Tequila','JAL');
insert into ciudades values(null,'Teuchitlán','JAL');
insert into ciudades values(null,'Tizapán el Alto','JAL');
insert into ciudades values(null,'Tlajomulco de Zúñiga','JAL');
insert into ciudades values(null,'Tolimán','JAL');
insert into ciudades values(null,'Tomatlán','JAL');
insert into ciudades values(null,'Tonalá','JAL');
insert into ciudades values(null,'Tonaya','JAL');
insert into ciudades values(null,'Tonila','JAL');
insert into ciudades values(null,'Totatiche','JAL');
insert into ciudades values(null,'Tototlán','JAL');
insert into ciudades values(null,'Tuxcacuesco ','JAL');
insert into ciudades values(null,'Tuxcueca','JAL');
insert into ciudades values(null,'Tuxpan','JAL');
insert into ciudades values(null,'Unión de San Antonio','JAL');
insert into ciudades values(null,'Unión de Tula','JAL');
insert into ciudades values(null,'Valle de Guadalupe','JAL');
insert into ciudades values(null,'Valle de Juárez','JAL');
insert into ciudades values(null,'Villa Corona','JAL');
insert into ciudades values(null,'Villa Guerrero','JAL');
insert into ciudades values(null,'Villa Hidalgo','JAL');
insert into ciudades values(null,'Villa Purificación','JAL');
insert into ciudades values(null,'Yahualica de González Gallo','JAL');
insert into ciudades values(null,'Zacoalco de Torres','JAL');
insert into ciudades values(null,'Zapopan','JAL');
insert into ciudades values(null,'Zapotiltic','JAL');
insert into ciudades values(null,'Zapotitlán de Vadillo','JAL');
insert into ciudades values(null,'Zapotlán del Rey','JAL');
insert into ciudades values(null,'Zapotlán el Grande','JAL');
insert into ciudades values(null,'Zapotlanejo','JAL');
#end region
#region mexico
insert into ciudades values(null,'Azcapotzalco','MEX');
insert into ciudades values(null,'Coyoacán','MEX');
insert into ciudades values(null,'Cuajimalpa de Morelos','MEX');
insert into ciudades values(null,'Gustavo A. Madero','MEX');
insert into ciudades values(null,'Iztacalco','MEX');
insert into ciudades values(null,'Iztapalapa','MEX');
insert into ciudades values(null,'La Magdalena Contreras','MEX');
insert into ciudades values(null,'Milpa Alta','MEX');
insert into ciudades values(null,'Álvaro Obregón','MEX');
insert into ciudades values(null,'Tláhuac','MEX');
insert into ciudades values(null,'Tlalpan','MEX');
insert into ciudades values(null,'Xochimilco','MEX');
insert into ciudades values(null,'Benito Juárez','MEX');
insert into ciudades values(null,'Cuauhtémoc','MEX');
insert into ciudades values(null,'Miguel Hidalgo','MEX');
insert into ciudades values(null,'Venustiano Carranza','MEX');
#end region
#region michoacan
insert into ciudades values (null,'Morelia','MIC');
insert into ciudades values (null,'Uruapan del Progreso','MIC');
insert into ciudades values (null,'Zamora de Hidalgo','MIC');
insert into ciudades values (null,'Apatzingán de la Constitución','MIC');
insert into ciudades values (null,'Heróica Zitácuaro','MIC');
insert into ciudades values (null,'La Piedad de Cabadas','MIC');
insert into ciudades values (null,'Ciudad Lázaro Cárdenas','MIC');
insert into ciudades values (null,'Sahuayo de Morelos','MIC');
insert into ciudades values (null,'Ciudad Hidalgo','MIC');
insert into ciudades values (null,'Jacona de Plancarte','MIC');
insert into ciudades values (null,'Pátzcuaro','MIC');
insert into ciudades values (null,'Zacapu','MIC');
insert into ciudades values (null,'Los Reyes de Salgado','MIC');
insert into ciudades values (null,'Las Guacamayas','MIC');
insert into ciudades values (null,'Maravatío de Ocampo','MIC');
insert into ciudades values (null,'Nueva Italia','MIC');
insert into ciudades values (null,'Puruándiro','MIC');
insert into ciudades values (null,'Tacámbaro de Codallos','MIC');
insert into ciudades values (null,'Jiquilpan de Juárez','MIC');
insert into ciudades values (null,'Yurécuaro','MIC');
insert into ciudades values (null,'Huetamo de Nuñez','MIC');
insert into ciudades values (null,'La Orilla','MIC');
insert into ciudades values (null,'Paracho de Verduzco','MIC');
insert into ciudades values (null,'Ario de Rosales','MIC');
insert into ciudades values (null,'Zinapécuaro de Figueroa','MIC');
insert into ciudades values (null,'Peribán de Ramos','MIC');
insert into ciudades values (null,'Tepalcatepec','MIC');
insert into ciudades values (null,'Tangancícuaro de Arista','MIC');
insert into ciudades values (null,'Nuevo San Juan Parangaricutiro','MIC');
insert into ciudades values (null,'Quiroga','MIC');
insert into ciudades values (null,'Santa Clara del Cobre','MIC');
insert into ciudades values (null,'Cherán','MIC');
insert into ciudades values (null,'Purépero de Echáiz','MIC');
insert into ciudades values (null,'Morelos','MIC');
insert into ciudades values (null,'Cotija de la Paz','MIC');
insert into ciudades values (null,'La Mira','MIC');
insert into ciudades values (null,'Lombardía','MIC');
insert into ciudades values (null,'Venustiano Carranza','MIC');
insert into ciudades values (null,'Conjunto Habitacional Villas del Pedregal','MIC');
insert into ciudades values (null,'Coalcomán de Vázquez Pallares','MIC');
insert into ciudades values (null,'Vista Hermosa de Negrete','MIC');
insert into ciudades values (null,'Arteaga','MIC');
insert into ciudades values (null,'Santiago Tangamandapio','MIC');
insert into ciudades values (null,'Buenavista Tomatlán','MIC');
insert into ciudades values (null,'Nahuatzen','MIC');
insert into ciudades values (null,'Cuitzeo del Porvenir','MIC');
insert into ciudades values (null,'Felipe Carrillo Puerto ','MIC');
insert into ciudades values (null,'Opopeo','MIC');
insert into ciudades values (null,'Pajacuarán','MIC');
insert into ciudades values (null,'Buenos Aires','MIC');
insert into ciudades values (null,'Tanhuato de Guerrero','MIC');
insert into ciudades values (null,'San José de Gracia','MIC');
insert into ciudades values (null,'La Huacana','MIC');
insert into ciudades values (null,'Tuxpan','MIC');
insert into ciudades values (null,'Queréndaro','MIC');
insert into ciudades values (null,'Antúnez','MIC');
insert into ciudades values (null,'Tarecuato','MIC');
insert into ciudades values (null,'Álvaro Obregón','MIC');
insert into ciudades values (null,'Aguililla','MIC');
insert into ciudades values (null,'Fraccionamiento Misión del Valle','MIC');
insert into ciudades values (null,'Ario de Rayón','MIC');
insert into ciudades values (null,'Tingambato','MIC');
insert into ciudades values (null,'Chilchota','MIC');
insert into ciudades values (null,'Capácuaro','MIC');
insert into ciudades values (null,'Coahuayana de Hidalgo','MIC');
insert into ciudades values (null,'Puruarán','MIC');
insert into ciudades values (null,'Santa Ana Maya','MIC');
insert into ciudades values (null,'Tingüindín','MIC');
insert into ciudades values (null,'Santa Clara de Valladares','MIC');
insert into ciudades values (null,'Indaparapeo','MIC');
insert into ciudades values (null,'Cojumatlán de Régules','MIC');
insert into ciudades values (null,'Tancítaro','MIC');
insert into ciudades values (null,'Huandacareo','MIC');
insert into ciudades values (null,'Acuitzio del Canje','MIC');
insert into ciudades values (null,'Pastor Ortiz','MIC');
insert into ciudades values (null,'Villa Madero','MIC');
insert into ciudades values (null,'Taretan','MIC');
insert into ciudades values (null,'Carapan','MIC');
insert into ciudades values (null,'Chavinda','MIC');
insert into ciudades values (null,'Rincón de Nicolás Romero','MIC');
insert into ciudades values (null,'La Aldea','MIC');
insert into ciudades values (null,'Pedernales','MIC');
insert into ciudades values (null,'Tarímbaro','MIC');
insert into ciudades values (null,'Fraccionamiento Galaxia Tarímbaro','MIC');
insert into ciudades values (null,'Fraccionamiento Metrópolis II','MIC');
insert into ciudades values (null,'Angahuan','MIC');
insert into ciudades values (null,'Panindícuaro','MIC');
insert into ciudades values (null,'Charo','MIC');
insert into ciudades values (null,'Caltzontzin','MIC');
insert into ciudades values (null,'Capula','MIC');
insert into ciudades values (null,'Jungapeo de Juárez','MIC');
insert into ciudades values (null,'Angamacutiro de la Unión','MIC');
#end region
#region morelio
insert into ciudades values(null,'Amacuzac','MOR');
insert into ciudades values(null,'Atlatlahucan','MOR');
insert into ciudades values(null,'Axochiapan','MOR');
insert into ciudades values(null,'Ayala','MOR');
insert into ciudades values(null,'Coatlán del Río','MOR');
insert into ciudades values(null,'Cuautla','MOR');
insert into ciudades values(null,'Cuernavaca','MOR');
insert into ciudades values(null,'Emiliano Zapata','MOR');
insert into ciudades values(null,'Jantetelco','MOR');
insert into ciudades values(null,'Jiutepec','MOR');
insert into ciudades values(null,'Jojutla de Juárez','MOR');
insert into ciudades values(null,'Jonacatepec','MOR');
insert into ciudades values(null,'Mazatepec','MOR');
insert into ciudades values(null,'Miacatlán','MOR');
insert into ciudades values(null,'Ocuituco','MOR');
insert into ciudades values(null,'Puente de Ixtla','MOR');
insert into ciudades values(null,'Temixco','MOR');
insert into ciudades values(null,'Temoac','MOR');
insert into ciudades values(null,'Tepalcingo','MOR');
insert into ciudades values(null,'Tepoztlán','MOR');
insert into ciudades values(null,'Tetecala','MOR');
insert into ciudades values(null,'Tetela del Volcán','MOR');
insert into ciudades values(null,'Tlalnepantla','MOR');
insert into ciudades values(null,'Tlaltizapán','MOR');
insert into ciudades values(null,'Tlaquiltenango','MOR');
insert into ciudades values(null,'Tlayacapan','MOR');
insert into ciudades values(null,'Totolapan','MOR');
insert into ciudades values(null,'Xochitepec','MOR');
insert into ciudades values(null,'Yautepec','MOR');
insert into ciudades values(null,'Yecapixtla','MOR');
insert into ciudades values(null,'Zacatepec de Hidalgo','MOR');
insert into ciudades values(null,'Zacualpan de Amilpas','MOR');

#end region
#region nararit
insert into ciudades values(null,'Acaponeta','NAY');
insert into ciudades values(null,'Ahuacatlán','NAY');
insert into ciudades values(null,'Amatlán de Cañas','NAY');
insert into ciudades values(null,'Bahía de Banderas','NAY');
insert into ciudades values(null,'Compostela','NAY');
insert into ciudades values(null,'El Nayar','NAY');
insert into ciudades values(null,'Huajicori','NAY');
insert into ciudades values(null,'Ixtlán del Río','NAY');
insert into ciudades values(null,'Jala','NAY');
insert into ciudades values(null,'La Yesca','NAY');
insert into ciudades values(null,'Rosamorada','NAY');
insert into ciudades values(null,'Ruiz','NAY');
insert into ciudades values(null,'San Blas','NAY');
insert into ciudades values(null,'San Pedro Lagunillas','NAY');
insert into ciudades values(null,'Santa María del Oro','NAY');
insert into ciudades values(null,'Santiago Ixcuintla','NAY');
insert into ciudades values(null,'Tecuala','NAY');
insert into ciudades values(null,'Tepic ','NAY');
insert into ciudades values(null,'Tuxpan','NAY');
insert into ciudades values(null,'Xalisco','NAY');

#end region
#region nuevo leon
insert into ciudades values(null,'Ciudad Apodaca','NLE');
insert into ciudades values(null,'García','NLE');
insert into ciudades values(null,'Ciudad General Escobedo','NLE');
insert into ciudades values(null,'Guadalupe','NLE');
insert into ciudades values(null,'Ciudad Benito Juárez','NLE');
insert into ciudades values(null,'Monterrey','NLE');
insert into ciudades values(null,'Santa Catarina','NLE');
insert into ciudades values(null,'San Nicolás de los Garza','NLE');
insert into ciudades values(null,'San Pedro Garza García','NLE');
insert into ciudades values(null,'Santiago','NLE');
insert into ciudades values(null,'Cadereyta Jiménez','NLE');
insert into ciudades values(null,'Salinas Victoria','NLE');
insert into ciudades values(null,'Abasolo','NLE');
insert into ciudades values(null,'Ciénega de Flores','NLE');
insert into ciudades values(null,'Doctor González','NLE');
insert into ciudades values(null,'Carmen','NLE');
insert into ciudades values(null,'General Zuazua','NLE');
insert into ciudades values(null,'Hidalgo','NLE');
insert into ciudades values(null,'Higueras','NLE');
insert into ciudades values(null,'Marín','NLE');
insert into ciudades values(null,'Mina','NLE');
insert into ciudades values(null,'Pesquería','NLE');
insert into ciudades values(null,'Allende','NLE');
insert into ciudades values(null,'General Terán','NLE');
insert into ciudades values(null,'Hualahuises','NLE');
insert into ciudades values(null,'Linares','NLE');
insert into ciudades values(null,'Montemorelos','NLE');
insert into ciudades values(null,'Rayones','NLE');
insert into ciudades values(null,'Agualeguas','NLE');
insert into ciudades values(null,'Anáhuac','NLE');
insert into ciudades values(null,'Bustamante','NLE');
insert into ciudades values(null,'Cerralvo','NLE');
insert into ciudades values(null,'China','NLE');
insert into ciudades values(null,'Doctor Coss','NLE');
insert into ciudades values(null,'General Bravo','NLE');
insert into ciudades values(null,'General Zuazua','NLE');
insert into ciudades values(null,'General Treviño','NLE');
insert into ciudades values(null,'Lampazos de Naranjo','NLE');
insert into ciudades values(null,'Los Aldamas','NLE');
insert into ciudades values(null,'Los Herreras','NLE');
insert into ciudades values(null,'Los Ramones','NLE');
insert into ciudades values(null,'Melchor Ocampo','NLE');
insert into ciudades values(null,'Parás','NLE');
insert into ciudades values(null,'Sabinas Hidalgo','NLE');
insert into ciudades values(null,'Vallecillo','NLE');
insert into ciudades values(null,'Villaldama','NLE');
insert into ciudades values(null,'Aramberri','NLE');
insert into ciudades values(null,'Doctor Arroyo','NLE');
insert into ciudades values(null,'Galeana','NLE');
insert into ciudades values(null,'General Zaragoza','NLE');
insert into ciudades values(null,'Iturbide','NLE');
insert into ciudades values(null,'Mier y Noriega','NLE');

#end region
#region oaxaca
insert into ciudades values(null,'Abejones','OAX');
insert into ciudades values(null,'Acatlán de Pérez Figueroa','OAX');
insert into ciudades values(null,'Ánimas Trujano','OAX');
insert into ciudades values(null,'Asunción Cacalotepec','OAX');
insert into ciudades values(null,'Asunción Cuyotepeji','OAX');
insert into ciudades values(null,'Asunción Ixtaltepec','OAX');
insert into ciudades values(null,'Asunción Nochixtlán','OAX');
insert into ciudades values(null,'Asunción Ocotlán','OAX');
insert into ciudades values(null,'Asunción Tlacolulita','OAX');
insert into ciudades values(null,'Ayoquezco de Aldama','OAX');
insert into ciudades values(null,'Ayotzintepec','OAX');
insert into ciudades values(null,'Calihualá','OAX');
insert into ciudades values(null,'Candelaria Loxicha','OAX');
insert into ciudades values(null,'Capulalpam de Méndez','OAX');
insert into ciudades values(null,'Chahuites','OAX');
insert into ciudades values(null,'Chalcatongo de Hidalgo','OAX');
insert into ciudades values(null,'Chiquihuitlán de Benito Juárez','OAX');
insert into ciudades values(null,'Ciénega de Zimatlán','OAX');
insert into ciudades values(null,'Ciudad Ixtepec','OAX');
insert into ciudades values(null,'Coatecas Altas','OAX');
insert into ciudades values(null,'Coicoyán de las Flores','OAX');
insert into ciudades values(null,'Concepción Buenavista','OAX');
insert into ciudades values(null,'Concepción Pápalo','OAX');
insert into ciudades values(null,'Constancia del Rosario','OAX');
insert into ciudades values(null,'Cosolapa','OAX');
insert into ciudades values(null,'Cosoltepec','OAX');
insert into ciudades values(null,'Cuilapam de Guerrero','OAX');
insert into ciudades values(null,'Cuyamecalco Villa de Zaragoza','OAX');
insert into ciudades values(null,'El Barrio de la Soledad','OAX');
insert into ciudades values(null,'El Espinal','OAX');
insert into ciudades values(null,'Eloxochitlán de Flores Magón','OAX');
insert into ciudades values(null,'Fresnillo de Trujano','OAX');
insert into ciudades values(null,'Guadalupe de Ramírez','OAX');
insert into ciudades values(null,'Guadalupe Etla','OAX');
insert into ciudades values(null,'Guelatao de Juárez','OAX');
insert into ciudades values(null,'Guevea de Humboldt','OAX');
insert into ciudades values(null,'Heróica Ciudad de Ejutla de Crespo','OAX');
insert into ciudades values(null,'Heróica Ciudad de Huajuapan de León','OAX');
insert into ciudades values(null,'Heróica Ciudad de Tlaxiaco','OAX');
insert into ciudades values(null,'Huautepec','OAX');
insert into ciudades values(null,'Huautla de Jiménez','OAX');
insert into ciudades values(null,'Ixpantepec Nieves','OAX');
insert into ciudades values(null,'Ixtlán de Juárez','OAX');
insert into ciudades values(null,'Juchitán de Zaragoza','OAX');
insert into ciudades values(null,'La Compañía','OAX');
insert into ciudades values(null,'La Pe','OAX');
insert into ciudades values(null,'La Reforma','OAX');
insert into ciudades values(null,'La Trinidad Vista Hermosa','OAX');
insert into ciudades values(null,'Loma Bonita','OAX');
insert into ciudades values(null,'Magdalena Apasco','OAX');
insert into ciudades values(null,'Magdalena Jaltepec','OAX');
insert into ciudades values(null,'Magdalena Mixtepec','OAX');
insert into ciudades values(null,'Magdalena Ocotlán','OAX');
insert into ciudades values(null,'Magdalena Peñasco','OAX');
insert into ciudades values(null,'Magdalena Teitipac','OAX');
insert into ciudades values(null,'Magdalena Tequisistlán','OAX');
insert into ciudades values(null,'Magdalena Tlacotepec','OAX');
insert into ciudades values(null,'Magdalena Yodocono de Porfirio Díaz','OAX');
insert into ciudades values(null,'Magdalena Zahuatlán','OAX');
insert into ciudades values(null,'Mariscala de Juárez','OAX');
insert into ciudades values(null,'Mártires de Tacubaya','OAX');
insert into ciudades values(null,'Matías Romero Avendaño','OAX');
insert into ciudades values(null,'Mazatlán Villa de Flores','OAX');
insert into ciudades values(null,'Mesones Hidalgo','OAX');
insert into ciudades values(null,'Miahuatlán de Porfirio Díaz','OAX');
insert into ciudades values(null,'Mixistlán de la Reforma','OAX');
insert into ciudades values(null,'Monjas','OAX');
insert into ciudades values(null,'Natividad','OAX');
insert into ciudades values(null,'Nazareno Etla','OAX');
insert into ciudades values(null,'Nejapa de Madero','OAX');
insert into ciudades values(null,'Nuevo Zoquiapam','OAX');
insert into ciudades values(null,'Oaxaca de Juárez','OAX');
insert into ciudades values(null,'Ocotlán de Morelos','OAX');
insert into ciudades values(null,'Pinotepa de Don Luis','OAX');
insert into ciudades values(null,'Pluma Hidalgo','OAX');
insert into ciudades values(null,'Putla Villa de Guerrero','OAX');
insert into ciudades values(null,'Reforma de Pineda','OAX');
insert into ciudades values(null,'Reyes Etla','OAX');
insert into ciudades values(null,'Rojas de Cuauhtémoc','OAX');
insert into ciudades values(null,'Salina Cruz','OAX');
insert into ciudades values(null,'San Agustín Amatengo','OAX');
insert into ciudades values(null,'San Agustín Atenango','OAX');
insert into ciudades values(null,'San Agustín Chayuco','OAX');
insert into ciudades values(null,'San Agustín de las Juntas','OAX');
insert into ciudades values(null,'San Agustín Etla','OAX');
insert into ciudades values(null,'San Agustín Loxicha','OAX');
insert into ciudades values(null,'San Agustín Tlacotepec','OAX');
insert into ciudades values(null,'San Agustín Yatareni','OAX');
insert into ciudades values(null,'San Andrés Cabecera Nueva','OAX');
insert into ciudades values(null,'San Andrés Dinicuiti','OAX');
insert into ciudades values(null,'San Andrés Huaxpaltepec','OAX');
insert into ciudades values(null,'San Andrés Huayapam','OAX');
insert into ciudades values(null,'San Andrés Ixtlahuaca','OAX');
insert into ciudades values(null,'San Andrés Lagunas','OAX');
insert into ciudades values(null,'San Andrés Nuxiño','OAX');
insert into ciudades values(null,'San Andrés Paxtlán','OAX');
insert into ciudades values(null,'San Andrés Sinaxtla','OAX');
insert into ciudades values(null,'San Andrés Solaga','OAX');
insert into ciudades values(null,'San Andrés Teotilalpam','OAX');
insert into ciudades values(null,'San Andrés Tepetlapa','OAX');
insert into ciudades values(null,'San Andrés Yaa','OAX');
insert into ciudades values(null,'San Andrés Zabache','OAX');
insert into ciudades values(null,'San Andrés Zautla','OAX');
insert into ciudades values(null,'San Antonino Castillo Velasco','OAX');
insert into ciudades values(null,'San Antonino el Alto','OAX');
insert into ciudades values(null,'San Antonino Monteverde','OAX');
insert into ciudades values(null,'San Antonio Acutla','OAX');
insert into ciudades values(null,'San Antonio de la Cal','OAX');
insert into ciudades values(null,'San Antonio Huitepec','OAX');
insert into ciudades values(null,'San Antonio Nanahuatipam','OAX');
insert into ciudades values(null,'San Antonio Sinicahua','OAX');
insert into ciudades values(null,'San Antonio Tepetlapa','OAX');
insert into ciudades values(null,'San Baltazar Chichicápam','OAX');
insert into ciudades values(null,'San Baltazar Loxicha','OAX');
insert into ciudades values(null,'San Baltazar Yatzachi el Bajo','OAX');
insert into ciudades values(null,'San Bartolo Coyotepec','OAX');
insert into ciudades values(null,'San Bartolo Soyaltepec','OAX');
insert into ciudades values(null,'San Bartolo Yautepec','OAX');
insert into ciudades values(null,'San Bartolomé Ayautla','OAX');
insert into ciudades values(null,'San Bartolomé Loxicha','OAX');
insert into ciudades values(null,'San Bartolomé Quialana','OAX');
insert into ciudades values(null,'San Bartolomé Yucuañe','OAX');
insert into ciudades values(null,'San Bartolomé Zoogocho','OAX');
insert into ciudades values(null,'San Bernardo Mixtepec','OAX');
insert into ciudades values(null,'San Blas Atempa','OAX');
insert into ciudades values(null,'San Carlos Yautepec','OAX');
insert into ciudades values(null,'San Cristóbal Amatlán','OAX');
insert into ciudades values(null,'San Cristóbal Amoltepec','OAX');
insert into ciudades values(null,'San Cristóbal Lachirioag','OAX');
insert into ciudades values(null,'San Cristóbal Suchixtlahuaca','OAX');
insert into ciudades values(null,'San Dionisio del Mar','OAX');
insert into ciudades values(null,'San Dionisio Ocotepec','OAX');
insert into ciudades values(null,'San Dionisio Ocotlán','OAX');
insert into ciudades values(null,'San Esteban Atatlahuca','OAX');
insert into ciudades values(null,'San Felipe Jalapa de Díaz','OAX');
insert into ciudades values(null,'San Felipe Tejalapam','OAX');
insert into ciudades values(null,'San Felipe Usila','OAX');
insert into ciudades values(null,'San Francisco Cahuacuá','OAX');
insert into ciudades values(null,'San Francisco Cajonos','OAX');
insert into ciudades values(null,'San Francisco Chapulapa','OAX');
insert into ciudades values(null,'San Francisco Chindua','OAX');
insert into ciudades values(null,'San Francisco del Mar','OAX');
insert into ciudades values(null,'San Francisco Huehuetlán','OAX');
insert into ciudades values(null,'San Francisco Ixhuatán','OAX');
insert into ciudades values(null,'San Francisco Jaltepetongo','OAX');
insert into ciudades values(null,'San Francisco Lachigoló','OAX');
insert into ciudades values(null,'San Francisco Logueche','OAX');
insert into ciudades values(null,'San Francisco Nuxaño','OAX');
insert into ciudades values(null,'San Francisco Ozolotepec','OAX');
insert into ciudades values(null,'San Francisco Sola','OAX');
insert into ciudades values(null,'San Francisco Telixtlahuaca','OAX');
insert into ciudades values(null,'San Francisco Teopan','OAX');
insert into ciudades values(null,'San Francisco Tlapancingo','OAX');
insert into ciudades values(null,'San Gabriel Mixtepec','OAX');
insert into ciudades values(null,'San Ildefonso Amatlán','OAX');
insert into ciudades values(null,'San Ildefonso Sola','OAX');
insert into ciudades values(null,'San Ildefonso Villa Alta','OAX');
insert into ciudades values(null,'San Jacinto Amilpas','OAX');
insert into ciudades values(null,'San Jacinto Tlacotepec','OAX');
insert into ciudades values(null,'San Jerónimo Coatlán','OAX');
insert into ciudades values(null,'San Jerónimo Silacayoapilla','OAX');
insert into ciudades values(null,'San Jerónimo Sosola','OAX');
insert into ciudades values(null,'San Jerónimo Taviche','OAX');
insert into ciudades values(null,'San Jerónimo Tecoatl','OAX');
insert into ciudades values(null,'San Jerónimo Tlacochahuaya','OAX');
insert into ciudades values(null,'San Jorge Nuchita','OAX');
insert into ciudades values(null,'San José Ayuquila','OAX');
insert into ciudades values(null,'San José Chiltepec','OAX');
insert into ciudades values(null,'San José del Peñasco','OAX');
insert into ciudades values(null,'San José del Progreso','OAX');
insert into ciudades values(null,'San José Estancia Grande','OAX');
insert into ciudades values(null,'San José Independencia','OAX');
insert into ciudades values(null,'San José Lachiguiri','OAX');
insert into ciudades values(null,'San José Tenango','OAX');
insert into ciudades values(null,'San Juan Achiutla','OAX');
insert into ciudades values(null,'San Juan Atepec','OAX');
insert into ciudades values(null,'San Juan Bautista Atatlahuca','OAX');
insert into ciudades values(null,'San Juan Bautista Coixtlahuaca','OAX');
insert into ciudades values(null,'San Juan Bautista Cuicatlán','OAX');
insert into ciudades values(null,'San Juan Bautista Guelache','OAX');
insert into ciudades values(null,'San Juan Bautista Jayacatlán','OAX');
insert into ciudades values(null,'San Juan Bautista Lo de Soto','OAX');
insert into ciudades values(null,'San Juan Bautista Suchitepec','OAX');
insert into ciudades values(null,'San Juan Bautista Tlacoatzintepec','OAX');
insert into ciudades values(null,'San Juan Bautista Tlachichilco','OAX');
insert into ciudades values(null,'San Juan Bautista Tuxtepec','OAX');
insert into ciudades values(null,'San Juan Bautista Valle Nacional','OAX');
insert into ciudades values(null,'San Juan Cacahuatepec','OAX');
insert into ciudades values(null,'San Juan Chicomezúchil','OAX');
insert into ciudades values(null,'San Juan Chilateca','OAX');
insert into ciudades values(null,'San Juan Cieneguilla','OAX');
insert into ciudades values(null,'San Juan Coatzóspam','OAX');
insert into ciudades values(null,'San Juan Colorado','OAX');
insert into ciudades values(null,'San Juan Comaltepec','OAX');
insert into ciudades values(null,'San Juan Cotzocón','OAX');
insert into ciudades values(null,'San Juan del Estado','OAX');
insert into ciudades values(null,'San Juan de los Cués','OAX');
insert into ciudades values(null,'San Juan del Río','OAX');
insert into ciudades values(null,'San Juan Diuxi','OAX');
insert into ciudades values(null,'San Juan Evangelista Analco','OAX');
insert into ciudades values(null,'San Juan Guelavia','OAX');
insert into ciudades values(null,'San Juan Guichicovi','OAX');
insert into ciudades values(null,'San Juan Ihualtepec','OAX');
insert into ciudades values(null,'San Juan Juquila Mixes','OAX');
insert into ciudades values(null,'San Juan Juquila Vijanos','OAX');
insert into ciudades values(null,'San Juan Lachao','OAX');
insert into ciudades values(null,'San Juan Lachigalla','OAX');
insert into ciudades values(null,'San Juan Lajarcia','OAX');
insert into ciudades values(null,'San Juan Lalana','OAX');
insert into ciudades values(null,'San Juan Mazatlán','OAX');
insert into ciudades values(null,'San Juan Mixtepec, distrito 08','OAX');
insert into ciudades values(null,'San Juan Mixtepec, distrito 26','OAX');
insert into ciudades values(null,'San Juan Ñumi','OAX');
insert into ciudades values(null,'San Juan Ozolotepec','OAX');
insert into ciudades values(null,'San Juan Petlapa','OAX');
insert into ciudades values(null,'San Juan Quiahije','OAX');
insert into ciudades values(null,'San Juan Quiotepec','OAX');
insert into ciudades values(null,'San Juan Sayultepec','OAX');
insert into ciudades values(null,'San Juan Tabaá','OAX');
insert into ciudades values(null,'San Juan Tamazola','OAX');
insert into ciudades values(null,'San Juan Teita','OAX');
insert into ciudades values(null,'San Juan Teitipac','OAX');
insert into ciudades values(null,'San Juan Tepeuxila','OAX');
insert into ciudades values(null,'San Juan Teposcolula','OAX');
insert into ciudades values(null,'San Juan Yaeé','OAX');
insert into ciudades values(null,'San Juan Yatzona','OAX');
insert into ciudades values(null,'San Juan Yucuita','OAX');
insert into ciudades values(null,'San Lorenzo','OAX');
insert into ciudades values(null,'San Lorenzo Albarradas','OAX');
insert into ciudades values(null,'San Lorenzo Cacaotepec','OAX');
insert into ciudades values(null,'San Lorenzo Cuaunecuiltitla','OAX');
insert into ciudades values(null,'San Lorenzo Texmelucan','OAX');
insert into ciudades values(null,'San Lorenzo Victoria','OAX');
insert into ciudades values(null,'San Lucas Camotlán','OAX');
insert into ciudades values(null,'San Lucas Ojitlán','OAX');
insert into ciudades values(null,'San Lucas Quiaviní','OAX');
insert into ciudades values(null,'San Lucas Zoquiápam','OAX');
insert into ciudades values(null,'San Luis Amatlán','OAX');
insert into ciudades values(null,'San Marcial Ozolotepec','OAX');
insert into ciudades values(null,'San Marcos Arteaga','OAX');
insert into ciudades values(null,'San Martín de los Cansecos','OAX');
insert into ciudades values(null,'San Martín Huamelúlpam','OAX');
insert into ciudades values(null,'San Martín Itunyoso','OAX');
insert into ciudades values(null,'San Martín Lachilá','OAX');
insert into ciudades values(null,'San Martín Peras','OAX');
insert into ciudades values(null,'San Martín Tilcajete','OAX');
insert into ciudades values(null,'San Martín Toxpalan','OAX');
insert into ciudades values(null,'San Martín Zacatepec','OAX');
insert into ciudades values(null,'San Mateo Cajonos','OAX');
insert into ciudades values(null,'San Mateo del Mar','OAX');
insert into ciudades values(null,'San Mateo Etlatongo','OAX');
insert into ciudades values(null,'San Mateo Nejápam','OAX');
insert into ciudades values(null,'San Mateo Peñasco','OAX');
insert into ciudades values(null,'San Mateo Piñas','OAX');
insert into ciudades values(null,'San Mateo Río Hondo','OAX');
insert into ciudades values(null,'San Mateo Sindihui','OAX');
insert into ciudades values(null,'San Mateo Tlapiltepec','OAX');
insert into ciudades values(null,'San Mateo Yoloxochitlán','OAX');
insert into ciudades values(null,'San Melchor Betaza','OAX');
insert into ciudades values(null,'San Miguel Achiutla','OAX');
insert into ciudades values(null,'San Miguel Ahuehuetitlán','OAX');
insert into ciudades values(null,'San Miguel Aloápam','OAX');
insert into ciudades values(null,'San Miguel Amatitlán','OAX');
insert into ciudades values(null,'San Miguel Amatlán','OAX');
insert into ciudades values(null,'San Miguel Coatlán','OAX');
insert into ciudades values(null,'San Miguel Chicahua','OAX');
insert into ciudades values(null,'San Miguel Chimalapa','OAX');
insert into ciudades values(null,'San Miguel del Puerto','OAX');
insert into ciudades values(null,'San Miguel del Río','OAX');
insert into ciudades values(null,'San Miguel Ejutla','OAX');
insert into ciudades values(null,'San Miguel el Grande','OAX');
insert into ciudades values(null,'San Miguel Huautla','OAX');
insert into ciudades values(null,'San Miguel Mixtepec','OAX');
insert into ciudades values(null,'San Miguel Panixtlahuaca','OAX');
insert into ciudades values(null,'San Miguel Peras','OAX');
insert into ciudades values(null,'San Miguel Piedras','OAX');
insert into ciudades values(null,'San Miguel Quetzaltepec','OAX');
insert into ciudades values(null,'San Miguel Santa Flor','OAX');
insert into ciudades values(null,'San Miguel Soyaltepec','OAX');
insert into ciudades values(null,'San Miguel Suchixtepec','OAX');
insert into ciudades values(null,'San Miguel Tecomatlán','OAX');
insert into ciudades values(null,'San Miguel Tenango','OAX');
insert into ciudades values(null,'San Miguel Tequixtepec','OAX');
insert into ciudades values(null,'San Miguel Tilquiápam','OAX');
insert into ciudades values(null,'San Miguel Tlacamama','OAX');
insert into ciudades values(null,'San Miguel Tlacotepec','OAX');
insert into ciudades values(null,'San Miguel Tulancingo','OAX');
insert into ciudades values(null,'San Miguel Yotao','OAX');
insert into ciudades values(null,'San Nicolás','OAX');
insert into ciudades values(null,'San Nicolás Hidalgo','OAX');
insert into ciudades values(null,'San Pablo Coatlán','OAX');
insert into ciudades values(null,'San Pablo Cuatro Venados','OAX');
insert into ciudades values(null,'San Pablo Etla','OAX');
insert into ciudades values(null,'San Pablo Huitzo','OAX');
insert into ciudades values(null,'San Pablo Huixtepec','OAX');
insert into ciudades values(null,'San Pablo Macuiltianguis','OAX');
insert into ciudades values(null,'San Pablo Tijaltepec','OAX');
insert into ciudades values(null,'San Pablo Villa de Mitla','OAX');
insert into ciudades values(null,'San Pablo Yaganiza','OAX');
insert into ciudades values(null,'San Pedro Amuzgos','OAX');
insert into ciudades values(null,'San Pedro Apóstol','OAX');
insert into ciudades values(null,'San Pedro Atoyac','OAX');
insert into ciudades values(null,'San Pedro Cajonos','OAX');
insert into ciudades values(null,'San Pedro Comitancillo','OAX');
insert into ciudades values(null,'San Pedro Cocaltepec Cántaros','OAX');
insert into ciudades values(null,'San Pedro el Alto','OAX');
insert into ciudades values(null,'San Pedro Huamelula','OAX');
insert into ciudades values(null,'San Pedro Huilotepec','OAX');
insert into ciudades values(null,'San Pedro Ixcatlán','OAX');
insert into ciudades values(null,'San Pedro Ixtlahuaca','OAX');
insert into ciudades values(null,'San Pedro Jaltepetongo','OAX');
insert into ciudades values(null,'San Pedro Jicayán','OAX');
insert into ciudades values(null,'San Pedro Jocotipac','OAX');
insert into ciudades values(null,'San Pedro Juchatengo','OAX');
insert into ciudades values(null,'San Pedro Mártir','OAX');
insert into ciudades values(null,'San Pedro Mártir Quiechapa','OAX');
insert into ciudades values(null,'San Pedro Mártir Yucuxaco','OAX');
insert into ciudades values(null,'San Pedro Mixtepec, distrito 22','OAX');
insert into ciudades values(null,'San Pedro Mixtepec, distrito 26','OAX');
insert into ciudades values(null,'San Pedro Molinos','OAX');
insert into ciudades values(null,'San Pedro Nopala','OAX');
insert into ciudades values(null,'San Pedro Ocopetatillo','OAX');
insert into ciudades values(null,'San Pedro Ocotepec','OAX');
insert into ciudades values(null,'San Pedro Pochutla','OAX');
insert into ciudades values(null,'San Pedro Quiatoni','OAX');
insert into ciudades values(null,'San Pedro Sochiápam','OAX');
insert into ciudades values(null,'San Pedro Tapanatepec','OAX');
insert into ciudades values(null,'San Pedro Taviche','OAX');
insert into ciudades values(null,'San Pedro Teozacoalco','OAX');
insert into ciudades values(null,'San Pedro Teutila','OAX');
insert into ciudades values(null,'San Pedro Tidaá','OAX');
insert into ciudades values(null,'San Pedro Topiltepec','OAX');
insert into ciudades values(null,'San Pedro Totolápam','OAX');
insert into ciudades values(null,'San Pedro y San Pablo Ayutla','OAX');
insert into ciudades values(null,'San Pedro y San Pablo Teposcolula','OAX');
insert into ciudades values(null,'San Pedro y San Pablo Tequixtepec','OAX');
insert into ciudades values(null,'San Pedro Yaneri','OAX');
insert into ciudades values(null,'San Pedro Yólox','OAX');
insert into ciudades values(null,'San Pedro Yucunama','OAX');
insert into ciudades values(null,'San Raymundo Jalpan','OAX');
insert into ciudades values(null,'San Sebastián Abasolo','OAX');
insert into ciudades values(null,'San Sebastián Coatlán','OAX');
insert into ciudades values(null,'San Sebastián Ixcapa','OAX');
insert into ciudades values(null,'San Sebastián Nicananduta','OAX');
insert into ciudades values(null,'San Sebastián Río Hondo','OAX');
insert into ciudades values(null,'San Sebastián Tecomaxtlahuaca','OAX');
insert into ciudades values(null,'San Sebastián Teitipac','OAX');
insert into ciudades values(null,'San Sebastián Tutla','OAX');
insert into ciudades values(null,'San Simón Almolongas','OAX');
insert into ciudades values(null,'San Simón Zahuatlán  ','OAX');
insert into ciudades values(null,'Santa Ana','OAX');
insert into ciudades values(null,'Santa Ana Ateixtlahuaca','OAX');
insert into ciudades values(null,'Santa Ana Cuauhtémoc','OAX');
insert into ciudades values(null,'Santa Ana del Valle','OAX');
insert into ciudades values(null,'Santa Ana Tavela','OAX');
insert into ciudades values(null,'Santa Ana Tlapacoyan','OAX');
insert into ciudades values(null,'Santa Ana Yareni','OAX');
insert into ciudades values(null,'Santa Ana Zegache','OAX');
insert into ciudades values(null,'Santa Catalina Quieri','OAX');
insert into ciudades values(null,'Santa Catarina Cuixtla','OAX');
insert into ciudades values(null,'Santa Catarina Ixtepeji','OAX');
insert into ciudades values(null,'Santa Catarina Juquila','OAX');
insert into ciudades values(null,'Santa Catarina Lachatao','OAX');
insert into ciudades values(null,'Santa Catarina Loxicha','OAX');
insert into ciudades values(null,'Santa Catarina Mechoacán','OAX');
insert into ciudades values(null,'Santa Catarina Minas','OAX');
insert into ciudades values(null,'Santa Catarina Quiané','OAX');
insert into ciudades values(null,'Santa Catarina Quioquitani','OAX');
insert into ciudades values(null,'Santa CatarinaTayata','OAX');
insert into ciudades values(null,'Santa Catarina Ticuá','OAX');
insert into ciudades values(null,'Santa Catarina Yosonotú','OAX');
insert into ciudades values(null,'Santa Catarina Zapoquila','OAX');
insert into ciudades values(null,'Santa Cruz Acatepec','OAX');
insert into ciudades values(null,'Santa Cruz Amilpas','OAX');
insert into ciudades values(null,'Santa Cruz de Bravo','OAX');
insert into ciudades values(null,'Santa Cruz Itundujia','OAX');
insert into ciudades values(null,'Santa Cruz Mixtepec','OAX');
insert into ciudades values(null,'Santa Cruz Nundaco','OAX');
insert into ciudades values(null,'Santa Cruz Papalutla','OAX');
insert into ciudades values(null,'Santa Cruz Tacache de Mina','OAX');
insert into ciudades values(null,'Santa Cruz Tacahua','OAX');
insert into ciudades values(null,'Santa Cruz Tayata','OAX');
insert into ciudades values(null,'Santa Cruz Xitla','OAX');
insert into ciudades values(null,'Santa Cruz Xoxocotlán','OAX');
insert into ciudades values(null,'Santa Cruz Zenzontepec','OAX');
insert into ciudades values(null,'Santa Gertrudis','OAX');
insert into ciudades values(null,'Santa Inés del Monte','OAX');
insert into ciudades values(null,'Santa Inés de Zaragoza','OAX');
insert into ciudades values(null,'Santa Inés Yatzeche','OAX');
insert into ciudades values(null,'Santa Lucía del Camino','OAX');
insert into ciudades values(null,'Santa Lucía Miahuatlán','OAX');
insert into ciudades values(null,'Santa Lucía Monteverde','OAX');
insert into ciudades values(null,'Santa Lucía Ocotlán','OAX');
insert into ciudades values(null,'Santa Magdalena Jicotlán','OAX');
insert into ciudades values(null,'Santa María Alotepec','OAX');
insert into ciudades values(null,'Santa María Apazco','OAX');
insert into ciudades values(null,'Santa María Atzompa','OAX');
insert into ciudades values(null,'Santa María Camotlán','OAX');
insert into ciudades values(null,'Santa María Chachoápam','OAX');
insert into ciudades values(null,'Santa María Chilchotla','OAX');
insert into ciudades values(null,'Santa María Chimalapa','OAX');
insert into ciudades values(null,'Santa María Colotepec','OAX');
insert into ciudades values(null,'Santa María Cortijo','OAX');
insert into ciudades values(null,'Santa María Coyotepec','OAX');
insert into ciudades values(null,'Santa María del Rosario','OAX');
insert into ciudades values(null,'Santa María del Tule','OAX');
insert into ciudades values(null,'Santa María Ecatepec','OAX');
insert into ciudades values(null,'Santa María Guelacé','OAX');
insert into ciudades values(null,'Santa María Guienagati','OAX');
insert into ciudades values(null,'Santa María Huatulco','OAX');
insert into ciudades values(null,'Santa María Huazolotitlán','OAX');
insert into ciudades values(null,'Santa María Ipalapa','OAX');
insert into ciudades values(null,'Santa María Ixcatlán','OAX');
insert into ciudades values(null,'Santa María Jacatepec','OAX');
insert into ciudades values(null,'Santa María Jalapa del Marqués','OAX');
insert into ciudades values(null,'Santa María Jaltianguis','OAX');
insert into ciudades values(null,'Santa María la Asunción','OAX');
insert into ciudades values(null,'Santa María Lachixío','OAX');
insert into ciudades values(null,'Santa María Mixtequilla','OAX');
insert into ciudades values(null,'Santa María Nativitas','OAX');
insert into ciudades values(null,'Santa María Nduayaco','OAX');
insert into ciudades values(null,'Santa María Ozolotepec','OAX');
insert into ciudades values(null,'Santa María Pápalo','OAX');
insert into ciudades values(null,'Santa María Peñoles','OAX');
insert into ciudades values(null,'Santa María Petapa','OAX');
insert into ciudades values(null,'Santa María Quiegolani','OAX');
insert into ciudades values(null,'Santa María Sola','OAX');
insert into ciudades values(null,'Santa María Tataltepec','OAX');
insert into ciudades values(null,'Santa María Tecomavaca','OAX');
insert into ciudades values(null,'Santa María Temaxcalapa','OAX');
insert into ciudades values(null,'Santa María Temaxcaltepec','OAX');
insert into ciudades values(null,'Santa María Teopoxco','OAX');
insert into ciudades values(null,'Santa María Tepantlali','OAX');
insert into ciudades values(null,'Santa María Texcatitlán','OAX');
insert into ciudades values(null,'Santa María Tlahuitoltepec','OAX');
insert into ciudades values(null,'Santa María Tlalixtac','OAX');
insert into ciudades values(null,'Santa María Tonameca','OAX');
insert into ciudades values(null,'Santa María Totolapilla','OAX');
insert into ciudades values(null,'Santa María Xadani','OAX');
insert into ciudades values(null,'Santa María Yalina','OAX');
insert into ciudades values(null,'Santa María Yavesía','OAX');
insert into ciudades values(null,'Santa María Yolotepec','OAX');
insert into ciudades values(null,'Santa María Yosoyua','OAX');
insert into ciudades values(null,'Santa María Yucuhiti','OAX');
insert into ciudades values(null,'Santa María Zacatepec','OAX');
insert into ciudades values(null,'Santa María Zaniza','OAX');
insert into ciudades values(null,'Santa María Zoquitlán','OAX');
insert into ciudades values(null,'Santiago Amoltepec','OAX');
insert into ciudades values(null,'Santiago Apoala','OAX');
insert into ciudades values(null,'Santiago Apóstol','OAX');
insert into ciudades values(null,'Santiago Astata','OAX');
insert into ciudades values(null,'Santiago Atitlán','OAX');
insert into ciudades values(null,'Santiago Ayuquililla','OAX');
insert into ciudades values(null,'Santiago Cacaloxtepec','OAX');
insert into ciudades values(null,'Santiago Camotlán','OAX');
insert into ciudades values(null,'Santiago Chazumba','OAX');
insert into ciudades values(null,'Santiago Choápam','OAX');
insert into ciudades values(null,'Santiago Comaltepec','OAX');
insert into ciudades values(null,'Santiago del Río','OAX');
insert into ciudades values(null,'Santiago Huajolotitlán','OAX');
insert into ciudades values(null,'Santiago Huauclilla','OAX');
insert into ciudades values(null,'Santiago Ihuitlán Plumas','OAX');
insert into ciudades values(null,'Santiago Ixcuintepec','OAX');
insert into ciudades values(null,'Santiago Ixtayutla','OAX');
insert into ciudades values(null,'Santiago Jamiltepec','OAX');
insert into ciudades values(null,'Santiago Jocotepec','OAX');
insert into ciudades values(null,'Santiago Juxtlahuaca','OAX');
insert into ciudades values(null,'Santiago Lachiguiri','OAX');
insert into ciudades values(null,'Santiago Lalopa','OAX');
insert into ciudades values(null,'Santiago Laollaga','OAX');
insert into ciudades values(null,'Santiago Laxopa','OAX');
insert into ciudades values(null,'Santiago Llano Grande','OAX');
insert into ciudades values(null,'Santiago Matatlán','OAX');
insert into ciudades values(null,'Santiago Miltepec','OAX');
insert into ciudades values(null,'Santiago Minas','OAX');
insert into ciudades values(null,'Santiago Nacaltepec','OAX');
insert into ciudades values(null,'Santiago Nejapilla','OAX');
insert into ciudades values(null,'Santiago Niltepec','OAX');
insert into ciudades values(null,'Santiago Nundiche','OAX');
insert into ciudades values(null,'Santiago Nuyoó','OAX');
insert into ciudades values(null,'Santiago Pinotepa Nacional','OAX');
insert into ciudades values(null,'Santiago Suchilquitongo','OAX');
insert into ciudades values(null,'Santiago Tamazola','OAX');
insert into ciudades values(null,'Santiago Tapextla','OAX');
insert into ciudades values(null,'Santiago Tenango','OAX');
insert into ciudades values(null,'Santiago Tepetlapa','OAX');
insert into ciudades values(null,'Santiago Tetepec','OAX');
insert into ciudades values(null,'Santiago Texcalcingo','OAX');
insert into ciudades values(null,'Santiago Textitlán','OAX');
insert into ciudades values(null,'Santiago Tilantongo','OAX');
insert into ciudades values(null,'Santiago Tillo','OAX');
insert into ciudades values(null,'Santiago Tlazoyaltepec','OAX');
insert into ciudades values(null,'Santiago Xanica','OAX');
insert into ciudades values(null,'Santiago Xiacuí','OAX');
insert into ciudades values(null,'Santiago Yaitepec','OAX');
insert into ciudades values(null,'Santiago Yaveo','OAX');
insert into ciudades values(null,'Santiago Yolomécatl','OAX');
insert into ciudades values(null,'Santiago Yosondúa','OAX');
insert into ciudades values(null,'Santiago Yucuyachi','OAX');
insert into ciudades values(null,'Santiago Zacatepec','OAX');
insert into ciudades values(null,'Santiago Zoochila','OAX');
insert into ciudades values(null,'Santo Domingo Albarradas','OAX');
insert into ciudades values(null,'Santo Domingo Armenta','OAX');
insert into ciudades values(null,'Santo Domingo Chihuitán','OAX');
insert into ciudades values(null,'Santo Domingo de Morelos','OAX');
insert into ciudades values(null,'Santo Domingo Ingenio','OAX');
insert into ciudades values(null,'Santo Domingo Ixcatlán','OAX');
insert into ciudades values(null,'Santo Domingo Nuxaá','OAX');
insert into ciudades values(null,'Santo Domingo Ozolotepec','OAX');
insert into ciudades values(null,'Santo Domingo Petapa','OAX');
insert into ciudades values(null,'Santo Domingo Roayaga','OAX');
insert into ciudades values(null,'Santo Domingo Tehuantepec','OAX');
insert into ciudades values(null,'Santo Domingo Teojomulco','OAX');
insert into ciudades values(null,'Santo Domingo Tepuxtepec','OAX');
insert into ciudades values(null,'Santo Domingo Tlatayapam','OAX');
insert into ciudades values(null,'Santo Domingo Tomaltepec','OAX');
insert into ciudades values(null,'Santo Domingo Tonalá','OAX');
insert into ciudades values(null,'Santo Domingo Tonaltepec','OAX');
insert into ciudades values(null,'Santo Domingo Xagacía','OAX');
insert into ciudades values(null,'Santo Domingo Yanhuitlán','OAX');
insert into ciudades values(null,'Santo Domingo Yodohino','OAX');
insert into ciudades values(null,'Santo Domingo Zanatepec','OAX');
insert into ciudades values(null,'Santo Tomás Jalieza','OAX');
insert into ciudades values(null,'Santo Tomás Mazaltepec','OAX');
insert into ciudades values(null,'Santo Tomás Ocotepec','OAX');
insert into ciudades values(null,'Santo Tomás Tamazulapan','OAX');
insert into ciudades values(null,'Santos Reyes Nopala','OAX');
insert into ciudades values(null,'Santos Reyes Pápalo','OAX');
insert into ciudades values(null,'Santos Reyes Tepejillo','OAX');
insert into ciudades values(null,'Santos Reyes Yucuná','OAX');
insert into ciudades values(null,'San Vicente Coatlán','OAX');
insert into ciudades values(null,'San Vicente Lachixío','OAX');
insert into ciudades values(null,'San Vicente Nuñú','OAX');
insert into ciudades values(null,'Silacayoápam','OAX');
insert into ciudades values(null,'Sitio de Xitlapehua','OAX');
insert into ciudades values(null,'Soledad Etla','OAX');
insert into ciudades values(null,'Tamazulápam del Espíritu Santo','OAX');
insert into ciudades values(null,'Tanetze de Zaragoza','OAX');
insert into ciudades values(null,'Taniche','OAX');
insert into ciudades values(null,'Tataltepec de Valdés','OAX');
insert into ciudades values(null,'Teococuilco de Marcos Pérez','OAX');
insert into ciudades values(null,'Teotitlán de Flores Magón','OAX');
insert into ciudades values(null,'Teotitlán del Valle','OAX');
insert into ciudades values(null,'Teotongo','OAX');
insert into ciudades values(null,'Tepelmeme Villa de Morelos','OAX');
insert into ciudades values(null,'Tezoatlán de Segura y Luna','OAX');
insert into ciudades values(null,'Tlacolula de Matamoros','OAX');
insert into ciudades values(null,'Tlacotepec Plumas','OAX');
insert into ciudades values(null,'Tlalixtac de Cabrera','OAX');
insert into ciudades values(null,'Totontepec Villa de Morelos','OAX');
insert into ciudades values(null,'Trinidad Zaáchila','OAX');
insert into ciudades values(null,'Unión Hidalgo','OAX');
insert into ciudades values(null,'Valerio Trujano','OAX');
insert into ciudades values(null,'Villa de Chilapa de Díaz','OAX');
insert into ciudades values(null,'Villa de Etla','OAX');
insert into ciudades values(null,'Villa de Tamazulápam del Progreso','OAX');
insert into ciudades values(null,'Villa de Tututepec de Melchor Ocampo','OAX');
insert into ciudades values(null,'Villa de Zaáchila','OAX');
insert into ciudades values(null,'Villa Díaz Ordaz','OAX');
insert into ciudades values(null,'Villa Hidalgo','OAX');
insert into ciudades values(null,'Villa Sola de Vega','OAX');
insert into ciudades values(null,'Villa Talea de Castro','OAX');
insert into ciudades values(null,'Villa Tejupam de la Unión','OAX');
insert into ciudades values(null,'Yaxe','OAX');
insert into ciudades values(null,'Yogana','OAX');
insert into ciudades values(null,'Yutanduchi de Guerrero','OAX');
insert into ciudades values(null,'Zapotitlán del Río','OAX');
insert into ciudades values(null,'Zapotitlán Lagunas','OAX');
insert into ciudades values(null,'Zapotitlán Palmas','OAX');

#end region
#region puebla
insert into ciudades values(null,'Puebla','PUE');
insert into ciudades values(null,'Tehuacán','PUE');
insert into ciudades values(null,'Cholula de Rivadavia','PUE');
insert into ciudades values(null,'Atlixco','PUE');
insert into ciudades values(null,'Amozoc','PUE');
insert into ciudades values(null,'San Martín','PUE');
insert into ciudades values(null,'Teziutlán','PUE');
insert into ciudades values(null,'Huauchinango','PUE');
insert into ciudades values(null,'Tlaxcalancingo','PUE');
insert into ciudades values(null,'Izúcar','PUE');
insert into ciudades values(null,'San Andrés Cholula','PUE');
insert into ciudades values(null,'Xicotepec','PUE');
insert into ciudades values(null,'Zacatlán','PUE');
insert into ciudades values(null,'Tecamachalco','PUE');
insert into ciudades values(null,'Ajalpan','PUE');
insert into ciudades values(null,'Sanctórum','PUE');
insert into ciudades values(null,'Tepeaca','PUE');
insert into ciudades values(null,'Moyotzingo','PUE');
insert into ciudades values(null,'Acatzingo','PUE');
insert into ciudades values(null,'Huejotzingo','PUE');


#end region
#region queretaro
insert into ciudades values(null,'Amealco de Bonfil','QUE');
insert into ciudades values(null,'Pinal de Amoles','QUE');
insert into ciudades values(null,'Arroyo Seco','QUE');
insert into ciudades values(null,'Cadereyta de Montes','QUE');
insert into ciudades values(null,'Colón','QUE');
insert into ciudades values(null,'Corregidora','QUE');
insert into ciudades values(null,'Ezequiel Montes','QUE');
insert into ciudades values(null,'Huimilpan','QUE');
insert into ciudades values(null,'Jalpan de Serra','QUE');
insert into ciudades values(null,'Landa de Matamoros','QUE');
insert into ciudades values(null,'El Marqués','QUE');
insert into ciudades values(null,'Pedro Escobedo','QUE');
insert into ciudades values(null,'Peñamiller','QUE');
insert into ciudades values(null,'Querétaro','QUE');
insert into ciudades values(null,'San Joaquín','QUE');
insert into ciudades values(null,'San Juan del Río','QUE');
insert into ciudades values(null,'Tequisquiapan','QUE');
insert into ciudades values(null,'Tolimán','QUE');

#end region
#region Quintana roo
insert into ciudades values(null,'Benito Juárez','ROO');
insert into ciudades values(null,'Othón P. Blanco','ROO');
insert into ciudades values(null,'Solidaridad','ROO');
insert into ciudades values(null,'Cozumel','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Tulum','ROO');
insert into ciudades values(null,'Benito Juárez','ROO');
insert into ciudades values(null,'Isla Mujeres','ROO');
insert into ciudades values(null,'José María Morelos','ROO');
insert into ciudades values(null,'Bacalar','ROO');
insert into ciudades values(null,'Puerto Morelos','ROO');
insert into ciudades values(null,'Lázaro Cárdenas','ROO');
insert into ciudades values(null,'Puerto Morelos','ROO');
insert into ciudades values(null,'Solidaridad','ROO');
insert into ciudades values(null,'Othón P. Blanco','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Othón P. Blanco','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Othón P. Blanco','ROO');
insert into ciudades values(null,'José María Morelos','ROO');
insert into ciudades values(null,'Othón P. Blanco','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Bacalar','ROO');

#end region
#region san luis
insert into ciudades values(null,'San Luis Potosí','SLP');
insert into ciudades values(null,'Soledad de Graciano Sánchez','SLP');
insert into ciudades values(null,'Ciudad Valles','SLP');
insert into ciudades values(null,'Matehuala','SLP');
insert into ciudades values(null,'Río Verde','SLP');
insert into ciudades values(null,'Ciudad Fernández','SLP');
insert into ciudades values(null,'Tamazunchale','SLP');
insert into ciudades values(null,'Ébano','SLP');
insert into ciudades values(null,'Salinas de Hidalgo','SLP');
insert into ciudades values(null,'Tamuín','SLP');
insert into ciudades values(null,'Cárdenas','SLP');
insert into ciudades values(null,'Cerritos','SLP');
insert into ciudades values(null,'Santa María del Río','SLP');
insert into ciudades values(null,'Charcas','SLP');
insert into ciudades values(null,'Cedral','SLP');
insert into ciudades values(null,'El Naranjo','SLP');
insert into ciudades values(null,'Ciudad del Maíz','SLP');
insert into ciudades values(null,'Villa de Reyes','SLP');
insert into ciudades values(null,'Tanquián de Escobedo','SLP');
insert into ciudades values(null,'Villa de Zaragoza','SLP');

#end region
#region sinaloa
insert into ciudades values(null,' Ahome','SIN');
insert into ciudades values(null,' Angostura','SIN');
insert into ciudades values(null,' Badiraguato','SIN');
insert into ciudades values(null,' Concordia','SIN');
insert into ciudades values(null,' Cosalá','SIN');
insert into ciudades values(null,' Culiacán','SIN');
insert into ciudades values(null,' Choix','SIN');
insert into ciudades values(null,' Elota','SIN');
insert into ciudades values(null,' Escuinapa','SIN');
insert into ciudades values(null,' El Fuerte','SIN');
insert into ciudades values(null,' Guasave','SIN');
insert into ciudades values(null,' Mazatlán','SIN');
insert into ciudades values(null,' Mocorito','SIN');
insert into ciudades values(null,' Rosario','SIN');
insert into ciudades values(null,' Salvador Alvarado','SIN');
insert into ciudades values(null,' San Ignacio','SIN');
insert into ciudades values(null,' Sinaloa','SIN');
insert into ciudades values(null,' Navolato','SIN');

#end region
#region sonora
insert into ciudades values(null,'Guaymas','SON');
insert into ciudades values(null,'Agua Prieta','SON');
insert into ciudades values(null,'Caborca','SON');
insert into ciudades values(null,'Puerto Peñasco','SON');
insert into ciudades values(null,'Empalme','SON');
insert into ciudades values(null,'Hermosillo','SON');
insert into ciudades values(null,'Ciudad Obregón','SON');
insert into ciudades values(null,'Nogales','SON');
insert into ciudades values(null,'San Luis Río Colorado','SON');
insert into ciudades values(null,'Navojoa','SON');
insert into ciudades values(null,'Heroica Caborca','SON');
insert into ciudades values(null,'Puerto Peñasco ','SON');
insert into ciudades values(null,'Empalme','SON');
insert into ciudades values(null,'Heroica Guaymas','SON');
insert into ciudades values(null,'Agua Prieta','SON');

#end region
#region tabasco
insert into ciudades values(null,'Villahermosa','TAB');
insert into ciudades values(null,'Heroica Cárdenas','TAB');
insert into ciudades values(null,'Comalcalco','TAB');
insert into ciudades values(null,'Macuspana','TAB');
insert into ciudades values(null,'Tenosique de Pino Suárez','TAB');
insert into ciudades values(null,'Huimanguillo','TAB');
insert into ciudades values(null,'Teapa','TAB');
insert into ciudades values(null,'Paraíso','TAB');
insert into ciudades values(null,'Ocuiltzapotlán','TAB');
insert into ciudades values(null,'Frontera','TAB');
insert into ciudades values(null,'Playas del Rosario','TAB');
insert into ciudades values(null,'Cunduacán','TAB');
insert into ciudades values(null,'Emiliano Zapata','TAB');
insert into ciudades values(null,'Benito Juárez','TAB');
insert into ciudades values(null,'Jalpa de Méndez','TAB');
insert into ciudades values(null,'Balancán de Domínguez','TAB');
insert into ciudades values(null,'Ciudad Pemex','TAB');
insert into ciudades values(null,'Nacajuca','TAB');
insert into ciudades values(null,'La Venta','TAB');
insert into ciudades values(null,'Tacotalpa','TAB');
insert into ciudades values(null,'Jonuta','TAB');
insert into ciudades values(null,'Jalapa','TAB');

#end region
#region tamaulipas
insert into ciudades values(null,'Reynosa','TAM');
insert into ciudades values(null,'Matamoros','TAM');
insert into ciudades values(null,'Nuevo Laredo','TAM');
insert into ciudades values(null,'Ciudad Victoria','TAM');
insert into ciudades values(null,'Tampico','TAM');
insert into ciudades values(null,'Ciudad Madero','TAM');
insert into ciudades values(null,'Miramar','TAM');
insert into ciudades values(null,'Río Bravo','TAM');
insert into ciudades values(null,'Mante','TAM');
insert into ciudades values(null,'Altamira','TAM');

#end region
#region tlaxcala
insert into ciudades values(null,'San Pablo del Monte','TLA');
insert into ciudades values(null,'Huamantla','TLA');
insert into ciudades values(null,'Apizaco','TLA');
insert into ciudades values(null,'Chiautempan','TLA');
insert into ciudades values(null,'Zacatelco','TLA');
insert into ciudades values(null,'Calpulalpan','TLA');
insert into ciudades values(null,'Juan Cuamatzi','TLA');
insert into ciudades values(null,'Papalotla','TLA');
insert into ciudades values(null,'Tlaxcala','TLA');
insert into ciudades values(null,'Tlaltelulco','TLA');
insert into ciudades values(null,'Teolocholco','TLA');
insert into ciudades values(null,'Tetla','TLA');
insert into ciudades values(null,'Tlaxco','TLA');
insert into ciudades values(null,'Tlaxcala','TLA');
insert into ciudades values(null,'Tequexquitla','TLA');
insert into ciudades values(null,'Tlaxcala','TLA');
insert into ciudades values(null,'Xicohtzinco','TLA');
insert into ciudades values(null,'Mariano Arista','TLA');
insert into ciudades values(null,'Tenancingo','TLA');
insert into ciudades values(null,'Xaloztoc','TLA');

#end region
#region veracruz
insert into ciudades values(null,'Veracruz (V)','VER');
insert into ciudades values(null,'Coatzacoalcos (Ct)','VER');
insert into ciudades values(null,'Poza Rica de Hidalgo (P)','VER');
insert into ciudades values(null,'Minatitlán (M)','VER');
insert into ciudades values(null,'Córdoba (Cr)','VER');
insert into ciudades values(null,'Orizaba (O)','VER');
insert into ciudades values(null,'Túxpam de Rodríguez Cano','VER');
insert into ciudades values(null,'San Andrés Tuxtla','VER');
insert into ciudades values(null,'Martínez de la Torre','VER');
insert into ciudades values(null,'Coatepec (X)','VER');
insert into ciudades values(null,'Papantla de Olarte (P)','VER');
insert into ciudades values(null,'Acayucan (A)','VER');
insert into ciudades values(null,'Tierra Blanca','VER');
insert into ciudades values(null,'Las Choapas','VER');
insert into ciudades values(null,'Pánuco (T)','VER');
insert into ciudades values(null,'Río Blanco (O)','VER');
insert into ciudades values(null,'Perote','VER');
insert into ciudades values(null,'Agua Dulce','VER');
insert into ciudades values(null,'Ciudad Mendoza (O)','VER');
insert into ciudades values(null,'Tlapacoyan','VER');
insert into ciudades values(null,'Coatzintla (P)','VER');
insert into ciudades values(null,'Jáltipan de Morelos (M)','VER');
insert into ciudades values(null,'Huatusco','VER');
insert into ciudades values(null,'Tantoyuca','VER');
insert into ciudades values(null,'Cosamaloapan de Carpio','VER');
insert into ciudades values(null,'Catemaco','VER');
insert into ciudades values(null,'Misantla','VER');
insert into ciudades values(null,'Isla','VER');
insert into ciudades values(null,'Ixtaczoquitlán (O)','VER');
insert into ciudades values(null,'Valente Díaz (V)','VER');
insert into ciudades values(null,'Nanchital de Lázaro Cárdenas del Río (Ct)','VER');
insert into ciudades values(null,'Álamo','VER');
insert into ciudades values(null,'Allende (Ct)','VER');
insert into ciudades values(null,'Alvarado (V)','VER');
insert into ciudades values(null,'Cosoleacaque (M)','VER');
insert into ciudades values(null,'Cerro Azul','VER');
insert into ciudades values(null,'Nogales (O)','VER');
insert into ciudades values(null,'Fortín de las Flores (Cr)','VER');
insert into ciudades values(null,'Naranjos','VER');
insert into ciudades values(null,'Altotonga','VER');
insert into ciudades values(null,'Banderilla (X)','VER');
insert into ciudades values(null,'José Cardel','VER');
insert into ciudades values(null,'Lerdo de Tejada','VER');
insert into ciudades values(null,'Xico','VER');
insert into ciudades values(null,'Carlos A. Carrillo','VER');
insert into ciudades values(null,'Tres Valles','VER');
insert into ciudades values(null,'Fraccionamiento Ciudad Olmeca (Ct)','VER');
insert into ciudades values(null,'Santiago Tuxtla','VER');
insert into ciudades values(null,'Independencia','VER');
insert into ciudades values(null,'Coscomatepec','VER');
insert into ciudades values(null,'Alto Lucero (Tuxpan)','VER');
insert into ciudades values(null,'Benito Juárez (T)','VER');
insert into ciudades values(null,'Oteapan (M)','VER');
insert into ciudades values(null,'Juan Rodríguez Clara','VER');
insert into ciudades values(null,'Las Amapolas (V)','VER');
insert into ciudades values(null,'Tihuatlán (P)','VER');
insert into ciudades values(null,'Palmira (O)','VER');
insert into ciudades values(null,'General Miguel Alemán','VER');
insert into ciudades values(null,'Anáhuac (T)','VER');
insert into ciudades values(null,'Sayula de Alemán','VER');
insert into ciudades values(null,'Cuitláhuac','VER');
insert into ciudades values(null,'Gutiérrez Zamora','VER');
insert into ciudades values(null,'Paso del Macho','VER');
insert into ciudades values(null,'Jalacingo','VER');
insert into ciudades values(null,'Filomeno Mata','VER');
insert into ciudades values(null,'Fraccionamiento Puente Moreno (V)','VER');
insert into ciudades values(null,'Fraccionamiento Geovillas Los Pinos (V)','VER');
insert into ciudades values(null,'Oluta (A)','VER');
insert into ciudades values(null,'Tempoal de Sánchez','VER');
insert into ciudades values(null,'Soledad de Doblado','VER');
insert into ciudades values(null,'Ángel R. Cabada','VER');
insert into ciudades values(null,'Maltrata (O)','VER');
insert into ciudades values(null,'Córdoba - Santa Leticia (Cr)','VER');
insert into ciudades values(null,'Plan de Ayala (P)','VER');
insert into ciudades values(null,'El Tejar (V)','VER');
insert into ciudades values(null,'La Luz Francisco I. Madero (San Román) (Cr)','VER');
insert into ciudades values(null,'Platón Sánchez','VER');
insert into ciudades values(null,'Chocamán','VER');
insert into ciudades values(null,'Moralillo (T)','VER');
insert into ciudades values(null,'Ixhuatlán del Sureste','VER');
insert into ciudades values(null,'Teocelo','VER');
insert into ciudades values(null,'Boca del Río (V)','VER');
insert into ciudades values(null,'Ciudad Cuauhtémoc (T)','VER');
insert into ciudades values(null,'Las Vigas de Ramírez','VER');
insert into ciudades values(null,'Texistepec','VER');
insert into ciudades values(null,'Zaragoza (M)','VER');
insert into ciudades values(null,'Rafael Delgado (O)','VER');
insert into ciudades values(null,'Zempoala','VER');
insert into ciudades values(null,'Naolinco de Victoria','VER');
insert into ciudades values(null,'Amatlán de los Reyes (Cr)','VER');
insert into ciudades values(null,'Playa Vicente','VER');
insert into ciudades values(null,'Atzacan (O)','VER');
insert into ciudades values(null,'Lomas de Barrillas (Ct)','VER');
insert into ciudades values(null,'Piedras Negras','VER');
insert into ciudades values(null,'Santiago de la Peña','VER');
insert into ciudades values(null,'Colonia Santa Bárbara (X)','VER');
insert into ciudades values(null,'El Higo','VER');
insert into ciudades values(null,'Pajapan','VER');
insert into ciudades values(null,'Mundo Nuevo (Ct)','VER');
insert into ciudades values(null,'Coyutla','VER');
insert into ciudades values(null,'Jacarandas (X)','VER');
insert into ciudades values(null,'Jalapilla (O)','VER');
insert into ciudades values(null,'Rinconada (X)','VER');
insert into ciudades values(null,'Tatahuicapan','VER');
insert into ciudades values(null,'El Pueblito (Crucero Nacional) (Cr)','VER');
insert into ciudades values(null,'Totolapa (P)','VER');
insert into ciudades values(null,'Cuichapa','VER');
insert into ciudades values(null,'Vega de Alatorre','VER');
insert into ciudades values(null,'Tlacotalpan','VER');
insert into ciudades values(null,'El Naranjito (M)','VER');
insert into ciudades values(null,'Cuautlalpan (O)','VER');
insert into ciudades values(null,'Chinameca (M)','VER');
insert into ciudades values(null,'Tuzamapan (X)','VER');
insert into ciudades values(null,'Paso de Ovejas','VER');
insert into ciudades values(null,'San Marcos de León','VER');
insert into ciudades values(null,'Xocotla','VER');
insert into ciudades values(null,'Acultzingo','VER');
insert into ciudades values(null,'Monte Blanco (Cr)','VER');
insert into ciudades values(null,'Zongolica','VER');
insert into ciudades values(null,'Coacotla','VER');
insert into ciudades values(null,'Coacoatzintla','VER');
insert into ciudades values(null,'Villa Azueta','VER');
insert into ciudades values(null,'Ixhuatlán del Café','VER');
insert into ciudades values(null,'Lomas Verdes (X)','VER');
insert into ciudades values(null,'San Rafael','VER');
insert into ciudades values(null,'Hidalgo (T)','VER');
insert into ciudades values(null,'Colinas de Santa Fe (V)','VER');
insert into ciudades values(null,'Cabezas','VER');
insert into ciudades values(null,'Guadalupe Victoria (X)','VER');
insert into ciudades values(null,'Juan Díaz Covarrubias','VER');
insert into ciudades values(null,'Mecayapan','VER');
insert into ciudades values(null,'Fraccionamiento Arboledas San Ramón (V)','VER');
insert into ciudades values(null,'Antón Lizardo (V)','VER');
insert into ciudades values(null,'Agua Dulce (P)','VER');
insert into ciudades values(null,'Soconusco (A)','VER');
insert into ciudades values(null,'Emilio Carranza','VER');
insert into ciudades values(null,'Yanga (Cr)','VER');
insert into ciudades values(null,'Peñuela (Cr)','VER');
insert into ciudades values(null,'Tezonapa','VER');
insert into ciudades values(null,'Chinampa de Gorostiza','VER');
insert into ciudades values(null,'Manlio Fabio Altamirano','VER');
insert into ciudades values(null,'Úrsulo Galván','VER');
insert into ciudades values(null,'Huayacocotla','VER');
insert into ciudades values(null,'Paso del Toro (V)','VER');
insert into ciudades values(null,'Mecatlán','VER');
insert into ciudades values(null,'Tepetzintla','VER');
insert into ciudades values(null,'El Castillo (X)','VER');
insert into ciudades values(null,'Soteapan','VER');
insert into ciudades values(null,'Tamiahua','VER');
insert into ciudades values(null,'Tamalín','VER');
insert into ciudades values(null,'Primero de Mayo (Los Mangos) (T)','VER');
insert into ciudades values(null,'Comoapan','VER');
insert into ciudades values(null,'Citlaltépec','VER');

#end region
#region yucatan
insert into ciudades values(null,'Abalá','YUC');
insert into ciudades values(null,'Acancéh','YUC');
insert into ciudades values(null,'Akil','YUC');
insert into ciudades values(null,'Baca','YUC');
insert into ciudades values(null,'Bokobá','YUC');
insert into ciudades values(null,'Buctzotz','YUC');
insert into ciudades values(null,'Cacalchén','YUC');
insert into ciudades values(null,'Calotmul','YUC');
insert into ciudades values(null,'Cansahcab','YUC');
insert into ciudades values(null,'Cantamayec','YUC');
insert into ciudades values(null,'Celestún','YUC');
insert into ciudades values(null,'Cenotillo','YUC');
insert into ciudades values(null,'Conkal','YUC');
insert into ciudades values(null,'Cuncunul','YUC');
insert into ciudades values(null,'Cuzamá','YUC');
insert into ciudades values(null,'Chacsinkín','YUC');
insert into ciudades values(null,'Chankom','YUC');
insert into ciudades values(null,'Chapab','YUC');
insert into ciudades values(null,'Chemax','YUC');
insert into ciudades values(null,'Chicxulub Pueblo','YUC');
insert into ciudades values(null,'Chichimilá','YUC');
insert into ciudades values(null,'Chikindzonot','YUC');
insert into ciudades values(null,'Chocholá','YUC');
insert into ciudades values(null,'Chumayel','YUC');
insert into ciudades values(null,'Dzan','YUC');
insert into ciudades values(null,'Dzemul','YUC');
insert into ciudades values(null,'Dzidzantún','YUC');
insert into ciudades values(null,'Dzilam de Bravo','YUC');
insert into ciudades values(null,'Dzilam González','YUC');
insert into ciudades values(null,'Dzitás','YUC');
insert into ciudades values(null,'Dzoncauich','YUC');
insert into ciudades values(null,'Espita','YUC');
insert into ciudades values(null,'Halachó','YUC');
insert into ciudades values(null,'Hocabá','YUC');
insert into ciudades values(null,'Hoctún','YUC');
insert into ciudades values(null,'Homún','YUC');
insert into ciudades values(null,'Huhí','YUC');
insert into ciudades values(null,'Hunucmá','YUC');
insert into ciudades values(null,'Ixil','YUC');
insert into ciudades values(null,'Izamal','YUC');
insert into ciudades values(null,'Kanasín','YUC');
insert into ciudades values(null,'Kantunil','YUC');
insert into ciudades values(null,'Kaua','YUC');
insert into ciudades values(null,'Kinchil','YUC');
insert into ciudades values(null,'Kopomá','YUC');
insert into ciudades values(null,'Mama','YUC');
insert into ciudades values(null,'Maní','YUC');
insert into ciudades values(null,'Maxcanú','YUC');
insert into ciudades values(null,'Mayapán','YUC');
insert into ciudades values(null,'Mérida','YUC');
insert into ciudades values(null,'Mocochá','YUC');
insert into ciudades values(null,'Motul','YUC');
insert into ciudades values(null,'Muna','YUC');
insert into ciudades values(null,'Muxupip','YUC');
insert into ciudades values(null,'Opichén','YUC');
insert into ciudades values(null,'Oxkutzcab','YUC');
insert into ciudades values(null,'Panabá','YUC');
insert into ciudades values(null,'Peto','YUC');
insert into ciudades values(null,'Progreso','YUC');
insert into ciudades values(null,'Quintana Roo','YUC');
insert into ciudades values(null,'Río Lagartos','YUC');
insert into ciudades values(null,'Sacalum','YUC');
insert into ciudades values(null,'Samahil','YUC');
insert into ciudades values(null,'Sanahcat','YUC');
insert into ciudades values(null,'San Felipe','YUC');
insert into ciudades values(null,'Santa Elena','YUC');
insert into ciudades values(null,'Seyé','YUC');
insert into ciudades values(null,'Sinanché','YUC');
insert into ciudades values(null,'Sotuta','YUC');
insert into ciudades values(null,'Sucilá','YUC');
insert into ciudades values(null,'Sudzal','YUC');
insert into ciudades values(null,'Suma de Hidalgo','YUC');
insert into ciudades values(null,'Tahdziú','YUC');
insert into ciudades values(null,'Tahmek','YUC');
insert into ciudades values(null,'Teabo','YUC');
insert into ciudades values(null,'Tecóh','YUC');
insert into ciudades values(null,'Tekal de Venegas','YUC');
insert into ciudades values(null,'Tekantó','YUC');
insert into ciudades values(null,'Tekax','YUC');
insert into ciudades values(null,'Tekit','YUC');
insert into ciudades values(null,'Tekom','YUC');
insert into ciudades values(null,'Telchac Pueblo','YUC');
insert into ciudades values(null,'Telchac Puerto','YUC');
insert into ciudades values(null,'Temax','YUC');
insert into ciudades values(null,'Temozón','YUC');
insert into ciudades values(null,'Tepakán','YUC');
insert into ciudades values(null,'Tetiz','YUC');
insert into ciudades values(null,'Teya','YUC');
insert into ciudades values(null,'Ticul','YUC');
insert into ciudades values(null,'Timucuy','YUC');
insert into ciudades values(null,'Tinum','YUC');
insert into ciudades values(null,'Tixcacalcupul','YUC');
insert into ciudades values(null,'Tixkokob','YUC');
insert into ciudades values(null,'Tixméhuac','YUC');
insert into ciudades values(null,'Tixpéhual','YUC');
insert into ciudades values(null,'Tizimín','YUC');
insert into ciudades values(null,'Tunkás','YUC');
insert into ciudades values(null,'Tzucacab','YUC');
insert into ciudades values(null,'Uayma','YUC');
insert into ciudades values(null,'Ucú','YUC');
insert into ciudades values(null,'Umán','YUC');
insert into ciudades values(null,'Valladolid','YUC');
insert into ciudades values(null,'Xocchel','YUC');
insert into ciudades values(null,'Yaxcabá','YUC');
insert into ciudades values(null,'Yaxkukul','YUC');
insert into ciudades values(null,'Yobaín','YUC');

#end region
#region zacatecas
insert into ciudades values(null,'Apulco','ZAC');
insert into ciudades values(null,'Atolinga','ZAC');
insert into ciudades values(null,'Benito Juárez','ZAC');
insert into ciudades values(null,'Calera','ZAC');
insert into ciudades values(null,'Cañitas de Felipe Pescador','ZAC');
insert into ciudades values(null,'Concepción del Oro','ZAC');
insert into ciudades values(null,'Cuauhtémoc','ZAC');
insert into ciudades values(null,'Chalchihuites','ZAC');
insert into ciudades values(null,'El Plateado de Joaquín Amaro','ZAC');
insert into ciudades values(null,'El Salvador','ZAC');
insert into ciudades values(null,'Fresnillo','ZAC');
insert into ciudades values(null,'Genaro Codina','ZAC');
insert into ciudades values(null,'General Enrique Estrada','ZAC');
insert into ciudades values(null,'General Francisco R. Murguía','ZAC');
insert into ciudades values(null,'General Pánfilo Natera','ZAC');
insert into ciudades values(null,'Guadalupe','ZAC');
insert into ciudades values(null,'Huanusco','ZAC');
insert into ciudades values(null,'Jalpa','ZAC');
insert into ciudades values(null,'Jeréz','ZAC');
insert into ciudades values(null,'Jiménez del Teul','ZAC');
insert into ciudades values(null,'Juan Aldama','ZAC');
insert into ciudades values(null,'Juchipila','ZAC');
insert into ciudades values(null,'Loreto','ZAC');
insert into ciudades values(null,'Luis Moya','ZAC');
insert into ciudades values(null,'Mazapil','ZAC');
insert into ciudades values(null,'Melchor Ocampo','ZAC');
insert into ciudades values(null,'Mezquital del Oro','ZAC');
insert into ciudades values(null,'Miguel Auza','ZAC');
insert into ciudades values(null,'Momax','ZAC');
insert into ciudades values(null,'Monte Escobedo','ZAC');
insert into ciudades values(null,'Morelos','ZAC');
insert into ciudades values(null,'Moyahua de Estrada','ZAC');
insert into ciudades values(null,'Nochistlán de Mejía','ZAC');
insert into ciudades values(null,'Noria de Ángeles','ZAC');
insert into ciudades values(null,'Ojocaliente','ZAC');
insert into ciudades values(null,'Pánuco','ZAC');
insert into ciudades values(null,'Pinos','ZAC');
insert into ciudades values(null,'Río Grande','ZAC');
insert into ciudades values(null,'Santa María de la Paz','ZAC');
insert into ciudades values(null,'Saín Alto','ZAC');
insert into ciudades values(null,'Sombrerete','ZAC');
insert into ciudades values(null,'Susticacán','ZAC');
insert into ciudades values(null,'Tabasco','ZAC');
insert into ciudades values(null,'Tepechitlán','ZAC');
insert into ciudades values(null,'Tepetongo','ZAC');
insert into ciudades values(null,'Teúl de González Ortega','ZAC');
insert into ciudades values(null,'Tlaltenango de Sánchez Román','ZAC');
insert into ciudades values(null,'Trancoso','ZAC');
insert into ciudades values(null,'Trinidad García de la Cadena','ZAC');
insert into ciudades values(null,'Valparaíso','ZAC');
insert into ciudades values(null,'Vetagrande','ZAC');
insert into ciudades values(null,'Villa de Cos','ZAC');
insert into ciudades values(null,'Villa García','ZAC');
insert into ciudades values(null,'Villa González Ortega','ZAC');
insert into ciudades values(null,'Villa Hidalgo','ZAC');
insert into ciudades values(null,'Villanueva','ZAC');
insert into ciudades values(null,'Zacatecas','ZAC');

#end region
#end region

