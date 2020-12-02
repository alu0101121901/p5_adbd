USE `viveros`
DELIMITER $$
CREATE TRIGGER `updated_stock` BEFORE INSERT ON Producto FOR EACH ROW
BEGIN
  SET @newStock = (SELECT Stock FROM Producto WHERE CodBarras = NEW.CodBarras);
  SET @barCode = (SELECT CodBarras FROM Producto WHERE CodBarras = NEW.CodBarras);
  SET @quantity = (SELECT Cantidad FROM Pedido WHERE CodBarras = @barCode);
  SET @newStock = (@newStock - @quantity);
  IF (@newStock < 0) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La cantidad pedida de este producto es mayor a la disponible';
  ELSE
    UPDATE Producto SET Stock = @newStock WHERE CodBarras = NEW.CodBarras;
  END IF;
END $$
DELIMITER ;