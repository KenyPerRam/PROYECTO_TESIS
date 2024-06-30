

use  centro_maternoinfantil;

-- Desactivar modo seguro
SET SQL_SAFE_UPDATES = 0;

-- Volver a activar el modo seguro 
SET SQL_SAFE_UPDATES = 1;

-- --------------------------------------------------
drop table paciente;
drop table reservarCita;

CREATE TABLE paciente (
    id_pc INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    usuario VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    tipoDocumento VARCHAR(50) NOT NULL,
    numeroDocumento VARCHAR(50) NOT NULL UNIQUE,
    fechaNacimiento DATE NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(255) NOT NULL
);



CREATE TABLE reservarCita (
    id_rc INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rc VARCHAR(100),
    apellido_rc VARCHAR(100),
    dni_rc VARCHAR(20),
    fecha_nacimiento_rc DATE,
    numero_celular_rc VARCHAR(10),
    turno_rc VARCHAR(20),
    especialidad_rc VARCHAR(100),
    medico_rc VARCHAR(100),
    fecha_cita_rc DATE,
    detalle_rc VARCHAR(300),
    estado_rc VARCHAR(20),
    paciente_id INT,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id_pc)
);

INSERT INTO reservarCita (nombre_rc, apellido_rc, dni_rc, fecha_nacimiento_rc, numero_celular_rc, especialidad_rc, turno_rc, medico_rc, fecha_cita_rc, detalle_rc, estado_rc,paciente_id)
VALUES 
    ('María', 'Rodríguez', '98765432', '1995-10-25', '654987321', 'Ginecología', 'Mañana', 'Dr. González', '2024-07-03', 'Consulta de seguimiento', 'Pendiente','1');



select * from paciente;

-- eliminar todos los registros 
DELETE FROM paciente;

select p.nombre , p.apellido , p.numeroDocumento 
, p.fechaNacimiento ,p.telefono
 from paciente p 
 where p.usuario = 'brequejo';

select * from reservarCita;
select * from paciente;

-- insersion datos tabla reserva cita

insert into reservarCita (nombre_rc, apellido_rc, dni_rc, fecha_nacimiento_rc, numero_celular_rc, especialidad_rc, turno_rc, medico_rc, fecha_cita_rc, detalle_rc, estado_rc)
VALUES 
    ('María', 'Rodríguez', '98765432', '1995-10-25', '654987321', 'Ginecología', 'Mañana', 'Dr. González', '2024-07-03', 'Consulta de seguimiento', 'Pendiente');

-- eliminar todos los registros 
delete from  reservarCita ;
delete from paciente;

select * from reservarCita;
select * from paciente;
-- eliminar un registro 

delete from reservarCita rc 
where rc.estado_rc = 'Pendiente'
and rc.id_rc = '21';


-- modificar estado 

update ReservarCita rc
set rc.estado_rc = 'Atendido'
WHERE rc.id_rc = '21';



select * from reservarCita;
select * from paciente;
-- consulta para el historial de citas del paciente: 
   
   select rc.nombre_rc, rc.apellido_rc, rc.dni_rc, rc.turno_rc,
   rc.especialidad_rc, rc.medico_rc, rc.fecha_cita_rc, rc.estado_rc
from reservarCita rc inner join paciente p 
on rc.paciente_id = p.id_pc
where (rc.nombre_rc like '%Gine%'
   or rc.apellido_rc like '%Gine%'
   or rc.especialidad_rc like '%Gine%')
   and (case when '%Atendido%' = '' then true
   else rc.estado_rc like '%Atendido%' end);



  select rc.id_rc , rc.nombre_rc, rc.apellido_rc, rc.dni_rc, rc.turno_rc,
   rc.especialidad_rc, rc.medico_rc, rc.fecha_cita_rc, rc.estado_rc
from reservarCita rc inner join paciente p 
on rc.paciente_id = p.id_pc
where (rc.nombre_rc like '%%'
   or rc.apellido_rc like '%%'
   or rc.especialidad_rc like '%%')
   and (case when '%pendiente%' = '' then true
   else rc.estado_rc like '%pendiente%' end)
   and p.usuario = 'brequejo';


select * from paciente;



