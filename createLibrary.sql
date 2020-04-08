-- MySQL Script generated by MySQL Workbench
-- Wed Apr  8 14:21:00 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `library` ;

-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 ;
USE `library` ;

-- -----------------------------------------------------
-- Table `library`.`book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library`.`book` ;

CREATE TABLE IF NOT EXISTS `library`.`book` (
  `idbook` INT NOT NULL AUTO_INCREMENT,
  `image` VARCHAR(45) NULL,
  `titulo` VARCHAR(200) NULL,
  `descripcion` VARCHAR(300) NULL,
  `autor` VARCHAR(60) NULL,
  `isbn` VARCHAR(45) NULL,
  `stock` INT NULL,
  `cantreserva` INT NOT NULL DEFAULT 0,
  `diaprestamo` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`idbook`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`login`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library`.`login` ;

CREATE TABLE IF NOT EXISTS `library`.`login` (
  `idlogin` INT NOT NULL AUTO_INCREMENT,
  `usertype` CHAR(1) NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`idlogin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library`.`usertype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library`.`usertype` ;

CREATE TABLE IF NOT EXISTS `library`.`usertype` (
  `idusertype` INT NOT NULL AUTO_INCREMENT,
  `valor` CHAR(1) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idusertype`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `library`.`book`
-- -----------------------------------------------------
START TRANSACTION;
USE `library`;
INSERT INTO `library`.`book` (`idbook`, `image`, `titulo`, `descripcion`, `autor`, `isbn`, `stock`, `cantreserva`, `diaprestamo`) VALUES (DEFAULT, 'images/autoeditar.jpg', 'Por qué autoeditar es el camino más corto para publicar tu libro', 'LA AUTOEDICIÓN es hoy la vía más directa para publicar un libro, tanto si quieres llegar al lector por tus medios como si buscas que una editorial tradicional comercialice tus obras.', 'UNO editorial', '978-84-17487-12-6', 10, DEFAULT, DEFAULT);
INSERT INTO `library`.`book` (`idbook`, `image`, `titulo`, `descripcion`, `autor`, `isbn`, `stock`, `cantreserva`, `diaprestamo`) VALUES (DEFAULT, 'images/amoryguerra.jpg', 'En el amor como en la guerra todo vale y nada cuenta', 'Dos personajes que se conocen a destiempo, y que parecían querer lo mismo, descubren con el paso del tiempo que lo que los separa es algo más que la distancia kilométrica.', 'Cristina Ramírez García', '978-84-17982-63-8', 5, DEFAULT, DEFAULT);
INSERT INTO `library`.`book` (`idbook`, `image`, `titulo`, `descripcion`, `autor`, `isbn`, `stock`, `cantreserva`, `diaprestamo`) VALUES (DEFAULT, 'images/marhabita.jpg', 'El mar que en mí habita', 'El mar que en mí habita, provoca un grito convertido en versos, en poemas en ocasiones desgarradores, en otros preñados de luz', 'Manu Parra', '978-84-17982-99-7', 5, DEFAULT, DEFAULT);
INSERT INTO `library`.`book` (`idbook`, `image`, `titulo`, `descripcion`, `autor`, `isbn`, `stock`, `cantreserva`, `diaprestamo`) VALUES (DEFAULT, 'images/soledad.jpg', 'Soledad', 'Es una muestra poética que en el futuro se verá continuada por un muy impactante relato autobiográfico', 'Alina Mihaela Zagan', '978-84-17982-72-0', 10, DEFAULT, DEFAULT);
INSERT INTO `library`.`book` (`idbook`, `image`, `titulo`, `descripcion`, `autor`, `isbn`, `stock`, `cantreserva`, `diaprestamo`) VALUES (DEFAULT, 'images/azulyverde', 'Azul, verde y a veces gris', 'Nace de un blog de la autora en el que, a modo de diario personal, comparte y comenta viajes, películas, exposiciones y literatura', 'Fabiola Fraile Díez', '978-84-17982-45-4', 2, DEFAULT, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `library`.`login`
-- -----------------------------------------------------
START TRANSACTION;
USE `library`;
INSERT INTO `library`.`login` (`idlogin`, `usertype`, `username`, `password`) VALUES (DEFAULT, 'T', 'Profesor', 'Library2020P');
INSERT INTO `library`.`login` (`idlogin`, `usertype`, `username`, `password`) VALUES (DEFAULT, 'S', 'Estudiante', 'Library2020S');

COMMIT;


-- -----------------------------------------------------
-- Data for table `library`.`usertype`
-- -----------------------------------------------------
START TRANSACTION;
USE `library`;
INSERT INTO `library`.`usertype` (`idusertype`, `valor`, `descripcion`) VALUES (DEFAULT, 'T', 'Profesor');
INSERT INTO `library`.`usertype` (`idusertype`, `valor`, `descripcion`) VALUES (DEFAULT, 'S', 'Estudiante');

COMMIT;

show tables;
select * from library.login;
select * from library.usertype;
select * from library.book;