-- ----------------------------
-- Registros de DEPENDIENTE
-- ----------------------------
INSERT INTO DEPENDIENTE VALUES ('1111', 'Alicia', 'F', '1988-04-05', 'HIJA', '333445555');
INSERT INTO DEPENDIENTE VALUES ('2222', 'Teodoro', 'M', '1983-10-25', 'HIJO', '333445555');
INSERT INTO DEPENDIENTE VALUES ('3333', 'Monica', 'F', '1978-05-03', 'ESPOSA', '333445555');
INSERT INTO DEPENDIENTE VALUES ('4444', 'Braulio', 'M', '1988-02-28', 'ESPOSO', '987654321');
INSERT INTO DEPENDIENTE VALUES ('5555', 'Michael', 'M', '1988-06-04', 'SOBRINO', '123456789');
INSERT INTO DEPENDIENTE VALUES ('6666', 'Petronila', 'F', '1987-12-31', 'HIJA', '123456789');
INSERT INTO DEPENDIENTE VALUES ('7777', 'Elizabeth', 'F', '1978-08-10', 'ESPOSA', '123456789');
INSERT INTO DEPENDIENTE VALUES ('8888', 'Andrea', 'M', '2011-07-14', 'HIJO', '888775555');

-- ----------------------------
-- Registros de PROYECTO
-- ----------------------------
INSERT INTO PROYECTO VALUES ('1', 'Econo', 'PROYECTO economia');
INSERT INTO PROYECTO VALUES ('2', 'Erp', 'Implementación erp');
INSERT INTO PROYECTO VALUES ('3', 'Diagnostico', 'Diagnostico de ventas');
INSERT INTO PROYECTO VALUES ('10', 'Automatizaci n', 'Automatizaci n de procesos');
INSERT INTO PROYECTO VALUES ('20', 'Reorganizaci n', 'Reorganizaci n de dependencias');
INSERT INTO PROYECTO VALUES ('30', 'Nuevos valores', 'Nuevos valores artículos');

-- ----------------------------
-- Registros de EMPLEADO
-- ----------------------------
INSERT INTO EMPLE VALUES ('123456780', 'DANIELA', 'PEREZ', '1975-07-20', '2001-04-25', 'CRRA 12 14-19', '1000000', '2', '1', 'F', '3');
INSERT INTO EMPLE VALUES ('123456789', 'DANIEL', 'MEJIA', '1980-02-04', '2010-02-02', null, '2000000', '3', '1', 'M', '2');
INSERT INTO EMPLE VALUES ('333445555', 'PEDRO', 'ALVAREZ', '0000-00-00', '2002-10-09', 'CRRA 12 14-19', '5000000', '15', '0', 'M', '2');
INSERT INTO EMPLE VALUES ('453453453', 'LUISA', 'MARIN', '1978-05-19', '2000-09-22', null, '1300000', '1', '1', 'F', '3');
INSERT INTO EMPLE VALUES ('666884444', 'DIEGO', 'OROZCO', '1985-09-12', '2011-09-12', 'CRRA 12 14-19', '1500000', '1', '0', 'M', '2');
INSERT INTO EMPLE VALUES ('888775555', 'MARIA JOSE', 'OSORIO', '1981-10-12', '1998-07-15', null, '9000000', '7', '1', 'F', '1');
INSERT INTO EMPLE VALUES ('987654321', 'DUVAN', 'VELEZ', '1979-01-22', '2009-08-14', 'CRRA 12 14-19', '900000', '1', '0', 'M', '4');
INSERT INTO EMPLE VALUES ('987987987', 'JUAN DAVID', 'PEREZ', '1980-06-21', '2009-08-01', null, '1800000', '3', '1', 'M', '3');
INSERT INTO EMPLE VALUES ('999887777', 'PABLO', 'DIAZ', '1972-08-14', '2003-01-01', 'CRRA 12 14-19', '4000000', '10', '0', 'M', '3');

-- ----------------------------
-- Registros de JEFE
-- ----------------------------
INSERT INTO JEFE VALUES ('1', '888775555', '1998-07-15', '0000-00-00', 'activo');
INSERT INTO JEFE VALUES ('2', '123456789', '2000-01-01', '2012-09-09', 'inactivo');
INSERT INTO JEFE VALUES ('2', '333445555', '2002-10-09', '0000-00-00', 'activo');
INSERT INTO JEFE VALUES ('3', '999887777', '2003-01-01', '0000-00-00', 'activo');

-- ----------------------------
-- Registros de AREA
-- ----------------------------
INSERT INTO AREA VALUES ('1', 'Dirección');
INSERT INTO AREA VALUES ('2', 'Ventas');
INSERT INTO AREA VALUES ('3', 'Investigación');
INSERT INTO AREA VALUES ('4', 'Sistemas');