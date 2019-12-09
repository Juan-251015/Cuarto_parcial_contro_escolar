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
#region a�os
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
insert into estados values ('CMX3','Ciudad de M�xico');
insert into estados values ('COA','Coahuila');
insert into estados values ('COL','Colima');
insert into estados values ('DUR','Durango');
insert into estados values ('GUA','Guanajuato');
insert into estados values ('GRO','Guerrero');
insert into estados values ('HID','Hidalgo');
insert into estados values ('JAL','Jalisco');
insert into estados values ('MEX','M�xico');
insert into estados values ('MIC','Michoac�n');
insert into estados values ('MOR','Morelos');
insert into estados values ('NAY','Nayarit');
insert into estados values ('NLE','Nuevo Le�n');
insert into estados values ('OAX','Oaxaca');
insert into estados values ('PUE','Puebla');
insert into estados values ('QUE','Quer�taro');
insert into estados values ('ROO','Quintana Roo');
insert into estados values ('SLP','San Luis Potos�');
insert into estados values ('SIN','Sinaloa');
insert into estados values ('SON','Sonora');
insert into estados values ('TAB','Tabasco');
insert into estados values ('TAM','Tamaulipas');
insert into estados values ('TLA','Tlaxcala');
insert into estados values ('VER','Veracruz');
insert into estados values ('YUC','Yucat�n');
insert into estados values ('ZAC','Zacatecas');
#end region
#region estados
#region ciudades aguascalientes
insert into ciudades values(null,'Aguascalientes','AGU');
insert into ciudades values(null,'Asientos','AGU');
insert into ciudades values(null,'Calvillo','AGU');
insert into ciudades values(null,'Cos�o','AGU');
insert into ciudades values(null,'Jes�s Mar�a','AGU');
insert into ciudades values(null,'Pabell�n de Arteaga','AGU');
insert into ciudades values(null,'Rinc�n de Romos','AGU');
insert into ciudades values(null,'San Jos� de Gracia','AGU');
insert into ciudades values(null,'Tepezal�','AGU');
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
insert into ciudades values(null,'Bat�quez','BCN');
insert into ciudades values(null,'San Quint�n','BCN');
insert into ciudades values(null,'La Rumorosa','BCN');
insert into ciudades values(null,'Los Algodones','BCN');
insert into ciudades values(null,'Ejido Punta Colonet','BCN');
insert into ciudades values(null,'Catavi�a','BCN');
insert into ciudades values(null,'Venustiano Carranza','BCN');
insert into ciudades values(null,'Estaci�n Delta','BCN');
insert into ciudades values(null,'Estaci�n Coahuila','BCN');
insert into ciudades values(null,'Mexicali','BCN');
insert into ciudades values(null,'Tijuana','BCN');
insert into ciudades values(null,'Ensenada','BCN');
insert into ciudades values(null,'Tecate','BCN');
insert into ciudades values(null,'Rosarito','BCN');
#end region
#region baja california s
insert into ciudades values(null,'La Paz','BCS');
insert into ciudades values(null,'San Jos� del Cabo','BCS');
insert into ciudades values(null,'Cabo San Lucas','BCS');
insert into ciudades values(null,'Colonia del Sol','BCS');
insert into ciudades values(null,'Ciudad Constituci�n','BCS');
insert into ciudades values(null,'Loreto','BCS');
insert into ciudades values(null,'Guerrero Negro','BCS');
insert into ciudades values(null,'Santa Rosal�a','BCS');
insert into ciudades values(null,'Las Palmas','BCS');
insert into ciudades values(null,'Las Veredas','BCS');
insert into ciudades values(null,'Ciudad Insurgentes','BCS');
insert into ciudades values(null,'San Jos� Viejo','BCS');
insert into ciudades values(null,'Villa Alberto Andr�s Alvarado Ar�mburo','BCS');
insert into ciudades values(null,'Puerto San Carlos','BCS');
insert into ciudades values(null,'Todos Santos','BCS');
insert into ciudades values(null,'El Centenario','BCS');
insert into ciudades values(null,'Heroica Muleg�','BCS');
insert into ciudades values(null,'Bah�a Tortugas','BCS');
insert into ciudades values(null,'El Pescadero','BCS');
insert into ciudades values(null,'Puerto Adolfo L�pez Mateos','BCS');
#end region
#region ciudad
insert into ciudades values(null,'Calkin�','CAM');
insert into ciudades values(null,'Campeche','CAM');
insert into ciudades values(null,'Carmen','CAM');
insert into ciudades values(null,'Champot�n','CAM');
insert into ciudades values(null,'Hecelchak�n','CAM');
insert into ciudades values(null,'Hopelch�n','CAM');
insert into ciudades values(null,'Palizada','CAM');
insert into ciudades values(null,'Tenabo','CAM');
insert into ciudades values(null,'Esc�rcega','CAM');
insert into ciudades values(null,'Calakmul','CAM');
insert into ciudades values(null,'Candelaria','CAM');
insert into ciudades values(null,'Seybaplaya','CAM');
insert into ciudades values(null,'Dzitbalch�','CAM');
#end region
#region ciudad
insert into ciudades values(null,'Tuxtla Guti�rrez','CHP');
insert into ciudades values(null,'Tapachula','CHP');
insert into ciudades values(null,'San Crist�bal de las Casas','CHP');
insert into ciudades values(null,'Comit�n de Dom�nguez','CHP');
insert into ciudades values(null,'Cintalapa de Figueroa','CHP');
insert into ciudades values(null,'Chiapa de Corzo','CHP');
insert into ciudades values(null,'Palenque','CHP');
insert into ciudades values(null,'Ocosingo','CHP');
insert into ciudades values(null,'Ocozocoautla de Espinosa','CHP');
insert into ciudades values(null,'Villaflores','CHP');
#end region
#region chihuahua
insert into ciudades values(null,'Ciudad Ju�rez','CHH');
insert into ciudades values(null,'Chihuahua','CHH');
insert into ciudades values(null,'Delicias','CHH');
insert into ciudades values(null,'Cuauht�moc','CHH');
insert into ciudades values(null,'Parral','CHH');
insert into ciudades values(null,'Nuevo Casas Grandes','CHH');
insert into ciudades values(null,'Camargo','CHH');
insert into ciudades values(null,'Jim�nez','CHH');
insert into ciudades values(null,'Ojinaga','CHH');
insert into ciudades values(null,'Meoqui','CHH');
insert into ciudades values(null,'Aldama','CHH');
insert into ciudades values(null,'Madera','CHH');
insert into ciudades values(null,'Guachochi','CHH');
insert into ciudades values(null,'Ascensi�n','CHH');
insert into ciudades values(null,'Saucillo','CHH');
insert into ciudades values(null,'San Juanito','CHH');
#end region
#region mexico
insert into ciudades values(null,'Acambay de Ru�z Casta�eda','CMX');
insert into ciudades values(null,'Acolman','CMX');
insert into ciudades values(null,'Aculco','CMX');
insert into ciudades values(null,'Almoloya de Alquisiras','CMX');
insert into ciudades values(null,'Almoloya de Ju�rez','CMX');
insert into ciudades values(null,'Almoloya del R�o','CMX');
insert into ciudades values(null,'Amanalco','CMX');
insert into ciudades values(null,'Amatepec','CMX');
insert into ciudades values(null,'Amecameca','CMX');
insert into ciudades values(null,'Apaxco','CMX');
insert into ciudades values(null,'Atenco','CMX');
insert into ciudades values(null,'Atizap�n','CMX');
insert into ciudades values(null,'Atizap�n de Zaragoza','CMX');
insert into ciudades values(null,'Atlacomulco','CMX');
insert into ciudades values(null,'Atlautla','CMX');
insert into ciudades values(null,'Axapusco','CMX');
insert into ciudades values(null,'Ayapango','CMX');
insert into ciudades values(null,'Calimaya','CMX');
insert into ciudades values(null,'Capulhuac','CMX');
insert into ciudades values(null,'Coacalco de Berrioz�bal','CMX');
insert into ciudades values(null,'Coatepec Harinas','CMX');
insert into ciudades values(null,'Cocotitl�n','CMX');
insert into ciudades values(null,'Coyotepec','CMX');
insert into ciudades values(null,'Cuautitl�n','CMX');
insert into ciudades values(null,'Chalco','CMX');
insert into ciudades values(null,'Chapa de Mota','CMX');
insert into ciudades values(null,'Chapultepec','CMX');
insert into ciudades values(null,'Chiautla','CMX');
insert into ciudades values(null,'Chicoloapan','CMX');
insert into ciudades values(null,'Chiconcuac','CMX');
insert into ciudades values(null,'Chimalhuac�n','CMX');
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
insert into ciudades values(null,'Jocotitl�n','CMX');
insert into ciudades values(null,'Joquicingo','CMX');
insert into ciudades values(null,'Juchitepec','CMX');
insert into ciudades values(null,'Lerma','CMX');
insert into ciudades values(null,'Malinalco','CMX');
insert into ciudades values(null,'Melchor Ocampo','CMX');
insert into ciudades values(null,'Metepec','CMX');
insert into ciudades values(null,'Mexicaltzingo','CMX');
insert into ciudades values(null,'Morelos','CMX');
insert into ciudades values(null,'Naucalpan de Ju�rez','CMX');
insert into ciudades values(null,'Nezahualc�yotl','CMX');
insert into ciudades values(null,'Nextlalpan','CMX');
insert into ciudades values(null,'Nicol�s Romero','CMX');
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
insert into ciudades values(null,'Polotitl�n','CMX');
insert into ciudades values(null,'Ray�n','CMX');
insert into ciudades values(null,'San Antonio la Isla','CMX');
insert into ciudades values(null,'San Felipe del Progreso','CMX');
insert into ciudades values(null,'San Mart�n de las Pir�mides','CMX');
insert into ciudades values(null,'San Mateo Atenco','CMX');
insert into ciudades values(null,'San Sim�n de Guerrero','CMX');
insert into ciudades values(null,'Santo Tom�s','CMX');
insert into ciudades values(null,'Soyaniquilpan de Ju�rez','CMX');
insert into ciudades values(null,'Sultepec','CMX');
insert into ciudades values(null,'Tec�mac','CMX');
insert into ciudades values(null,'Tejupilco','CMX');
insert into ciudades values(null,'Temamatla','CMX');
insert into ciudades values(null,'Temascalapa','CMX');
insert into ciudades values(null,'Temascalcingo','CMX');
insert into ciudades values(null,'Temascaltepec','CMX');
insert into ciudades values(null,'Temoaya','CMX');
insert into ciudades values(null,'Tenancingo','CMX');
insert into ciudades values(null,'Tenango del Aire','CMX');
insert into ciudades values(null,'Tenango del Valle','CMX');
insert into ciudades values(null,'Teoloyuc�n','CMX');
insert into ciudades values(null,'Teotihuac�n','CMX');
insert into ciudades values(null,'Tepetlaoxtoc','CMX');
insert into ciudades values(null,'Tepetlixpa','CMX');
insert into ciudades values(null,'Tepotzotl�n','CMX');
insert into ciudades values(null,'Tequixquiac','CMX');
insert into ciudades values(null,'Texcaltitl�n','CMX');
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
insert into ciudades values(null,'Tultitl�n','CMX');
insert into ciudades values(null,'Valle de Bravo','CMX');
insert into ciudades values(null,'Villa de Allende','CMX');
insert into ciudades values(null,'Villa del Carb�n','CMX');
insert into ciudades values(null,'Villa Guerrero','CMX');
insert into ciudades values(null,'Villa Victoria','CMX');
insert into ciudades values(null,'Xonacatl�n','CMX');
insert into ciudades values(null,'Zacazonapan','CMX');
insert into ciudades values(null,'Zacualpan','CMX');
insert into ciudades values(null,'Zinacantepec','CMX');
insert into ciudades values(null,'Zumpahuac�n','CMX');
insert into ciudades values(null,'Zumpango','CMX');
insert into ciudades values(null,'Cuautitl�n Izcalli','CMX');
insert into ciudades values(null,'Valle de Chalco Solidaridad','CMX');
insert into ciudades values(null,'Luvianos','CMX');
insert into ciudades values(null,'San Jos� del Rinc�n','CMX');
insert into ciudades values(null,'Tonanitla','CMX');
#end region
#region ciudad
insert into ciudades values(null,'Abasolo�','COA');
insert into ciudades values(null,'Acu�a','COA');
insert into ciudades values(null,'Allende','COA');
insert into ciudades values(null,'Arteaga','COA');
insert into ciudades values(null,'Candela�','COA');
insert into ciudades values(null,'Casta�os','COA');
insert into ciudades values(null,'Cuatro Ci�negas','COA');
insert into ciudades values(null,'Escobedo�','COA');
insert into ciudades values(null,'Francisco I. Madero','COA');
insert into ciudades values(null,'Frontera','COA');
insert into ciudades values(null,'General Cepeda','COA');
insert into ciudades values(null,'Guerrero�','COA');
insert into ciudades values(null,'Hidalgo�','COA');
insert into ciudades values(null,'Jim�nez','COA');
insert into ciudades values(null,'Ju�rez�','COA');
insert into ciudades values(null,'Lamadrid�','COA');
insert into ciudades values(null,'Matamoros','COA');
insert into ciudades values(null,'Monclova','COA');
insert into ciudades values(null,'Morelos','COA');
insert into ciudades values(null,'M�zquiz','COA');
insert into ciudades values(null,'Nadadores','COA');
insert into ciudades values(null,'Nava','COA');
insert into ciudades values(null,'Ocampo','COA');
insert into ciudades values(null,'Parras','COA');
insert into ciudades values(null,'Piedras Negras','COA');
insert into ciudades values(null,'Progreso�','COA');
insert into ciudades values(null,'Ramos Arizpe','COA');
insert into ciudades values(null,'Sabinas','COA');
insert into ciudades values(null,'Sacramento�','COA');
insert into ciudades values(null,'Saltillo','COA');
insert into ciudades values(null,'San Buenaventura','COA');
insert into ciudades values(null,'San Juan de Sabinas','COA');
insert into ciudades values(null,'San Pedro','COA');
insert into ciudades values(null,'Sierra Mojada','COA');
insert into ciudades values(null,'Torre�n','COA');
insert into ciudades values(null,'Viesca','COA');
insert into ciudades values(null,'Villa Uni�n','COA');
insert into ciudades values(null,'Zaragoza','COA');
#end region
#region ciudad
insert into ciudades values(null,'Armer�a','COL');
insert into ciudades values(null,'Colima','COL');
insert into ciudades values(null,'Comala','COL');
insert into ciudades values(null,'Coquimatl�n','COL');
insert into ciudades values(null,'Cuauht�moc','COL');
insert into ciudades values(null,'Ixtlahuac�n','COL');
insert into ciudades values(null,'Manzanillo','COL');
insert into ciudades values(null,'Minatitl�n','COL');
insert into ciudades values(null,'Tecom�n','COL');
insert into ciudades values(null,'Villa de �lvarez','COL');
#end region
#region durango
insert into ciudades values(null,'Canatl�n','DUR');
insert into ciudades values(null,'Canelas','DUR');
insert into ciudades values(null,'Coneto de Comonfort','DUR');
insert into ciudades values(null,'Cuencam�','DUR');
insert into ciudades values(null,'Durango','DUR');
insert into ciudades values(null,'General Sim�n Bol�var','DUR');
insert into ciudades values(null,'G�mez Palacio','DUR');
insert into ciudades values(null,'Guadalupe Victoria','DUR');
insert into ciudades values(null,'Guanacev�','DUR');
insert into ciudades values(null,'Hidalgo','DUR');
insert into ciudades values(null,'Ind�','DUR');
insert into ciudades values(null,'Lerdo','DUR');
insert into ciudades values(null,'Mapim�','DUR');
insert into ciudades values(null,'Mezquital','DUR');
insert into ciudades values(null,'Nazas','DUR');
insert into ciudades values(null,'Nombre de Dios','DUR');
insert into ciudades values(null,'Ocampo','DUR');
insert into ciudades values(null,'El Oro','DUR');
insert into ciudades values(null,'Ot�ez','DUR');
insert into ciudades values(null,'P�nuco de Coronado','DUR');
insert into ciudades values(null,'Pe��n Blanco','DUR');
insert into ciudades values(null,'Poanas','DUR');
insert into ciudades values(null,'Pueblo Nuevo','DUR');
insert into ciudades values(null,'Rodeo','DUR');
insert into ciudades values(null,'San Bernardo','DUR');
insert into ciudades values(null,'San Dimas','DUR');
insert into ciudades values(null,'San Juan de Guadalupe','DUR');
insert into ciudades values(null,'San Juan del R�o','DUR');
insert into ciudades values(null,'San Luis del Cordero','DUR');
insert into ciudades values(null,'San Pedro del Gallo','DUR');
insert into ciudades values(null,'Santa Clara','DUR');
insert into ciudades values(null,'Santiago Papasquiaro','DUR');
insert into ciudades values(null,'S�chil','DUR');
insert into ciudades values(null,'Tamazula','DUR');
insert into ciudades values(null,'Tepehuanes','DUR');
insert into ciudades values(null,'Tlahualilo','DUR');
insert into ciudades values(null,'Topia','DUR');
insert into ciudades values(null,'Vicente Guerrero','DUR');
insert into ciudades values(null,'Nuevo Ideal','DUR');
#end region
#region guanajuato
insert into ciudades values(null,'Abasolo','GUA');
insert into ciudades values(null,'Ac�mbaro','GUA');
insert into ciudades values(null,'San Miguel de Allende','GUA');
insert into ciudades values(null,'Apaseo el Alto','GUA');
insert into ciudades values(null,'Apaseo el Grande','GUA');
insert into ciudades values(null,'Atarjea','GUA');
insert into ciudades values(null,'Celaya','GUA');
insert into ciudades values(null,'Manuel Doblado','GUA');
insert into ciudades values(null,'Comonfort','GUA');
insert into ciudades values(null,'Coroneo','GUA');
insert into ciudades values(null,'Cortazar','GUA');
insert into ciudades values(null,'Cuer�maro','GUA');
insert into ciudades values(null,'Doctor Mora','GUA');
insert into ciudades values(null,'Dolores Hidalgo Cuna de la Independencia Nacional','GUA');
insert into ciudades values(null,'','GUA');
insert into ciudades values(null,'Guanajuato','GUA');
insert into ciudades values(null,'Huan�maro','GUA');
insert into ciudades values(null,'Irapuato','GUA');
insert into ciudades values(null,'Jaral del Progreso','GUA');
insert into ciudades values(null,'Jer�cuaro','GUA');
insert into ciudades values(null,'Le�n','GUA');
insert into ciudades values(null,'Morole�n','GUA');
insert into ciudades values(null,'Ocampo','GUA');
insert into ciudades values(null,'P�njamo','GUA');
insert into ciudades values(null,'Pueblo Nuevo','GUA');
insert into ciudades values(null,'Pur�sima del Rinc�n','GUA');
insert into ciudades values(null,'Romita','GUA');
insert into ciudades values(null,'Salamanca','GUA');
insert into ciudades values(null,'Salvatierra','GUA');
insert into ciudades values(null,'San Diego de la Uni�n','GUA');
insert into ciudades values(null,'San Felipe','GUA');
insert into ciudades values(null,'San Francisco del Rinc�n','GUA');
insert into ciudades values(null,'San Jos� Iturbide','GUA');
insert into ciudades values(null,'San Luis de la Paz','GUA');
insert into ciudades values(null,'Santa Catarina�','GUA');
insert into ciudades values(null,'Santa Cruz de Juventino Rosas','GUA');
insert into ciudades values(null,'Santiago Maravat�o','GUA');
insert into ciudades values(null,'Silao de la Victoria','GUA');
insert into ciudades values(null,'Tarandacuao','GUA');
insert into ciudades values(null,'Tarimoro','GUA');
insert into ciudades values(null,'Tierra Blanca','GUA');
insert into ciudades values(null,'Uriangato','GUA');
insert into ciudades values(null,'Valle de Santiago','GUA');
insert into ciudades values(null,'Victoria','GUA');
insert into ciudades values(null,'Villagr�n','GUA');
insert into ciudades values(null,'Xich�','GUA');
insert into ciudades values(null,'Yuriria','GUA');
#end region
#region guerrero
insert into ciudades values(null,'Acapulco de Ju�rez','GRO');
insert into ciudades values(null,'Ahuacuotzingo','GRO');
insert into ciudades values(null,'Ajuchitl�n del Progreso','GRO');
insert into ciudades values(null,'Alcozauca de Guerrero','GRO');
insert into ciudades values(null,'Alpoyeca','GRO');
insert into ciudades values(null,'Apaxtla','GRO');
insert into ciudades values(null,'Arcelia','GRO');
insert into ciudades values(null,'Atenango del R�o','GRO');
insert into ciudades values(null,'Atlamajalcingo del Monte','GRO');
insert into ciudades values(null,'Atlixtac','GRO');
insert into ciudades values(null,'Atoyac de �lvarez','GRO');
insert into ciudades values(null,'Ayutla de los Libres','GRO');
insert into ciudades values(null,'Azoy�','GRO');
insert into ciudades values(null,'Benito Ju�rez','GRO');
insert into ciudades values(null,'Buenavista de Cu�llar','GRO');
insert into ciudades values(null,'Coahuayutla de Jos� Mar�a Izazaga','GRO');
insert into ciudades values(null,'Cocula','GRO');
insert into ciudades values(null,'Copala','GRO');
insert into ciudades values(null,'Copalillo','GRO');
insert into ciudades values(null,'Copanatoyac','GRO');
insert into ciudades values(null,'Coyuca de Ben�tez','GRO');
insert into ciudades values(null,'Coyuca de Catal�n','GRO');
insert into ciudades values(null,'Cuajinicuilapa','GRO');
insert into ciudades values(null,'Cual�c','GRO');
insert into ciudades values(null,'Cuautepec�','GRO');
insert into ciudades values(null,'Cuetzala del Progreso','GRO');
insert into ciudades values(null,'Cutzamala de Pinz�n','GRO');
insert into ciudades values(null,'Chilapa de �lvarez','GRO');
insert into ciudades values(null,'Chilpancingo de los Bravo','GRO');
insert into ciudades values(null,'Florencio Villarreal�','GRO');
insert into ciudades values(null,'General Canuto A. Neri','GRO');
insert into ciudades values(null,'General Heliodoro Castillo','GRO');
insert into ciudades values(null,'Huamuxtitl�n','GRO');
insert into ciudades values(null,'Huitzuco de los Figueroa','GRO');
insert into ciudades values(null,'Iguala de la Independencia','GRO');
insert into ciudades values(null,'Igualapa�','GRO');
insert into ciudades values(null,'Ixcateopan de Cuauht�moc','GRO');
insert into ciudades values(null,'Zihuatanejo de Azueta','GRO');
insert into ciudades values(null,'Juan R. Escudero','GRO');
insert into ciudades values(null,'Leonardo Bravo','GRO');
insert into ciudades values(null,'Malinaltepec�','GRO');
insert into ciudades values(null,'M�rtir de Cuilapan','GRO');
insert into ciudades values(null,'Metlat�noc�','GRO');
insert into ciudades values(null,'Mochitl�n','GRO');
insert into ciudades values(null,'Olinal�','GRO');
insert into ciudades values(null,'Ometepec','GRO');
insert into ciudades values(null,'Pedro Ascencio Alquisiras�','GRO');
insert into ciudades values(null,'Petatl�n','GRO');
insert into ciudades values(null,'Pilcaya','GRO');
insert into ciudades values(null,'Pungarabato','GRO');
insert into ciudades values(null,'Quechultenango','GRO');
insert into ciudades values(null,'San Luis Acatl�n','GRO');
insert into ciudades values(null,'San Marcos','GRO');
insert into ciudades values(null,'San Miguel Totolapan�','GRO');
insert into ciudades values(null,'Taxco de Alarc�n','GRO');
insert into ciudades values(null,'Tecoanapa','GRO');
insert into ciudades values(null,'T�cpan de Galeana','GRO');
insert into ciudades values(null,'Teloloapan','GRO');
insert into ciudades values(null,'Tepecoacuilco de Trujano','GRO');
insert into ciudades values(null,'Tetipac','GRO');
insert into ciudades values(null,'Tixtla de Guerrero','GRO');
insert into ciudades values(null,'Tlacoachistlahuaca�','GRO');
insert into ciudades values(null,'Tlacoapa�','GRO');
insert into ciudades values(null,'Tlalchapa','GRO');
insert into ciudades values(null,'Tlalixtaquilla de Maldonado','GRO');
insert into ciudades values(null,'Tlapa de Comonfort','GRO');
insert into ciudades values(null,'Tlapehuala','GRO');
insert into ciudades values(null,'La Uni�n de Isidoro Montes de Oca','GRO');
insert into ciudades values(null,'Xalpatl�huac�','GRO');
insert into ciudades values(null,'Xochihuehuetl�n','GRO');
insert into ciudades values(null,'Xochistlahuaca�','GRO');
insert into ciudades values(null,'Zapotitl�n Tablas�','GRO');
insert into ciudades values(null,'Zir�ndaro','GRO');
insert into ciudades values(null,'Zitlala','GRO');
insert into ciudades values(null,'Eduardo Neri','GRO');
insert into ciudades values(null,'Acatepec','GRO');
insert into ciudades values(null,'Marquelia�','GRO');
insert into ciudades values(null,'Cochoapa el Grande','GRO');
insert into ciudades values(null,'Jos� Joaqu�n de Herrera�','GRO');
insert into ciudades values(null,'Juchit�n�','GRO');
insert into ciudades values(null,'Iliatenco','GRO');
#end region
#region ciudad
insert into ciudades values(null,'Acatl�n','HID');
insert into ciudades values(null,'Acaxochitl�n','HID');
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
insert into ciudades values(null,'Chapulhuac�n','HID');
insert into ciudades values(null,'Chilcuautla','HID');
insert into ciudades values(null,'Cuautepec de Hinojosa','HID');
insert into ciudades values(null,'El Arenal','HID');
insert into ciudades values(null,'Eloxochitl�n','HID');
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
insert into ciudades values(null,'Jaltoc�n','HID');
insert into ciudades values(null,'Ju�rez Hidalgo','HID');
insert into ciudades values(null,'La Misi�n','HID');
insert into ciudades values(null,'Lolotla','HID');
insert into ciudades values(null,'Metepec','HID');
insert into ciudades values(null,'Metztitl�n','HID');
insert into ciudades values(null,'Mineral de la Reforma','HID');
insert into ciudades values(null,'Mineral del Chico','HID');
insert into ciudades values(null,'Mineral del Monte','HID');
insert into ciudades values(null,'Mixquiahuala de Ju�rez','HID');
insert into ciudades values(null,'Molango de Escamilla','HID');
insert into ciudades values(null,'Nicol�s Flores','HID');
insert into ciudades values(null,'Nopala de Villagr�n','HID');
insert into ciudades values(null,'Omitl�n de Ju�rez','HID');
insert into ciudades values(null,'Pachuca de Soto','HID');
insert into ciudades values(null,'Pacula','HID');
insert into ciudades values(null,'Pisaflores','HID');
insert into ciudades values(null,'Progreso de Obreg�n','HID');
insert into ciudades values(null,'San Agust�n Metzquititl�n','HID');
insert into ciudades values(null,'San Agust�n Tlaxiaca','HID');
insert into ciudades values(null,'San Bartolo Tutotepec','HID');
insert into ciudades values(null,'San Felipe Orizatl�n','HID');
insert into ciudades values(null,'San Salvador','HID');
insert into ciudades values(null,'Santiago de Anaya','HID');
insert into ciudades values(null,'Santiago Tulantepec de Lugo Guerrero','HID');
insert into ciudades values(null,'Singuilucan','HID');
insert into ciudades values(null,'Tasquillo','HID');
insert into ciudades values(null,'Tecozautla','HID');
insert into ciudades values(null,'Tenango de Doria','HID');
insert into ciudades values(null,'Tepeapulco','HID');
insert into ciudades values(null,'Tepehuac�n de Guerrero','HID');
insert into ciudades values(null,'Tepeji del R�o de Ocampo','HID');
insert into ciudades values(null,'Tepetitl�n','HID');
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
insert into ciudades values(null,'Xochicoatl�n','HID');
insert into ciudades values(null,'Yahualica','HID');
insert into ciudades values(null,'Zacualtip�n de �ngeles','HID');
insert into ciudades values(null,'Zapotl�n de Ju�rez','HID');
insert into ciudades values(null,'Zempoala','HID');
insert into ciudades values(null,'Zimap�n','HID');
#end region
#region jalisco
insert into ciudades values(null,'Acatic','JAL');
insert into ciudades values(null,'Acatl�n de Ju�rez','JAL');
insert into ciudades values(null,'Ahualulco de Mercado','JAL');
insert into ciudades values(null,'Amacueca','JAL');
insert into ciudades values(null,'Amatit�n','JAL');
insert into ciudades values(null,'Ameca','JAL');
insert into ciudades values(null,'Arandas','JAL');
insert into ciudades values(null,'Atemajac de Brizuela','JAL');
insert into ciudades values(null,'Atengo','JAL');
insert into ciudades values(null,'Atenguillo�','JAL');
insert into ciudades values(null,'Atotonilco el Alto','JAL');
insert into ciudades values(null,'Atoyac','JAL');
insert into ciudades values(null,'Autl�n de Navarro','JAL');
insert into ciudades values(null,'Ayotl�n','JAL');
insert into ciudades values(null,'Ayutla','JAL');
insert into ciudades values(null,'Bola�os','JAL');
insert into ciudades values(null,'Cabo Corrientes','JAL');
insert into ciudades values(null,'Ca�adas de Obreg�n�','JAL');
insert into ciudades values(null,'Casimiro Castillo','JAL');
insert into ciudades values(null,'Chapala','JAL');
insert into ciudades values(null,'Chimaltit�n�','JAL');
insert into ciudades values(null,'Chiquilistl�n','JAL');
insert into ciudades values(null,'Cihuatl�n','JAL');
insert into ciudades values(null,'Cocula','JAL');
insert into ciudades values(null,'Colotl�n','JAL');
insert into ciudades values(null,'Concepci�n de Buenos Aires','JAL');
insert into ciudades values(null,'Cuautitl�n de Garc�a Barrag�n','JAL');
insert into ciudades values(null,'Cuautla�','JAL');
insert into ciudades values(null,'Cuqu�o','JAL');
insert into ciudades values(null,'Degollado','JAL');
insert into ciudades values(null,'Ejutla�','JAL');
insert into ciudades values(null,'El Arenal','JAL');
insert into ciudades values(null,'El Grullo','JAL');
insert into ciudades values(null,'El Lim�n','JAL');
insert into ciudades values(null,'El Salto','JAL');
insert into ciudades values(null,'Encarnaci�n de D�az','JAL');
insert into ciudades values(null,'Etzatl�n','JAL');
insert into ciudades values(null,'G�mez Far�as','JAL');
insert into ciudades values(null,'Guachinango�','JAL');
insert into ciudades values(null,'Guadalajara','JAL');
insert into ciudades values(null,'Hostotipaquillo','JAL');
insert into ciudades values(null,'Huej�car','JAL');
insert into ciudades values(null,'Huejuquilla el Alto','JAL');
insert into ciudades values(null,'Ixtlahuac�n de los Membrillos','JAL');
insert into ciudades values(null,'Ixtlahuac�n del R�o','JAL');
insert into ciudades values(null,'Jalostotitl�n','JAL');
insert into ciudades values(null,'Jamay','JAL');
insert into ciudades values(null,'Jes�s Mar�a','JAL');
insert into ciudades values(null,'Jilotl�n de los Dolores','JAL');
insert into ciudades values(null,'Jocotepec','JAL');
insert into ciudades values(null,'Juanacatl�n','JAL');
insert into ciudades values(null,'Juchitl�n','JAL');
insert into ciudades values(null,'La Barca','JAL');
insert into ciudades values(null,'La Huerta','JAL');
insert into ciudades values(null,'La Manzanilla de la Paz�','JAL');
insert into ciudades values(null,'Lagos de Moreno','JAL');
insert into ciudades values(null,'Magdalena','JAL');
insert into ciudades values(null,'Mascota','JAL');
insert into ciudades values(null,'Mazamitla','JAL');
insert into ciudades values(null,'Mexticac�n','JAL');
insert into ciudades values(null,'Mezquitic�','JAL');
insert into ciudades values(null,'Mixtl�n�','JAL');
insert into ciudades values(null,'Ocotl�n','JAL');
insert into ciudades values(null,'Ojuelos de Jalisco','JAL');
insert into ciudades values(null,'Pihuamo','JAL');
insert into ciudades values(null,'Poncitl�n','JAL');
insert into ciudades values(null,'Puerto Vallarta','JAL');
insert into ciudades values(null,'Quitupan','JAL');
insert into ciudades values(null,'San Crist�bal de la Barranca�','JAL');
insert into ciudades values(null,'San Diego de Alejandr�a','JAL');
insert into ciudades values(null,'San Gabriel','JAL');
insert into ciudades values(null,'San Ignacio Cerro Gordo','JAL');
insert into ciudades values(null,'San Juan de los Lagos','JAL');
insert into ciudades values(null,'San Juanito de Escobedo','JAL');
insert into ciudades values(null,'San Juli�n','JAL');
insert into ciudades values(null,'San Marcos�','JAL');
insert into ciudades values(null,'San Mart�n de Bola�os�','JAL');
insert into ciudades values(null,'San Mart�n Hidalgo','JAL');
insert into ciudades values(null,'San Miguel el Alto','JAL');
insert into ciudades values(null,'San Pedro Tlaquepaque','JAL');
insert into ciudades values(null,'San Sebasti�n del Oeste','JAL');
insert into ciudades values(null,'Santa Mar�a de los �ngeles�','JAL');
insert into ciudades values(null,'Santa Mar�a del Oro�','JAL');
insert into ciudades values(null,'Sayula','JAL');
insert into ciudades values(null,'Tala','JAL');
insert into ciudades values(null,'Talpa de Allende','JAL');
insert into ciudades values(null,'Tamazula de Gordiano','JAL');
insert into ciudades values(null,'Tapalpa','JAL');
insert into ciudades values(null,'Tecalitl�n','JAL');
insert into ciudades values(null,'Techaluta de Montenegro�','JAL');
insert into ciudades values(null,'Tecolotl�n','JAL');
insert into ciudades values(null,'Tenamaxtl�n','JAL');
insert into ciudades values(null,'Teocaltiche','JAL');
insert into ciudades values(null,'Teocuitatl�n de Corona','JAL');
insert into ciudades values(null,'Tepatitl�n de Morelos','JAL');
insert into ciudades values(null,'Tequila','JAL');
insert into ciudades values(null,'Teuchitl�n','JAL');
insert into ciudades values(null,'Tizap�n el Alto','JAL');
insert into ciudades values(null,'Tlajomulco de Z��iga','JAL');
insert into ciudades values(null,'Tolim�n','JAL');
insert into ciudades values(null,'Tomatl�n','JAL');
insert into ciudades values(null,'Tonal�','JAL');
insert into ciudades values(null,'Tonaya','JAL');
insert into ciudades values(null,'Tonila','JAL');
insert into ciudades values(null,'Totatiche','JAL');
insert into ciudades values(null,'Tototl�n','JAL');
insert into ciudades values(null,'Tuxcacuesco�','JAL');
insert into ciudades values(null,'Tuxcueca','JAL');
insert into ciudades values(null,'Tuxpan','JAL');
insert into ciudades values(null,'Uni�n de San Antonio','JAL');
insert into ciudades values(null,'Uni�n de Tula','JAL');
insert into ciudades values(null,'Valle de Guadalupe','JAL');
insert into ciudades values(null,'Valle de Ju�rez','JAL');
insert into ciudades values(null,'Villa Corona','JAL');
insert into ciudades values(null,'Villa Guerrero','JAL');
insert into ciudades values(null,'Villa Hidalgo','JAL');
insert into ciudades values(null,'Villa Purificaci�n','JAL');
insert into ciudades values(null,'Yahualica de Gonz�lez Gallo','JAL');
insert into ciudades values(null,'Zacoalco de Torres','JAL');
insert into ciudades values(null,'Zapopan','JAL');
insert into ciudades values(null,'Zapotiltic','JAL');
insert into ciudades values(null,'Zapotitl�n de Vadillo','JAL');
insert into ciudades values(null,'Zapotl�n del Rey','JAL');
insert into ciudades values(null,'Zapotl�n el Grande','JAL');
insert into ciudades values(null,'Zapotlanejo','JAL');
#end region
#region mexico
insert into ciudades values(null,'Azcapotzalco','MEX');
insert into ciudades values(null,'Coyoac�n','MEX');
insert into ciudades values(null,'Cuajimalpa de Morelos','MEX');
insert into ciudades values(null,'Gustavo A. Madero','MEX');
insert into ciudades values(null,'Iztacalco','MEX');
insert into ciudades values(null,'Iztapalapa','MEX');
insert into ciudades values(null,'La Magdalena Contreras','MEX');
insert into ciudades values(null,'Milpa Alta','MEX');
insert into ciudades values(null,'�lvaro Obreg�n','MEX');
insert into ciudades values(null,'Tl�huac','MEX');
insert into ciudades values(null,'Tlalpan','MEX');
insert into ciudades values(null,'Xochimilco','MEX');
insert into ciudades values(null,'Benito Ju�rez','MEX');
insert into ciudades values(null,'Cuauht�moc','MEX');
insert into ciudades values(null,'Miguel Hidalgo','MEX');
insert into ciudades values(null,'Venustiano Carranza','MEX');
#end region
#region michoacan
insert into ciudades values (null,'Morelia','MIC');
insert into ciudades values (null,'Uruapan del Progreso','MIC');
insert into ciudades values (null,'Zamora de Hidalgo','MIC');
insert into ciudades values (null,'Apatzing�n de la Constituci�n','MIC');
insert into ciudades values (null,'Her�ica Zit�cuaro','MIC');
insert into ciudades values (null,'La Piedad de Cabadas','MIC');
insert into ciudades values (null,'Ciudad L�zaro C�rdenas','MIC');
insert into ciudades values (null,'Sahuayo de Morelos','MIC');
insert into ciudades values (null,'Ciudad Hidalgo','MIC');
insert into ciudades values (null,'Jacona de Plancarte','MIC');
insert into ciudades values (null,'P�tzcuaro','MIC');
insert into ciudades values (null,'Zacapu','MIC');
insert into ciudades values (null,'Los Reyes de Salgado','MIC');
insert into ciudades values (null,'Las Guacamayas','MIC');
insert into ciudades values (null,'Maravat�o de Ocampo','MIC');
insert into ciudades values (null,'Nueva Italia','MIC');
insert into ciudades values (null,'Puru�ndiro','MIC');
insert into ciudades values (null,'Tac�mbaro de Codallos','MIC');
insert into ciudades values (null,'Jiquilpan de Ju�rez','MIC');
insert into ciudades values (null,'Yur�cuaro','MIC');
insert into ciudades values (null,'Huetamo de Nu�ez','MIC');
insert into ciudades values (null,'La Orilla','MIC');
insert into ciudades values (null,'Paracho de Verduzco','MIC');
insert into ciudades values (null,'Ario de Rosales','MIC');
insert into ciudades values (null,'Zinap�cuaro de Figueroa','MIC');
insert into ciudades values (null,'Perib�n de Ramos','MIC');
insert into ciudades values (null,'Tepalcatepec','MIC');
insert into ciudades values (null,'Tanganc�cuaro de Arista','MIC');
insert into ciudades values (null,'Nuevo San Juan Parangaricutiro','MIC');
insert into ciudades values (null,'Quiroga','MIC');
insert into ciudades values (null,'Santa Clara del Cobre','MIC');
insert into ciudades values (null,'Cher�n','MIC');
insert into ciudades values (null,'Pur�pero de Ech�iz','MIC');
insert into ciudades values (null,'Morelos','MIC');
insert into ciudades values (null,'Cotija de la Paz','MIC');
insert into ciudades values (null,'La Mira','MIC');
insert into ciudades values (null,'Lombard�a','MIC');
insert into ciudades values (null,'Venustiano Carranza','MIC');
insert into ciudades values (null,'Conjunto Habitacional Villas del Pedregal','MIC');
insert into ciudades values (null,'Coalcom�n de V�zquez Pallares','MIC');
insert into ciudades values (null,'Vista Hermosa de Negrete','MIC');
insert into ciudades values (null,'Arteaga','MIC');
insert into ciudades values (null,'Santiago Tangamandapio','MIC');
insert into ciudades values (null,'Buenavista Tomatl�n','MIC');
insert into ciudades values (null,'Nahuatzen','MIC');
insert into ciudades values (null,'Cuitzeo del Porvenir','MIC');
insert into ciudades values (null,'Felipe Carrillo Puerto ','MIC');
insert into ciudades values (null,'Opopeo','MIC');
insert into ciudades values (null,'Pajacuar�n','MIC');
insert into ciudades values (null,'Buenos Aires','MIC');
insert into ciudades values (null,'Tanhuato de Guerrero','MIC');
insert into ciudades values (null,'San Jos� de Gracia','MIC');
insert into ciudades values (null,'La Huacana','MIC');
insert into ciudades values (null,'Tuxpan','MIC');
insert into ciudades values (null,'Quer�ndaro','MIC');
insert into ciudades values (null,'Ant�nez','MIC');
insert into ciudades values (null,'Tarecuato','MIC');
insert into ciudades values (null,'�lvaro Obreg�n','MIC');
insert into ciudades values (null,'Aguililla','MIC');
insert into ciudades values (null,'Fraccionamiento Misi�n del Valle','MIC');
insert into ciudades values (null,'Ario de Ray�n','MIC');
insert into ciudades values (null,'Tingambato','MIC');
insert into ciudades values (null,'Chilchota','MIC');
insert into ciudades values (null,'Cap�cuaro','MIC');
insert into ciudades values (null,'Coahuayana de Hidalgo','MIC');
insert into ciudades values (null,'Puruar�n','MIC');
insert into ciudades values (null,'Santa Ana Maya','MIC');
insert into ciudades values (null,'Ting�ind�n','MIC');
insert into ciudades values (null,'Santa Clara de Valladares','MIC');
insert into ciudades values (null,'Indaparapeo','MIC');
insert into ciudades values (null,'Cojumatl�n de R�gules','MIC');
insert into ciudades values (null,'Tanc�taro','MIC');
insert into ciudades values (null,'Huandacareo','MIC');
insert into ciudades values (null,'Acuitzio del Canje','MIC');
insert into ciudades values (null,'Pastor Ortiz','MIC');
insert into ciudades values (null,'Villa Madero','MIC');
insert into ciudades values (null,'Taretan','MIC');
insert into ciudades values (null,'Carapan','MIC');
insert into ciudades values (null,'Chavinda','MIC');
insert into ciudades values (null,'Rinc�n de Nicol�s Romero','MIC');
insert into ciudades values (null,'La Aldea','MIC');
insert into ciudades values (null,'Pedernales','MIC');
insert into ciudades values (null,'Tar�mbaro','MIC');
insert into ciudades values (null,'Fraccionamiento Galaxia Tar�mbaro','MIC');
insert into ciudades values (null,'Fraccionamiento Metr�polis II','MIC');
insert into ciudades values (null,'Angahuan','MIC');
insert into ciudades values (null,'Panind�cuaro','MIC');
insert into ciudades values (null,'Charo','MIC');
insert into ciudades values (null,'Caltzontzin','MIC');
insert into ciudades values (null,'Capula','MIC');
insert into ciudades values (null,'Jungapeo de Ju�rez','MIC');
insert into ciudades values (null,'Angamacutiro de la Uni�n','MIC');
#end region
#region morelio
insert into ciudades values(null,'Amacuzac','MOR');
insert into ciudades values(null,'Atlatlahucan','MOR');
insert into ciudades values(null,'Axochiapan','MOR');
insert into ciudades values(null,'Ayala','MOR');
insert into ciudades values(null,'Coatl�n del R�o','MOR');
insert into ciudades values(null,'Cuautla','MOR');
insert into ciudades values(null,'Cuernavaca','MOR');
insert into ciudades values(null,'Emiliano Zapata','MOR');
insert into ciudades values(null,'Jantetelco','MOR');
insert into ciudades values(null,'Jiutepec','MOR');
insert into ciudades values(null,'Jojutla de Ju�rez','MOR');
insert into ciudades values(null,'Jonacatepec','MOR');
insert into ciudades values(null,'Mazatepec','MOR');
insert into ciudades values(null,'Miacatl�n','MOR');
insert into ciudades values(null,'Ocuituco','MOR');
insert into ciudades values(null,'Puente de Ixtla','MOR');
insert into ciudades values(null,'Temixco','MOR');
insert into ciudades values(null,'Temoac','MOR');
insert into ciudades values(null,'Tepalcingo','MOR');
insert into ciudades values(null,'Tepoztl�n','MOR');
insert into ciudades values(null,'Tetecala','MOR');
insert into ciudades values(null,'Tetela del Volc�n','MOR');
insert into ciudades values(null,'Tlalnepantla','MOR');
insert into ciudades values(null,'Tlaltizap�n','MOR');
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
insert into ciudades values(null,'Ahuacatl�n','NAY');
insert into ciudades values(null,'Amatl�n de Ca�as','NAY');
insert into ciudades values(null,'Bah�a de Banderas','NAY');
insert into ciudades values(null,'Compostela','NAY');
insert into ciudades values(null,'El Nayar','NAY');
insert into ciudades values(null,'Huajicori','NAY');
insert into ciudades values(null,'Ixtl�n del R�o','NAY');
insert into ciudades values(null,'Jala','NAY');
insert into ciudades values(null,'La Yesca','NAY');
insert into ciudades values(null,'Rosamorada','NAY');
insert into ciudades values(null,'Ruiz','NAY');
insert into ciudades values(null,'San Blas','NAY');
insert into ciudades values(null,'San Pedro Lagunillas','NAY');
insert into ciudades values(null,'Santa Mar�a del Oro','NAY');
insert into ciudades values(null,'Santiago Ixcuintla','NAY');
insert into ciudades values(null,'Tecuala','NAY');
insert into ciudades values(null,'Tepic�','NAY');
insert into ciudades values(null,'Tuxpan','NAY');
insert into ciudades values(null,'Xalisco','NAY');

