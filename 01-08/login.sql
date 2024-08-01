-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/08/2024 às 13:37
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `login`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_cadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario`, `senha`, `nome`, `data_cadastro`) VALUES
(1, 'gigi', '81dc9bdb52d04dc20036dbd8313ed055', 'giovana', '2024-07-19 14:03:56'),
(2, 'brenda', '56468d5607a5aaf1604ff5e15593b003', 'Brenda', '2024-07-19 14:17:21'),
(3, 'helena', '202cb962ac59075b964b07152d234b70', 'Helena', '2024-07-19 14:18:42'),
(4, 'fabiano', '56468d5607a5aaf1604ff5e15593b003', 'Fabiano', '2024-07-19 14:26:26'),
(5, 'adriana', '202cb962ac59075b964b07152d234b70', 'Adriana', '2024-07-19 14:30:11'),
(6, 'teste1', '81dc9bdb52d04dc20036dbd8313ed055', 'Brenda', '2024-07-31 13:56:55'),
(7, 'teste', '202cb962ac59075b964b07152d234b70', 'danilo', '2024-08-01 08:31:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarioprof`
--

CREATE TABLE `usuarioprof` (
  `nome` varchar(100) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `especializacao` varchar(50) NOT NULL,
  `mestrado` varchar(50) NOT NULL,
  `doutorado` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarioprof`
--

INSERT INTO `usuarioprof` (`nome`, `usuario_id`, `usuario`, `senha`, `telefone`, `cidade`, `especializacao`, `mestrado`, `doutorado`, `email`, `data_cadastro`) VALUES
('Teste', 1, 'teste', '123', '15664532123', 'matao', 'n', 'n', 'n', 'n', '2024-08-01 11:30:46'),
('Danilo', 2, 'Tito', '123', '15664532123', 'Araraquara', 'Banco de Dados', 'Redes', 'Inteligência Artificial', 'danilo.123@etec', '2024-08-01 11:35:17');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Índices de tabela `usuarioprof`
--
ALTER TABLE `usuarioprof`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarioprof`
--
ALTER TABLE `usuarioprof`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
