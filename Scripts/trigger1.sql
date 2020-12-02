USE `viveros`
DELIMITER $$
CREATE TRIGGER `crear_email_before_insert` BEFORE INSERT ON Cliente FOR EACH ROW
BEGIN
  if NEW.Email IS NULL THEN
    CALL crear_email(NEW.Nombre, 'ull.edu.es', @correo);
    SET NEW.Email = @correo;
  END IF;
END $$
DELIMITER ;