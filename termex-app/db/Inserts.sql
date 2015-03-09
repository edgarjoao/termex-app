-- Lenguage
INSERT INTO language (ID_LANG, LANG_CODE, LANG_NAME) VALUES (1,'es','Español');
INSERT INTO language (ID_LANG, LANG_CODE, LANG_NAME) VALUES (2,'en','English');
-- Categorias
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (1,'AU01','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (2,'CON02','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (3,'TDN03','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (4,'TCN04','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (5,'CEN05','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (6,'TPN06','A');
INSERT INTO category (ID_CAT, CAT_CODE,CAT_STATUS) VALUES (7,'ZCN07','A');

-- Detalle Categoria
-- 1. Audio
-- 2. Conectores
-- 3. Tapón Diesel
-- 4. Terminales de Cobre
-- 5. Terminales de Cobre Estañada
-- 6. Terminales de Placa
-- 7. Terminales de zapata laminada cobradiza

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

-- Productos
-- Audio
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (1, 1, 'TM 34C', 'TM_34C.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/audio/TM_34C.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (2, 1, 'TM 35P', 'TM_35P.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/audio/TM_35P.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (3, 1, 'TM 40', 'TM_40.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/audio/TM_40.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (4, 1, 'TM 42', 'TM_42.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/audio/TM_42.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (5, 1, 'TM 501', 'TM_501.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/audio/TM_501.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (6, 1, 'TM 502C', 'TM_502C.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/audio/TM_502C.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (7, 1, 'TM 503L', 'TM_503L.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/audio/TM_503L.jpg'));

-- Conectores
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (8, 2, 'TM 1450', 'TM_1450.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1450.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (9, 2, 'TM 1451', 'TM_1451.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1451.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (10, 2, 'TM 1452', 'TM_1452.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1452.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (11, 2, 'TM 1497', 'TM_1497.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1497.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (12, 2, 'TM 1498', 'TM_1498.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1498.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (13, 2, 'TM 1499', 'TM_1499.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1499.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (14, 2, 'TM 1500', 'TM_1500.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1500.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (15, 2, 'TM 1501', 'TM_1501.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1501.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (16, 2, 'TM 1501 A', 'TM_1501_A.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1501_A.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (17, 2, 'TM 1502', 'TM_1502.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1502.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (18, 2, 'TM 1503', 'TM_1503.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1503.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (19, 2, 'TM 1503 A', 'TM_1503_A.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1503_A.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (20, 2, 'TM 1504', 'TM_1504.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1504.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (21, 2, 'TM 1505', 'TM_1505.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1505.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (22, 2, 'TM 1506', 'TM_1506.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/conectores/TM_1506.jpg'));

-- 3. Tapón Diesel
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (23, 3, 'TM 1019', 'TM_1019.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/tapon_diesel/TM_1019.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (24, 3, 'TM 1020', 'TM_1020.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/tapon_diesel/TM_1020.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (25, 3, 'TM 1021', 'TM_1021.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/tapon_diesel/TM_1021.jpg'));

-- 4. Terminales de Cobre
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (26, 4, 'TM 101', 'TM_101.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_101.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (27, 4, 'TM 102', 'TM_102.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_102.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (28, 4, 'TM 103', 'TM_103.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_103.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (29, 4, 'TM 104', 'TM_104.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_104.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (30, 4, 'TM 105', 'TM_105.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_105.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (31, 4, 'TM 106', 'TM_106.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_106.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (32, 4, 'TM 107', 'TM_107.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_107.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (33, 4, 'TM 108', 'TM_108.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_108.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (34, 4, 'TM 109', 'TM_109.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_109.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (35, 4, 'TM 110', 'TM_110.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales _cobre/TM_110.jpg'));

-- 5. Terminales de Cobre Estañada
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (36, 5, 'C-1/0', 'C-1_0.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_cobre_estanadas/C-1_0.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (37, 5, 'C-2', 'C-2.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_cobre_estanadas/C-2.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (38, 5, 'C-2/0', 'C-2_0.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_cobre_estanadas/C-2_0.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (39, 5, 'C-4', 'C-4.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_cobre_estanadas/C-4.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (40, 5, 'C-6', 'C-6.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_cobre_estanadas/C-6.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (41, 5, 'C-8', 'C-8.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_cobre_estanadas/C-8.jpg'));

-- 6. Terminales de Placa
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (42, 6, 'TM 1B', 'TM_1_B.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_1_B.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (43, 6, 'TM 2 BD', 'TM_2_BD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_BD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (44, 6, 'TM 2 BE', 'TM_2_BE.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_BE.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (45, 6, 'TM 2 BP', 'TM_2_BP.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_BP.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (46, 6, 'TM 2 BR', 'TM_2_BR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_BR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (47, 6, 'TM 2 LD', 'TM_2_LD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_LD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (48, 6, 'TM 2 LE', 'TM_2_LE.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_LE.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (49, 6, 'TM 2 LP', 'TM_2_LP.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_LP.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (50, 6, 'TM 2 LR', 'TM_2_LR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_2_LR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (51, 6, 'TM 3 BD', 'TM_3_BD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_3_BD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (52, 6, 'TM 3 BE', 'TM_3_BE.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_3_BE.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (53, 6, 'TM 3 BR', 'TM_3_BR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_3_BR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (54, 6, 'TM 3 LD', 'TM_3_LD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_3_LD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (55, 6, 'TM 3 LE', 'TM_3_LE.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_3_LE.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (56, 6, 'TM 3 LR', 'TM_3_LR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_3_LR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (57, 6, 'TM 4 B', 'TM_4_B.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_4_B.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (58, 6, 'TM 4 L', 'TM_4_L.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_4_L.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (59, 6, 'TM 5 BD', 'TM_5_BD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_5_BD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (60, 6, 'TM 5 BE', 'TM_5_BE.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_5_BE.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (61, 6, 'TM 5 BR', 'TM_5_BR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_5_BR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (62, 6, 'TM 5 LD', 'TM_5_LD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_5_LD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (63, 6, 'TM 5 LE', 'TM_5_LE.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_5_LE.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (64, 6, 'TM 5 LR', 'TM_5_LR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_5_LR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (65, 6, 'TM 9 DR', 'TM_9_DR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_9_DR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (66, 6, 'TM 9 ER', 'TM_9_ER.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_9_ER.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (67, 6, 'TM 9 N', 'TM_9_N.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_9_N.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (68, 6, 'TM 9 R', 'TM_9_R.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_9_R.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (69, 6, 'TM 10 E', 'TM_10_E.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_10_E.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (70, 6, 'TM 10 R', 'TM_10_R.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_10_R.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (71, 6, 'TM 11 3', 'TM_11.3.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_11.3.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (72, 6, 'TM 11 5', 'TM_11.5.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_11.5.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (73, 6, 'TM 12', 'TM_12.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_12.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (74, 6, 'TM 13 BR', 'TM_13_BR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_13_BR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (75, 6, 'TM 13 LR', 'TM_13_LR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_13_LR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (76, 6, 'TM 14', 'TM_14.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_14.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (77, 6, 'TM 16', 'TM 16', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_16.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (78, 6, 'TM 18', 'TM_18.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_18.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (79, 6, 'TM 19', 'TM_19.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_19.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (80, 6, 'TM 21', 'TM_21.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_21.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (81, 6, 'TM 22 R', 'TM_22_R.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_22_R.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (82, 6, 'TM 23 1 2', 'TM_23_1_2.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_23_1_2.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (83, 6, 'TM 23 3 8', 'TM_23_3_8.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_23_3_8.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (84, 6, 'TM 24 3', 'TM_24.3.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_24.3.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (85, 6, 'TM 24', 'TM_24.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_24.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (86, 6, 'TM 24 GDE', 'TM_24_GDE.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_24_GDE.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (87, 6, 'TM 25 BD', 'TM_25_BD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_25_BD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (88, 6, 'TM 25 BR', 'TM_25_BR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_25_BR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (89, 6, 'TM 25 LD', 'TM_25_LD.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_25_LD.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (90, 6, 'TM 25 LR', 'TM_25_LR.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_25_LR.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (91, 6, 'TM 26 BD', 'TM_26_BD.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_26_BD.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (92, 6, 'TM 26 BR', 'TM_26_BR.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_26_BR.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (93, 6, 'TM 26 LD', 'TM_26_LD.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_26_LD.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (94, 6, 'TM 26 LR', 'TM_26_LR.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_26_LR.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (95, 6, 'TM 27 B', 'TM_27_B.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_27_B.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (96, 6, 'TM 27 L', 'TM_27_L.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_27_L.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (97, 6, 'TM 28 B', 'TM_28_B.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_28_B.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (98, 6, 'TM 28 L', 'TM_28_L.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_28_L.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (99, 6, 'TM 29 B', 'TM_29_B.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_29_B.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (100, 6, 'TM 29 L', 'TM_29_L.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_29_L.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (101, 6, 'TM 31', 'TM_31.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_31.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (102, 6, 'TM 32 PLOMO', 'TM_32_PLOMO.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_32_PLOMO.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (103, 6, 'TM 33', 'TM_33.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_33.png'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (104, 6, 'TM 36 ORIGINAL LATON', 'TM_36_ORIGINAL_LATON.png', 'image/png', 'A', LOAD_FILE('C:/termex_img/terminales_placa/TM_36_ORIGINAL_LATON.png'));
-- INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (105, 6, '', '', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_placa/'));

-- 7. Terminales de zapata laminada cobradiza
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (106, 7, 'TM 114', 'TM_114.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_zapata_lamina_cobrizada/TM_114.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (107, 7, 'TM 113', 'TM_113.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_zapata_lamina_cobrizada/TM_113.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (108, 7, 'TM 112', 'TM_112.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_zapata_lamina_cobrizada/TM_112.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (109, 7, 'TM 44 A', 'TM_44_A.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_zapata_lamina_cobrizada/TM_44_A.jpg'));
INSERT INTO product (ID_PROD, ID_CAT, PROD_CODE, PROD_IMAGE_NAME, PROD_IMAGE_TYPE, PROD_STATUS, PROD_IMAGE) VALUES (110, 7, 'TM 42 A', 'TM_42_A.jpg', 'image/jpeg', 'A', LOAD_FILE('C:/termex_img/terminales_zapata_lamina_cobrizada/TM_42_A.jpg'));

-- Detalle del Producto

-- 1. Audio
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(1, 1, 'Audio TM 34C');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(1, 2, 'Audio TM 34C');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(2, 1, 'Audio TM 35 P');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(2, 2, 'Audio TM 35 P');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(3, 1, 'Audio TM 40');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(3, 2, 'Audio TM 40');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(4, 1, 'Audio TM 42');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(4, 2, 'Audio TM 42');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(5, 1, 'Audio TM 501');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(5, 2, 'Audio TM 501');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(6, 1, 'Audio TM 502C');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(6, 2, 'Audio TM 502C');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(7, 1, 'Audio TM 503L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(7, 2, 'Audio TM 503L');

-- 2. Conectores
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(8, 1, 'Conector TM 1450');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(8, 2, 'Connector TM 1450');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(9, 1, 'Conector TM 1451');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(9, 2, 'Connector TM 1451');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(10, 1, 'Conector TM 1452');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(10, 2, 'Connector TM 1452');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(11, 1, 'Conector TM 1497');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(11, 2, 'Connector TM 1497');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(12, 1, 'Conector TM 1498');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(12, 2, 'Connector TM 1498');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(13, 1, 'Conector TM 1499');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(13, 2, 'Connector TM 1499');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(14, 1, 'Conector TM 1500');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(14, 2, 'Connector TM 1500');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(15, 1, 'Conector TM 1501');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(15, 2, 'Connector TM 1501');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(16, 1, 'Conector TM 1501 A');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(16, 2, 'Connector TM 1501 A');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(17, 1, 'Conector TM 1502');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(17, 2, 'Connector TM 1502');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(18, 1, 'Concector TM 1503');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(18, 2, 'Connector TM 1503');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(19, 1, 'Conector TM 1503 A');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(19, 2, 'Connector TM 1503 A');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(20, 1, 'Conector TM 1504');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(20, 2, 'Connector TM 1504');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(21, 1, 'Conector TM 1506');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(21, 2, 'Connector TM 1506');

-- 3. Tapón Diesel
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(22, 1, 'Tapón Diesel TM 1019');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(22, 2, 'Diesel plug TM 1019');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(23, 1, 'Tapón Diesel TM 1020');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(23, 2, 'Diesel plug TM 1020');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(24, 1, 'Tapón Diesel TM 1021');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(24, 2, 'Diesel plug TM 1021');

-- 4. Terminales de Cobre
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(25, 1, 'Terminal de Cobre TM 101');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(25, 2, 'Copper terminal TM 101');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(26, 1, 'Terminal de Cobre TM 102');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(26, 2, 'Copper terminal TM 102');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(27, 1, 'Terminal de Cobre TM 103');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(27, 2, 'Copper terminal TM 103');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(28, 1, 'Terminal de Cobre TM 104');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(28, 2, 'Copper terminal TM 104');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(29, 1, 'Terminal de Cobre TM 105');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(29, 2, 'Copper terminal TM 105');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(30, 1, 'Terminal de Cobre TM 106');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(30, 2, 'Copper terminal TM 106');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(31, 1, 'Terminal de Cobre TM 107');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(31, 2, 'Copper terminal TM 107');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(32, 1, 'Terminal de Cobre TM 108');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(32, 2, 'Copper terminal TM 108');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(33, 1, 'Terminal de Cobre TM 109');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(33, 2, 'Copper terminal TM 109');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(34, 1, 'Terminal de Cobre TM 110');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(34, 2, 'Copper terminal TM 110');

-- 5. Terminales de Cobre Estañada
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(36, 1, 'Terminal de cobre estañada C-1/0');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(36, 2, 'Tinned Copper Terminal C-1/0');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(37, 1, 'Terminal de cobre estañada C-2');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(37, 2, 'Tinned Copper Terminal C-2');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(38, 1, 'Terminal de cobre estañada C-2/0');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(38, 2, 'Tinned Copper Terminal C-2/0');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(39, 1, 'Terminal de cobre estañada C-4');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(39, 2, 'Tinned Copper Terminal C-4');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(40, 1, 'Terminal de cobre estañada C-6');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(40, 2, 'Tinned Copper Terminal C-6');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(41, 1, 'Terminal de cobre estañada C-8');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(41, 2, 'Tinned Copper Terminal C-8');

-- 6. Terminales de Placa
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(42, 1, 'Terminal de Placa TM 1B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(42, 2, 'Terminal Plate TM 1B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(43, 1, 'Terminal de Placa TM 2 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(43, 2, 'Terminal Plate TM 2 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(44, 1, 'Terminal de Placa TM 2 BE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(44, 2, 'Terminal Plate TM 2 BE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(45, 1, 'Terminal de Placa TM 2 BP');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(45, 2, 'Terminal Plate TM 2 BP');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(46, 1, 'Terminal de Placa TM 2 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(46, 2, 'Terminal Plate TM 2 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(47, 1, 'Terminal de Placa TM 2 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(47, 2, 'Terminal Plate TM 2 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(48, 1, 'Terminal de Placa TM 2 LE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(48, 2, 'Terminal Plate TM 2 LE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(49, 1, 'Terminal de Placa TM 2 LP');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(49, 2, 'Terminal Plate TM 2 LP');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(50, 1, 'Terminal de Placa TM 2 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(50, 2, 'Terminal Plate TM 2 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(51, 1, 'Terminal de Placa TM 3 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(51, 2, 'Terminal Plate TM 3 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(52, 1, 'Terminal de Placa TM 3 BE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(52, 2, 'Terminal Plate TM 3 BE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(53, 1, 'Terminal de Placa TM 3 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(53, 2, 'Terminal Plate TM 3 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(54, 1, 'Terminal de Placa TM 3 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(54, 2, 'Terminal Plate TM 3 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(55, 1, 'Terminal de Placa TM 3 LE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(55, 2, 'Terminal Plate TM 3 LE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(56, 1, 'Terminal de Placa TM 3 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(56, 2, 'Terminal Plate TM 3 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(57, 1, 'Terminal de Placa TM 4 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(57, 2, 'Terminal Plate TM 4 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(58, 1, 'Terminal de Placa TM 4 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(58, 2, 'Terminal Plate TM 4 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(59, 1, 'Terminal de Placa TM 5 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(59, 2, 'Terminal Plate TM 5 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(60, 1, 'Terminal de Placa TM 5 BE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(60, 2, 'Terminal Plate TM 5 BE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(61, 1, 'Terminal de Placa TM 5 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(61, 2, 'Terminal Plate TM 5 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(62, 1, 'Terminal de Placa TM 5 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(62, 2, 'Terminal Plate TM 5 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(63, 1, 'Terminal de Placa TM 5 LE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(63, 2, 'Terminal Plate TM 5 LE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(64, 1, 'Terminal de Placa TM 5 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(64, 2, 'Terminal Plate TM 5 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(65, 1, 'Terminal de Placa TM 9 DR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(65, 2, 'Terminal Plate TM 9 DR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(66, 1, 'Terminal de Placa TM 9 ER');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(66, 2, 'Terminal Plate TM 9 ER');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(67, 1, 'Terminal de Placa TM 9 N');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(67, 2, 'Terminal Plate TM 9 N');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(68, 1, 'Terminal de Placa TM 9 R');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(68, 2, 'Terminal Plate TM 9 R');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(69, 1, 'Terminal de Placa TM 10 E');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(69, 2, 'Terminal Plate TM 10 E');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(70, 1, 'Terminal de Placa TM 10 R');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(70, 2, 'Terminal Plate TM 10 R');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(71, 1, 'Terminal de Placa TM 11 3');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(71, 2, 'Terminal Plate TM 11 3');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(72, 1, 'Terminal de Placa TM 11 5');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(72, 2, 'Terminal Plate TM TM 11 5');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(73, 1, 'Terminal de Placa TM 12');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(73, 2, 'Terminal Plate TM TM 12');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(74, 1, 'Terminal de Placa TM 13 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(74, 2, 'Terminal Plate TM TM 13 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(75, 1, 'Terminal de Placa TM 13 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(75, 2, 'Terminal Plate TM TM 13 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(76, 1, 'Terminal de Placa TM 14');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(76, 2, 'Terminal Plate TM TM 14');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(77, 1, 'Terminal de Placa TM 16');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(77, 2, 'Terminal Plate TM TM 16');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(78, 1, 'Terminal de Placa TM 18');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(78, 2, 'Terminal Plate TM TM 18');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(79, 1, 'Terminal de Placa TM 19');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(79, 2, 'Terminal Plate TM TM 19');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(80, 1, 'Terminal de Placa TM 21');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(80, 2, 'Terminal Plate TM TM 21');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(81, 1, 'Terminal de Placa TM 22 R');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(81, 2, 'Terminal Plate TM TM 22 R');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(82, 1, 'Terminal de Placa TM 23 1 2');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(82, 2, 'Terminal Plate TM 23 1 2');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(83, 1, 'Terminal de Placa TM 23 3 8');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(83, 2, 'Terminal Plate TM 23 3 8');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(84, 1, 'Terminal de Placa TM 24 3');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(84, 2, 'Terminal Plate TM 24 3');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(85, 1, 'Terminal de Placa TM 24');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(85, 2, 'Terminal Plate TM 24');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(86, 1, 'Terminal de Placa TM 24 GDE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(86, 2, 'Terminal Plate TM 24 GDE');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(87, 1, 'Terminal de Placa TM 25 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(87, 2, 'Terminal Plate TM 25 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(88, 1, 'Terminal de Placa TM 25 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(88, 2, 'Terminal Plate TM 25 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(89, 1, 'Terminal de Placa TM 25 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(89, 2, 'Terminal Plate TM 25 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(90, 1, 'Terminal de Placa TM 25 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(90, 2, 'Terminal Plate TM 25 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(91, 1, 'Terminal de Placa TM 26 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(91, 2, 'Terminal Plate TM 26 BD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(92, 1, 'Terminal de Placa TM 26 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(92, 2, 'Terminal Plate TM 26 BR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(93, 1, 'Terminal de Placa TM 26 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(93, 2, 'Terminal Plate TM 26 LD');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(94, 1, 'Terminal de Placa TM 26 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(94, 2, 'Terminal Plate TM 26 LR');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(95, 1, 'Terminal de Placa TM 27 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(95, 2, 'Terminal Plate TM 27 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(96, 1, 'Terminal de Placa TM 27 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(96, 2, 'Terminal Plate TM 27 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(97, 1, 'Terminal de Placa TM 28 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(97, 2, 'Terminal Plate TM 28 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(98, 1, 'Terminal de Placa TM 28 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(98, 2, 'Terminal Plate TM 28 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(99, 1, 'Terminal de Placa TM 29 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(99, 2, 'Terminal Plate TM 29 B');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(100, 1, 'Terminal de Placa TM 29 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(100, 2, 'Terminal Plate TM 29 L');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(101, 1, 'Terminal de Placa TM 31');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(101, 2, 'Terminal Plate TM 31');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(102, 1, 'Terminal de Placa TM 32 PLOMO');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(102, 2, 'Terminal Plate TM 32 PLOMO');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(103, 1, 'Terminal de Placa TM 33');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(103, 2, 'Terminal Plate TM 33');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(104, 1, 'Terminal de Placa TM 36 ORIGINAL LATON');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(104, 2, 'Terminal Plate TM 36 ORIGINAL LATON');

-- 7. Terminales de zapata laminada cobradiza
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(106, 1, 'Terminal zapata laminada cobradiza TM 114');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(106, 2, 'Terminal copper laminated shoe TM 114');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(107, 1, 'Terminal zapata laminada cobradiza TM 113');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(107, 2, 'Terminal copper laminated shoe TM 113');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(108, 1, 'Terminal zapata laminada cobradiza TM 112');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(108, 2, 'Terminal copper laminated shoe TM 112');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(109, 1, 'Terminal zapata laminada cobradiza TM 44 A');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(109, 2, 'Terminal copper laminated shoe TM 44 A');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(110, 1, 'Terminal zapata laminada cobradiza TM 42 A');
INSERT INTO product_detail(ID_PROD, ID_LANG, PRODD_DESCRIPTION) VALUES(110, 2, 'Terminal copper laminated shoe TM 42 A');
