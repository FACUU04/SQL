SELECT * FROM CATEGORIAS;
 SELECT * FROM CLIENTES;
 SELECT * FROM COMPRAS;
 SELECT * FROM EMPLEADOS;
  SELECT * FROM NEGOCIO;
  SELECT * FROM PRODUCTOS;
  SELECT * FROM PRODUCTOS_INVENTARIO;
  SELECT * FROM PRODUCTOS_VENDIDOS;
  SELECT * FROM PROVEEDORES;
  SELECT * FROM VENTAS;

SELECT * FROM PRODUCTOS;
SELECT * FROM PRODUCTOS_INVENTARIO;
SELECT * FROM COMPRAS
WHERE ID_Producto = 35;

DROP TABLE PRODUCTOS_VENDIDOS;

SELECT * FROM VENTAS;
SELECT * FROM CLIENTES;
SELECT * FROM PRODUCTOS_INVENTARIO;
SELECT * FROM PRODUCTOS;

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
                       ("01","Agostina","Fernandez","1994-07-30","32674886"),
                        ("02","Juan","Garcia","1987-10-16","81116433"),
                         ("03","Mateo","Cabrera","1974-11-03","43685791"),
                          ("04","Matias","Acosta","1986-08-29","65203402"),
                           ("05","Pedro","Dominguez","1975-05-20","34423969"),
                            ("06","Diego","Panini","1988-08-18","67513215"),
                             ("07","Alberto","Gomez","1973-12-09","39988037"),
                              ("08","Eduardo","Garcia","1997-05-21","78506562"),
                               ("09","Luis","Cruz","1996-04-28","43226114"),
                                ("10","Daniel","Ramirez","1999-06-04","84829396");
                                 
INSERT INTO COMPRAS (ID_Proveedor, ID_Producto, Cantidad, FECHA)
VALUES 
    (16, 38, 20, '2024-01-01'),
     (05, 37, 20, '2024-01-01'),
      (05, 36, 3, '2024-01-11'),
       (05, 8, 80, '2024-01-01'),
        (05, 7, 7, '2024-01-13'),
         (05, 6, 13, '2024-01-07'),
          (02, 16, 80, '2024-01-03'),
           (02, 17, 50, '2024-01-03'),
            (02, 18, 20, '2024-01-03'),
             (02, 19, 5, '2024-01-11'),
              (02, 21, 170, '2024-01-03'),
               (02, 22, 350, '2024-01-02'),
                (02, 23, 400, '2024-01-02'),
                 (02, 24, 400, '2024-01-03'),
                  (02, 29, 50, '2024-01-13'),
                   (12, 26, 150, '2024-01-13'),
                    (12, 27, 90, '2024-01-11'),
                     (12, 28, 200, '2024-01-20'),
                      (03, 4, 5, '2024-01-20'),
                       (03, 25, 70, '2024-01-13'),
                        (03, 31, 90, '2024-01-13'),
                         (03, 32, 90, '2024-01-13'),
                          (03, 34, 50, '2024-01-13'),
                           (01, 1, 10, '2024-01-20'),
                            (01, 2, 10, '2024-01-20'),
							 (04, 5, 10, '2024-01-22'),
                              (06, 9, 30, '2024-01-01'),
                               (07, 10, 100, '2024-01-01'),
                                (08, 11, 100, '2024-01-11'),
                                 (09, 12, 80, '2024-01-07'),
                                  (09, 13, 80, '2024-01-07'),
                                   (09, 14, 80, '2024-01-07'),
                                    (10, 15, 200, '2024-01-01'),
                                     (11, 20, 300, '2024-01-11'),
                                      (13, 30, 50, '2024-01-13'),
                                       (14, 33, 100, '2024-01-05'),
                                        (05, 36, 5, '2024-01-22'),
                                         (16, 38, 90, '2024-01-13');

INSERT INTO COMPRAS (ID_Proveedor, ID_Producto, Cantidad, FECHA) VALUES
                            ("15","35","5","2024-01-20");
                            
