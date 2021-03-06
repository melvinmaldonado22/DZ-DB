-- Generated by Oracle SQL Developer Data Modeler 18.2.0.179.0806
--   at        2018-12-18 222242 CST
--   site      Oracle Database 11g
--   type      Oracle Database 11g



CREATE TABLE tbl_albumes (
    codigo_album        INTEGER NOT NULL,
    nombre_album        VARCHAR2(30),
    fecha_lanzamiento   DATE,
    copias_vendidas     VARCHAR2(30)
);

ALTER TABLE tbl_albumes ADD CONSTRAINT tbl_albumes_pk PRIMARY KEY ( codigo_album );

CREATE TABLE tbl_aplicaciones (
    codigo_aplicacion      INTEGER NOT NULL,
    codigo_desarrollador   INTEGER NOT NULL,
    descarga_por_usuario   INTEGER,
    descripcion            CLOB,
    promedio_app           INTEGER,
    fecha_lanzamiento      DATE,
    icono                  BLOB
);

ALTER TABLE tbl_aplicaciones ADD CONSTRAINT tbl_aplicaciones_pk PRIMARY KEY ( codigo_aplicacion );

CREATE TABLE tbl_appxusuario (
    codigo_usuario      INTEGER NOT NULL,
    codigo_aplicacion   INTEGER NOT NULL,
    fecha_descargo      DATE
);

ALTER TABLE tbl_appxusuario ADD CONSTRAINT tbl_appxusuario_pk PRIMARY KEY ( codigo_usuario,
                                                                            codigo_aplicacion );

CREATE TABLE tbl_artista (
    codigo_artista     INTEGER NOT NULL,
    nombre_artista     VARCHAR2(30),
    nacionalidad       VARCHAR2(30),
    fecha_nacimiento   DATE,
    fecha_muerte       DATE
);

ALTER TABLE tbl_artista ADD CONSTRAINT tbl_artista_pk PRIMARY KEY ( codigo_artista );

CREATE TABLE tbl_artistasxcanciones (
    codigo_artista   INTEGER NOT NULL,
    codigo_cancion   INTEGER NOT NULL
);

ALTER TABLE tbl_artistasxcanciones ADD CONSTRAINT tbl_artistasxcanciones_pk PRIMARY KEY ( codigo_artista,
                                                                                          codigo_cancion );

CREATE TABLE tbl_calidades (
    codigo_calidad   INTEGER NOT NULL,
    nombre_calidad   VARCHAR2(20)
);

ALTER TABLE tbl_calidades ADD CONSTRAINT tbl_calidades_pk PRIMARY KEY ( codigo_calidad );

CREATE TABLE tbl_calidadesxconciones (
    codigo_calidad   INTEGER NOT NULL,
    codigo_cancion   INTEGER NOT NULL,
    codigo_mp3       INTEGER
);

ALTER TABLE tbl_calidadesxconciones ADD CONSTRAINT tbl_calidadesxconciones_pk PRIMARY KEY ( codigo_calidad,
                                                                                            codigo_cancion );

CREATE TABLE tbl_canciones (
    codigo_cancion          INTEGER NOT NULL,
    codigo_album            INTEGER NOT NULL,
    codigo_genero_musical   INTEGER NOT NULL,
    nombre_cancion          VARCHAR2(20),
    duracion                VARCHAR2(10),
    letra                   CLOB,
    fecha_lanzamiento       DATE
);

ALTER TABLE tbl_canciones ADD CONSTRAINT tbl_canciones_pk PRIMARY KEY ( codigo_cancion );

CREATE TABLE tbl_cancionesxplaylist (
    codigo_cancion    INTEGER NOT NULL,
    codigo_playlist   INTEGER NOT NULL,
    fecha_insercion   DATE
);

ALTER TABLE tbl_cancionesxplaylist ADD CONSTRAINT tbl_cancionesxplaylist_pk PRIMARY KEY ( codigo_cancion,
                                                                                          codigo_playlist );

CREATE TABLE tbl_comentarios (
    codigo_comentario         INTEGER NOT NULL,
    codigo_comentario_padre   INTEGER,
    codigo_playlist           INTEGER,
    codigo_usuario            INTEGER NOT NULL,
    codigo_album              INTEGER,
    codigo_aplicacion         INTEGER,
    fecha_creacion            DATE,
    comentario                CLOB
);

ALTER TABLE tbl_comentarios ADD CONSTRAINT tbl_comentarios_pk PRIMARY KEY ( codigo_comentario );

