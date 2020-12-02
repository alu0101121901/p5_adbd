USE `viveros`
DELIMITER $$
CREATE PROCEDURE `crear_email` (IN nombre VARCHAR(45), IN dominio VARCHAR(45), OUT correo_electronico VARCHAR(75))
BEGIN
  SET correo_electronico = CONCAT(nombre, '@', dominio);
END $$
DELIMITER ;