INSERT INTO EMPLEADOS VALUES
                  ("01","Manuel","Mendez","2002-02-02","2023-12-20","Control Stock"),
                   ("02","Leon","Alvarez","1994-08-18","2021-09-01","Atencion al cliente"),
                    ("03","Lucas","Suarez","2001-11-05","2023-03-31","Atencion al cliente"),
                     ("04","Vicente","Molina","1976-06-20","2021-05-26","Atencion al cliente"),
                      ("05","Nicolas","Hernandez","1979-12-31","2021-04-23","Encargado de pedidos"),
                       ("06","Julian","Gutierrez","1981-05-20","2022-07-16","Control Stock"),
                        ("07","Lorenzo","Sosa","2003-10-17","2024-01-05","Armado de pedidos");
                        
INSERT INTO NEGOCIO VALUES
                      ("FALCAR Refrigeracion","817-3566542395935","2021-01-20","Refrigeracion","Alem 1530, MG","falcarrefrigeracion@hotmail.com","1180052347");
                      
INSERT INTO PRODUCTOS VALUES
                      ("01","Embraco","Motocompresor EMBRACO 220V 50hz 1/10hp R134a/R600 para heladera","3","513307070","93000"),
                       ("02","Embraco","Motocompresor EMBRACO 220V 50/60HZ 1/8hp R600/134a","3","EM18220HG","100000"),
                        ("03","Bluestar","Motocompresor GMCC 220V 50/60Hz 1/4hp R600/134a","3","BLUE14600KLW","147000"),
                         ("04","Bluestar","Motocompresor GMCC 220V 50Hz R410 3000fr para A/C","3","ASM135V-1VD2-","192000"),
                          ("05","Tecumseh","Motocompresor TECUMSEH 220V 50/60Hz R600 1/5Php","3","TA1360M-FZ1A-R600","155000"),
                           ("06","Value","Bomba de vacio VALUE 70L/min 1/4hp 7kg 250ml aceite","1","VE225N-PRO-70L","268000"),
                            ("07","Value","Bomba de vacio VALUE 126L/min 1/3hp 8.5kg 250ml aceite","1","VE245N-PRO-126L","345000"),
                             ("08","Value","Cortadora VALUE 4-28mm (1/4 - 1, 1/8)","1","VTC-28B-32","23000"),
                              ("09","Chemours","Garrafa 13,60kg gas refrigerante R410/r134a/R600","2","FREON 134a","360000"),
                               ("10","Necton","Lata gas refrigerante 650gr R410/r134a/R600/r141","2","Necton650410a","29300"),
                                ("11","Worthinton","Garrafa descartable gas para soldar 400grs","2","BERNZ-MAPP-MDC-1316*C","22500"),
                                 ("12","Harrinson","Varilla para soldar HARRINSON plata 0%","2","HARRINSON0%","54000"),
                                  ("13","Harrinson","Varilla para soldar HARRINSON5% ","2","HaRRY5%","60000"),
                                   ("14","Harry","Varilla para soldar zincaflux fundente","2","Zincafluxf","6000"),
                                    ("15","Tacsa","Cinta TACSA 20mm x 70m varios colores","2","TACSA","3500"),
                                     ("16","Nacional","2X Mensula 70kg","4","MEN70","17000"),
                                      ("17","Nacional","2X Mensula 90kg","4","MEN90","20000"),
                                       ("18","Nacional","2X Mensula 120kg","4","MEN120","30000"),
                                        ("19","Nacional","2X Mensula 180kg","4","MEN180","40000"),
                                         ("20","El Trebol","Cable tipo taller 3x1,5mm/ 3x2,5mm/ 5x1,5mm","4","CABLE","1500"),
                                          ("21","Nacional","Manguera de desague","4","MAN463","2000"),
                                           ("22","Nacional","Aislacion 1/4, 3/4, 3/8, 1/2, 5/8","5","AIS14","1200"),
                                            ("23","Nacional","Caño de cobre 1/4, 3/4, 3/8, 1/2 y 5/8","5","COBRE","1500"),
                                             ("24","Nacional","Tuercas","5","Tuercas","1000"),
                                              ("25","Bluestar","Espejo inspeccion","1","BLUEspejo","8000"),
                                               ("26","VARIAS","Plaqueta electroncia A/C","6","PCB","40000"),
                                                ("27","VARIAS","Turbina plastica","6","TURbina","10000"),
                                                 ("28","VARIAS","Motores varias potencias y marcas","6","M0tor","60000"),
                                                  ("29","NACIONAL","Valvula 3 vias","7","VAL3","15000"), 
                                                   ("30","Sanhua","Valvula inversora","7","Inversora","71000"),
                                                    ("31","Bluestar","Filtro molecular 10gr","8","FIL","5000"),
                                                     ("32","Bluestar","Sensor de temperatura","9","Sensor","3000"),
                                                      ("33","Elitech","Termometro digital (-50 +70c)","10","TMP10","6500"),
                                                       ("34","Bluestar","Manifold analogico","10","MNFOLD","40000"),
                                                        ("35","Testo","Manifold digital TESTO 557","10","MNFOLDDIGITAL","1000000"),
                                                         ("36","Value","Balanza VALUE","10","VES100B-100Kg","457000"),
                                                          ("37","Value","Pinza amperometrica VALUE","10","VMCC1","35000"),
                                                          ("38","Uni-t","Multimetro digital","10","UNIt","43000");