#end region
#region nuevo leon
insert into ciudades values(null,'Ciudad Apodaca','NLE');
insert into ciudades values(null,'Garc�a','NLE');
insert into ciudades values(null,'Ciudad General Escobedo','NLE');
insert into ciudades values(null,'Guadalupe','NLE');
insert into ciudades values(null,'Ciudad Benito Ju�rez','NLE');
insert into ciudades values(null,'Monterrey','NLE');
insert into ciudades values(null,'Santa Catarina','NLE');
insert into ciudades values(null,'San Nicol�s de los Garza','NLE');
insert into ciudades values(null,'San Pedro Garza Garc�a','NLE');
insert into ciudades values(null,'Santiago','NLE');
insert into ciudades values(null,'Cadereyta Jim�nez','NLE');
insert into ciudades values(null,'Salinas Victoria','NLE');
insert into ciudades values(null,'Abasolo','NLE');
insert into ciudades values(null,'Ci�nega de Flores','NLE');
insert into ciudades values(null,'Doctor Gonz�lez','NLE');
insert into ciudades values(null,'Carmen','NLE');
insert into ciudades values(null,'General Zuazua','NLE');
insert into ciudades values(null,'Hidalgo','NLE');
insert into ciudades values(null,'Higueras','NLE');
insert into ciudades values(null,'Mar�n','NLE');
insert into ciudades values(null,'Mina','NLE');
insert into ciudades values(null,'Pesquer�a','NLE');
insert into ciudades values(null,'Allende','NLE');
insert into ciudades values(null,'General Ter�n','NLE');
insert into ciudades values(null,'Hualahuises','NLE');
insert into ciudades values(null,'Linares','NLE');
insert into ciudades values(null,'Montemorelos','NLE');
insert into ciudades values(null,'Rayones','NLE');
insert into ciudades values(null,'Agualeguas','NLE');
insert into ciudades values(null,'An�huac','NLE');
insert into ciudades values(null,'Bustamante','NLE');
insert into ciudades values(null,'Cerralvo','NLE');
insert into ciudades values(null,'China','NLE');
insert into ciudades values(null,'Doctor Coss','NLE');
insert into ciudades values(null,'General Bravo','NLE');
insert into ciudades values(null,'General Zuazua','NLE');
insert into ciudades values(null,'General Trevi�o','NLE');
insert into ciudades values(null,'Lampazos de Naranjo','NLE');
insert into ciudades values(null,'Los Aldamas','NLE');
insert into ciudades values(null,'Los Herreras','NLE');
insert into ciudades values(null,'Los Ramones','NLE');
insert into ciudades values(null,'Melchor Ocampo','NLE');
insert into ciudades values(null,'Par�s','NLE');
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
insert into ciudades values(null,'Acatl�n de P�rez Figueroa','OAX');
insert into ciudades values(null,'�nimas Trujano','OAX');
insert into ciudades values(null,'Asunci�n Cacalotepec','OAX');
insert into ciudades values(null,'Asunci�n Cuyotepeji','OAX');
insert into ciudades values(null,'Asunci�n Ixtaltepec','OAX');
insert into ciudades values(null,'Asunci�n Nochixtl�n','OAX');
insert into ciudades values(null,'Asunci�n Ocotl�n','OAX');
insert into ciudades values(null,'Asunci�n Tlacolulita','OAX');
insert into ciudades values(null,'Ayoquezco de Aldama','OAX');
insert into ciudades values(null,'Ayotzintepec','OAX');
insert into ciudades values(null,'Calihual�','OAX');
insert into ciudades values(null,'Candelaria Loxicha','OAX');
insert into ciudades values(null,'Capulalpam de M�ndez','OAX');
insert into ciudades values(null,'Chahuites','OAX');
insert into ciudades values(null,'Chalcatongo de Hidalgo','OAX');
insert into ciudades values(null,'Chiquihuitl�n de Benito Ju�rez','OAX');
insert into ciudades values(null,'Ci�nega de Zimatl�n','OAX');
insert into ciudades values(null,'Ciudad Ixtepec','OAX');
insert into ciudades values(null,'Coatecas Altas','OAX');
insert into ciudades values(null,'Coicoy�n de las Flores','OAX');
insert into ciudades values(null,'Concepci�n Buenavista','OAX');
insert into ciudades values(null,'Concepci�n P�palo','OAX');
insert into ciudades values(null,'Constancia del Rosario','OAX');
insert into ciudades values(null,'Cosolapa','OAX');
insert into ciudades values(null,'Cosoltepec','OAX');
insert into ciudades values(null,'Cuilapam de Guerrero','OAX');
insert into ciudades values(null,'Cuyamecalco Villa de Zaragoza','OAX');
insert into ciudades values(null,'El Barrio de la Soledad','OAX');
insert into ciudades values(null,'El Espinal','OAX');
insert into ciudades values(null,'Eloxochitl�n de Flores Mag�n','OAX');
insert into ciudades values(null,'Fresnillo de Trujano','OAX');
insert into ciudades values(null,'Guadalupe de Ram�rez','OAX');
insert into ciudades values(null,'Guadalupe Etla','OAX');
insert into ciudades values(null,'Guelatao de Ju�rez','OAX');
insert into ciudades values(null,'Guevea de Humboldt','OAX');
insert into ciudades values(null,'Her�ica Ciudad de Ejutla de Crespo','OAX');
insert into ciudades values(null,'Her�ica Ciudad de Huajuapan de Le�n','OAX');
insert into ciudades values(null,'Her�ica Ciudad de Tlaxiaco','OAX');
insert into ciudades values(null,'Huautepec','OAX');
insert into ciudades values(null,'Huautla de Jim�nez','OAX');
insert into ciudades values(null,'Ixpantepec Nieves','OAX');
insert into ciudades values(null,'Ixtl�n de Ju�rez','OAX');
insert into ciudades values(null,'Juchit�n de Zaragoza','OAX');
insert into ciudades values(null,'La Compa��a','OAX');
insert into ciudades values(null,'La Pe','OAX');
insert into ciudades values(null,'La Reforma','OAX');
insert into ciudades values(null,'La Trinidad Vista Hermosa','OAX');
insert into ciudades values(null,'Loma Bonita','OAX');
insert into ciudades values(null,'Magdalena Apasco','OAX');
insert into ciudades values(null,'Magdalena Jaltepec','OAX');
insert into ciudades values(null,'Magdalena Mixtepec','OAX');
insert into ciudades values(null,'Magdalena Ocotl�n','OAX');
insert into ciudades values(null,'Magdalena Pe�asco','OAX');
insert into ciudades values(null,'Magdalena Teitipac','OAX');
insert into ciudades values(null,'Magdalena Tequisistl�n','OAX');
insert into ciudades values(null,'Magdalena Tlacotepec','OAX');
insert into ciudades values(null,'Magdalena Yodocono de Porfirio D�az','OAX');
insert into ciudades values(null,'Magdalena Zahuatl�n','OAX');
insert into ciudades values(null,'Mariscala de Ju�rez','OAX');
insert into ciudades values(null,'M�rtires de Tacubaya','OAX');
insert into ciudades values(null,'Mat�as Romero Avenda�o','OAX');
insert into ciudades values(null,'Mazatl�n Villa de Flores','OAX');
insert into ciudades values(null,'Mesones Hidalgo','OAX');
insert into ciudades values(null,'Miahuatl�n de Porfirio D�az','OAX');
insert into ciudades values(null,'Mixistl�n de la Reforma','OAX');
insert into ciudades values(null,'Monjas','OAX');
insert into ciudades values(null,'Natividad','OAX');
insert into ciudades values(null,'Nazareno Etla','OAX');
insert into ciudades values(null,'Nejapa de Madero','OAX');
insert into ciudades values(null,'Nuevo Zoquiapam','OAX');
insert into ciudades values(null,'Oaxaca de Ju�rez','OAX');
insert into ciudades values(null,'Ocotl�n de Morelos','OAX');
insert into ciudades values(null,'Pinotepa de Don Luis','OAX');
insert into ciudades values(null,'Pluma Hidalgo','OAX');
insert into ciudades values(null,'Putla Villa de Guerrero','OAX');
insert into ciudades values(null,'Reforma de Pineda','OAX');
insert into ciudades values(null,'Reyes Etla','OAX');
insert into ciudades values(null,'Rojas de Cuauht�moc','OAX');
insert into ciudades values(null,'Salina Cruz','OAX');
insert into ciudades values(null,'San Agust�n Amatengo','OAX');
insert into ciudades values(null,'San Agust�n Atenango','OAX');
insert into ciudades values(null,'San Agust�n Chayuco','OAX');
insert into ciudades values(null,'San Agust�n de las Juntas','OAX');
insert into ciudades values(null,'San Agust�n Etla','OAX');
insert into ciudades values(null,'San Agust�n Loxicha','OAX');
insert into ciudades values(null,'San Agust�n Tlacotepec','OAX');
insert into ciudades values(null,'San Agust�n Yatareni','OAX');
insert into ciudades values(null,'San Andr�s Cabecera Nueva','OAX');
insert into ciudades values(null,'San Andr�s Dinicuiti','OAX');
insert into ciudades values(null,'San Andr�s Huaxpaltepec','OAX');
insert into ciudades values(null,'San Andr�s Huayapam','OAX');
insert into ciudades values(null,'San Andr�s Ixtlahuaca','OAX');
insert into ciudades values(null,'San Andr�s Lagunas','OAX');
insert into ciudades values(null,'San Andr�s Nuxi�o','OAX');
insert into ciudades values(null,'San Andr�s Paxtl�n','OAX');
insert into ciudades values(null,'San Andr�s Sinaxtla','OAX');
insert into ciudades values(null,'San Andr�s Solaga','OAX');
insert into ciudades values(null,'San Andr�s Teotilalpam','OAX');
insert into ciudades values(null,'San Andr�s Tepetlapa','OAX');
insert into ciudades values(null,'San Andr�s Yaa','OAX');
insert into ciudades values(null,'San Andr�s Zabache','OAX');
insert into ciudades values(null,'San Andr�s Zautla','OAX');
insert into ciudades values(null,'San Antonino Castillo Velasco','OAX');
insert into ciudades values(null,'San Antonino el Alto','OAX');
insert into ciudades values(null,'San Antonino Monteverde','OAX');
insert into ciudades values(null,'San Antonio Acutla','OAX');
insert into ciudades values(null,'San Antonio de la Cal','OAX');
insert into ciudades values(null,'San Antonio Huitepec','OAX');
insert into ciudades values(null,'San Antonio Nanahuatipam','OAX');
insert into ciudades values(null,'San Antonio Sinicahua','OAX');
insert into ciudades values(null,'San Antonio Tepetlapa','OAX');
insert into ciudades values(null,'San Baltazar Chichic�pam','OAX');
insert into ciudades values(null,'San Baltazar Loxicha','OAX');
insert into ciudades values(null,'San Baltazar Yatzachi el Bajo','OAX');
insert into ciudades values(null,'San Bartolo Coyotepec','OAX');
insert into ciudades values(null,'San Bartolo Soyaltepec','OAX');
insert into ciudades values(null,'San Bartolo Yautepec','OAX');
insert into ciudades values(null,'San Bartolom� Ayautla','OAX');
insert into ciudades values(null,'San Bartolom� Loxicha','OAX');
insert into ciudades values(null,'San Bartolom� Quialana','OAX');
insert into ciudades values(null,'San Bartolom� Yucua�e','OAX');
insert into ciudades values(null,'San Bartolom� Zoogocho','OAX');
insert into ciudades values(null,'San Bernardo Mixtepec','OAX');
insert into ciudades values(null,'San Blas Atempa','OAX');
insert into ciudades values(null,'San Carlos Yautepec','OAX');
insert into ciudades values(null,'San Crist�bal Amatl�n','OAX');
insert into ciudades values(null,'San Crist�bal Amoltepec','OAX');
insert into ciudades values(null,'San Crist�bal Lachirioag','OAX');
insert into ciudades values(null,'San Crist�bal Suchixtlahuaca','OAX');
insert into ciudades values(null,'San Dionisio del Mar','OAX');
insert into ciudades values(null,'San Dionisio Ocotepec','OAX');
insert into ciudades values(null,'San Dionisio Ocotl�n','OAX');
insert into ciudades values(null,'San Esteban Atatlahuca','OAX');
insert into ciudades values(null,'San Felipe Jalapa de D�az','OAX');
insert into ciudades values(null,'San Felipe Tejalapam','OAX');
insert into ciudades values(null,'San Felipe Usila','OAX');
insert into ciudades values(null,'San Francisco Cahuacu�','OAX');
insert into ciudades values(null,'San Francisco Cajonos','OAX');
insert into ciudades values(null,'San Francisco Chapulapa','OAX');
insert into ciudades values(null,'San Francisco Chindua','OAX');
insert into ciudades values(null,'San Francisco del Mar','OAX');
insert into ciudades values(null,'San Francisco Huehuetl�n','OAX');
insert into ciudades values(null,'San Francisco Ixhuat�n','OAX');
insert into ciudades values(null,'San Francisco Jaltepetongo','OAX');
insert into ciudades values(null,'San Francisco Lachigol�','OAX');
insert into ciudades values(null,'San Francisco Logueche','OAX');
insert into ciudades values(null,'San Francisco Nuxa�o','OAX');
insert into ciudades values(null,'San Francisco Ozolotepec','OAX');
insert into ciudades values(null,'San Francisco Sola','OAX');
insert into ciudades values(null,'San Francisco Telixtlahuaca','OAX');
insert into ciudades values(null,'San Francisco Teopan','OAX');
insert into ciudades values(null,'San Francisco Tlapancingo','OAX');
insert into ciudades values(null,'San Gabriel Mixtepec','OAX');
insert into ciudades values(null,'San Ildefonso Amatl�n','OAX');
insert into ciudades values(null,'San Ildefonso Sola','OAX');
insert into ciudades values(null,'San Ildefonso Villa Alta','OAX');
insert into ciudades values(null,'San Jacinto Amilpas','OAX');
insert into ciudades values(null,'San Jacinto Tlacotepec','OAX');
insert into ciudades values(null,'San Jer�nimo Coatl�n','OAX');
insert into ciudades values(null,'San Jer�nimo Silacayoapilla','OAX');
insert into ciudades values(null,'San Jer�nimo Sosola','OAX');
insert into ciudades values(null,'San Jer�nimo Taviche','OAX');
insert into ciudades values(null,'San Jer�nimo Tecoatl','OAX');
insert into ciudades values(null,'San Jer�nimo Tlacochahuaya','OAX');
insert into ciudades values(null,'San Jorge Nuchita','OAX');
insert into ciudades values(null,'San Jos� Ayuquila','OAX');
insert into ciudades values(null,'San Jos� Chiltepec','OAX');
insert into ciudades values(null,'San Jos� del Pe�asco','OAX');
insert into ciudades values(null,'San Jos� del Progreso','OAX');
insert into ciudades values(null,'San Jos� Estancia Grande','OAX');
insert into ciudades values(null,'San Jos� Independencia','OAX');
insert into ciudades values(null,'San Jos� Lachiguiri','OAX');
insert into ciudades values(null,'San Jos� Tenango','OAX');
insert into ciudades values(null,'San Juan Achiutla','OAX');
insert into ciudades values(null,'San Juan Atepec','OAX');
insert into ciudades values(null,'San Juan Bautista Atatlahuca','OAX');
insert into ciudades values(null,'San Juan Bautista Coixtlahuaca','OAX');
insert into ciudades values(null,'San Juan Bautista Cuicatl�n','OAX');
insert into ciudades values(null,'San Juan Bautista Guelache','OAX');
insert into ciudades values(null,'San Juan Bautista Jayacatl�n','OAX');
insert into ciudades values(null,'San Juan Bautista Lo de Soto','OAX');
insert into ciudades values(null,'San Juan Bautista Suchitepec','OAX');
insert into ciudades values(null,'San Juan Bautista Tlacoatzintepec','OAX');
insert into ciudades values(null,'San Juan Bautista Tlachichilco','OAX');
insert into ciudades values(null,'San Juan Bautista Tuxtepec','OAX');
insert into ciudades values(null,'San Juan Bautista Valle Nacional','OAX');
insert into ciudades values(null,'San Juan Cacahuatepec','OAX');
insert into ciudades values(null,'San Juan Chicomez�chil','OAX');
insert into ciudades values(null,'San Juan Chilateca','OAX');
insert into ciudades values(null,'San Juan Cieneguilla','OAX');
insert into ciudades values(null,'San Juan Coatz�spam','OAX');
insert into ciudades values(null,'San Juan Colorado','OAX');
insert into ciudades values(null,'San Juan Comaltepec','OAX');
insert into ciudades values(null,'San Juan Cotzoc�n','OAX');
insert into ciudades values(null,'San Juan del Estado','OAX');
insert into ciudades values(null,'San Juan de los Cu�s','OAX');
insert into ciudades values(null,'San Juan del R�o','OAX');
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
insert into ciudades values(null,'San Juan Mazatl�n','OAX');
insert into ciudades values(null,'San Juan Mixtepec, distrito 08','OAX');
insert into ciudades values(null,'San Juan Mixtepec, distrito 26','OAX');
insert into ciudades values(null,'San Juan �umi','OAX');
insert into ciudades values(null,'San Juan Ozolotepec','OAX');
insert into ciudades values(null,'San Juan Petlapa','OAX');
insert into ciudades values(null,'San Juan Quiahije','OAX');
insert into ciudades values(null,'San Juan Quiotepec','OAX');
insert into ciudades values(null,'San Juan Sayultepec','OAX');
insert into ciudades values(null,'San Juan Taba�','OAX');
insert into ciudades values(null,'San Juan Tamazola','OAX');
insert into ciudades values(null,'San Juan Teita','OAX');
insert into ciudades values(null,'San Juan Teitipac','OAX');
insert into ciudades values(null,'San Juan Tepeuxila','OAX');
insert into ciudades values(null,'San Juan Teposcolula','OAX');
insert into ciudades values(null,'San Juan Yae�','OAX');
insert into ciudades values(null,'San Juan Yatzona','OAX');
insert into ciudades values(null,'San Juan Yucuita','OAX');
insert into ciudades values(null,'San Lorenzo','OAX');
insert into ciudades values(null,'San Lorenzo Albarradas','OAX');
insert into ciudades values(null,'San Lorenzo Cacaotepec','OAX');
insert into ciudades values(null,'San Lorenzo Cuaunecuiltitla','OAX');
insert into ciudades values(null,'San Lorenzo Texmelucan','OAX');
insert into ciudades values(null,'San Lorenzo Victoria','OAX');
insert into ciudades values(null,'San Lucas Camotl�n','OAX');
insert into ciudades values(null,'San Lucas Ojitl�n','OAX');
insert into ciudades values(null,'San Lucas Quiavin�','OAX');
insert into ciudades values(null,'San Lucas Zoqui�pam','OAX');
insert into ciudades values(null,'San Luis Amatl�n','OAX');
insert into ciudades values(null,'San Marcial Ozolotepec','OAX');
insert into ciudades values(null,'San Marcos Arteaga','OAX');
insert into ciudades values(null,'San Mart�n de los Cansecos','OAX');
insert into ciudades values(null,'San Mart�n Huamel�lpam','OAX');
insert into ciudades values(null,'San Mart�n Itunyoso','OAX');
insert into ciudades values(null,'San Mart�n Lachil�','OAX');
insert into ciudades values(null,'San Mart�n Peras','OAX');
insert into ciudades values(null,'San Mart�n Tilcajete','OAX');
insert into ciudades values(null,'San Mart�n Toxpalan','OAX');
insert into ciudades values(null,'San Mart�n Zacatepec','OAX');
insert into ciudades values(null,'San Mateo Cajonos','OAX');
insert into ciudades values(null,'San Mateo del Mar','OAX');
insert into ciudades values(null,'San Mateo Etlatongo','OAX');
insert into ciudades values(null,'San Mateo Nej�pam','OAX');
insert into ciudades values(null,'San Mateo Pe�asco','OAX');
insert into ciudades values(null,'San Mateo Pi�as','OAX');
insert into ciudades values(null,'San Mateo R�o Hondo','OAX');
insert into ciudades values(null,'San Mateo Sindihui','OAX');
insert into ciudades values(null,'San Mateo Tlapiltepec','OAX');
insert into ciudades values(null,'San Mateo Yoloxochitl�n','OAX');
insert into ciudades values(null,'San Melchor Betaza','OAX');
insert into ciudades values(null,'San Miguel Achiutla','OAX');
insert into ciudades values(null,'San Miguel Ahuehuetitl�n','OAX');
insert into ciudades values(null,'San Miguel Alo�pam','OAX');
insert into ciudades values(null,'San Miguel Amatitl�n','OAX');
insert into ciudades values(null,'San Miguel Amatl�n','OAX');
insert into ciudades values(null,'San Miguel Coatl�n','OAX');
insert into ciudades values(null,'San Miguel Chicahua','OAX');
insert into ciudades values(null,'San Miguel Chimalapa','OAX');
insert into ciudades values(null,'San Miguel del Puerto','OAX');
insert into ciudades values(null,'San Miguel del R�o','OAX');
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
insert into ciudades values(null,'San Miguel Tecomatl�n','OAX');
insert into ciudades values(null,'San Miguel Tenango','OAX');
insert into ciudades values(null,'San Miguel Tequixtepec','OAX');
insert into ciudades values(null,'San Miguel Tilqui�pam','OAX');
insert into ciudades values(null,'San Miguel Tlacamama','OAX');
insert into ciudades values(null,'San Miguel Tlacotepec','OAX');
insert into ciudades values(null,'San Miguel Tulancingo','OAX');
insert into ciudades values(null,'San Miguel Yotao','OAX');
insert into ciudades values(null,'San Nicol�s','OAX');
insert into ciudades values(null,'San Nicol�s Hidalgo','OAX');
insert into ciudades values(null,'San Pablo Coatl�n','OAX');
insert into ciudades values(null,'San Pablo Cuatro Venados','OAX');
insert into ciudades values(null,'San Pablo Etla','OAX');
insert into ciudades values(null,'San Pablo Huitzo','OAX');
insert into ciudades values(null,'San Pablo Huixtepec','OAX');
insert into ciudades values(null,'San Pablo Macuiltianguis','OAX');
insert into ciudades values(null,'San Pablo Tijaltepec','OAX');
insert into ciudades values(null,'San Pablo Villa de Mitla','OAX');
insert into ciudades values(null,'San Pablo Yaganiza','OAX');
insert into ciudades values(null,'San Pedro Amuzgos','OAX');
insert into ciudades values(null,'San Pedro Ap�stol','OAX');
insert into ciudades values(null,'San Pedro Atoyac','OAX');
insert into ciudades values(null,'San Pedro Cajonos','OAX');
insert into ciudades values(null,'San Pedro Comitancillo','OAX');
insert into ciudades values(null,'San Pedro Cocaltepec C�ntaros','OAX');
insert into ciudades values(null,'San Pedro el Alto','OAX');
insert into ciudades values(null,'San Pedro Huamelula','OAX');
insert into ciudades values(null,'San Pedro Huilotepec','OAX');
insert into ciudades values(null,'San Pedro Ixcatl�n','OAX');
insert into ciudades values(null,'San Pedro Ixtlahuaca','OAX');
insert into ciudades values(null,'San Pedro Jaltepetongo','OAX');
insert into ciudades values(null,'San Pedro Jicay�n','OAX');
insert into ciudades values(null,'San Pedro Jocotipac','OAX');
insert into ciudades values(null,'San Pedro Juchatengo','OAX');
insert into ciudades values(null,'San Pedro M�rtir','OAX');
insert into ciudades values(null,'San Pedro M�rtir Quiechapa','OAX');
insert into ciudades values(null,'San Pedro M�rtir Yucuxaco','OAX');
insert into ciudades values(null,'San Pedro Mixtepec, distrito 22','OAX');
insert into ciudades values(null,'San Pedro Mixtepec, distrito 26','OAX');
insert into ciudades values(null,'San Pedro Molinos','OAX');
insert into ciudades values(null,'San Pedro Nopala','OAX');
insert into ciudades values(null,'San Pedro Ocopetatillo','OAX');
insert into ciudades values(null,'San Pedro Ocotepec','OAX');
insert into ciudades values(null,'San Pedro Pochutla','OAX');
insert into ciudades values(null,'San Pedro Quiatoni','OAX');
insert into ciudades values(null,'San Pedro Sochi�pam','OAX');
insert into ciudades values(null,'San Pedro Tapanatepec','OAX');
insert into ciudades values(null,'San Pedro Taviche','OAX');
insert into ciudades values(null,'San Pedro Teozacoalco','OAX');
insert into ciudades values(null,'San Pedro Teutila','OAX');
insert into ciudades values(null,'San Pedro Tida�','OAX');
insert into ciudades values(null,'San Pedro Topiltepec','OAX');
insert into ciudades values(null,'San Pedro Totol�pam','OAX');
insert into ciudades values(null,'San Pedro y San Pablo Ayutla','OAX');
insert into ciudades values(null,'San Pedro y San Pablo Teposcolula','OAX');
insert into ciudades values(null,'San Pedro y San Pablo Tequixtepec','OAX');
insert into ciudades values(null,'San Pedro Yaneri','OAX');
insert into ciudades values(null,'San Pedro Y�lox','OAX');
insert into ciudades values(null,'San Pedro Yucunama','OAX');
insert into ciudades values(null,'San Raymundo Jalpan','OAX');
insert into ciudades values(null,'San Sebasti�n Abasolo','OAX');
insert into ciudades values(null,'San Sebasti�n Coatl�n','OAX');
insert into ciudades values(null,'San Sebasti�n Ixcapa','OAX');
insert into ciudades values(null,'San Sebasti�n Nicananduta','OAX');
insert into ciudades values(null,'San Sebasti�n R�o Hondo','OAX');
insert into ciudades values(null,'San Sebasti�n Tecomaxtlahuaca','OAX');
insert into ciudades values(null,'San Sebasti�n Teitipac','OAX');
insert into ciudades values(null,'San Sebasti�n Tutla','OAX');
insert into ciudades values(null,'San Sim�n Almolongas','OAX');
insert into ciudades values(null,'San Sim�n Zahuatl�n��','OAX');
insert into ciudades values(null,'Santa Ana','OAX');
insert into ciudades values(null,'Santa Ana Ateixtlahuaca','OAX');
insert into ciudades values(null,'Santa Ana Cuauht�moc','OAX');
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
insert into ciudades values(null,'Santa Catarina Mechoac�n','OAX');
insert into ciudades values(null,'Santa Catarina Minas','OAX');
insert into ciudades values(null,'Santa Catarina Quian�','OAX');
insert into ciudades values(null,'Santa Catarina Quioquitani','OAX');
insert into ciudades values(null,'Santa CatarinaTayata','OAX');
insert into ciudades values(null,'Santa Catarina Ticu�','OAX');
insert into ciudades values(null,'Santa Catarina Yosonot�','OAX');
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
insert into ciudades values(null,'Santa Cruz Xoxocotl�n','OAX');
insert into ciudades values(null,'Santa Cruz Zenzontepec','OAX');
insert into ciudades values(null,'Santa Gertrudis','OAX');
insert into ciudades values(null,'Santa In�s del Monte','OAX');
insert into ciudades values(null,'Santa In�s de Zaragoza','OAX');
insert into ciudades values(null,'Santa In�s Yatzeche','OAX');
insert into ciudades values(null,'Santa Luc�a del Camino','OAX');
insert into ciudades values(null,'Santa Luc�a Miahuatl�n','OAX');
insert into ciudades values(null,'Santa Luc�a Monteverde','OAX');
insert into ciudades values(null,'Santa Luc�a Ocotl�n','OAX');
insert into ciudades values(null,'Santa Magdalena Jicotl�n','OAX');
insert into ciudades values(null,'Santa Mar�a Alotepec','OAX');
insert into ciudades values(null,'Santa Mar�a Apazco','OAX');
insert into ciudades values(null,'Santa Mar�a Atzompa','OAX');
insert into ciudades values(null,'Santa Mar�a Camotl�n','OAX');
insert into ciudades values(null,'Santa Mar�a Chacho�pam','OAX');
insert into ciudades values(null,'Santa Mar�a Chilchotla','OAX');
insert into ciudades values(null,'Santa Mar�a Chimalapa','OAX');
insert into ciudades values(null,'Santa Mar�a Colotepec','OAX');
insert into ciudades values(null,'Santa Mar�a Cortijo','OAX');
insert into ciudades values(null,'Santa Mar�a Coyotepec','OAX');
insert into ciudades values(null,'Santa Mar�a del Rosario','OAX');
insert into ciudades values(null,'Santa Mar�a del Tule','OAX');
insert into ciudades values(null,'Santa Mar�a Ecatepec','OAX');
insert into ciudades values(null,'Santa Mar�a Guelac�','OAX');
insert into ciudades values(null,'Santa Mar�a Guienagati','OAX');
insert into ciudades values(null,'Santa Mar�a Huatulco','OAX');
insert into ciudades values(null,'Santa Mar�a Huazolotitl�n','OAX');
insert into ciudades values(null,'Santa Mar�a Ipalapa','OAX');
insert into ciudades values(null,'Santa Mar�a Ixcatl�n','OAX');
insert into ciudades values(null,'Santa Mar�a Jacatepec','OAX');
insert into ciudades values(null,'Santa Mar�a Jalapa del Marqu�s','OAX');
insert into ciudades values(null,'Santa Mar�a Jaltianguis','OAX');
insert into ciudades values(null,'Santa Mar�a la Asunci�n','OAX');
insert into ciudades values(null,'Santa Mar�a Lachix�o','OAX');
insert into ciudades values(null,'Santa Mar�a Mixtequilla','OAX');
insert into ciudades values(null,'Santa Mar�a Nativitas','OAX');
insert into ciudades values(null,'Santa Mar�a Nduayaco','OAX');
insert into ciudades values(null,'Santa Mar�a Ozolotepec','OAX');
insert into ciudades values(null,'Santa Mar�a P�palo','OAX');
insert into ciudades values(null,'Santa Mar�a Pe�oles','OAX');
insert into ciudades values(null,'Santa Mar�a Petapa','OAX');
insert into ciudades values(null,'Santa Mar�a Quiegolani','OAX');
insert into ciudades values(null,'Santa Mar�a Sola','OAX');
insert into ciudades values(null,'Santa Mar�a Tataltepec','OAX');
insert into ciudades values(null,'Santa Mar�a Tecomavaca','OAX');
insert into ciudades values(null,'Santa Mar�a Temaxcalapa','OAX');
insert into ciudades values(null,'Santa Mar�a Temaxcaltepec','OAX');
insert into ciudades values(null,'Santa Mar�a Teopoxco','OAX');
insert into ciudades values(null,'Santa Mar�a Tepantlali','OAX');
insert into ciudades values(null,'Santa Mar�a Texcatitl�n','OAX');
insert into ciudades values(null,'Santa Mar�a Tlahuitoltepec','OAX');
insert into ciudades values(null,'Santa Mar�a Tlalixtac','OAX');
insert into ciudades values(null,'Santa Mar�a Tonameca','OAX');
insert into ciudades values(null,'Santa Mar�a Totolapilla','OAX');
insert into ciudades values(null,'Santa Mar�a Xadani','OAX');
insert into ciudades values(null,'Santa Mar�a Yalina','OAX');
insert into ciudades values(null,'Santa Mar�a Yaves�a','OAX');
insert into ciudades values(null,'Santa Mar�a Yolotepec','OAX');
insert into ciudades values(null,'Santa Mar�a Yosoyua','OAX');
insert into ciudades values(null,'Santa Mar�a Yucuhiti','OAX');
insert into ciudades values(null,'Santa Mar�a Zacatepec','OAX');
insert into ciudades values(null,'Santa Mar�a Zaniza','OAX');
insert into ciudades values(null,'Santa Mar�a Zoquitl�n','OAX');
insert into ciudades values(null,'Santiago Amoltepec','OAX');
insert into ciudades values(null,'Santiago Apoala','OAX');
insert into ciudades values(null,'Santiago Ap�stol','OAX');
insert into ciudades values(null,'Santiago Astata','OAX');
insert into ciudades values(null,'Santiago Atitl�n','OAX');
insert into ciudades values(null,'Santiago Ayuquililla','OAX');
insert into ciudades values(null,'Santiago Cacaloxtepec','OAX');
insert into ciudades values(null,'Santiago Camotl�n','OAX');
insert into ciudades values(null,'Santiago Chazumba','OAX');
insert into ciudades values(null,'Santiago Cho�pam','OAX');
insert into ciudades values(null,'Santiago Comaltepec','OAX');
insert into ciudades values(null,'Santiago del R�o','OAX');
insert into ciudades values(null,'Santiago Huajolotitl�n','OAX');
insert into ciudades values(null,'Santiago Huauclilla','OAX');
insert into ciudades values(null,'Santiago Ihuitl�n Plumas','OAX');
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
insert into ciudades values(null,'Santiago Matatl�n','OAX');
insert into ciudades values(null,'Santiago Miltepec','OAX');
insert into ciudades values(null,'Santiago Minas','OAX');
insert into ciudades values(null,'Santiago Nacaltepec','OAX');
insert into ciudades values(null,'Santiago Nejapilla','OAX');
insert into ciudades values(null,'Santiago Niltepec','OAX');
insert into ciudades values(null,'Santiago Nundiche','OAX');
insert into ciudades values(null,'Santiago Nuyo�','OAX');
insert into ciudades values(null,'Santiago Pinotepa Nacional','OAX');
insert into ciudades values(null,'Santiago Suchilquitongo','OAX');
insert into ciudades values(null,'Santiago Tamazola','OAX');
insert into ciudades values(null,'Santiago Tapextla','OAX');
insert into ciudades values(null,'Santiago Tenango','OAX');
insert into ciudades values(null,'Santiago Tepetlapa','OAX');
insert into ciudades values(null,'Santiago Tetepec','OAX');
insert into ciudades values(null,'Santiago Texcalcingo','OAX');
insert into ciudades values(null,'Santiago Textitl�n','OAX');
insert into ciudades values(null,'Santiago Tilantongo','OAX');
insert into ciudades values(null,'Santiago Tillo','OAX');
insert into ciudades values(null,'Santiago Tlazoyaltepec','OAX');
insert into ciudades values(null,'Santiago Xanica','OAX');
insert into ciudades values(null,'Santiago Xiacu�','OAX');
insert into ciudades values(null,'Santiago Yaitepec','OAX');
insert into ciudades values(null,'Santiago Yaveo','OAX');
insert into ciudades values(null,'Santiago Yolom�catl','OAX');
insert into ciudades values(null,'Santiago Yosond�a','OAX');
insert into ciudades values(null,'Santiago Yucuyachi','OAX');
insert into ciudades values(null,'Santiago Zacatepec','OAX');
insert into ciudades values(null,'Santiago Zoochila','OAX');
insert into ciudades values(null,'Santo Domingo Albarradas','OAX');
insert into ciudades values(null,'Santo Domingo Armenta','OAX');
insert into ciudades values(null,'Santo Domingo Chihuit�n','OAX');
insert into ciudades values(null,'Santo Domingo de Morelos','OAX');
insert into ciudades values(null,'Santo Domingo Ingenio','OAX');
insert into ciudades values(null,'Santo Domingo Ixcatl�n','OAX');
insert into ciudades values(null,'Santo Domingo Nuxa�','OAX');
insert into ciudades values(null,'Santo Domingo Ozolotepec','OAX');
insert into ciudades values(null,'Santo Domingo Petapa','OAX');
insert into ciudades values(null,'Santo Domingo Roayaga','OAX');
insert into ciudades values(null,'Santo Domingo Tehuantepec','OAX');
insert into ciudades values(null,'Santo Domingo Teojomulco','OAX');
insert into ciudades values(null,'Santo Domingo Tepuxtepec','OAX');
insert into ciudades values(null,'Santo Domingo Tlatayapam','OAX');
insert into ciudades values(null,'Santo Domingo Tomaltepec','OAX');
insert into ciudades values(null,'Santo Domingo Tonal�','OAX');
insert into ciudades values(null,'Santo Domingo Tonaltepec','OAX');
insert into ciudades values(null,'Santo Domingo Xagac�a','OAX');
insert into ciudades values(null,'Santo Domingo Yanhuitl�n','OAX');
insert into ciudades values(null,'Santo Domingo Yodohino','OAX');
insert into ciudades values(null,'Santo Domingo Zanatepec','OAX');
insert into ciudades values(null,'Santo Tom�s Jalieza','OAX');
insert into ciudades values(null,'Santo Tom�s Mazaltepec','OAX');
insert into ciudades values(null,'Santo Tom�s Ocotepec','OAX');
insert into ciudades values(null,'Santo Tom�s Tamazulapan','OAX');
insert into ciudades values(null,'Santos Reyes Nopala','OAX');
insert into ciudades values(null,'Santos Reyes P�palo','OAX');
insert into ciudades values(null,'Santos Reyes Tepejillo','OAX');
insert into ciudades values(null,'Santos Reyes Yucun�','OAX');
insert into ciudades values(null,'San Vicente Coatl�n','OAX');
insert into ciudades values(null,'San Vicente Lachix�o','OAX');
insert into ciudades values(null,'San Vicente Nu��','OAX');
insert into ciudades values(null,'Silacayo�pam','OAX');
insert into ciudades values(null,'Sitio de Xitlapehua','OAX');
insert into ciudades values(null,'Soledad Etla','OAX');
insert into ciudades values(null,'Tamazul�pam del Esp�ritu Santo','OAX');
insert into ciudades values(null,'Tanetze de Zaragoza','OAX');
insert into ciudades values(null,'Taniche','OAX');
insert into ciudades values(null,'Tataltepec de Vald�s','OAX');
insert into ciudades values(null,'Teococuilco de Marcos P�rez','OAX');
insert into ciudades values(null,'Teotitl�n de Flores Mag�n','OAX');
insert into ciudades values(null,'Teotitl�n del Valle','OAX');
insert into ciudades values(null,'Teotongo','OAX');
insert into ciudades values(null,'Tepelmeme Villa de Morelos','OAX');
insert into ciudades values(null,'Tezoatl�n de Segura y Luna','OAX');
insert into ciudades values(null,'Tlacolula de Matamoros','OAX');
insert into ciudades values(null,'Tlacotepec Plumas','OAX');
insert into ciudades values(null,'Tlalixtac de Cabrera','OAX');
insert into ciudades values(null,'Totontepec Villa de Morelos','OAX');
insert into ciudades values(null,'Trinidad Za�chila','OAX');
insert into ciudades values(null,'Uni�n Hidalgo','OAX');
insert into ciudades values(null,'Valerio Trujano','OAX');
insert into ciudades values(null,'Villa de Chilapa de D�az','OAX');
insert into ciudades values(null,'Villa de Etla','OAX');
insert into ciudades values(null,'Villa de Tamazul�pam del Progreso','OAX');
insert into ciudades values(null,'Villa de Tututepec de Melchor Ocampo','OAX');
insert into ciudades values(null,'Villa de Za�chila','OAX');
insert into ciudades values(null,'Villa D�az Ordaz','OAX');
insert into ciudades values(null,'Villa Hidalgo','OAX');
insert into ciudades values(null,'Villa Sola de Vega','OAX');
insert into ciudades values(null,'Villa Talea de Castro','OAX');
insert into ciudades values(null,'Villa Tejupam de la Uni�n','OAX');
insert into ciudades values(null,'Yaxe','OAX');
insert into ciudades values(null,'Yogana','OAX');
insert into ciudades values(null,'Yutanduchi de Guerrero','OAX');
insert into ciudades values(null,'Zapotitl�n del R�o','OAX');
insert into ciudades values(null,'Zapotitl�n Lagunas','OAX');
insert into ciudades values(null,'Zapotitl�n Palmas','OAX');