select rc.nombre_rc , rc.apellido_rc, rc.dni_rc , rc.turno_rc , rc.especialidad_rc 
, rc.medico_rc,rc.fecha_cita_rc, rc.estado_rc from reservarCita rc inner join paciente p 
on p.id_pc =  rc.paciente_id where p.usuario = 'brequejo';

-- ---------------------------
drop table Especialidades;

select * from Especialidades;

CREATE TABLE Especialidades (
    id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_especialidad VARCHAR(100) NOT NULL,
    descripcion varchar(400)
);

delete from Especialidades;

select e.nombre_especialidad , e.descripcion from Especialidades e;

select e.id_especialidad , e.nombre_especialidad from Especialidades e; 

select e.nombre_especialidad from especialidades e  ;

insert into Especialidades (nombre_especialidad, descripcion) values
('Medicina General', 'Constituye el primer nivel de atención médica para la prevención de  enfermedades crónicas.'),
('Pediatria', 'Se dedica a la atención médica de los niños y el tratamiento de sus enfermedades en el día a día.'),
('Cardiologia', 'Se especializa en el diagnóstico y tratamiento de las enfermedades del corazón y del sistema circulatorio.'),
('Dermatologia', 'Se encarga del diagnóstico y tratamiento de enfermedades que afectan a la piel, cabello y uñas.'),
('Ginecologia', 'Se especializa en la salud del sistema reproductor femenino y el tratamiento de sus enfermedades.'),
('Traumatologia', 'Se dedica al tratamiento de las lesiones del aparato locomotor, especialmente causadas por traumatismos.'),
('Neurologia', 'Se especializa en el diagnóstico y tratamiento de enfermedades del sistema nervioso central y periférico.'),
('Psiquiatria', 'Se dedica al diagnóstico, tratamiento y prevención de los trastornos mentales que afectan al paciente.'),
('Oncologia', 'Se especializa en el estudio y tratamiento del cáncer y los sintomas que este produce durante el proceso.'),
('Oftalmologia', 'Se encarga del diagnóstico y tratamiento de las enfermedades que afectan a los ojos de humano.'),
('Otorrinolaringologia', 'Se dedica al tratamiento de las enfermedades que afectan al oído, nariz y garganta.'),
('Urologia', 'Se especializa en el diagnóstico de enfermedades del sistema urinario y del aparato reproductor.'),
('Endocrinologia', 'Se encarga del estudio y tratamiento de las enfermedades hormonales y del metabolismo.'),
('Gastroenterologia', 'Se especializa en el diagnóstico y tratamiento de las enfermedades del aparato digestivo.'),
('Neumologia', 'Se dedica al estudio y tratamiento y la prevención  de las enfermedades del sistema respiratorio.'),
('Psicologia', 'Se dedica al estudio y tratamiento de los procesos mentales y del comportamiento del hombre día a día.');


drop table Doctor;

select * from Doctor;

create table Doctor (
    id_doctor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100),
    especialidad_id INT,
    FOREIGN KEY (especialidad_id) REFERENCES Especialidades(id_especialidad)
);

delete from Doctor;


select * from Doctor;



-- Insertar registros de doctores del  Materno Infantil 

