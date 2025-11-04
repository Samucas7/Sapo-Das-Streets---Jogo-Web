-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2025 às 11:32
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `meubanco`
--
CREATE DATABASE IF NOT EXISTS `meubanco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `meubanco`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`) VALUES
(1, 'Produto numero 1', 5.00),
(2, 'Camisola SL Benfica Principal 25/26', 80.00),
(3, 'Camisola Fama', 67.50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `datascore` datetime NOT NULL,
  `nickname` text NOT NULL,
  `score` int(11) NOT NULL,
  `game` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `scores`
--

INSERT INTO `scores` (`id`, `datascore`, `nickname`, `score`, `game`) VALUES
(17, '2025-06-20 10:14:18', 'Samuel', 30, 'Sapo das Streets'),
(19, '2025-06-20 10:30:47', 'Samuel', 2, 'Sapo das Streets'),
(20, '2025-06-20 10:31:01', 'Samuel', 16, 'Sapo das Streets'),
(21, '2025-06-20 11:28:40', 'Samuel', 22, 'Sapo das Streets');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `datavenda` date NOT NULL,
  `nomecliente` text NOT NULL,
  `emailcliente` text NOT NULL,
  `totalvenda` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `datavenda`, `nomecliente`, `emailcliente`, `totalvenda`) VALUES
(1, '2001-01-01', 'Samuxu Grill', 'samuxugrill@gmail.com', 20.00),
(3, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 10.00),
(4, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 10.00),
(5, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 20.00),
(6, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 0.60),
(7, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 0.60),
(8, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 0.60),
(9, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 0.60),
(10, '2001-01-07', 'Samuxu Grill', 'samuxugrill@gmail.com', 2.80),
(11, '2011-03-16', 'Tiago Fontes', 'tiagofontes1973@hotmail.com', 4.00),
(12, '2011-06-16', 'Tiago Fontes', 'tiagofontes1973@hotmail.com', 4.00),
(13, '2011-06-02', 'Tiago Fontes', 'tiagofontes1973@hotmail.com', 4.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
