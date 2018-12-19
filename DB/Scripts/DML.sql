--------------------------------------------------------
--  File created - Wednesday-December-19-2018   
--------------------------------------------------------
REM INSERTING into DZ_DB.TBL_ALBUMES
SET DEFINE OFF;
Insert into DZ_DB.TBL_ALBUMES (CODIGO_ALBUM,NOMBRE_ALBUM,FECHA_LANZAMIENTO,COPIAS_VENDIDAS) values (1,'Rock',to_date('18-DEC-18','DD-MON-RR'),'200');
Insert into DZ_DB.TBL_ALBUMES (CODIGO_ALBUM,NOMBRE_ALBUM,FECHA_LANZAMIENTO,COPIAS_VENDIDAS) values (2,'Pop',to_date('06-DEC-18','DD-MON-RR'),'25');
Insert into DZ_DB.TBL_ALBUMES (CODIGO_ALBUM,NOMBRE_ALBUM,FECHA_LANZAMIENTO,COPIAS_VENDIDAS) values (3,'Regaeton',to_date('29-DEC-18','DD-MON-RR'),'1000');
Insert into DZ_DB.TBL_ALBUMES (CODIGO_ALBUM,NOMBRE_ALBUM,FECHA_LANZAMIENTO,COPIAS_VENDIDAS) values (4,'Bachata',to_date('23-DEC-18','DD-MON-RR'),'600');
Insert into DZ_DB.TBL_ALBUMES (CODIGO_ALBUM,NOMBRE_ALBUM,FECHA_LANZAMIENTO,COPIAS_VENDIDAS) values (5,'Hip Hop',to_date('19-DEC-18','DD-MON-RR'),'100');
REM INSERTING into DZ_DB.TBL_APLICACIONES
SET DEFINE OFF;
Insert into DZ_DB.TBL_APLICACIONES (CODIGO_APLICACION,CODIGO_DESARROLLADOR,DESCARGA_POR_USUARIO,PROMEDIO_APP,FECHA_LANZAMIENTO) values (1,1,20,3,to_date('22-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_APLICACIONES (CODIGO_APLICACION,CODIGO_DESARROLLADOR,DESCARGA_POR_USUARIO,PROMEDIO_APP,FECHA_LANZAMIENTO) values (2,2,45,4,to_date('18-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_APLICACIONES (CODIGO_APLICACION,CODIGO_DESARROLLADOR,DESCARGA_POR_USUARIO,PROMEDIO_APP,FECHA_LANZAMIENTO) values (3,1,621,5,to_date('06-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_APLICACIONES (CODIGO_APLICACION,CODIGO_DESARROLLADOR,DESCARGA_POR_USUARIO,PROMEDIO_APP,FECHA_LANZAMIENTO) values (4,1,45,4,to_date('27-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_APLICACIONES (CODIGO_APLICACION,CODIGO_DESARROLLADOR,DESCARGA_POR_USUARIO,PROMEDIO_APP,FECHA_LANZAMIENTO) values (5,3,86,4,to_date('03-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_APLICACIONES (CODIGO_APLICACION,CODIGO_DESARROLLADOR,DESCARGA_POR_USUARIO,PROMEDIO_APP,FECHA_LANZAMIENTO) values (6,2,1254,5,to_date('08-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_APPXUSUARIO
SET DEFINE OFF;
Insert into DZ_DB.TBL_APPXUSUARIO (CODIGO_USUARIO,CODIGO_APLICACION,FECHA_DESCARGO) values (1,2,to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_APPXUSUARIO (CODIGO_USUARIO,CODIGO_APLICACION,FECHA_DESCARGO) values (5,4,to_date('07-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_APPXUSUARIO (CODIGO_USUARIO,CODIGO_APLICACION,FECHA_DESCARGO) values (7,1,to_date('09-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_ARTISTA
SET DEFINE OFF;
Insert into DZ_DB.TBL_ARTISTA (CODIGO_ARTISTA,NOMBRE_ARTISTA,NACIONALIDAD,FECHA_NACIMIENTO,FECHA_MUERTE) values (1,'Mago de oz','España',to_date('18-DEC-18','DD-MON-RR'),to_date('18-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_ARTISTA (CODIGO_ARTISTA,NOMBRE_ARTISTA,NACIONALIDAD,FECHA_NACIMIENTO,FECHA_MUERTE) values (2,'Maluma','Puerto Rico',to_date('18-DEC-18','DD-MON-RR'),to_date('18-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_ARTISTA (CODIGO_ARTISTA,NOMBRE_ARTISTA,NACIONALIDAD,FECHA_NACIMIENTO,FECHA_MUERTE) values (3,'Aventura','Dominicano',to_date('18-DEC-18','DD-MON-RR'),to_date('18-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_ARTISTA (CODIGO_ARTISTA,NOMBRE_ARTISTA,NACIONALIDAD,FECHA_NACIMIENTO,FECHA_MUERTE) values (4,'Pink','Estadounidense',to_date('18-DEC-18','DD-MON-RR'),to_date('18-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_ARTISTASXCANCIONES
SET DEFINE OFF;
Insert into DZ_DB.TBL_ARTISTASXCANCIONES (CODIGO_ARTISTA,CODIGO_CANCION) values (1,1);
Insert into DZ_DB.TBL_ARTISTASXCANCIONES (CODIGO_ARTISTA,CODIGO_CANCION) values (2,2);
Insert into DZ_DB.TBL_ARTISTASXCANCIONES (CODIGO_ARTISTA,CODIGO_CANCION) values (2,3);
REM INSERTING into DZ_DB.TBL_CALIDADES
SET DEFINE OFF;
Insert into DZ_DB.TBL_CALIDADES (CODIGO_CALIDAD,NOMBRE_CALIDAD) values (1,'128Kbps');
Insert into DZ_DB.TBL_CALIDADES (CODIGO_CALIDAD,NOMBRE_CALIDAD) values (2,'192Kbps');
Insert into DZ_DB.TBL_CALIDADES (CODIGO_CALIDAD,NOMBRE_CALIDAD) values (3,'FLAC');
REM INSERTING into DZ_DB.TBL_CALIDADESXCONCIONES
SET DEFINE OFF;
Insert into DZ_DB.TBL_CALIDADESXCONCIONES (CODIGO_CALIDAD,CODIGO_CANCION,CODIGO_MP3) values (1,1,1);
Insert into DZ_DB.TBL_CALIDADESXCONCIONES (CODIGO_CALIDAD,CODIGO_CANCION,CODIGO_MP3) values (2,2,1);
Insert into DZ_DB.TBL_CALIDADESXCONCIONES (CODIGO_CALIDAD,CODIGO_CANCION,CODIGO_MP3) values (3,1,1);
REM INSERTING into DZ_DB.TBL_CANCIONES
SET DEFINE OFF;
Insert into DZ_DB.TBL_CANCIONES (CODIGO_CANCION,CODIGO_ALBUM,CODIGO_GENERO_MUSICAL,NOMBRE_CANCION,DURACION,FECHA_LANZAMIENTO) values (1,1,1,'xxx','xx',to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_CANCIONES (CODIGO_CANCION,CODIGO_ALBUM,CODIGO_GENERO_MUSICAL,NOMBRE_CANCION,DURACION,FECHA_LANZAMIENTO) values (2,2,2,'xxx','xx',to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_CANCIONES (CODIGO_CANCION,CODIGO_ALBUM,CODIGO_GENERO_MUSICAL,NOMBRE_CANCION,DURACION,FECHA_LANZAMIENTO) values (3,1,1,'xxx','xx',to_date('19-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_CANCIONESXPLAYLIST
SET DEFINE OFF;
Insert into DZ_DB.TBL_CANCIONESXPLAYLIST (CODIGO_CANCION,CODIGO_PLAYLIST,FECHA_INSERCION) values (1,1,to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_CANCIONESXPLAYLIST (CODIGO_CANCION,CODIGO_PLAYLIST,FECHA_INSERCION) values (2,2,to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_CANCIONESXPLAYLIST (CODIGO_CANCION,CODIGO_PLAYLIST,FECHA_INSERCION) values (1,2,to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_CANCIONESXPLAYLIST (CODIGO_CANCION,CODIGO_PLAYLIST,FECHA_INSERCION) values (2,1,to_date('28-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_CANCIONESXPLAYLIST (CODIGO_CANCION,CODIGO_PLAYLIST,FECHA_INSERCION) values (1,3,to_date('28-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_COMENTARIOS
SET DEFINE OFF;
Insert into DZ_DB.TBL_COMENTARIOS (CODIGO_COMENTARIO,CODIGO_COMENTARIO_PADRE,CODIGO_PLAYLIST,CODIGO_USUARIO,CODIGO_ALBUM,CODIGO_APLICACION,FECHA_CREACION) values (1,null,2,5,1,2,to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_COMENTARIOS (CODIGO_COMENTARIO,CODIGO_COMENTARIO_PADRE,CODIGO_PLAYLIST,CODIGO_USUARIO,CODIGO_ALBUM,CODIGO_APLICACION,FECHA_CREACION) values (2,1,4,6,2,1,to_date('29-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_COMENTARIOS (CODIGO_COMENTARIO,CODIGO_COMENTARIO_PADRE,CODIGO_PLAYLIST,CODIGO_USUARIO,CODIGO_ALBUM,CODIGO_APLICACION,FECHA_CREACION) values (3,2,3,4,1,1,to_date('07-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_COMPARTIDOS
SET DEFINE OFF;
Insert into DZ_DB.TBL_COMPARTIDOS (CODIGO_COMPARTIDO,CODIGO_USUARIO,CODIGO_ALBUM,CODIGO_PLAYLIST,CODIGO_CANCION,CODIGO_APLICACION,FECHA_COMPARTIO) values (1,1,1,2,1,1,to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_COMPARTIDOS (CODIGO_COMPARTIDO,CODIGO_USUARIO,CODIGO_ALBUM,CODIGO_PLAYLIST,CODIGO_CANCION,CODIGO_APLICACION,FECHA_COMPARTIO) values (2,2,1,1,2,1,to_date('28-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_COMPARTIDOS (CODIGO_COMPARTIDO,CODIGO_USUARIO,CODIGO_ALBUM,CODIGO_PLAYLIST,CODIGO_CANCION,CODIGO_APLICACION,FECHA_COMPARTIO) values (3,5,2,1,2,1,to_date('24-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_DESARROLLADORES
SET DEFINE OFF;
Insert into DZ_DB.TBL_DESARROLLADORES (CODIGO_DESARROLLADOR,NOMBRE_DESARROLLADOR) values (1,'Juan');
Insert into DZ_DB.TBL_DESARROLLADORES (CODIGO_DESARROLLADOR,NOMBRE_DESARROLLADOR) values (2,'Pedro');
Insert into DZ_DB.TBL_DESARROLLADORES (CODIGO_DESARROLLADOR,NOMBRE_DESARROLLADOR) values (3,'Maria');
REM INSERTING into DZ_DB.TBL_ESTADOS_NOTI
SET DEFINE OFF;
Insert into DZ_DB.TBL_ESTADOS_NOTI (CODIGO_ESTADO_NOTI,NOMBRE_ESTADO_NOTI) values (1,'Pendiente');
Insert into DZ_DB.TBL_ESTADOS_NOTI (CODIGO_ESTADO_NOTI,NOMBRE_ESTADO_NOTI) values (2,'Visto');
REM INSERTING into DZ_DB.TBL_FAVORITOS
SET DEFINE OFF;
REM INSERTING into DZ_DB.TBL_GENEROS
SET DEFINE OFF;
Insert into DZ_DB.TBL_GENEROS (CODIGO_GENERO,NOMBRE_GENEROS,ABREBIATURA) values (1,'Masculino','M');
Insert into DZ_DB.TBL_GENEROS (CODIGO_GENERO,NOMBRE_GENEROS,ABREBIATURA) values (2,'Femenino','F');
Insert into DZ_DB.TBL_GENEROS (CODIGO_GENERO,NOMBRE_GENEROS,ABREBIATURA) values (3,'Otro','O');
REM INSERTING into DZ_DB.TBL_GENEROS_MUSICALES
SET DEFINE OFF;
Insert into DZ_DB.TBL_GENEROS_MUSICALES (CODIGO_GENERO_MUSICAL,NOMBRE_GENERO_MUSICAL) values (1,'Rock');
Insert into DZ_DB.TBL_GENEROS_MUSICALES (CODIGO_GENERO_MUSICAL,NOMBRE_GENERO_MUSICAL) values (2,'Pop');
Insert into DZ_DB.TBL_GENEROS_MUSICALES (CODIGO_GENERO_MUSICAL,NOMBRE_GENERO_MUSICAL) values (3,'Bachata');
Insert into DZ_DB.TBL_GENEROS_MUSICALES (CODIGO_GENERO_MUSICAL,NOMBRE_GENERO_MUSICAL) values (4,'Regaeton');
REM INSERTING into DZ_DB.TBL_LUGARES
SET DEFINE OFF;
Insert into DZ_DB.TBL_LUGARES (CODIGO_LUGAR,CODIGO_LUGAR_PADRE,CODIGO_TIPO_LUGAR,NOMBRE_LUGAR,LONGITUD,LATITUD,ABREVIATURA) values (1,null,1,'Tegucigalpa','12','20','TGU');
Insert into DZ_DB.TBL_LUGARES (CODIGO_LUGAR,CODIGO_LUGAR_PADRE,CODIGO_TIPO_LUGAR,NOMBRE_LUGAR,LONGITUD,LATITUD,ABREVIATURA) values (2,1,2,'Yoro','25','23','YR');
Insert into DZ_DB.TBL_LUGARES (CODIGO_LUGAR,CODIGO_LUGAR_PADRE,CODIGO_TIPO_LUGAR,NOMBRE_LUGAR,LONGITUD,LATITUD,ABREVIATURA) values (3,2,1,'Honduras','63','95','HND');
REM INSERTING into DZ_DB.TBL_MENSAJES
SET DEFINE OFF;
Insert into DZ_DB.TBL_MENSAJES (CODIGO_MENSAJE,CODIGO_USUARIO_EMISOR,CODIGO_USUARIO_RECEPTOR,FECHA_MENSAJE) values (1,1,5,to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_MENSAJES (CODIGO_MENSAJE,CODIGO_USUARIO_EMISOR,CODIGO_USUARIO_RECEPTOR,FECHA_MENSAJE) values (2,3,6,to_date('24-DEC-22','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_MP3
SET DEFINE OFF;
Insert into DZ_DB.TBL_MP3 (CODIGO_MP3,CODIGO_USUARIO,CODIGO_ALBUM,FECHA_SUBIDA) values (1,5,1,to_date('19-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_NOTIFICACIONES
SET DEFINE OFF;
Insert into DZ_DB.TBL_NOTIFICACIONES (CODIGO_NOTIFICACION,CODIGO_USUARIO,CODIGO_ESTADO_NOTI,ASUNTO,FECHA_NOTIFICACION) values (1,1,1,'xxxxxxxxxxxxxx',to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_NOTIFICACIONES (CODIGO_NOTIFICACION,CODIGO_USUARIO,CODIGO_ESTADO_NOTI,ASUNTO,FECHA_NOTIFICACION) values (2,1,2,'xxxxxxxxxxxxxx',to_date('22-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_NOTIFICACIONES (CODIGO_NOTIFICACION,CODIGO_USUARIO,CODIGO_ESTADO_NOTI,ASUNTO,FECHA_NOTIFICACION) values (3,3,2,'xxxxxxxxxxxxxx',to_date('14-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_PLAYLIST
SET DEFINE OFF;
Insert into DZ_DB.TBL_PLAYLIST (CODIGO_PLAYLIST,CODIGO_USUARIO_CREADOR,NOMBRE_PLAYLIST,FECHA_CREACION) values (1,2,'puro rock',to_date('19-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_PLAYLIST (CODIGO_PLAYLIST,CODIGO_USUARIO_CREADOR,NOMBRE_PLAYLIST,FECHA_CREACION) values (2,5,'salserin',to_date('07-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_PLAYLIST (CODIGO_PLAYLIST,CODIGO_USUARIO_CREADOR,NOMBRE_PLAYLIST,FECHA_CREACION) values (3,3,'romanticas',to_date('02-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_PLAYLIST (CODIGO_PLAYLIST,CODIGO_USUARIO_CREADOR,NOMBRE_PLAYLIST,FECHA_CREACION) values (4,4,'solo queso',to_date('31-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_PREFERENCIAS
SET DEFINE OFF;
Insert into DZ_DB.TBL_PREFERENCIAS (CODIGO_PREFERENCIA,NOMBRE_PREFERENCIA) values (1,'rock');
Insert into DZ_DB.TBL_PREFERENCIAS (CODIGO_PREFERENCIA,NOMBRE_PREFERENCIA) values (2,'salsa');
Insert into DZ_DB.TBL_PREFERENCIAS (CODIGO_PREFERENCIA,NOMBRE_PREFERENCIA) values (3,'merengue');
Insert into DZ_DB.TBL_PREFERENCIAS (CODIGO_PREFERENCIA,NOMBRE_PREFERENCIA) values (4,'pop');
REM INSERTING into DZ_DB.TBL_PREFERENCIASXUSUARIO
SET DEFINE OFF;
Insert into DZ_DB.TBL_PREFERENCIASXUSUARIO (CODIGO_PREFERENCIA,CODIGO_USUARIO) values (1,1);
Insert into DZ_DB.TBL_PREFERENCIASXUSUARIO (CODIGO_PREFERENCIA,CODIGO_USUARIO) values (3,1);
Insert into DZ_DB.TBL_PREFERENCIASXUSUARIO (CODIGO_PREFERENCIA,CODIGO_USUARIO) values (2,2);
Insert into DZ_DB.TBL_PREFERENCIASXUSUARIO (CODIGO_PREFERENCIA,CODIGO_USUARIO) values (1,3);
REM INSERTING into DZ_DB.TBL_PUNTUACIONES
SET DEFINE OFF;
Insert into DZ_DB.TBL_PUNTUACIONES (CODIGO_PUNTUACION,VALOR_PUNTUACION,NOMBRE_PUNTUACION) values (1,2,'Bueno');
Insert into DZ_DB.TBL_PUNTUACIONES (CODIGO_PUNTUACION,VALOR_PUNTUACION,NOMBRE_PUNTUACION) values (2,4,'Muy Bueno');
Insert into DZ_DB.TBL_PUNTUACIONES (CODIGO_PUNTUACION,VALOR_PUNTUACION,NOMBRE_PUNTUACION) values (3,5,'Exelente');
REM INSERTING into DZ_DB.TBL_PUNTUACIONESXAPP
SET DEFINE OFF;
Insert into DZ_DB.TBL_PUNTUACIONESXAPP (CODIGO_APLICACION,CODIGO_PUNTUACION) values (1,1);
Insert into DZ_DB.TBL_PUNTUACIONESXAPP (CODIGO_APLICACION,CODIGO_PUNTUACION) values (2,2);
Insert into DZ_DB.TBL_PUNTUACIONESXAPP (CODIGO_APLICACION,CODIGO_PUNTUACION) values (3,2);
REM INSERTING into DZ_DB.TBL_PUNTUACIONESXUSUARIO
SET DEFINE OFF;
Insert into DZ_DB.TBL_PUNTUACIONESXUSUARIO (CODIGO_USUARIO,CODIGO_PUNTUACION) values (2,1);
Insert into DZ_DB.TBL_PUNTUACIONESXUSUARIO (CODIGO_USUARIO,CODIGO_PUNTUACION) values (1,2);
Insert into DZ_DB.TBL_PUNTUACIONESXUSUARIO (CODIGO_USUARIO,CODIGO_PUNTUACION) values (3,2);
REM INSERTING into DZ_DB.TBL_REACCIONES
SET DEFINE OFF;
REM INSERTING into DZ_DB.TBL_SEGUIDORES
SET DEFINE OFF;
Insert into DZ_DB.TBL_SEGUIDORES (CODIGO_SEGUIDOR,FECHA_SIGUE,CODIGO_USUARIO_SEGUIDOR,CODIGO_USUARIO_SIGUIENDO) values (1,to_date('19-DEC-18','DD-MON-RR'),1,2);
Insert into DZ_DB.TBL_SEGUIDORES (CODIGO_SEGUIDOR,FECHA_SIGUE,CODIGO_USUARIO_SEGUIDOR,CODIGO_USUARIO_SIGUIENDO) values (2,to_date('28-DEC-18','DD-MON-RR'),3,5);
REM INSERTING into DZ_DB.TBL_TARJETAS
SET DEFINE OFF;
REM INSERTING into DZ_DB.TBL_TIPOS_LUGARES
SET DEFINE OFF;
Insert into DZ_DB.TBL_TIPOS_LUGARES (CODIGO_TIPO_LUGAR,TIPO_LUGAR) values (1,'Pais');
Insert into DZ_DB.TBL_TIPOS_LUGARES (CODIGO_TIPO_LUGAR,TIPO_LUGAR) values (2,'Departamento');
Insert into DZ_DB.TBL_TIPOS_LUGARES (CODIGO_TIPO_LUGAR,TIPO_LUGAR) values (3,'municipio');
REM INSERTING into DZ_DB.TBL_TIPO_REACCION
SET DEFINE OFF;
Insert into DZ_DB.TBL_TIPO_REACCION (CODIGO_TIPO_REACCION,NOMBRE_REACCION) values (1,'Me Gusta');
Insert into DZ_DB.TBL_TIPO_REACCION (CODIGO_TIPO_REACCION,NOMBRE_REACCION) values (2,'Me encanta');
Insert into DZ_DB.TBL_TIPO_REACCION (CODIGO_TIPO_REACCION,NOMBRE_REACCION) values (3,'Me Divierte');
Insert into DZ_DB.TBL_TIPO_REACCION (CODIGO_TIPO_REACCION,NOMBRE_REACCION) values (4,'me Enoja');
REM INSERTING into DZ_DB.TBL_TIPO_USUARIO
SET DEFINE OFF;
REM INSERTING into DZ_DB.TBL_USR_GRATUITO
SET DEFINE OFF;
Insert into DZ_DB.TBL_USR_GRATUITO (CODIGO_USUARIO,DIAS_DE_PRUEBA,FECHA_CREACION) values (1,20,to_date('08-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_USR_GRATUITO (CODIGO_USUARIO,DIAS_DE_PRUEBA,FECHA_CREACION) values (7,30,to_date('26-DEC-14','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_USR_PREMIUM
SET DEFINE OFF;
Insert into DZ_DB.TBL_USR_PREMIUM (CODIGO_USUARIO,FECHA_CREACION) values (2,to_date('03-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_USR_PREMIUM (CODIGO_USUARIO,FECHA_CREACION) values (3,to_date('24-DEC-18','DD-MON-RR'));
Insert into DZ_DB.TBL_USR_PREMIUM (CODIGO_USUARIO,FECHA_CREACION) values (4,to_date('01-DEC-18','DD-MON-RR'));
REM INSERTING into DZ_DB.TBL_USUARIOS
SET DEFINE OFF;
Insert into DZ_DB.TBL_USUARIOS (CODIGO_USUARIO,CODIGO_GENERO,CODIGO_LUGAR_NACIO,CODIGO_LUGAR_RECIDENCIA,NOMBRE,APELLIDO,CORREO,PASSWORD,USUARIO,TELEFONO) values (1,1,1,1,'Melvin','aldonado','memaldonadp@gmail.com','asd.456','memaldonadp','98123546');
Insert into DZ_DB.TBL_USUARIOS (CODIGO_USUARIO,CODIGO_GENERO,CODIGO_LUGAR_NACIO,CODIGO_LUGAR_RECIDENCIA,NOMBRE,APELLIDO,CORREO,PASSWORD,USUARIO,TELEFONO) values (2,2,2,1,'Maria','Ramirez','memaldonadp@gmail.com','asd.456','maRami','98123546');
Insert into DZ_DB.TBL_USUARIOS (CODIGO_USUARIO,CODIGO_GENERO,CODIGO_LUGAR_NACIO,CODIGO_LUGAR_RECIDENCIA,NOMBRE,APELLIDO,CORREO,PASSWORD,USUARIO,TELEFONO) values (3,1,2,1,'Juan','Perez','memaldonadp@gmail.com','asd.456','Juan08','98123546');
Insert into DZ_DB.TBL_USUARIOS (CODIGO_USUARIO,CODIGO_GENERO,CODIGO_LUGAR_NACIO,CODIGO_LUGAR_RECIDENCIA,NOMBRE,APELLIDO,CORREO,PASSWORD,USUARIO,TELEFONO) values (4,2,1,1,'Marcos','Vinico','memaldonadp@gmail.com','asd.456','mate154','98123546');
Insert into DZ_DB.TBL_USUARIOS (CODIGO_USUARIO,CODIGO_GENERO,CODIGO_LUGAR_NACIO,CODIGO_LUGAR_RECIDENCIA,NOMBRE,APELLIDO,CORREO,PASSWORD,USUARIO,TELEFONO) values (5,3,1,1,'Carlos','Cruz','memaldonadp@gmail.com','asd.456','cacruz','98123546');
Insert into DZ_DB.TBL_USUARIOS (CODIGO_USUARIO,CODIGO_GENERO,CODIGO_LUGAR_NACIO,CODIGO_LUGAR_RECIDENCIA,NOMBRE,APELLIDO,CORREO,PASSWORD,USUARIO,TELEFONO) values (6,1,2,1,'Osiris','Rodriguez','memaldonadp@gmail.com','asd.456','osirodriqguez','98123546');
Insert into DZ_DB.TBL_USUARIOS (CODIGO_USUARIO,CODIGO_GENERO,CODIGO_LUGAR_NACIO,CODIGO_LUGAR_RECIDENCIA,NOMBRE,APELLIDO,CORREO,PASSWORD,USUARIO,TELEFONO) values (7,3,2,1,'Maytee','Mendez','memaldonadp@gmail.com','asd.456','tete','98123546');