#end region
#region puebla
insert into ciudades values(null,'Puebla','PUE');
insert into ciudades values(null,'Tehuac�n','PUE');
insert into ciudades values(null,'Cholula de Rivadavia','PUE');
insert into ciudades values(null,'Atlixco','PUE');
insert into ciudades values(null,'Amozoc','PUE');
insert into ciudades values(null,'San Mart�n','PUE');
insert into ciudades values(null,'Teziutl�n','PUE');
insert into ciudades values(null,'Huauchinango','PUE');
insert into ciudades values(null,'Tlaxcalancingo','PUE');
insert into ciudades values(null,'Iz�car','PUE');
insert into ciudades values(null,'San Andr�s Cholula','PUE');
insert into ciudades values(null,'Xicotepec','PUE');
insert into ciudades values(null,'Zacatl�n','PUE');
insert into ciudades values(null,'Tecamachalco','PUE');
insert into ciudades values(null,'Ajalpan','PUE');
insert into ciudades values(null,'Sanct�rum','PUE');
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
insert into ciudades values(null,'Col�n','QUE');
insert into ciudades values(null,'Corregidora','QUE');
insert into ciudades values(null,'Ezequiel Montes','QUE');
insert into ciudades values(null,'Huimilpan','QUE');
insert into ciudades values(null,'Jalpan de Serra','QUE');
insert into ciudades values(null,'Landa de Matamoros','QUE');
insert into ciudades values(null,'El Marqu�s','QUE');
insert into ciudades values(null,'Pedro Escobedo','QUE');
insert into ciudades values(null,'Pe�amiller','QUE');
insert into ciudades values(null,'Quer�taro','QUE');
insert into ciudades values(null,'San Joaqu�n','QUE');
insert into ciudades values(null,'San Juan del R�o','QUE');
insert into ciudades values(null,'Tequisquiapan','QUE');
insert into ciudades values(null,'Tolim�n','QUE');

