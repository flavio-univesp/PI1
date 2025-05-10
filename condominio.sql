-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/05/2025 às 00:01
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
-- Banco de dados: `condominio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `razao_social` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `disponibilidade` varchar(255) NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `tipo_servico_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `empresas`
--

INSERT INTO `empresas` (`id`, `razao_social`, `email`, `telefone`, `senha`, `descricao`, `disponibilidade`, `valor`, `tipo_servico_id`) VALUES
(4, 'Empresa 01 Manutenção', 'empresa01@example.com', '(11) 90000-0004', 'NovaSenha421', 'Serviços gerais de manutenção.', 'Segunda a Sexta (horário comercial)', 100.00, 1),
(5, 'Empresa 02 Beleza', 'empresa02@example.com', '(11) 90000-0005', '1234', 'Salão de beleza completo.', 'Segunda a Sexta (parte da manhã)', 120.00, 2),
(6, 'Empresa 03 Limpeza', 'empresa03@example.com', '(11) 90000-0006', '1234', 'Limpeza residencial e comercial.', 'Segunda a Sexta (parte da tarde)', 90.00, 3),
(7, 'Empresa 04 Reforma', 'empresa04@example.com', '(11) 90000-0007', '1234', 'Reformas rápidas e eficientes.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 250.00, 4),
(8, 'Empresa 05 Jardinagem', 'empresa05@example.com', '(11) 90000-0008', '1234', 'Serviços completos de jardinagem.', 'Segunda a Sexta (horário comercial)', 110.00, 5),
(9, 'Empresa 06 Manutenção', 'empresa06@example.com', '(11) 90000-0009', '1234', 'Manutenção predial e industrial.', 'Segunda a Sexta (parte da manhã)', 130.00, 1),
(10, 'Empresa 07 Beleza', 'empresa07@example.com', '(11) 90000-0010', '1234', 'Tratamentos estéticos.', 'Segunda a Sexta (parte da tarde)', 140.00, 2),
(11, 'Empresa 08 Limpeza', 'empresa08@example.com', '(11) 90000-0011', '1234', 'Limpeza pós-obra.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 150.00, 3),
(12, 'Empresa 09 Reforma', 'empresa09@example.com', '(11) 90000-0012', '1234', 'Reformas residenciais.', 'Segunda a Sexta (horário comercial)', 200.00, 4),
(13, 'Empresa 10 Jardinagem', 'empresa10@example.com', '(11) 90000-0013', '1234', 'Paisagismo e manutenção.', 'Segunda a Sexta (parte da manhã)', 95.00, 5),
(14, 'Empresa 11 Manutenção', 'empresa11@example.com', '(11) 90000-0014', '1234', 'Serviços rápidos de manutenção.', 'Segunda a Sexta (parte da tarde)', 85.00, 1),
(15, 'Empresa 12 Beleza', 'empresa12@example.com', '(11) 90000-0015', '1234', 'Design de unhas e cabelo.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 110.00, 2),
(16, 'Empresa 13 Limpeza', 'empresa13@example.com', '(11) 90000-0016', '1234', 'Limpeza detalhada.', 'Segunda a Sexta (horário comercial)', 100.00, 3),
(17, 'Empresa 14 Reforma', 'empresa14@example.com', '(11) 90000-0017', '1234', 'Pequenas reformas.', 'Segunda a Sexta (parte da manhã)', 190.00, 4),
(18, 'Empresa 15 Jardinagem', 'empresa15@example.com', '(11) 90000-0018', '1234', 'Cuidados com hortas.', 'Segunda a Sexta (parte da tarde)', 105.00, 5),
(19, 'Empresa 16 Manutenção', 'empresa16@example.com', '(11) 90000-0019', '1234', 'Manutenção elétrica e hidráulica.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 210.00, 1),
(20, 'Empresa 17 Beleza', 'empresa17@example.com', '(11) 90000-0020', '1234', 'Estética facial.', 'Segunda a Sexta (horário comercial)', 130.00, 2),
(21, 'Empresa 18 Limpeza', 'empresa18@example.com', '(11) 90000-0021', '1234', 'Limpeza pesada.', 'Segunda a Sexta (parte da manhã)', 160.00, 3),
(22, 'Empresa 19 Reforma', 'empresa19@example.com', '(11) 90000-0022', '1234', 'Reformas estruturais.', 'Segunda a Sexta (parte da tarde)', 300.00, 4),
(23, 'Empresa 20 Jardinagem', 'empresa20@example.com', '(11) 90000-0023', '1234', 'Decoração de jardins.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 120.00, 5),
(24, 'Empresa 21 Manutenção', 'empresa21@example.com', '(11) 90000-0024', '1234', 'Pequenos reparos.', 'Segunda a Sexta (horário comercial)', 95.00, 1),
(25, 'Empresa 22 Beleza', 'empresa22@example.com', '(11) 90000-0025', '1234', 'Salão de beleza.', 'Segunda a Sexta (parte da manhã)', 125.00, 2),
(26, 'Empresa 23 Limpeza', 'empresa23@example.com', '(11) 90000-0026', '1234', 'Limpeza de vidros.', 'Segunda a Sexta (parte da tarde)', 105.00, 3),
(27, 'Empresa 24 Reforma', 'empresa24@example.com', '(11) 90000-0027', '1234', 'Reformas comerciais.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 270.00, 4),
(28, 'Empresa 25 Jardinagem', 'empresa25@example.com', '(11) 90000-0028', '1234', 'Serviços verdes.', 'Segunda a Sexta (horário comercial)', 115.00, 5),
(29, 'Empresa 26 Manutenção', 'empresa26@example.com', '(11) 90000-0029', '1234', 'Manutenção preventiva.', 'Segunda a Sexta (parte da manhã)', 135.00, 1),
(30, 'Empresa 27 Beleza', 'empresa27@example.com', '(11) 90000-0030', '1234', 'Cortes e penteados.', 'Segunda a Sexta (parte da tarde)', 140.00, 2),
(31, 'Empresa 28 Limpeza', 'empresa28@example.com', '(11) 90000-0031', '1234', 'Limpeza industrial.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 175.00, 3),
(32, 'Empresa 29 Reforma', 'empresa29@example.com', '(11) 90000-0032', '1234', 'Reformas rápidas.', 'Segunda a Sexta (horário comercial)', 230.00, 4),
(33, 'Empresa 30 Jardinagem', 'empresa30@example.com', '(11) 90000-0033', '1234', 'Jardinagem de precisão.', 'Segunda a Sexta (parte da manhã)', 125.00, 5),
(34, 'Empresa 31 Manutenção', 'empresa31@example.com', '(11) 90000-0034', '1234', 'Reparos elétricos.', 'Segunda a Sexta (parte da tarde)', 145.00, 1),
(35, 'Empresa 32 Beleza', 'empresa32@example.com', '(11) 90000-0035', '1234', 'Maquiagem profissional.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 115.00, 2),
(36, 'Empresa 33 Limpeza', 'empresa33@example.com', '(11) 90000-0036', '1234', 'Limpeza semanal.', 'Segunda a Sexta (horário comercial)', 100.00, 3),
(37, 'Empresa 34 Reforma', 'empresa34@example.com', '(11) 90000-0037', '1234', 'Projetos de reformas.', 'Segunda a Sexta (parte da manhã)', 280.00, 4),
(38, 'Empresa 35 Jardinagem', 'empresa35@example.com', '(11) 90000-0038', '1234', 'Podas e manutenção.', 'Segunda a Sexta (parte da tarde)', 105.00, 5),
(39, 'Empresa 36 Manutenção', 'empresa36@example.com', '(11) 90000-0039', '1234', 'Instalação elétrica.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 195.00, 1),
(40, 'Empresa 37 Beleza', 'empresa37@example.com', '(11) 90000-0040', '1234', 'Spa completo.', 'Segunda a Sexta (horário comercial)', 180.00, 2),
(41, 'Empresa 38 Limpeza', 'empresa38@example.com', '(11) 90000-0041', '1234', 'Faxina pesada.', 'Segunda a Sexta (parte da manhã)', 140.00, 3),
(42, 'Empresa 39 Reforma', 'empresa39@example.com', '(11) 90000-0042', '1234', 'Projetos e reformas.', 'Segunda a Sexta (parte da tarde)', 310.00, 4),
(43, 'Empresa 40 Jardinagem', 'empresa40@example.com', '(11) 90000-0043', '1234', 'Paisagismo.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 130.00, 5),
(44, 'Empresa 41 Manutenção', 'empresa41@example.com', '(11) 90000-0044', '1234', 'Manutenção hidráulica.', 'Segunda a Sexta (horário comercial)', 105.00, 1),
(45, 'Empresa 42 Beleza', 'empresa42@example.com', '(11) 90000-0045', '1234', 'Manicure e pedicure.', 'Segunda a Sexta (parte da manhã)', 95.00, 2),
(46, 'Empresa 43 Limpeza', 'empresa43@example.com', '(11) 90000-0046', '1234', 'Limpeza rápida.', 'Segunda a Sexta (parte da tarde)', 85.00, 3),
(47, 'Empresa 44 Reforma', 'empresa44@example.com', '(11) 90000-0047', '1234', 'Reformas completas.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 260.00, 4),
(48, 'Empresa 45 Jardinagem', 'empresa45@example.com', '(11) 90000-0048', '1234', 'Serviços ecológicos.', 'Segunda a Sexta (horário comercial)', 125.00, 5),
(49, 'Empresa 46 Manutenção', 'empresa46@example.com', '(11) 90000-0049', '1234', 'Revisão de equipamentos.', 'Segunda a Sexta (parte da manhã)', 150.00, 1),
(50, 'Empresa 47 Beleza', 'empresa47@example.com', '(11) 90000-0050', '1234', 'Tratamento capilar.', 'Segunda a Sexta (parte da tarde)', 160.00, 2),
(51, 'Empresa 48 Limpeza', 'empresa48@example.com', NULL, '1234', 'Limpeza express.', 'Segunda a Sábado (horário comercial - Sábado até 12h)', 170.00, 3),
(52, 'Empresa 49 Reforma', 'empresa49@example.com', NULL, '1234', 'Obras rápidas.', 'Segunda a Sexta (horário comercial)', 300.00, 4),
(53, 'Empresa 50 Jardinagem', 'empresa50@example.com', NULL, '1234', 'Plantio e manutenção.', 'Segunda a Sexta (parte da manhã)', 135.00, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `moradores`
--

CREATE TABLE `moradores` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `sexo` enum('Masculino','Feminino') DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `moradores`
--

INSERT INTO `moradores` (`id`, `nome_completo`, `senha`, `email`, `telefone`, `sexo`, `data_nascimento`, `cidade`, `estado`, `endereco`) VALUES
(1, 'Andre Teste', 'NovaSenha578', 'andre@email.com', '11999999999', 'Masculino', '1990-01-01', 'São Paulo', 'SP', 'Rua Exemplo 123'),
(3, 'André Felipe Jardim Firmo', '1234', 'andre1@email.com', '15996079808', 'Masculino', '1997-02-24', 'Sorocaba', 'SP', 'rua 1'),
(5, 'Flavio Jorge de Medeiros', '123456', 'pessoal@hotmial.com', '1199999999', 'Masculino', '2010-07-08', 'Indaiatuba', 'SP', 'R Benedito, 128'),
(6, 'Flavio Jorge de Medeiros', '123456', '23205233@aluno.univesp.br', '193333-0930', 'Masculino', '1974-01-01', 'Indaiatuba', 'SP', 'R Salazar, 23, Apt23, Bloco 32'),
(7, 'hdwhdlwk', '123456', 'empresa02@example.com', '1985369756', 'Masculino', '1980-01-01', 'Campinas', 'SP', 'R Salazar, 23, Apt23, Bloco 32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_servico`
--

CREATE TABLE `tipos_servico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipos_servico`
--

INSERT INTO `tipos_servico` (`id`, `nome`) VALUES
(1, 'Manutenção'),
(2, 'Reforma'),
(3, 'Beleza'),
(4, 'Alimentação'),
(5, 'Administrativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `moradores`
--
ALTER TABLE `moradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `tipos_servico`
--
ALTER TABLE `tipos_servico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `moradores`
--
ALTER TABLE `moradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tipos_servico`
--
ALTER TABLE `tipos_servico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
