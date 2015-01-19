-- Lenguage
INSERT INTO language (ID_LANG, LANG_CODE, LANG_NAME) VALUES (1,'es','Español');
INSERT INTO language (ID_LANG, LANG_CODE, LANG_NAME) VALUES (1,'en','English');
-- Categorias
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (1,'AU01','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (2,'CON02','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (3,'TDN03','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (4,'TCN04','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (5,'CEN05','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (6,'TPN06','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (7,'ZCN07','A');

-- Detalle Categoria
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (1, 1, 'Audio');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (1, 2, 'Audio');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (2, 1, 'Conectores');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (2, 2, 'Connectors');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (3, 1, 'Tapón diesel');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (3, 2, 'Diesel plug');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (4, 1, 'Terminales de Cobre');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (4, 2, 'Copper terminals');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (5, 1, 'Terminales de Cobre Estañada');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (5, 2, 'Tinned Copper Terminals');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (6, 1, 'Terminales de Placa');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (6, 2, 'Terminal Plate');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (7, 1, 'Terminales zapata laminada cobradiza');
INSERT INTO category_detail (ID_CAT,ID_LANG,CATD_DESCRIPTION) VALUES (7, 2, 'Terminals copper laminated shoe');