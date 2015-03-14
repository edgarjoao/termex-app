
-- Agregar o editar imagenes en MySQL
UPDATE product
SET PROD_IMAGE = LOAD_FILE('C:/termex/TM_1019.jpg')
WHERE ID_PROD = 8;


-- Random Products
SELECT * FROM PRODUCT p
INNER JOIN product_detail pd
ON p.ID_PROD = pd.ID_PROD
WHERE pd.ID_LANG = 2 ORDER BY RAND() LIMIT 5;

-- Productos Paginados
SELECT * FROM product p
INNER JOIN product_detail pd
ON p.ID_PROD = pd.ID_PROD
WHERE pd.ID_LANG = 1
AND p.ID_CAT = 1
AND p.PROD_STATUS = 'A'
LIMIT 0, 10;