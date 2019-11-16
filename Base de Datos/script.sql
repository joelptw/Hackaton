INSERT INTO `persona` (`nombre`, `apellidos`, `doc_identidad`, 
`telefono`, `f_nacimiento`,`direccion`, `email`, `carrera`,`creditos`,`foto`) VALUES
('Marco', 'Andrade Sequeiros', 71592674, 997758426, '15-05-96','Hunter','marco@ulasalle.edu.pe','Ingenieria de Software',0,''),
('Jonathan', 'Loarte Benites', 74856967, 974556789, '03-07-96','Miguel Grau','jonathan@ulasalle.edu.pe','Ingenieria de Software',0,''),
('Joel', 'Pinto Tapara', 85695789, 912357876, '18-11-97','Alto Selva Alegre','joel@ulasalle.edu.pe','Ingenieria de Software',0,''),
('Alex', 'Paredes Aranzamendi', 71283978, 978634537, '26-09-96','Cercado','alex@ulasalle.edu.pe','Ingenieria de Software',0,''),
('Edu', 'Huallanca Ponce', 71329617, 978967527, '12-03-98','Cerro Colorado','edu@ulasalle.edu.pe','Ingenieria de Software',0,''),
('Jeanpol', 'Quispe Torres', 74567936, 935786257, '28-01-97','Hunter','jeanpol@ulasalle.edu.pe','Ingenieria de Software',0,'');



INSERT INTO `evento` (`nombre`, `fecha`, `hora`, 
`lugar`, `ponente`, `imagen`, `tipo_evento_idtipo`, `creditaje`) VALUES
('Realidad Aumentada y Realidad Virtual: EL inicio de una nueva era tecnologica','Martes 19 de Noviembre','6:00 pm',
'Auditorio Hno. Ludolfo Ojeda','Medardo Delgado','',4,0.25),
('Ciudades Inteligentes y Realidad Aumentada','Lunes 18 de Noviembre','7:00 pm',
'Auditorio Hno. Ludolfo Ojeda','Guillermo Rafael Valdivia','',3,0.25),
('Pokemon Go: Vulnerabilidades y Problemas de la Empresa Creadora','Jueves 21 de Noviembre','4:00 pm','Auditorio Hno. Benito Campo Del Río','Jonathan Huamani','',5,0.25),
('Probabilistic Model Checking','Miercoles 20 de Noviembre','8:00 pm','Auditorio Hno. Ludolfo Ojeda','Yamilet Serrano','',6,0.25),
('El Pensamiento Algoritmico como Herramienta Transversal','Martes 19 de Noviembre','5:00 pm','Auditorio Hno. Benito Campo Del Río','Marisol Galarza','',7,0.25),
('Starting a research career and Production Software Engineering / Software engineering in google','Lunes 18 de Noviembre','5:00 pm','Auditorio Hno. Benito Campo Del Río','Jose Luis Sotomayor','',8,0.25),
('Expo-Job','Lunes 18 de Noviembre','10:00 am',
'Auditorio Hno. Ludolfo Ojeda','Marc Rivero','',5,0.25),
('Redacción Articulo Científico','Lunes 18 de Noviembre','7:00 pm',
'Auditorio Hno. Ludolfo Ojeda','Guillermo Rafael Valdivia','',3,0.25),
('Block Chain','Lunes 18 de Noviembre','1:00 pm',
'Auditorio Hno. Ludolfo Ojeda','Medardo Delgado','',3,0.25),
('Taller de Ajedrez','Lunes 18 de Noviembre','3:00 pm',
'Auditorio Hno. Benito Campo Del Río','Jorge Aponte','',3,0.25),
('Observatorio Jurídico','Lunes 18 de Noviembre','5:00 pm',
'Auditorio Hno. Benito Campo Del Río','Ricardo Ruano','',4,0),
('CLEI','Lunes 18 de Noviembre','6:00 pm',
'Auditorio Hno. Benito Campo Del Río','Roberto Vazquez','',3,0.25); 

INSERT INTO `rol` (`descripcion`, `creditaje`) VALUES
('Ponente','0.5'),
('Asistente','0.25'),
('Staff','0.75'); 

INSERT INTO `tipo_evento` (`idtipo`, `nombre`, `subtipo`, 
`descripcion`, `creditaje`) VALUES
('Academicos','Internos','Produccion intelectual (con o sin publicación)',
'0.50'),
('Academicos','Internos','Apoyo en organización de eventos',
'0.25'),
('Academicos','Internos','Eventos académicos (como participante o expositor)',
'0.25'),
('Academicos','Internos','Formar o integrar circulos de estudios, grupos o semilleros de investigación',
'0.50'),
('Academicos','Externos','Apoyo en organizacion de eventos',
'0.25'),
('Desarrollo Personal','Internos','Talleres que permitan el desarrollo',
'0.25'),
('Desarrollo Personal','Externos','Labores de Proyeccion Social',
'0.15'),
('Desarrollo Personal','Externos','Eventos organizados por otras instituciones avalados por la ULASALLE',
'0.25');