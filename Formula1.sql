CREATE SCHEMA IF NOT EXISTS FORMULA1;
USE FORMULA1;

CREATE TABLE IF NOT EXISTS SCUDERIAS(
   IDScuderia INT PRIMARY KEY,
   Nombre VARCHAR(25), 
   Año_Fundacion DATE, 
   Cantidad_Victorias_constructores NUMERIC,
   IDPiloto INT,
   IDPersonaltecnico INT, 
   Jefe_Equipo VARCHAR(30) NOT NULL,
   
     FOREIGN KEY (IDPiloto) REFERENCES PILOTOS(IDPiloto),
     FOREIGN KEY (IDPersonaltecnico) REFERENCES  PERSONAL_DEL_EQUIPO (IDPersonaltecnico) 
   );
   
CREATE TABLE IF NOT EXISTS PILOTOS(
   IDPiloto INT PRIMARY KEY, 
   Nombre VARCHAR(25) NOT NULL,
   Apellido VARCHAR(25) NOT NULL,
   Fecha_Nacimiento DATE,
   Edad_actual INT,
   Nacionalidad VARCHAR(30),
   IDScuderia INT,
   Infracciones INT,
   Victorias_Campeonato_de_Pilotos NUMERIC, 
   Cantidad_Carreras_Ganadas NUMERIC,
   Cantidad_PolePosition NUMERIC,
   
	 FOREIGN KEY (IDScuderia) REFERENCES SCUDERIAS (IDScuderia),
     FOREIGN KEY (IDPiloto) REFERENCES SCUDERIAS (IDPiloto)  
     );
   
   SELECT Fecha_Nacimiento AND CURRENT_DATE, (YEAR(CURRENT_DATE) - YEAR(Fecha_Nacimiento)) AS 'Edad_actual'
   FROM PILOTOS;
   
CREATE TABLE IF NOT EXISTS PERSONAL_DEL_EQUIPO(
   IDPersonaltecnico INT PRIMARY KEY, 
   Nombre VARCHAR(25) NOT NULL,
   Apellido VARCHAR(25),
   Nacionalidad VARCHAR(30),
   Fecha_Nacimiento DATE,
   Edad_Actual INT, 
   Scuderia INT,
   Especializacion VARCHAR (20),
   
     FOREIGN KEY (IDPersonaltecnico) REFERENCES SCUDERIAS (IDPersonaltecnico) 
   );
   
   SELECT Fecha_Nacimiento AND CURRENT_DATE, (YEAR(CURRENT_DATE) - YEAR(Fecha_Nacimiento)) AS 'Edad_actual'
   FROM PERSONAL_DEL_EQUIPO;
   
CREATE TABLE IF NOT EXISTS GP(
   NombreGP VARCHAR(40) PRIMARY KEY,
   Circuito VARCHAR(30) NOT NULL,
   Ubicacion_Circuito VARCHAR (30) NOT NULL,
   Año_Fundacion DATE, 
   Longitud_del_Circuito_en_km NUMERIC,
   Altura_Circuito_en_m NUMERIC, 
   Piloto_Ganador_Carrera VARCHAR(40),
   Poleman_Vueltarapida_Carrera VARCHAR(40), 
   Piloto_Ganador_Clasificacion VARCHAR(40),
   ResultadosCarrera VARCHAR(140),
   ResultadosClasificacion VARCHAR(140), 
   Accidentes INT
);
      
CREATE TABLE IF NOT EXISTS RESULTADOS(
   Circuito INT, 
   Temporada YEAR,
   Cantidad_Infracciones NUMERIC,
   Cantidad_Accidentes NUMERIC, 
   Pilotoganador_Carrera VARCHAR(45) NOT NULL,
   Poleman_Vta_Rpda_Carrera VARCHAR(45) NOT NULL,
   Ganador_Clasificacion VARCHAR(45)NOT NULL,
   Orden_Campeonato_Pilotos INT,
   Orden_Campeonato_Constructores INT, 
   IDPiloto INT,
   IDScuderia INT,
     
     FOREIGN KEY (IDPiloto) REFERENCES PILOTOS(IDPiloto),
     FOREIGN KEY (IDScuderia) REFERENCES SCUDERIAS (IDScuderia) 
);

CREATE TABLE IF NOT EXISTS CAMPEONATO(
   Temporada DATE PRIMARY KEY,
   Resultados INT, 
   Tabla_Posicion_Campeonato_Pilotos VARCHAR(350),
   Tabla_Posicion_Campeonato_Constructores VARCHAR(350)
);

CREATE TABLE IF NOT EXISTS FIA(
  Temporada INT,
  Reglamento VARCHAR(20) NOT NULL,
  Infracciones_Equipos VARCHAR(500),
  Infracciones_Pilotos VARCHAR(500),
  Penalizacion VARCHAR(300),
  IDPiloto INT,
  IDScuderia INT,
  ResultadosCarrera INT,
  ResultadosClasificacion INT,
  
	 FOREIGN KEY (IDPiloto) REFERENCES PILOTOS(IDpiloto),
     FOREIGN KEY (IDScuderia) REFERENCES SCUDERIAS (IDScuderia) 
);