CREATE TABLE tbl_compartidos (
    codigo_compartido   INTEGER NOT NULL,
    codigo_usuario      INTEGER NOT NULL,
    codigo_album        INTEGER,
    codigo_playlist     INTEGER,
    codigo_cancion      INTEGER,
    codigo_aplicacion   INTEGER,
    fecha_compartio     DATE
);

ALTER TABLE tbl_compartidos ADD CONSTRAINT tbl_compartidos_pk PRIMARY KEY ( codigo_compartido );

CREATE TABLE tbl_desarrolladores (
    codigo_desarrollador   INTEGER NOT NULL,
    nombre_desarrollador   VARCHAR2(30)
);

ALTER TABLE tbl_desarrolladores ADD CONSTRAINT tbl_desarrolladores_pk PRIMARY KEY ( codigo_desarrollador );

CREATE TABLE tbl_estados_noti (
    codigo_estado_noti   INTEGER NOT NULL,
    nombre_estado_noti   VARCHAR2(20)
);

ALTER TABLE tbl_estados_noti ADD CONSTRAINT tbl_estados_noti_pk PRIMARY KEY ( codigo_estado_noti );

CREATE TABLE tbl_favoritos (
    codigo_favorito   INTEGER NOT NULL,
    codigo_usuario    INTEGER NOT NULL,
    codigo_cancion    INTEGER,
    codigo_album      INTEGER,
    codigo_playlist   INTEGER
);

ALTER TABLE tbl_favoritos ADD CONSTRAINT tbl_favoritos_pk PRIMARY KEY ( codigo_favorito );

ALTER TABLE tbl_favoritos ADD CONSTRAINT tbl_favoritos__un UNIQUE ( codigo_usuario,
                                                                    codigo_cancion );

ALTER TABLE tbl_favoritos ADD CONSTRAINT tbl_favoritos__unv1 UNIQUE ( codigo_usuario,
                                                                      codigo_album );

ALTER TABLE tbl_favoritos ADD CONSTRAINT tbl_favoritos__unv2 UNIQUE ( codigo_usuario,
                                                                      codigo_playlist );

CREATE TABLE tbl_generos (
    codigo_genero    INTEGER NOT NULL,
    nombre_generos   VARCHAR2(15),
    abrebiatura      VARCHAR2(10)
);

ALTER TABLE tbl_generos ADD CONSTRAINT tbl_genero_pk PRIMARY KEY ( codigo_genero );

CREATE TABLE tbl_generos_musicales (
    codigo_genero_musical   INTEGER NOT NULL,
    nombre_genero_musical   VARCHAR2(20)
);

ALTER TABLE tbl_generos_musicales ADD CONSTRAINT tbl_generos_musicales_pk PRIMARY KEY ( codigo_genero_musical );

CREATE TABLE tbl_lugares (
    codigo_lugar         INTEGER NOT NULL,
    codigo_lugar_padre   INTEGER,
    codigo_tipo_lugar    INTEGER NOT NULL,
    nombre_lugar         VARCHAR2(30),
    longitud             VARCHAR2(10),
    latitud              VARCHAR2(10),
    abreviatura          VARCHAR2(10)
);

ALTER TABLE tbl_lugares ADD CONSTRAINT tbl_lugares_pk PRIMARY KEY ( codigo_lugar );

CREATE TABLE tbl_mensajes (
    codigo_mensaje            INTEGER NOT NULL,
    codigo_usuario_emisor     INTEGER NOT NULL,
    codigo_usuario_receptor   INTEGER NOT NULL,
    fecha_mensaje             DATE,
    mensaje                   CLOB
);

ALTER TABLE tbl_mensajes ADD CONSTRAINT tbl_mensajes_pk PRIMARY KEY ( codigo_mensaje );

CREATE TABLE tbl_mp3 (
    codigo_mp3       INTEGER NOT NULL,
    codigo_usuario   INTEGER NOT NULL,
    codigo_album     INTEGER,
    fecha_subida     DATE
);

ALTER TABLE tbl_mp3 ADD CONSTRAINT tbl_mp3_pk PRIMARY KEY ( codigo_mp3 );

CREATE TABLE tbl_notificaciones (
    codigo_notificacion   INTEGER NOT NULL,
    codigo_usuario        INTEGER NOT NULL,
    codigo_estado_noti    INTEGER NOT NULL,
    asunto                VARCHAR2(30),
    fecha_notificacion    DATE
);

