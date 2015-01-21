
-- Agregar o editar imagenes en MySQL
UPDATE product
SET PROD_IMAGE = LOAD_FILE('C:/termex/TM_1019.jpg')
WHERE ID_PROD = 8;