-- Insertar doctores con especialidades específicas y nombres ficticios con correos electrónicos únicos
INSERT INTO Doctor (nombre, apellido, telefono, correo, especialidad_id)
VALUES
    ('Juan Alberto', 'Gonzalez Gomez', '993456789', 'juan_gonzalez@gmail.com', 1),
    ('Maria Alejandra', 'Martinez Gómez', '992345678', 'maria_martinez@gmail.com', 1),
    ('Pedro Jose', 'Sanchez Martinez', '991234567', 'pedro_sanchez@gmail.com', 1),
    ('Ana Sofia', 'Lopez Rodríguez', '999456789', 'ana_lopez@gmail.com', 1),

    ('Luis Miguel', 'Rodriguez Perez', '994567890', 'luis_rodriguez@gmail.com', 2),
    ('Laura Isabel', 'Gomez Perez', '995678901', 'laura_gomez@gmail.com', 2),
    ('Carlos Andres', 'Diaz Hernandez', '996789012', 'carlos_diaz@gmail.com', 2),
    ('Elena Carolina', 'Fernandez Diaz', '997890123', 'elena_fernandez@gmail.com', 2),

    ('Jose Antonio', 'Perez Martinez', '998901234', 'jose_perez@gmail.com', 3),
    ('Silvia Patricia', 'Ruiz Sanchez', '999012345', 'silvia_ruiz@gmail.com', 3),
    ('Manuel Alejandro', 'Jimenez Perez', '992345678', 'manuel_jimenez@gmail.com', 3),
    ('Carmen Maria', 'Torres Gomez', '993456789', 'carmen_torres@gmail.com', 3),

    ('Antonio David', 'Suarez Rodriguez', '994567890', 'antonio_suarez@gmail.com', 4),
    ('Isabel Cristina', 'Navarro Martinez', '995678901', 'isabel_navarro@gmail.com', 4),
    ('Daniel Eduardo', 'Morales Sanchez', '996789012', 'daniel_morales@gmail.com', 4),
    ('Sara Gabriela', 'Castro Gomez', '997890123', 'sara_castro@gmail.com', 4),

    ('Jorge Alberto', 'Ortega Rodriguez', '998901234', 'jorge_ortega@gmail.com', 5),
    ('Paula Alejandra', 'Garcia Perez', '999012345', 'paula_garcia@gmail.com', 5),
    ('Roberto Francisco', 'Hernandez Gomez', '992345678', 'roberto_hernandez@gmail.com', 5),
    ('Beatriz Elena', 'Molina Martinez', '993456789', 'beatriz_molina@gmail.com', 5),

    ('Raul Alejandro', 'Castillo Sanchez', '994567890', 'raul_castillo@gmail.com', 6),
    ('Patricia Andrea', 'Iglesias Rodriguez', '995678901', 'patricia_iglesias@gmail.com', 6),
    ('Diego Javier', 'Vargas Gomez', '996789012', 'diego_vargas@gmail.com', 6),
    ('Natalia Isabel', 'Delgado Perez', '997890123', 'natalia_delgado@gmail.com', 6),

    ('Santiago Eduardo', 'Cabrera Martinez', '998901234', 'santiago_cabrera@gmail.com', 7),
    ('Valeria Alejandra', 'Santos Sanchez', '999012345', 'valeria_santos@gmail.com', 7),
    ('Angel Gabriel', 'Pascual Gomez', '992345678', 'angel_pascual@gmail.com', 7),
    ('Alejandra María', 'Ortiz Rodríguez', '993456789', 'alejandra_ortiz@gmail.com', 7),

    ('Fernando José', 'Reyes Perez', '994567890', 'fernando_reyes@gmail.com', 8),
    ('Lucia Isabel', 'Esteban Gomez', '995678901', 'lucia_esteban@gmail.com', 8),
    ('Gonzalo Alejandro', 'Gallardo Martinez', '996789012', 'gonzalo_gallardo@gmail.com', 8),
    ('Victoria Carolina', 'Marquez Sanchez', '997890123', 'victoria_marquez@gmail.com', 8),

    ('Ricardo Javier', 'Perez Martinez', '998901234', 'ricardo_perez@gmail.com', 9),
    ('Camila Valentina', 'Marquez Gomez', '999012345', 'camila_12@gmail.com', 9),
    ('Julio Andres', 'Herrera Rodriguez', '992345678', 'julio_herrera@gmail.com', 9),
    ('Marta Alejandra', 'Serrano Perez', '993456789', 'marta_serrano@gmail.com', 9),

    ('Renata Sofía', 'Medina Gomez', '994567890', 'renata_medina@gmail.com', 10),
    ('Mateo Alejandro', 'Paz Martinez', '995678901', 'mateo_paz@gmail.com', 10),
    ('Esteban Felipe', 'Vega Sanchez', '996789012', 'esteban_vega@gmail.com', 10),
    ('Bianca Valentina', 'Lopez Gómez', '997890123', 'bianca_lopez@gmail.com', 10),

    ('Diego Sebastian', 'Soto Rodriguez', '998901234', 'diego_soto@gmail.com', 11),
    ('Daniela Gabriela', 'Cruz Perez', '999012345', 'daniela_cruz@gmail.com', 11),
    ('Gabriel Andres', 'Martell Gomez', '992345678', 'gabriel_martell@gmail.com', 11),
    ('Adriana Valentina', 'Guerra Martínez', '993456789', 'adriana_guerra@gmail.com', 11),

    ('Cristian Alejandro', 'Mendez Sanchez', '994567890', 'cristian_mendez@gmail.com', 12),
    ('Valentina Gabriela', 'Alonso Gomez', '995678901', 'valentina_alonso@gmail.com', 12),
    ('Javier Andres', 'Góngora Martinez', '996789012', 'javier_gongora@gmail.com', 12),
    ('Carolina Sofia', 'Ramírez Sanchez', '997890123', 'carolina_ramirez@gmail.com', 12),

    ('Lucas Sebastian', 'Orozco Gomez', '998901234', 'lucas_orozco@gmail.com', 13),
    ('Elena Victoria', 'Sánchez Martinez', '999012345', 'elena_sanchez@gmail.com', 13),
    ('Martin Eduardo', 'Diaz Rodriguez', '992345678', 'martin_diaz@gmail.com', 13),
    ('Camilo Alejandro', 'Ferrer Gomez', '993456789', 'camilo_ferrer@gmail.com', 13),

    ('Sofia Valentina', 'Rios Perez', '994567890', 'sofia_rios@gmail.com', 14),
    ('Matias Andres', 'Rojas Gomez', '995678901', 'matias_rojas@gmail.com', 14),
    ('Antonia Isabel', 'Silva Martinez', '996789012', 'antonia_silva@gmail.com', 14),
    ('Maximiliano Jose', 'Cárdenas Sanchez', '997890123', 'maximiliano_cardenas@gmail.com', 14),

    ('Josefina Alejandra', 'Moya Gomez', '998901234', 'josefina_moya@gmail.com', 15),
    ('Sebastian Alejandro', 'Fuentes Perez', '999012345', 'sebastian_fuentes@gmail.com', 15),
    ('Ignacio Alejandro', 'Luna Martinez', '992345678', 'ignacio_luna@gmail.com', 15),
    ('Isabella Maria', 'Cortés Sanchez', '993456789', 'isabella_cortes@gmail.com', 15),

    ('Emilio Andres', 'Guerrero Gomez', '994567890', 'emilio_guerrero@gmail.com', 16),
    ('Rosa Alejandra', 'Olivares Perez', '995678901', 'rosa_olivares@gmail.com', 16),
    ('Felipe Alejandro', 'Avila Martinez', '996789012', 'felipe_avila@gmail.com', 16),
    ('Valeria Sofia', 'Ponce Sanchez', '997890123', 'valeria_ponce@gmail.com', 16);
    
    -- consulta para mostrar en la vista staf medico 
    
    select d.nombre, d.apellido,d.telefono, d.correo ,
    e.nombre_especialidad especialidad from Doctor d
    inner join Especialidades e 
    on d.especialidad_id = e.id_especialidad;
    
    -- --------------------
    -- tabla horarios atencion 
    
    select * from horarios;
    drop table horarios;
    
    CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    doctor_id INT,
    especialidad_id INT,
    dia_semana VARCHAR(20),
    turno VARCHAR(10),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(id_doctor),
    FOREIGN KEY (especialidad_id) REFERENCES Especialidades(id_especialidad)
);


