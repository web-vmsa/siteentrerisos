-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18-Jun-2021 às 16:34
-- Versão do servidor: 5.7.27-log
-- versão do PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `entrerisos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acoes`
--

CREATE TABLE `acoes` (
  `aco_id` int(10) UNSIGNED NOT NULL,
  `aco_nome` varchar(80) NOT NULL,
  `aco_local` varchar(80) NOT NULL,
  `aco_data` date NOT NULL,
  `aco_fotcapa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `acoes`
--

INSERT INTO `acoes` (`aco_id`, `aco_nome`, `aco_local`, `aco_data`, `aco_fotcapa`) VALUES
(1, 'Natal Feliz', 'Casa Geriatica', '2021-04-02', '27020.jpg'),
(2, 'Festa das crianças', 'Petrape', '2021-04-03', '1569.jpg'),
(3, 'Ação teste especial', 'Petrape', '2021-03-06', '26419.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `doutores`
--

CREATE TABLE `doutores` (
  `dou_id` int(6) UNSIGNED NOT NULL,
  `dou_nome` varchar(60) NOT NULL,
  `dou_foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `doutores`
--

INSERT INTO `doutores` (`dou_id`, `dou_nome`, `dou_foto`) VALUES
(3, 'Fred Oliveira', '4611.jpg'),
(4, 'Sandro Marques', '3975.JPG'),
(5, 'Eugênio Souza', '5142.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `fot_id` int(10) UNSIGNED NOT NULL,
  `aco_id` int(10) NOT NULL,
  `fot_codi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`fot_id`, `aco_id`, `fot_codi`) VALUES
(8, 1, '22715.jpg'),
(9, 3, '8000.jpg'),
(10, 3, '14931.jpg'),
(11, 1, '21532.jpg'),
(13, 2, '18461.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_id` int(10) UNSIGNED NOT NULL,
  `usu_nome` varchar(80) NOT NULL,
  `usu_email` varchar(80) NOT NULL,
  `usu_senha` varchar(35) NOT NULL,
  `usu_datcad` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usu_id`, `usu_nome`, `usu_email`, `usu_senha`, `usu_datcad`) VALUES
(3, 'Frederico Brigatte', 'frederico.brigatte@gmail.com', '570a90bfbf8c7eab5dc5d4e26832d5b1', '2021-04-04 11:54:13');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acoes`
--
ALTER TABLE `acoes`
  ADD PRIMARY KEY (`aco_id`),
  ADD UNIQUE KEY `aco_fotcapa` (`aco_fotcapa`);

--
-- Índices para tabela `doutores`
--
ALTER TABLE `doutores`
  ADD PRIMARY KEY (`dou_id`),
  ADD UNIQUE KEY `dou_foto` (`dou_foto`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`fot_id`),
  ADD UNIQUE KEY `fot_codi_UNIQUE` (`fot_codi`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_id`),
  ADD UNIQUE KEY `usu_email_UNIQUE` (`usu_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acoes`
--
ALTER TABLE `acoes`
  MODIFY `aco_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `doutores`
--
ALTER TABLE `doutores`
  MODIFY `dou_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `fot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