#end region
#region Quintana roo
insert into ciudades values(null,'Benito Ju�rez','ROO');
insert into ciudades values(null,'Oth�n P. Blanco','ROO');
insert into ciudades values(null,'Solidaridad','ROO');
insert into ciudades values(null,'Cozumel','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Tulum','ROO');
insert into ciudades values(null,'Benito Ju�rez','ROO');
insert into ciudades values(null,'Isla Mujeres','ROO');
insert into ciudades values(null,'Jos� Mar�a Morelos','ROO');
insert into ciudades values(null,'Bacalar','ROO');
insert into ciudades values(null,'Puerto Morelos','ROO');
insert into ciudades values(null,'L�zaro C�rdenas','ROO');
insert into ciudades values(null,'Puerto Morelos','ROO');
insert into ciudades values(null,'Solidaridad','ROO');
insert into ciudades values(null,'Oth�n P. Blanco','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Oth�n P. Blanco','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Oth�n P. Blanco','ROO');
insert into ciudades values(null,'Jos� Mar�a Morelos','ROO');
insert into ciudades values(null,'Oth�n P. Blanco','ROO');
insert into ciudades values(null,'Felipe Carrillo Puerto','ROO');
insert into ciudades values(null,'Bacalar','ROO');

#end region
#region san luis
insert into ciudades values(null,'San Luis Potos�','SLP');
insert into ciudades values(null,'Soledad de Graciano S�nchez','SLP');
insert into ciudades values(null,'Ciudad Valles','SLP');
insert into ciudades values(null,'Matehuala','SLP');
insert into ciudades values(null,'R�o Verde','SLP');
insert into ciudades values(null,'Ciudad Fern�ndez','SLP');
insert into ciudades values(null,'Tamazunchale','SLP');
insert into ciudades values(null,'�bano','SLP');
insert into ciudades values(null,'Salinas de Hidalgo','SLP');
insert into ciudades values(null,'Tamu�n','SLP');
insert into ciudades values(null,'C�rdenas','SLP');
insert into ciudades values(null,'Cerritos','SLP');
insert into ciudades values(null,'Santa Mar�a del R�o','SLP');
insert into ciudades values(null,'Charcas','SLP');
insert into ciudades values(null,'Cedral','SLP');
insert into ciudades values(null,'El Naranjo','SLP');
insert into ciudades values(null,'Ciudad del Ma�z','SLP');
insert into ciudades values(null,'Villa de Reyes','SLP');
insert into ciudades values(null,'Tanqui�n de Escobedo','SLP');
insert into ciudades values(null,'Villa de Zaragoza','SLP');