-- registros

-- especialidad 1

delete from Horarios;

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(1, 1, 'Lunes', 'Dia'),
(1, 1, 'Miércoles', 'Dia'),
(1, 1, 'Viernes', 'Dia'),
(2, 1, 'Lunes', 'Dia'),
(2, 1, 'Miércoles', 'Dia'),
(2, 1, 'Viernes', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(3, 1, 'Lunes', 'Tarde'),
(3, 1, 'Miércoles', 'Tarde'),
(3, 1, 'Viernes', 'Tarde'),
(4, 1, 'Lunes', 'Tarde'),
(4, 1, 'Miércoles', 'Tarde'),
(4, 1, 'Viernes', 'Tarde');

-- especialidad 2

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(5, 2, 'Martes', 'Dia'),
(5, 2, 'Jueves', 'Dia'),
(5, 2, 'Sábado', 'Dia'),
(6, 2, 'Martes', 'Dia'),
(6, 2, 'Jueves', 'Dia'),
(6, 2, 'Sábado', 'Dia');


INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(7, 2, 'Martes', 'Tarde'),
(7, 2, 'Jueves', 'Tarde'),
(7, 2, 'Sábado', 'Tarde'),
(8, 2, 'Martes', 'Tarde'),
(8, 2, 'Jueves', 'Tarde'),
(8, 2, 'Sábado', 'Tarde');

-- especialidad 3 

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(9, 3, 'Lunes', 'Dia'),
(9, 3, 'Miércoles', 'Dia'),
(9, 3, 'Viernes', 'Dia'),
(10, 3, 'Lunes', 'Dia'),
(10, 3, 'Miércoles', 'Dia'),
(10, 3, 'Viernes', 'Dia');


INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(11, 3, 'Lunes', 'Tarde'),
(11, 3, 'Miércoles', 'Tarde'),
(11, 3, 'Viernes', 'Tarde'),
(12, 3, 'Lunes', 'Tarde'),
(12, 3, 'Miércoles', 'Tarde'),
(12, 3, 'Viernes', 'Tarde');

-- especialidad 4 

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(13, 4, 'Martes', 'Dia'),
(13, 4, 'Jueves', 'Dia'),
(13, 4, 'Sábado', 'Dia'),
(14, 4, 'Martes', 'Dia'),
(14, 4, 'Jueves', 'Dia'),
(14, 4, 'Sábado', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(15, 4, 'Martes', 'Tarde'),
(15, 4, 'Jueves', 'Tarde'),
(15, 4, 'Sábado', 'Tarde'),
(16, 4, 'Martes', 'Tarde'),
(16, 4, 'Jueves', 'Tarde'),
(16, 4, 'Sábado', 'Tarde');

-- especialidad 5 

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(17, 5, 'Lunes', 'Dia'),
(17, 5, 'Miércoles', 'Dia'),
(17, 5, 'Viernes', 'Dia'),
(18, 5, 'Lunes', 'Dia'),
(18, 5, 'Miércoles', 'Dia'),
(18, 5, 'Viernes', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(19, 5, 'Lunes', 'Tarde'),
(19, 5, 'Miércoles', 'Tarde'),
(19, 5, 'Viernes', 'Tarde'),
(20, 5, 'Lunes', 'Tarde'),
(20, 5, 'Miércoles', 'Tarde'),
(20, 5, 'Viernes', 'Tarde');

-- especialidad 6

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(21, 6, 'Martes', 'Dia'),
(21, 6, 'Jueves', 'Dia'),
(21, 6, 'Sábado', 'Dia'),
(22, 6, 'Martes', 'Dia'),
(22, 6, 'Jueves', 'Dia'),
(22, 6, 'Sábado', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(23, 6, 'Martes', 'Tarde'),
(23, 6, 'Jueves', 'Tarde'),
(23, 6, 'Sábado', 'Tarde'),
(24, 6, 'Martes', 'Tarde'),
(24, 6, 'Jueves', 'Tarde'),
(24, 6, 'Sábado', 'Tarde');

-- esopecialidad 7 

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(25, 7, 'Lunes', 'Dia'),
(25, 7, 'Miércoles', 'Dia'),
(25, 7, 'Viernes', 'Dia'),
(26, 7, 'Lunes', 'Dia'),
(26, 7, 'Miércoles', 'Dia'),
(26, 7, 'Viernes', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(27, 7, 'Lunes', 'Tarde'),
(27, 7, 'Miércoles', 'Tarde'),
(27, 7, 'Viernes', 'Tarde'),
(28, 7, 'Lunes', 'Tarde'),
(28, 7, 'Miércoles', 'Tarde'),
(28, 7, 'Viernes', 'Tarde');


-- especialidad 8

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(29, 8, 'Martes', 'Dia'),
(29, 8, 'Jueves', 'Dia'),
(29, 8, 'Sábado', 'Dia'),
(30, 8, 'Martes', 'Dia'),
(30, 8, 'Jueves', 'Dia'),
(30, 8, 'Sábado', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(31, 8, 'Martes', 'Tarde'),
(31, 8, 'Jueves', 'Tarde'),
(31, 8, 'Sábado', 'Tarde'),
(32, 8, 'Martes', 'Tarde'),
(32, 8, 'Jueves', 'Tarde'),
(32, 8, 'Sábado', 'Tarde');

-- especialidad 9

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(33, 9, 'Lunes', 'Dia'),
(33, 9, 'Miércoles', 'Dia'),
(33, 9, 'Viernes', 'Dia'),
(34, 9, 'Lunes', 'Dia'),
(34, 9, 'Miércoles', 'Dia'),
(34, 9, 'Viernes', 'Dia');


INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(35, 9, 'Lunes', 'Tarde'),
(35, 9, 'Miércoles', 'Tarde'),
(35, 9, 'Viernes', 'Tarde'),
(36, 9, 'Lunes', 'Tarde'),
(36, 9, 'Miércoles', 'Tarde'),
(36, 9, 'Viernes', 'Tarde');

-- especialidad 9

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(37, 10, 'Martes', 'Dia'),
(37, 10, 'Jueves', 'Dia'),
(37, 10, 'Sábado', 'Dia'),
(38, 10, 'Martes', 'Dia'),
(38, 10, 'Jueves', 'Dia'),
(38, 10, 'Sábado', 'Dia');


INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(39, 10, 'Martes', 'Tarde'),
(39, 10, 'Jueves', 'Tarde'),
(39, 10, 'Sábado', 'Tarde'),
(40, 10, 'Martes', 'Tarde'),
(40, 10, 'Jueves', 'Tarde'),
(40, 10, 'Sábado', 'Tarde');

-- especialidad 10

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(37, 10, 'Martes', 'Dia'),
(37, 10, 'Jueves', 'Dia'),
(37, 10, 'Sábado', 'Dia'),
(38, 10, 'Martes', 'Dia'),
(38, 10, 'Jueves', 'Dia'),
(38, 10, 'Sábado', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(39, 10, 'Martes', 'Tarde'),
(39, 10, 'Jueves', 'Tarde'),
(39, 10, 'Sábado', 'Tarde'),
(40, 10, 'Martes', 'Tarde'),
(40, 10, 'Jueves', 'Tarde'),
(40, 10, 'Sábado', 'Tarde');

-- especialidad 11

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(41, 11, 'Lunes', 'Dia'),
(41, 11, 'Miércoles', 'Dia'),
(41, 11, 'Viernes', 'Dia'),
(42, 11, 'Lunes', 'Dia'),
(42, 11, 'Miércoles', 'Dia'),
(42, 11, 'Viernes', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(43, 11, 'Lunes', 'Tarde'),
(43, 11, 'Miércoles', 'Tarde'),
(43, 11, 'Viernes', 'Tarde'),
(44, 11, 'Lunes', 'Tarde'),
(44, 11, 'Miércoles', 'Tarde'),
(44, 11, 'Viernes', 'Tarde');


-- especialidad 12

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(45, 12, 'Martes', 'Dia'),
(45, 12, 'Jueves', 'Dia'),
(45, 12, 'Sábado', 'Dia'),
(46, 12, 'Martes', 'Dia'),
(46, 12, 'Jueves', 'Dia'),
(46, 12, 'Sábado', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(47, 12, 'Martes', 'Tarde'),
(47, 12, 'Jueves', 'Tarde'),
(47, 12, 'Sábado', 'Tarde'),
(48, 12, 'Martes', 'Tarde'),
(48, 12, 'Jueves', 'Tarde'),
(48, 12, 'Sábado', 'Tarde');


-- especialidad 13

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(49, 13, 'Lunes', 'Dia'),
(49, 13, 'Miércoles', 'Dia'),
(49, 13, 'Viernes', 'Dia'),
(50, 13, 'Lunes', 'Dia'),
(50, 13, 'Miércoles', 'Dia'),
(50, 13, 'Viernes', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(51, 13, 'Lunes', 'Tarde'),
(51, 13, 'Miércoles', 'Tarde'),
(51, 13, 'Viernes', 'Tarde'),
(52, 13, 'Lunes', 'Tarde'),
(52, 13, 'Miércoles', 'Tarde'),
(52, 13, 'Viernes', 'Tarde');


-- especialidad 14

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(53, 14, 'Martes', 'Dia'),
(53, 14, 'Jueves', 'Dia'),
(53, 14, 'Sábado', 'Dia'),
(54, 14, 'Martes', 'Dia'),
(54, 14, 'Jueves', 'Dia'),
(54, 14, 'Sábado', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(55, 14, 'Martes', 'Tarde'),
(55, 14, 'Jueves', 'Tarde'),
(55, 14, 'Sábado', 'Tarde'),
(56, 14, 'Martes', 'Tarde'),
(56, 14, 'Jueves', 'Tarde'),
(56, 14, 'Sábado', 'Tarde');


-- especialidad 15

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(57, 15, 'Lunes', 'Dia'),
(57, 15, 'Miércoles', 'Dia'),
(57, 15, 'Viernes', 'Dia'),
(58, 15, 'Lunes', 'Dia'),
(58, 15, 'Miércoles', 'Dia'),
(58, 15, 'Viernes', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(59, 15, 'Lunes', 'Tarde'),
(59, 15, 'Miércoles', 'Tarde'),
(59, 15, 'Viernes', 'Tarde'),
(60, 15, 'Lunes', 'Tarde'),
(60, 15, 'Miércoles', 'Tarde'),
(60, 15, 'Viernes', 'Tarde');


-- especialidad 16

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(61, 16, 'Martes', 'Dia'),
(61, 16, 'Jueves', 'Dia'),
(61, 16, 'Sábado', 'Dia'),
(62, 16, 'Martes', 'Dia'),
(62, 16, 'Jueves', 'Dia'),
(62, 16, 'Sábado', 'Dia');

INSERT INTO Horarios (doctor_id, especialidad_id, dia_semana, turno) VALUES
(63, 16, 'Martes', 'Tarde'),
(63, 16, 'Jueves', 'Tarde'),
(63, 16, 'Sábado', 'Tarde'),
(64, 16, 'Martes', 'Tarde'),
(64, 16, 'Jueves', 'Tarde'),
(64, 16, 'Sábado', 'Tarde');


select distinct concat(d.nombre, ' ', d.apellido) as nombre, h.turno as nombre_completo from doctor d 
inner join horarios h  on h.doctor_id = d.id_doctor where h.turno = 'Mañana';

select * from Horarios;
select * from especialidades;
select * from doctor;


select concat(d.nombre, ' ', d.apellido) as nombre_completo, 
e.nombre_especialidad as especialidad , h.dia_semana as dia_atencion, 
h.turno as turno_atencion from horarios h
inner join  doctor d on h.doctor_id = d.id_doctor
inner join especialidades e on h.especialidad_id = e.id_especialidad;

-- ---------------------------------------------------

  select distinct concat(d.nombre, ' ', d.apellido) nombre_Medico from horarios h
inner join  doctor d on h.doctor_id = d.id_doctor
inner join especialidades e on h.especialidad_id = e.id_especialidad
where h.turno = 'Dia'
and e.nombre_especialidad = 'Cardiologia';



  select rc.id_rc , rc.nombre_rc, rc.apellido_rc, rc.dni_rc, rc.turno_rc,
   rc.especialidad_rc, rc.medico_rc, rc.fecha_cita_rc, rc.estado_rc
from reservarCita rc  inner join paciente p 
on rc.paciente_id = p.id_pc 
where ( rc.medico_rc like '%Paula%'
   or rc.especialidad_rc like '%Paula%')
   and (case when '%%' = '' then true
   else rc.estado_rc like '%%' end)     and p.usuario = 'brequejo';
   
   select * from paciente;
   
   UPDATE paciente p SET p.password = '111'  WHERE p.usuario = 'kperez';
   
   
   -- modificar cita 
   
   delete from paciente;
   
   delete from ReservarCita;
   
   select * from paciente;
   
   select * from ReservarCita;
   
   update ReservarCita rc
set rc.estado_rc = 'Atendido'
WHERE rc.id_rc = '32';



INSERT INTO paciente (nombre, apellido,usuario, password, tipoDocumento, numeroDocumento, fechaNacimiento, telefono, correo) VALUES ('breitner' ,
'requejo' ,'brequejo', '123', 'dni', '955089778', '2000-10-16', '955089778','breitner@gmail.com');