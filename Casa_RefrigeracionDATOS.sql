SELECT * FROM CATEGORIAS;
 SELECT * FROM CLIENTES;

USE CASA_REFRIGERACION;
SET FOREING_KEY_CHECKS = 0;
INSERT INTO CATEGORIAS VALUES
							("1","Herramientas"),
							 ("2","Consumibles"),
							  ("3","Motocompresores"),
							   ("4","Accesorios para Instalaciones"),
								("5","Caños y Aislacion"),
								 ("6","Repuestos Aire Acondicionado"),
								  ("7","Valvulas"),
                            	   ("8","Filtros"),
                                	("9","Sensores"),
									 ("10","Instrumentos de medicion");
                                     
INSERT INTO CLIENTES VALUES
                     	("1","Agostina","Fernandez","1994-07-30", "32674886"),
                     	 ("2","Juan","Garcia","",	""),
						  ("3","Herramientas", "","",""),
						   ("4","Herramientas", "","",""),
							("5","Herramientas","","",""),
							 ("6","Herramientas","","","",""),
							  ("7","Herramientas","","",""),
							   ("8","Herramientas","","",""),
                               	("9","Herramientas","","",""),
								 ("10","Herramientas","","","");