INSERT INTO PROVEEDORES VALUES
                       ("01","Embraco","Fabricante de motocompresores, fundada en 1971 en Brasil","embrac@hotmail.com","2024-01-01","Motocompresores", "https://www.embraco.com/es/"),
                       ("02","Nacional","Fabricantes nacionales de aislaciones,caños, mensulas, bulones y demas","1151735522, 1145322827, 1539786779","2024-01-03","Aislaciones,caños de cobre, mensulas, bulones", ""),
                       ("03","Bluestar","Fabricante de motocompresores, fundada en 1995 en Estados Unidos","gmcc-Bluest@hotmail.com","2024-01-01","Motocompresores, sensores, filtros, manifold", "https://areacooling.com/gmcc-compressors/"),
                       ("04","Tecumseh","Fabricante de productos de refrigeracion, fundada en 1934 en Estados Unidos","Tecumseh@hotmail.com, 96919517","2024-01-01","Motocompresores", "https://www.tecumseh.com/"),
                       ("05","Value","Fabricante de productos de refrigeracion","value@hotmail.com","2024-01-01","Bomba de vacio, cortadora manual, pinza amperometrica", ""),
                       ("06","Chemours","Fabricante de gas refrigerante","chemours@hotmail.com 1534134104","2024-01-01","Garrafa de gas refrigerante", "https://www.chemours.com/en"),
                        ("07","Necton","Fundada en 1985 Argentina fabrican envases con gas refrigerante","","2024-01-03","Latas de gas refrigerante", "https://www.frioindustrias.com.ar/nuestro-producto/"),
                         ("08","Worthinton","","worthinton@gmail.com","2024-01-03","Garrafa gas para soldar", ""),
                          ("09","Harrinson","","Harrinson@hotmail.com","2024-01-11","Varillas para soldar", ""),
                           ("10","Tacsa","Fundada en 1990 Argentina","ventas@tacsa.com.ar, (54-11) 7700-1900","2024-01-01","Cintas", "https://tacsa.com.ar/"),
                            ("11","ElTrebol","Fabricante de cables","Cableseltrebol@gmail.com","2024-01-03","Cables", ""),
                             ("12","Varias","","1186258022, 1111394660, 1591780558","2024-01-11","", ""),
                              ("13","Sanhua","Fabricante de productos de refrigeracion fundada en 1984 en china","(85) 3282-3589 / 99247-7000","2024-01-01","Valvulas inversoras", "https://sanhualatam.com/es/"),
                               ("14","Elitech"," ","+1 (408) 898 2866 ","2024-01-01","Termometros", "https://www.elitechlog.com/"),
                                ("15","Testo","Empresa Norteamericana","1146835050","2024-01-01","Manifold digital", "https://www.testo.com/es-AR"),
                                 ("16","Uni-t","","(86-769) 8572 3888","2024-01-01","Multimetros", "https://www.uni-trend.com/");
                                 