#end region
#region sinaloa
insert into ciudades values(null,'�Ahome','SIN');
insert into ciudades values(null,'�Angostura','SIN');
insert into ciudades values(null,'�Badiraguato','SIN');
insert into ciudades values(null,'�Concordia','SIN');
insert into ciudades values(null,'�Cosal�','SIN');
insert into ciudades values(null,'�Culiac�n','SIN');
insert into ciudades values(null,'�Choix','SIN');
insert into ciudades values(null,'�Elota','SIN');
insert into ciudades values(null,'�Escuinapa','SIN');
insert into ciudades values(null,'�El Fuerte','SIN');
insert into ciudades values(null,'�Guasave','SIN');
insert into ciudades values(null,'�Mazatl�n','SIN');
insert into ciudades values(null,'�Mocorito','SIN');
insert into ciudades values(null,'�Rosario','SIN');
insert into ciudades values(null,'�Salvador Alvarado','SIN');
insert into ciudades values(null,'�San Ignacio','SIN');
insert into ciudades values(null,'�Sinaloa','SIN');
insert into ciudades values(null,'�Navolato','SIN');

#end region
#region sonora
insert into ciudades values(null,'Guaymas','SON');
insert into ciudades values(null,'Agua Prieta','SON');
insert into ciudades values(null,'Caborca','SON');
insert into ciudades values(null,'Puerto Pe�asco','SON');
insert into ciudades values(null,'Empalme','SON');
insert into ciudades values(null,'Hermosillo','SON');
insert into ciudades values(null,'Ciudad Obreg�n','SON');
insert into ciudades values(null,'Nogales','SON');
insert into ciudades values(null,'San Luis R�o Colorado','SON');
insert into ciudades values(null,'Navojoa','SON');
insert into ciudades values(null,'Heroica Caborca','SON');
insert into ciudades values(null,'Puerto Pe�asco�','SON');
insert into ciudades values(null,'Empalme','SON');
insert into ciudades values(null,'Heroica Guaymas','SON');
insert into ciudades values(null,'Agua Prieta','SON');