ALTER TABLE tbl_notificaciones ADD CONSTRAINT tbl_notificaciones_pk PRIMARY KEY ( codigo_notificacion );

CREATE TABLE tbl_playlist (
    codigo_playlist          INTEGER NOT NULL,
    codigo_usuario_creador   INTEGER NOT NULL,
    nombre_playlist          VARCHAR2(30),
    fecha_creacion           DATE
);

ALTER TABLE tbl_playlist ADD CONSTRAINT tbl_playlist_pk PRIMARY KEY ( codigo_playlist );

CREATE TABLE tbl_preferencias (
    codigo_preferencia   INTEGER NOT NULL,
    nombre_preferencia   VARCHAR2(30)
);

ALTER TABLE tbl_preferencias ADD CONSTRAINT tbl_preferencias_pk PRIMARY KEY ( codigo_preferencia );

CREATE TABLE tbl_preferenciasxusuario (
    codigo_preferencia   INTEGER NOT NULL,
    codigo_usuario       INTEGER NOT NULL
);

ALTER TABLE tbl_preferenciasxusuario ADD CONSTRAINT tbl_preferenciasxusuario_pk PRIMARY KEY ( codigo_usuario,
                                                                                              codigo_preferencia );

CREATE TABLE tbl_puntuaciones (
    codigo_puntuacion   INTEGER NOT NULL,
    valor_puntuacion    INTEGER,
    nombre_puntuacion   VARCHAR2(15)
);

ALTER TABLE tbl_puntuaciones ADD CONSTRAINT tbl_puntuaciones_pk PRIMARY KEY ( codigo_puntuacion );

CREATE TABLE tbl_puntuacionesxapp (
    codigo_aplicacion   INTEGER NOT NULL,
    codigo_puntuacion   INTEGER NOT NULL
);

ALTER TABLE tbl_puntuacionesxapp ADD CONSTRAINT tbl_puntuacionesxapp_pk PRIMARY KEY ( codigo_puntuacion,
                                                                                      codigo_aplicacion );

CREATE TABLE tbl_puntuacionesxusuario (
    codigo_usuario      INTEGER NOT NULL,
    codigo_puntuacion   INTEGER NOT NULL
);

ALTER TABLE tbl_puntuacionesxusuario ADD CONSTRAINT tbl_puntuacionesxusuario_pk PRIMARY KEY ( codigo_puntuacion,
                                                                                              codigo_usuario );

CREATE TABLE tbl_reacciones (
    codigo_reaccion        INTEGER NOT NULL,
    codigo_tipo_reaccion   INTEGER NOT NULL,
    codigo_usuario         INTEGER NOT NULL,
    codigo_album           INTEGER,
    codigo_playlist        INTEGER,
    codigo_cancion         INTEGER,
    fecha_dio_reaccion     DATE,
    codigo_comentario      INTEGER
);

ALTER TABLE tbl_reacciones ADD CONSTRAINT tbl_reacciones_pk PRIMARY KEY ( codigo_reaccion );

ALTER TABLE tbl_reacciones ADD CONSTRAINT tbl_reacciones__unv1 UNIQUE ( codigo_usuario,
                                                                        codigo_album );

ALTER TABLE tbl_reacciones ADD CONSTRAINT tbl_reacciones__un UNIQUE ( codigo_usuario,
                                                                      codigo_playlist );

ALTER TABLE tbl_reacciones ADD CONSTRAINT tbl_reacciones__unv2 UNIQUE ( codigo_usuario,
                                                                        codigo_cancion );

ALTER TABLE tbl_reacciones ADD CONSTRAINT tbl_reacciones__unv3 UNIQUE ( codigo_usuario,
                                                                        codigo_comentario );

CREATE TABLE tbl_seguidores (
    codigo_seguidor            INTEGER NOT NULL,
    fecha_sigue                DATE,
    codigo_usuario_seguidor    INTEGER NOT NULL,
    codigo_usuario_siguiendo   INTEGER NOT NULL
);

ALTER TABLE tbl_seguidores ADD CONSTRAINT tbl_seguidores_pk PRIMARY KEY ( codigo_seguidor );

CREATE TABLE tbl_tarjetas (
    codigo_tarjeta           INTEGER NOT NULL,
    codigo_usuario_premium   INTEGER NOT NULL,
    nombre_tarjeta           VARCHAR2(30),
    num_tarjeta              VARCHAR2(30)
);