INSERT INTO PRODUCTOS_INVENTARIO VALUES
           ("1","3","Embraco","Motocompresor EMBRACO 220V 50hz 1/10hp R134a/R600 para heladera","7"),
		   ("2","3","Embraco","Motocompresor EMBRACO 220V 50/60HZ 1/8hp R600/134a","10"),
            ("3","3","BlueStar","Motocompresor GMCC 220v 50/60hz 1/8hp r600/134a","6"),
             ("4","3","BlueStar","Motocompresor GMCC 220v 50Hz R410 para a/c","4"),
              ("5","3","Tecumseh","Motocompresor TECUMSEH 220V 60Hz R600","6"),
               ("6","1","Value","Bomba de vacio 70l/min 1/4hp 250ml aceite 7kg","11"),
               ("7","1","Value","Bomba de vacio 126l/min 1/3hp 8,5kg 250ml","7"),
                ("8","1","Value","Cortadora 4-28mm","30"),
                 ("9","2","Chemours","Garrafa 13,60kg gas refrigerante R410/r134a/r600","5"),
                  ("10","2","Necton","Lata gas refrigerante 650g R410/R134a/r600/r141","43"),
                   ("11","2","Worthinton","Garrafa descartable gas para soldar 400g","27"),
                    ("12","2","Harrinson","Varilla para soldar palta 0%","27"),
                     ("13","2","Harrinson","Varilla para soldar 5%","50"),
                      ("14","2","Harrinson","Varilla para soldar zincaflux","35"),
                       ("15","2","Tacsa","Cinta tacsa 20x70mm","147"),
                        ("16","4","Nacional","Mensula 70kg","66"),
                         ("17","4","Nacional","Mensula 90kg","9"),
                          ("18","4","Nacional","Mensula 120kg","30"),
                           ("19","4","Nacional","Mensula 180kg","4"),
                            ("20","4","ElTrebol","Cable tipo taller 3x1,5/3x2,5/5x1,5mm","170"),
                             ("21","4","Nacional","Manguera de desague","98"),
                              ("22","5","Nacional","Aislacion 1/4, 3/4, 3/8, 1/2, 5/8","50"),
                               ("23","5","Nacional","Caño de cobre 1/4, 3/4, 3/8, 1/2, 5/8","127"),
                                ("24","5","Nacional","Bulones y tuercas","209"),
                                 ("25","1","Bluestar","Espejo inspeccion","46"),
                                  ("26","6","Varias","Plaqueta electronica A/C","138"),
                                   ("27","6","Varias","Turbina","80"),
                                    ("28","6","Varias","Motores","175"),
                                     ("29","7","Nacional","Valvula 3 vias","22"),
                                      ("30","7","Sanhua","Valvula inversora","36"),
                                       ("31","8","Bluestar","Filtro molecular 10g","56"),
                                        ("32","9","Bluestar","Sensor de temperatura","77"),
                                         ("33","10","Elitech","Termometro digital","82"),
                                          ("34","10","Bluestar","Manifold analogico","41"),
                                           ("35","10","Testo","Manifold digital 557","3"),
                                            ("36","10","Value","Balanza digital","4"),
                                             ("37","10","Value","Pinza amperometrica","11"),
                                              ("38","10","Unit","Multimetros","89");
                                              
Insert into VENTAS values
			   ("01","2024-01-03","93000","3","1","1"),
                 ("02","2024-01-03","360000","7","9","1"),
                   ("03","2024-01-07","40000","9","17","2"),
                     ("04","2024-01-07","22500","9","20","15"),
                       ("05","2024-01-07","20000","9","21","10"),
                         ("06","2024-01-07","6000","9","22","5"),
                           ("07","2024-01-13","40000","2","26","1"),
                             ("08","2024-01-15","355000","4","30","5"),
                               ("09","2024-01-15","43000","3","38","1"),
                                 ("10","2024-01-16","23000","5","8","1"),
                                   ("11","2024-01-18","268000","7","6","1"),
                                     ("12","2024-01-19","162000","8","12","3"),
                                       ("13","2024-01-21","7000","9","15","2"),
                                         ("14","2024-01-25","1000000","1","35","1"),
                                           ("15","2024-01-26","240000","6","28","4"),
                                             ("16","2024-01-27","59600","5","11","2");