#end region
#region tabasco
insert into ciudades values(null,'Villahermosa','TAB');
insert into ciudades values(null,'Heroica C�rdenas','TAB');
insert into ciudades values(null,'Comalcalco','TAB');
insert into ciudades values(null,'Macuspana','TAB');
insert into ciudades values(null,'Tenosique de Pino Su�rez','TAB');
insert into ciudades values(null,'Huimanguillo','TAB');
insert into ciudades values(null,'Teapa','TAB');
insert into ciudades values(null,'Para�so','TAB');
insert into ciudades values(null,'Ocuiltzapotl�n','TAB');
insert into ciudades values(null,'Frontera','TAB');
insert into ciudades values(null,'Playas del Rosario','TAB');
insert into ciudades values(null,'Cunduac�n','TAB');
insert into ciudades values(null,'Emiliano Zapata','TAB');
insert into ciudades values(null,'Benito Ju�rez','TAB');
insert into ciudades values(null,'Jalpa de M�ndez','TAB');
insert into ciudades values(null,'Balanc�n de Dom�nguez','TAB');
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
insert into ciudades values(null,'R�o Bravo','TAM');
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
insert into ciudades values(null,'Veracruz�(V)','VER');
insert into ciudades values(null,'Coatzacoalcos�(Ct)','VER');
insert into ciudades values(null,'Poza Rica de Hidalgo�(P)','VER');
insert into ciudades values(null,'Minatitl�n�(M)','VER');
insert into ciudades values(null,'C�rdoba�(Cr)','VER');
insert into ciudades values(null,'Orizaba�(O)','VER');
insert into ciudades values(null,'T�xpam de Rodr�guez Cano','VER');
insert into ciudades values(null,'San Andr�s Tuxtla','VER');
insert into ciudades values(null,'Mart�nez de la Torre','VER');
insert into ciudades values(null,'Coatepec�(X)','VER');
insert into ciudades values(null,'Papantla de Olarte�(P)','VER');
insert into ciudades values(null,'Acayucan�(A)','VER');
insert into ciudades values(null,'Tierra Blanca','VER');
insert into ciudades values(null,'Las Choapas','VER');
insert into ciudades values(null,'P�nuco�(T)','VER');
insert into ciudades values(null,'R�o Blanco�(O)','VER');
insert into ciudades values(null,'Perote','VER');
insert into ciudades values(null,'Agua Dulce','VER');
insert into ciudades values(null,'Ciudad Mendoza�(O)','VER');
insert into ciudades values(null,'Tlapacoyan','VER');
insert into ciudades values(null,'Coatzintla�(P)','VER');
insert into ciudades values(null,'J�ltipan de Morelos�(M)','VER');
insert into ciudades values(null,'Huatusco','VER');
insert into ciudades values(null,'Tantoyuca','VER');
insert into ciudades values(null,'Cosamaloapan de Carpio','VER');
insert into ciudades values(null,'Catemaco','VER');
insert into ciudades values(null,'Misantla','VER');
insert into ciudades values(null,'Isla','VER');
insert into ciudades values(null,'Ixtaczoquitl�n�(O)','VER');
insert into ciudades values(null,'Valente D�az�(V)','VER');
insert into ciudades values(null,'Nanchital de L�zaro C�rdenas del R�o�(Ct)','VER');
insert into ciudades values(null,'�lamo','VER');
insert into ciudades values(null,'Allende�(Ct)','VER');
insert into ciudades values(null,'Alvarado�(V)','VER');
insert into ciudades values(null,'Cosoleacaque�(M)','VER');
insert into ciudades values(null,'Cerro Azul','VER');
insert into ciudades values(null,'Nogales�(O)','VER');
insert into ciudades values(null,'Fort�n de las Flores�(Cr)','VER');
insert into ciudades values(null,'Naranjos','VER');
insert into ciudades values(null,'Altotonga','VER');
insert into ciudades values(null,'Banderilla�(X)','VER');
insert into ciudades values(null,'Jos� Cardel','VER');
insert into ciudades values(null,'Lerdo de Tejada','VER');
insert into ciudades values(null,'Xico','VER');
insert into ciudades values(null,'Carlos A. Carrillo','VER');
insert into ciudades values(null,'Tres Valles','VER');
insert into ciudades values(null,'Fraccionamiento Ciudad Olmeca (Ct)','VER');
insert into ciudades values(null,'Santiago Tuxtla','VER');
insert into ciudades values(null,'Independencia','VER');
insert into ciudades values(null,'Coscomatepec','VER');
insert into ciudades values(null,'Alto Lucero (Tuxpan)','VER');
insert into ciudades values(null,'Benito Ju�rez�(T)','VER');
insert into ciudades values(null,'Oteapan�(M)','VER');
insert into ciudades values(null,'Juan Rodr�guez Clara','VER');
insert into ciudades values(null,'Las Amapolas (V)','VER');
insert into ciudades values(null,'Tihuatl�n�(P)','VER');
insert into ciudades values(null,'Palmira�(O)','VER');
insert into ciudades values(null,'General Miguel Alem�n','VER');
insert into ciudades values(null,'An�huac (T)','VER');
insert into ciudades values(null,'Sayula de Alem�n','VER');
insert into ciudades values(null,'Cuitl�huac','VER');
insert into ciudades values(null,'Guti�rrez Zamora','VER');
insert into ciudades values(null,'Paso del Macho','VER');
insert into ciudades values(null,'Jalacingo','VER');
insert into ciudades values(null,'Filomeno Mata','VER');
insert into ciudades values(null,'Fraccionamiento Puente Moreno�(V)','VER');
insert into ciudades values(null,'Fraccionamiento Geovillas Los Pinos (V)','VER');
insert into ciudades values(null,'Oluta�(A)','VER');
insert into ciudades values(null,'Tempoal de S�nchez','VER');
insert into ciudades values(null,'Soledad de Doblado','VER');
insert into ciudades values(null,'�ngel R. Cabada','VER');
insert into ciudades values(null,'Maltrata�(O)','VER');
insert into ciudades values(null,'C�rdoba - Santa Leticia (Cr)','VER');
insert into ciudades values(null,'Plan de Ayala (P)','VER');
insert into ciudades values(null,'El Tejar (V)','VER');
insert into ciudades values(null,'La Luz Francisco I. Madero (San Rom�n) (Cr)','VER');
insert into ciudades values(null,'Plat�n S�nchez','VER');
insert into ciudades values(null,'Chocam�n','VER');
insert into ciudades values(null,'Moralillo (T)','VER');
insert into ciudades values(null,'Ixhuatl�n del Sureste','VER');
insert into ciudades values(null,'Teocelo','VER');
insert into ciudades values(null,'Boca del R�o�(V)','VER');
insert into ciudades values(null,'Ciudad Cuauht�moc�(T)','VER');
insert into ciudades values(null,'Las Vigas de Ram�rez','VER');
insert into ciudades values(null,'Texistepec','VER');
insert into ciudades values(null,'Zaragoza�(M)','VER');
insert into ciudades values(null,'Rafael Delgado�(O)','VER');
insert into ciudades values(null,'Zempoala','VER');
insert into ciudades values(null,'Naolinco de Victoria','VER');
insert into ciudades values(null,'Amatl�n de los Reyes�(Cr)','VER');
insert into ciudades values(null,'Playa Vicente','VER');
insert into ciudades values(null,'Atzacan�(O)','VER');
insert into ciudades values(null,'Lomas de Barrillas (Ct)','VER');
insert into ciudades values(null,'Piedras Negras','VER');
insert into ciudades values(null,'Santiago de la Pe�a','VER');
insert into ciudades values(null,'Colonia Santa B�rbara (X)','VER');
insert into ciudades values(null,'El Higo','VER');
insert into ciudades values(null,'Pajapan','VER');
insert into ciudades values(null,'Mundo Nuevo (Ct)','VER');
insert into ciudades values(null,'Coyutla','VER');
insert into ciudades values(null,'Jacarandas�(X)','VER');
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
insert into ciudades values(null,'Chinameca�(M)','VER');
insert into ciudades values(null,'Tuzamapan (X)','VER');
insert into ciudades values(null,'Paso de Ovejas','VER');
insert into ciudades values(null,'San Marcos de Le�n','VER');
insert into ciudades values(null,'Xocotla','VER');
insert into ciudades values(null,'Acultzingo','VER');
insert into ciudades values(null,'Monte Blanco (Cr)','VER');
insert into ciudades values(null,'Zongolica','VER');
insert into ciudades values(null,'Coacotla','VER');
insert into ciudades values(null,'Coacoatzintla','VER');
insert into ciudades values(null,'Villa Azueta','VER');
insert into ciudades values(null,'Ixhuatl�n del Caf�','VER');
insert into ciudades values(null,'Lomas Verdes (X)','VER');
insert into ciudades values(null,'San Rafael','VER');
insert into ciudades values(null,'Hidalgo (T)','VER');
insert into ciudades values(null,'Colinas de Santa Fe (V)','VER');
insert into ciudades values(null,'Cabezas','VER');
insert into ciudades values(null,'Guadalupe Victoria�(X)','VER');
insert into ciudades values(null,'Juan D�az Covarrubias','VER');
insert into ciudades values(null,'Mecayapan','VER');
insert into ciudades values(null,'Fraccionamiento Arboledas San Ram�n (V)','VER');
insert into ciudades values(null,'Ant�n Lizardo�(V)','VER');
insert into ciudades values(null,'Agua Dulce (P)','VER');
insert into ciudades values(null,'Soconusco�(A)','VER');
insert into ciudades values(null,'Emilio Carranza','VER');
insert into ciudades values(null,'Yanga�(Cr)','VER');
insert into ciudades values(null,'Pe�uela (Cr)','VER');
insert into ciudades values(null,'Tezonapa','VER');
insert into ciudades values(null,'Chinampa de Gorostiza','VER');
insert into ciudades values(null,'Manlio Fabio Altamirano','VER');
insert into ciudades values(null,'�rsulo Galv�n','VER');
insert into ciudades values(null,'Huayacocotla','VER');
insert into ciudades values(null,'Paso del Toro (V)','VER');
insert into ciudades values(null,'Mecatl�n','VER');
insert into ciudades values(null,'Tepetzintla','VER');
insert into ciudades values(null,'El Castillo (X)','VER');
insert into ciudades values(null,'Soteapan','VER');
insert into ciudades values(null,'Tamiahua','VER');
insert into ciudades values(null,'Tamal�n','VER');
insert into ciudades values(null,'Primero de Mayo (Los Mangos) (T)','VER');
insert into ciudades values(null,'Comoapan','VER');
insert into ciudades values(null,'Citlalt�pec','VER');

