INSERT INTO `viveros`.`Empleado` (`DNI`, `Nombre`, `Sueldo`, `NSegSocial`, `FechaInicio`, `FechaFin`, `CodigoZona`) VALUES ('111111', 'María Dolores', 1500, 333333, '14-4-92', NULL, 22222);
INSERT INTO `viveros`.`Cliente` (`DNI`, `CodFid`, `Bonificacion`, `VolumenMensual`, `FechaNac`, `Nombre`, `Email`) VALUES ('44444444', '12122222', 1000, 1000, '3-1-97', 'David', NULL);
INSERT INTO `viveros`.`Producto` (`Fecha`, `CodBarras`, `Nombre`, `Tipo`, `Stock`, `Precio`, `CodZona`) VALUES ('20-10-20', '313131313131', 'Naranja', 'Fruta', 10, 15, 22222);
INSERT INTO `viveros`.`Pedido` (`CodPedidio`, `Importe`, `Fecha`, `CodBarras`, `DNI Cliente`, `DNI Empleado`, `Cantidad`) VALUES (121212, 300, '20-11-20', '313131313131', '44444444', '111111', '22');

-- Catastros --

INSERT INTO `catastro`.`Persona` (`Dni`, `Nombre`, `Telefono`, `Uni_Numero`, `Uni_Calle`, `Piso_Nro_Piso`, `Piso_Letra`, `Piso_Numero`, `Piso_Calle`, `Cabeza_Familia`) VALUES ('3333333', 'Daniel', NULL, 15, 'Las Islas', 10, NULL, NULL, NULL, NULL);