ALTER TABLE tbl_tarjetas ADD CONSTRAINT tbl_tarjetas_pk PRIMARY KEY ( codigo_tarjeta );

CREATE TABLE tbl_tipo_reaccion (
    codigo_tipo_reaccion   INTEGER NOT NULL,
    nombre_reaccion        VARCHAR2(20),
    icono_reaccion         BLOB
);

ALTER TABLE tbl_tipo_reaccion ADD CONSTRAINT tbl_tipo_reaccion_pk PRIMARY KEY ( codigo_tipo_reaccion );

CREATE TABLE tbl_tipo_usuario (
    codigo_usuario   INTEGER NOT NULL,
    tipo_usuario     VARCHAR2(20)
);

ALTER TABLE tbl_tipo_usuario ADD CONSTRAINT tbl_tipo_usuario_pk PRIMARY KEY ( codigo_usuario );

CREATE TABLE tbl_tipos_lugares (
    codigo_tipo_lugar   INTEGER NOT NULL,
    tipo_lugar          VARCHAR2(30)
);

ALTER TABLE tbl_tipos_lugares ADD CONSTRAINT tbl_tipos_lugares_pk PRIMARY KEY ( codigo_tipo_lugar );

CREATE TABLE tbl_usr_gratuito (
    codigo_usuario   INTEGER NOT NULL,
    dias_de_prueba   INTEGER,
    fecha_creacion   DATE
);

ALTER TABLE tbl_usr_gratuito ADD CONSTRAINT tbl_usr_gratuito_pk PRIMARY KEY ( codigo_usuario );

CREATE TABLE tbl_usr_premium (
    codigo_usuario   INTEGER NOT NULL,
    fecha_creacion   DATE
);

ALTER TABLE tbl_usr_premium ADD CONSTRAINT tbl_usr_premium_pk PRIMARY KEY ( codigo_usuario );

CREATE TABLE tbl_usuarios (
    codigo_usuario            INTEGER NOT NULL,
    codigo_genero             INTEGER NOT NULL,
    codigo_lugar_nacio        INTEGER NOT NULL,
    codigo_lugar_recidencia   INTEGER NOT NULL,
    nombre                    VARCHAR2(30),
    apellido                  VARCHAR2(30),
    correo                    VARCHAR2(30),
    password                  VARCHAR2(30),
    usuario                   VARCHAR2(30),
    telefono                  VARCHAR2(30),
    foto_perfil               BLOB
);

ALTER TABLE tbl_usuarios ADD CONSTRAINT tbl_usuarios_pk PRIMARY KEY ( codigo_usuario );

ALTER TABLE tbl_canciones
    ADD CONSTRAINT tbl_albumes_fk FOREIGN KEY ( codigo_album )
        REFERENCES tbl_albumes ( codigo_album );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_albumes_fkv2 FOREIGN KEY ( codigo_album )
        REFERENCES tbl_albumes ( codigo_album );

ALTER TABLE tbl_reacciones
    ADD CONSTRAINT tbl_albumes_fkv3 FOREIGN KEY ( codigo_album )
        REFERENCES tbl_albumes ( codigo_album );

ALTER TABLE tbl_mp3
    ADD CONSTRAINT tbl_albumes_fkv4 FOREIGN KEY ( codigo_album )
        REFERENCES tbl_albumes ( codigo_album );

ALTER TABLE tbl_favoritos
    ADD CONSTRAINT tbl_albumes_fkv5 FOREIGN KEY ( codigo_album )
        REFERENCES tbl_albumes ( codigo_album );

ALTER TABLE tbl_compartidos
    ADD CONSTRAINT tbl_albumes_fkv6 FOREIGN KEY ( codigo_album )
        REFERENCES tbl_albumes ( codigo_album );

ALTER TABLE tbl_appxusuario
    ADD CONSTRAINT tbl_aplicaciones_fk FOREIGN KEY ( codigo_aplicacion )
        REFERENCES tbl_aplicaciones ( codigo_aplicacion );

ALTER TABLE tbl_puntuacionesxapp
    ADD CONSTRAINT tbl_aplicaciones_fkv2 FOREIGN KEY ( codigo_aplicacion )
        REFERENCES tbl_aplicaciones ( codigo_aplicacion );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_aplicaciones_fkv3 FOREIGN KEY ( codigo_aplicacion )
        REFERENCES tbl_aplicaciones ( codigo_aplicacion );