#end region
#region yucatan
insert into ciudades values(null,'Abal�','YUC');
insert into ciudades values(null,'Acanc�h','YUC');
insert into ciudades values(null,'Akil','YUC');
insert into ciudades values(null,'Baca','YUC');
insert into ciudades values(null,'Bokob�','YUC');
insert into ciudades values(null,'Buctzotz','YUC');
insert into ciudades values(null,'Cacalch�n','YUC');
insert into ciudades values(null,'Calotmul','YUC');
insert into ciudades values(null,'Cansahcab','YUC');
insert into ciudades values(null,'Cantamayec','YUC');
insert into ciudades values(null,'Celest�n','YUC');
insert into ciudades values(null,'Cenotillo','YUC');
insert into ciudades values(null,'Conkal','YUC');
insert into ciudades values(null,'Cuncunul','YUC');
insert into ciudades values(null,'Cuzam�','YUC');
insert into ciudades values(null,'Chacsink�n','YUC');
insert into ciudades values(null,'Chankom','YUC');
insert into ciudades values(null,'Chapab','YUC');
insert into ciudades values(null,'Chemax','YUC');
insert into ciudades values(null,'Chicxulub Pueblo','YUC');
insert into ciudades values(null,'Chichimil�','YUC');
insert into ciudades values(null,'Chikindzonot','YUC');
insert into ciudades values(null,'Chochol�','YUC');
insert into ciudades values(null,'Chumayel','YUC');
insert into ciudades values(null,'Dzan','YUC');
insert into ciudades values(null,'Dzemul','YUC');
insert into ciudades values(null,'Dzidzant�n','YUC');
insert into ciudades values(null,'Dzilam de Bravo','YUC');
insert into ciudades values(null,'Dzilam Gonz�lez','YUC');
insert into ciudades values(null,'Dzit�s','YUC');
insert into ciudades values(null,'Dzoncauich','YUC');
insert into ciudades values(null,'Espita','YUC');
insert into ciudades values(null,'Halach�','YUC');
insert into ciudades values(null,'Hocab�','YUC');
insert into ciudades values(null,'Hoct�n','YUC');
insert into ciudades values(null,'Hom�n','YUC');
insert into ciudades values(null,'Huh�','YUC');
insert into ciudades values(null,'Hunucm�','YUC');
insert into ciudades values(null,'Ixil','YUC');
insert into ciudades values(null,'Izamal','YUC');
insert into ciudades values(null,'Kanas�n','YUC');
insert into ciudades values(null,'Kantunil','YUC');
insert into ciudades values(null,'Kaua','YUC');
insert into ciudades values(null,'Kinchil','YUC');
insert into ciudades values(null,'Kopom�','YUC');
insert into ciudades values(null,'Mama','YUC');
insert into ciudades values(null,'Man�','YUC');
insert into ciudades values(null,'Maxcan�','YUC');
insert into ciudades values(null,'Mayap�n','YUC');
insert into ciudades values(null,'M�rida','YUC');
insert into ciudades values(null,'Mococh�','YUC');
insert into ciudades values(null,'Motul','YUC');
insert into ciudades values(null,'Muna','YUC');
insert into ciudades values(null,'Muxupip','YUC');
insert into ciudades values(null,'Opich�n','YUC');
insert into ciudades values(null,'Oxkutzcab','YUC');
insert into ciudades values(null,'Panab�','YUC');
insert into ciudades values(null,'Peto','YUC');
insert into ciudades values(null,'Progreso','YUC');
insert into ciudades values(null,'Quintana Roo','YUC');
insert into ciudades values(null,'R�o Lagartos','YUC');
insert into ciudades values(null,'Sacalum','YUC');
insert into ciudades values(null,'Samahil','YUC');
insert into ciudades values(null,'Sanahcat','YUC');
insert into ciudades values(null,'San Felipe','YUC');
insert into ciudades values(null,'Santa Elena','YUC');
insert into ciudades values(null,'Sey�','YUC');
insert into ciudades values(null,'Sinanch�','YUC');
insert into ciudades values(null,'Sotuta','YUC');
insert into ciudades values(null,'Sucil�','YUC');
insert into ciudades values(null,'Sudzal','YUC');
insert into ciudades values(null,'Suma de Hidalgo','YUC');
insert into ciudades values(null,'Tahdzi�','YUC');
insert into ciudades values(null,'Tahmek','YUC');
insert into ciudades values(null,'Teabo','YUC');
insert into ciudades values(null,'Tec�h','YUC');
insert into ciudades values(null,'Tekal de Venegas','YUC');
insert into ciudades values(null,'Tekant�','YUC');
insert into ciudades values(null,'Tekax','YUC');
insert into ciudades values(null,'Tekit','YUC');
insert into ciudades values(null,'Tekom','YUC');
insert into ciudades values(null,'Telchac Pueblo','YUC');
insert into ciudades values(null,'Telchac Puerto','YUC');
insert into ciudades values(null,'Temax','YUC');
insert into ciudades values(null,'Temoz�n','YUC');
insert into ciudades values(null,'Tepak�n','YUC');
insert into ciudades values(null,'Tetiz','YUC');
insert into ciudades values(null,'Teya','YUC');
insert into ciudades values(null,'Ticul','YUC');
insert into ciudades values(null,'Timucuy','YUC');
insert into ciudades values(null,'Tinum','YUC');
insert into ciudades values(null,'Tixcacalcupul','YUC');
insert into ciudades values(null,'Tixkokob','YUC');
insert into ciudades values(null,'Tixm�huac','YUC');
insert into ciudades values(null,'Tixp�hual','YUC');
insert into ciudades values(null,'Tizim�n','YUC');
insert into ciudades values(null,'Tunk�s','YUC');
insert into ciudades values(null,'Tzucacab','YUC');
insert into ciudades values(null,'Uayma','YUC');
insert into ciudades values(null,'Uc�','YUC');
insert into ciudades values(null,'Um�n','YUC');
insert into ciudades values(null,'Valladolid','YUC');
insert into ciudades values(null,'Xocchel','YUC');
insert into ciudades values(null,'Yaxcab�','YUC');
insert into ciudades values(null,'Yaxkukul','YUC');
insert into ciudades values(null,'Yoba�n','YUC');

