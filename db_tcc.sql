-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_tcc
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `cd_instituicao_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `cd_aluno` int(11) DEFAULT NULL,
  `nm_aluno` varchar(20) DEFAULT NULL,
  `cd_cpf_aluno` int(11) DEFAULT NULL,
  `nm_tel_aluno` varchar(15) DEFAULT NULL,
  `nm_cel_aluno` varchar(15) DEFAULT NULL,
  `nm_email_aluno` varchar(256) DEFAULT NULL,
  `dt_nascimento_aluno` date DEFAULT NULL,
  `cd_matricula_aluno` varchar(6) DEFAULT NULL,
  `nm_pseudonimo_aluno` varchar(50) DEFAULT NULL,
  `nm_usuario_criou_aluno` varchar(20) DEFAULT NULL,
  `dt_criacao_aluno` date DEFAULT NULL,
  `nm_usuairo_alterou_aluno` varchar(20) DEFAULT NULL,
  `dt_alteracao_aluno` date DEFAULT NULL,
  PRIMARY KEY (`cd_instituicao_aluno`),
  KEY `fk_nm_usuario_criou_aluno` (`nm_usuario_criou_aluno`),
  KEY `fk_nm_usuairo_alterou_aluno` (`nm_usuairo_alterou_aluno`),
  CONSTRAINT `fk_nm_usuairo_alterou_aluno` FOREIGN KEY (`nm_usuairo_alterou_aluno`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_aluno` FOREIGN KEY (`nm_usuario_criou_aluno`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `areaconhecimento`
--

DROP TABLE IF EXISTS `areaconhecimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areaconhecimento` (
  `cd_areaConhecimento` int(11) NOT NULL,
  `desc_areaConhecimento` varchar(50) DEFAULT NULL,
  `nm_usuario_criou_areaConhecimento` varchar(20) NOT NULL,
  `nm_usuario_alterou_areaConhecimento` varchar(20) NOT NULL,
  `dt_criacao_areaConhecimento` date DEFAULT NULL,
  `dt_alteracao_areaConhecimento` date DEFAULT NULL,
  PRIMARY KEY (`cd_areaConhecimento`),
  KEY `fk_nm_usuario_criou_areaConhecimento` (`nm_usuario_criou_areaConhecimento`),
  KEY `fk_nm_usuairo_alterou_areaConhecimento` (`nm_usuario_alterou_areaConhecimento`),
  CONSTRAINT `fk_nm_usuairo_alterou_areaConhecimento` FOREIGN KEY (`nm_usuario_alterou_areaConhecimento`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_areaConhecimento` FOREIGN KEY (`nm_usuario_criou_areaConhecimento`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assunto`
--

DROP TABLE IF EXISTS `assunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assunto` (
  `cd_assunto` int(11) NOT NULL AUTO_INCREMENT,
  `nm_assunto` varchar(50) DEFAULT NULL,
  `nm_usuario_criou_assunto` varchar(20) DEFAULT NULL,
  `dt_criacao_assunto` date DEFAULT NULL,
  `nm_usuairo_alterou_assunto` varchar(20) DEFAULT NULL,
  `dt_alteracao_assunto` date DEFAULT NULL,
  PRIMARY KEY (`cd_assunto`),
  KEY `fk_nm_usuario_criou_assunto` (`nm_usuario_criou_assunto`),
  KEY `fk_nm_usuairo_alterou_assunto` (`nm_usuairo_alterou_assunto`),
  CONSTRAINT `fk_nm_usuairo_alterou_assunto` FOREIGN KEY (`nm_usuairo_alterou_assunto`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_assunto` FOREIGN KEY (`nm_usuario_criou_assunto`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cd_instituicao_curso` int(11) NOT NULL,
  `cd_curso` int(11) NOT NULL,
  `nm_curso` varchar(50) DEFAULT NULL,
  `nm_abreviado_curso` varchar(4) DEFAULT NULL,
  `nm_tipo_modalidade_curso` varchar(20) DEFAULT NULL,
  `nm_usuario_criou_curso` varchar(20) DEFAULT NULL,
  `dt_criacao_curso` date DEFAULT NULL,
  `nm_usuario_alterou_curso` varchar(20) DEFAULT NULL,
  `dt_alteracao_curso` date DEFAULT NULL,
  PRIMARY KEY (`cd_curso`),
  KEY `fk_nm_usuario_criou_curso` (`nm_usuario_criou_curso`),
  KEY `fk_nm_usuario_alterou_curso` (`nm_usuario_alterou_curso`),
  CONSTRAINT `fk_nm_usuario_alterou_curso` FOREIGN KEY (`nm_usuario_alterou_curso`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_curso` FOREIGN KEY (`nm_usuario_criou_curso`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instituicao`
--

DROP TABLE IF EXISTS `instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instituicao` (
  `cd_instituicao` int(11) NOT NULL,
  `nm_instituicao` varchar(50) DEFAULT NULL,
  `cd_cnpj_instituicao` int(11) DEFAULT NULL,
  `nm_razao_social_instituicao` varchar(50) DEFAULT NULL,
  `nm_usuario_criou_instituicao` varchar(20) DEFAULT NULL,
  `dt_criacao_instituicao` date DEFAULT NULL,
  `nm_usuario_alterou_instituicao` varchar(20) DEFAULT NULL,
  `dt_alteracao_instituicao` date DEFAULT NULL,
  PRIMARY KEY (`cd_instituicao`),
  KEY `fk_nm_usuario_criou_instituicao` (`nm_usuario_criou_instituicao`),
  KEY `fk_nm_usuario_alterou_instituicao` (`nm_usuario_alterou_instituicao`),
  CONSTRAINT `fk_nm_usuario_alterou_instituicao` FOREIGN KEY (`nm_usuario_alterou_instituicao`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_instituicao` FOREIGN KEY (`nm_usuario_criou_instituicao`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orientador`
--

DROP TABLE IF EXISTS `orientador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orientador` (
  `cd_instituicao_orientador` int(11) NOT NULL AUTO_INCREMENT,
  `cd_orientador` int(11) DEFAULT NULL,
  `nm_orientador` varchar(50) DEFAULT NULL,
  `cd_cpf_orientador` int(11) DEFAULT NULL,
  `nm_tel_orientador` varchar(15) DEFAULT NULL,
  `nm_cel_orientador` varchar(15) DEFAULT NULL,
  `nm_email_orientador` varchar(256) DEFAULT NULL,
  `dt_nascimento_orientador` date DEFAULT NULL,
  `cd_matricula_rm_orientador` varchar(4) DEFAULT NULL,
  `nm_pseudonimo_orientador` varchar(50) DEFAULT NULL,
  `nm_grauinstrucao_orientador` varchar(20) DEFAULT NULL,
  `nm_usuario_criou_orientador` varchar(20) DEFAULT NULL,
  `dt_criacao_orientador` date DEFAULT NULL,
  `nm_usuairo_alterou_orientador` varchar(20) DEFAULT NULL,
  `dt_alteracao_orientador` date DEFAULT NULL,
  PRIMARY KEY (`cd_instituicao_orientador`),
  KEY `fk_nm_usuario_criou_orientador` (`nm_usuario_criou_orientador`),
  KEY `fk_nm_usuairo_alterou_orientador` (`nm_usuairo_alterou_orientador`),
  CONSTRAINT `fk_nm_usuairo_alterou_orientador` FOREIGN KEY (`nm_usuairo_alterou_orientador`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_orientador` FOREIGN KEY (`nm_usuario_criou_orientador`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subareaconhecimento`
--

DROP TABLE IF EXISTS `subareaconhecimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subareaconhecimento` (
  `cd_areaConhecimento` int(11) NOT NULL,
  `cd_subAreaConhecimento` int(11) NOT NULL,
  `desc_subAreaConhecimento` varchar(50) DEFAULT NULL,
  `nm_usuario_criou_subAareaConhecimento` varchar(20) DEFAULT NULL,
  `dt_cricao_subAreaConhecimento` date DEFAULT NULL,
  `nm_usuario_alterou_subAreaConhecimento` varchar(20) DEFAULT NULL,
  `dt_alteracao_subAreaConhecimento` date DEFAULT NULL,
  PRIMARY KEY (`cd_subAreaConhecimento`),
  KEY `fk_area_conhecimento_sub_area_conhecimento` (`cd_areaConhecimento`),
  KEY `fk_nm_usuario_criou_subAreaConhecimento` (`nm_usuario_criou_subAareaConhecimento`),
  KEY `fk_nm_usuairo_alterou_subAreaConhecimento` (`nm_usuario_alterou_subAreaConhecimento`),
  CONSTRAINT `fk_area_conhecimento_sub_area_conhecimento` FOREIGN KEY (`cd_areaConhecimento`) REFERENCES `areaconhecimento` (`cd_areaConhecimento`),
  CONSTRAINT `fk_nm_usuairo_alterou_subAreaConhecimento` FOREIGN KEY (`nm_usuario_alterou_subAreaConhecimento`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_subAreaConhecimento` FOREIGN KEY (`nm_usuario_criou_subAareaConhecimento`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcc`
--

DROP TABLE IF EXISTS `tcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcc` (
  `nm_classificacao_tcc` int(11) DEFAULT NULL,
  `nm_cutter_tcc` varchar(20) DEFAULT NULL,
  `nm_titulo_tcc` varchar(256) DEFAULT NULL,
  `nm_local_tcc` varchar(50) DEFAULT NULL,
  `cd_instituicao_tcc` int(11) DEFAULT NULL,
  `nm_arquivo_tcc` varchar(260) DEFAULT NULL,
  `an_tcc` int(11) DEFAULT NULL,
  `qt_numero_paginas_tcc` int(11) DEFAULT NULL,
  `dt_entrega_tcc` date DEFAULT NULL,
  `cd_curso_tcc` int(11) DEFAULT NULL,
  `cd_aluno_tcc` int(11) DEFAULT NULL,
  `cd_orientador_tcc` int(11) DEFAULT NULL,
  `cd_areacon_tcc` int(11) DEFAULT NULL,
  `cd_subareacon_tcc` int(11) DEFAULT NULL,
  `cd_tombo_tcc` int(11) DEFAULT NULL,
  `dt_inclusao_tcc` date DEFAULT NULL,
  `nm_usuario_criou_tcc` varchar(50) DEFAULT NULL,
  `dt_criacao_tcc` date DEFAULT NULL,
  `nm_usuario_alterou_tcc` varchar(50) DEFAULT NULL,
  `dt_alteracao_tcc` date DEFAULT NULL,
  KEY `fk_nm_usuario_criou_tcc` (`nm_usuario_criou_tcc`),
  KEY `fk_nm_usuario_alterou_tcc` (`nm_usuario_alterou_tcc`),
  CONSTRAINT `fk_nm_usuario_alterou_tcc` FOREIGN KEY (`nm_usuario_alterou_tcc`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`),
  CONSTRAINT `fk_nm_usuario_criou_tcc` FOREIGN KEY (`nm_usuario_criou_tcc`) REFERENCES `usuariosistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuariosistema`
--

DROP TABLE IF EXISTS `usuariosistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariosistema` (
  `cd_usuarioSistema` int(11) NOT NULL AUTO_INCREMENT,
  `nm_usuarioSistema` varchar(50) DEFAULT NULL,
  `nm_nick_usuarioSistema` varchar(20) DEFAULT NULL,
  `cd_cpf_usuarioSistema` int(11) DEFAULT NULL,
  `nm_email_usuarioSistema` varchar(256) DEFAULT NULL,
  `nm_criou_usuarioSistema` varchar(20) DEFAULT NULL,
  `dt_criacao_usuarioSistema` date DEFAULT NULL,
  `nm_alterou_usuarioSistema` varchar(20) DEFAULT NULL,
  `dt_modificacao_usuarioSistema` date DEFAULT NULL,
  PRIMARY KEY (`cd_usuarioSistema`),
  UNIQUE KEY `nm_nick_usuarioSistema` (`nm_nick_usuarioSistema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-11 20:26:06