ALTER TABLE tbl_compartidos
    ADD CONSTRAINT tbl_aplicaciones_fkv4 FOREIGN KEY ( codigo_aplicacion )
        REFERENCES tbl_aplicaciones ( codigo_aplicacion );

ALTER TABLE tbl_artistasxcanciones
    ADD CONSTRAINT tbl_artista_fk FOREIGN KEY ( codigo_artista )
        REFERENCES tbl_artista ( codigo_artista );

ALTER TABLE tbl_calidadesxconciones
    ADD CONSTRAINT tbl_calidades_fk FOREIGN KEY ( codigo_calidad )
        REFERENCES tbl_calidades ( codigo_calidad );

ALTER TABLE tbl_cancionesxplaylist
    ADD CONSTRAINT tbl_canciones_fk FOREIGN KEY ( codigo_cancion )
        REFERENCES tbl_canciones ( codigo_cancion );

ALTER TABLE tbl_reacciones
    ADD CONSTRAINT tbl_canciones_fkv2 FOREIGN KEY ( codigo_cancion )
        REFERENCES tbl_canciones ( codigo_cancion );

ALTER TABLE tbl_artistasxcanciones
    ADD CONSTRAINT tbl_canciones_fkv3 FOREIGN KEY ( codigo_cancion )
        REFERENCES tbl_canciones ( codigo_cancion );

ALTER TABLE tbl_calidadesxconciones
    ADD CONSTRAINT tbl_canciones_fkv4 FOREIGN KEY ( codigo_cancion )
        REFERENCES tbl_canciones ( codigo_cancion );

ALTER TABLE tbl_favoritos
    ADD CONSTRAINT tbl_canciones_fkv5 FOREIGN KEY ( codigo_cancion )
        REFERENCES tbl_canciones ( codigo_cancion );

ALTER TABLE tbl_compartidos
    ADD CONSTRAINT tbl_canciones_fkv6 FOREIGN KEY ( codigo_cancion )
        REFERENCES tbl_canciones ( codigo_cancion );

ALTER TABLE tbl_reacciones
    ADD CONSTRAINT tbl_comentarios_fk FOREIGN KEY ( codigo_comentario )
        REFERENCES tbl_comentarios ( codigo_comentario );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_comentarios_padre_fk FOREIGN KEY ( codigo_comentario_padre )
        REFERENCES tbl_comentarios ( codigo_comentario );

ALTER TABLE tbl_aplicaciones
    ADD CONSTRAINT tbl_desarrolladores_fk FOREIGN KEY ( codigo_desarrollador )
        REFERENCES tbl_desarrolladores ( codigo_desarrollador );

ALTER TABLE tbl_notificaciones
    ADD CONSTRAINT tbl_estados_noti_fk FOREIGN KEY ( codigo_estado_noti )
        REFERENCES tbl_estados_noti ( codigo_estado_noti );

ALTER TABLE tbl_usuarios
    ADD CONSTRAINT tbl_generos_fk FOREIGN KEY ( codigo_genero )
        REFERENCES tbl_generos ( codigo_genero );

ALTER TABLE tbl_canciones
    ADD CONSTRAINT tbl_generos_musicales_fk FOREIGN KEY ( codigo_genero_musical )
        REFERENCES tbl_generos_musicales ( codigo_genero_musical );

ALTER TABLE tbl_usuarios
    ADD CONSTRAINT tbl_lugares_fk FOREIGN KEY ( codigo_lugar_nacio )
        REFERENCES tbl_lugares ( codigo_lugar );

ALTER TABLE tbl_usuarios
    ADD CONSTRAINT tbl_lugares_fkv2 FOREIGN KEY ( codigo_lugar_recidencia )
        REFERENCES tbl_lugares ( codigo_lugar );

ALTER TABLE tbl_lugares
    ADD CONSTRAINT tbl_lugares_padre_fk FOREIGN KEY ( codigo_lugar_padre )
        REFERENCES tbl_lugares ( codigo_lugar );

ALTER TABLE tbl_calidadesxconciones
    ADD CONSTRAINT tbl_mp3_fk FOREIGN KEY ( codigo_mp3 )
        REFERENCES tbl_mp3 ( codigo_mp3 );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_playlist_fk FOREIGN KEY ( codigo_playlist )
        REFERENCES tbl_playlist ( codigo_playlist );

ALTER TABLE tbl_cancionesxplaylist
    ADD CONSTRAINT tbl_playlist_fkv2 FOREIGN KEY ( codigo_playlist )
        REFERENCES tbl_playlist ( codigo_playlist );