#end region
#region zacatecas
insert into ciudades values(null,'Apulco','ZAC');
insert into ciudades values(null,'Atolinga','ZAC');
insert into ciudades values(null,'Benito Ju�rez','ZAC');
insert into ciudades values(null,'Calera','ZAC');
insert into ciudades values(null,'Ca�itas de Felipe Pescador','ZAC');
insert into ciudades values(null,'Concepci�n del Oro','ZAC');
insert into ciudades values(null,'Cuauht�moc','ZAC');
insert into ciudades values(null,'Chalchihuites','ZAC');
insert into ciudades values(null,'El Plateado de Joaqu�n Amaro','ZAC');
insert into ciudades values(null,'El Salvador','ZAC');
insert into ciudades values(null,'Fresnillo','ZAC');
insert into ciudades values(null,'Genaro Codina','ZAC');
insert into ciudades values(null,'General Enrique Estrada','ZAC');
insert into ciudades values(null,'General Francisco R. Murgu�a','ZAC');
insert into ciudades values(null,'General P�nfilo Natera','ZAC');
insert into ciudades values(null,'Guadalupe','ZAC');
insert into ciudades values(null,'Huanusco','ZAC');
insert into ciudades values(null,'Jalpa','ZAC');
insert into ciudades values(null,'Jer�z','ZAC');
insert into ciudades values(null,'Jim�nez del Teul','ZAC');
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
insert into ciudades values(null,'Nochistl�n de Mej�a','ZAC');
insert into ciudades values(null,'Noria de �ngeles','ZAC');
insert into ciudades values(null,'Ojocaliente','ZAC');
insert into ciudades values(null,'P�nuco','ZAC');
insert into ciudades values(null,'Pinos','ZAC');
insert into ciudades values(null,'R�o Grande','ZAC');
insert into ciudades values(null,'Santa Mar�a de la Paz','ZAC');
insert into ciudades values(null,'Sa�n Alto','ZAC');
insert into ciudades values(null,'Sombrerete','ZAC');
insert into ciudades values(null,'Susticac�n','ZAC');
insert into ciudades values(null,'Tabasco','ZAC');
insert into ciudades values(null,'Tepechitl�n','ZAC');
insert into ciudades values(null,'Tepetongo','ZAC');
insert into ciudades values(null,'Te�l de Gonz�lez Ortega','ZAC');
insert into ciudades values(null,'Tlaltenango de S�nchez Rom�n','ZAC');
insert into ciudades values(null,'Trancoso','ZAC');
insert into ciudades values(null,'Trinidad Garc�a de la Cadena','ZAC');
insert into ciudades values(null,'Valpara�so','ZAC');
insert into ciudades values(null,'Vetagrande','ZAC');
insert into ciudades values(null,'Villa de Cos','ZAC');
insert into ciudades values(null,'Villa Garc�a','ZAC');
insert into ciudades values(null,'Villa Gonz�lez Ortega','ZAC');
insert into ciudades values(null,'Villa Hidalgo','ZAC');
insert into ciudades values(null,'Villanueva','ZAC');
insert into ciudades values(null,'Zacatecas','ZAC');

#end region
#end region

