USE `catastro`
DELIMITER $$
CREATE TRIGGER `limite_viviendas` BEFORE INSERT ON Persona FOR EACH ROW
BEGIN
  IF (((NEW.Uni_Numero IS NOT NULL) OR (NEW.Uni_Calle IS NOT NULL)) AND ((NEW.Piso_Nro_Piso IS NOT NULL) OR (NEW.Piso_Letra IS NOT NULL) OR (NEW.Piso_Numero IS NOT NULL) OR (NEW.Piso_Calle IS NOT NULL))) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ninguna persona puede vivir en más de un alojamiento';
  END IF;
END $$
DELIMITER ;