ALTER TABLE tbl_reacciones
    ADD CONSTRAINT tbl_playlist_fkv3 FOREIGN KEY ( codigo_playlist )
        REFERENCES tbl_playlist ( codigo_playlist );

ALTER TABLE tbl_favoritos
    ADD CONSTRAINT tbl_playlist_fkv4 FOREIGN KEY ( codigo_playlist )
        REFERENCES tbl_playlist ( codigo_playlist );

ALTER TABLE tbl_compartidos
    ADD CONSTRAINT tbl_playlist_fkv5 FOREIGN KEY ( codigo_playlist )
        REFERENCES tbl_playlist ( codigo_playlist );

ALTER TABLE tbl_preferenciasxusuario
    ADD CONSTRAINT tbl_preferencias_fk FOREIGN KEY ( codigo_preferencia )
        REFERENCES tbl_preferencias ( codigo_preferencia );

ALTER TABLE tbl_puntuacionesxusuario
    ADD CONSTRAINT tbl_puntuaciones_fk FOREIGN KEY ( codigo_puntuacion )
        REFERENCES tbl_puntuaciones ( codigo_puntuacion );

ALTER TABLE tbl_puntuacionesxapp
    ADD CONSTRAINT tbl_puntuaciones_fkv2 FOREIGN KEY ( codigo_puntuacion )
        REFERENCES tbl_puntuaciones ( codigo_puntuacion );

ALTER TABLE tbl_reacciones
    ADD CONSTRAINT tbl_tipo_reaccion_fk FOREIGN KEY ( codigo_tipo_reaccion )
        REFERENCES tbl_tipo_reaccion ( codigo_tipo_reaccion );

ALTER TABLE tbl_lugares
    ADD CONSTRAINT tbl_tipos_lugares_fk FOREIGN KEY ( codigo_tipo_lugar )
        REFERENCES tbl_tipos_lugares ( codigo_tipo_lugar );

ALTER TABLE tbl_tarjetas
    ADD CONSTRAINT tbl_usr_premium_fk FOREIGN KEY ( codigo_usuario_premium )
        REFERENCES tbl_usr_premium ( codigo_usuario );

ALTER TABLE tbl_tipo_usuario
    ADD CONSTRAINT tbl_usr_premium_fkv2 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usr_premium ( codigo_usuario );

ALTER TABLE tbl_usr_gratuito
    ADD CONSTRAINT tbl_usuarios_fk FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_seguidores
    ADD CONSTRAINT tbl_usuarios_fkv10 FOREIGN KEY ( codigo_usuario_siguiendo )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_mensajes
    ADD CONSTRAINT tbl_usuarios_fkv11 FOREIGN KEY ( codigo_usuario_emisor )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_mensajes
    ADD CONSTRAINT tbl_usuarios_fkv12 FOREIGN KEY ( codigo_usuario_receptor )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_appxusuario
    ADD CONSTRAINT tbl_usuarios_fkv13 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_puntuacionesxusuario
    ADD CONSTRAINT tbl_usuarios_fkv14 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_preferenciasxusuario
    ADD CONSTRAINT tbl_usuarios_fkv15 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_compartidos
    ADD CONSTRAINT tbl_usuarios_fkv16 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_usr_premium
    ADD CONSTRAINT tbl_usuarios_fkv2 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_usuarios_fkv3 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_playlist
    ADD CONSTRAINT tbl_usuarios_fkv4 FOREIGN KEY ( codigo_usuario_creador )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_reacciones
    ADD CONSTRAINT tbl_usuarios_fkv5 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_mp3
    ADD CONSTRAINT tbl_usuarios_fkv6 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_favoritos
    ADD CONSTRAINT tbl_usuarios_fkv7 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_notificaciones
    ADD CONSTRAINT tbl_usuarios_fkv8 FOREIGN KEY ( codigo_usuario )
        REFERENCES tbl_usuarios ( codigo_usuario );

ALTER TABLE tbl_seguidores
    ADD CONSTRAINT tbl_usuarios_fkv9 FOREIGN KEY ( codigo_usuario_seguidor )
        REFERENCES tbl_usuarios ( codigo_usuario );



-- Oracle SQL Developer Data Modeler Summary Report 
-- 
-- CREATE TABLE                            35
-- CREATE INDEX                             0
-- ALTER TABLE                             98
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
