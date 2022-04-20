-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Abr-2022 às 16:31
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ordem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nome` varchar(45) NOT NULL,
  `categoria_ativa` tinyint(1) DEFAULT NULL,
  `categoria_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`categoria_id`, `categoria_nome`, `categoria_ativa`, `categoria_data_alteracao`) VALUES
(1, 'Games 1', 0, '2022-01-29 23:31:35'),
(2, 'Games Tradicionais', 1, '2022-01-22 17:28:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `cliente_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `cliente_tipo` tinyint(1) DEFAULT NULL,
  `cliente_nome` varchar(45) NOT NULL,
  `cliente_sobrenome` varchar(150) NOT NULL,
  `cliente_data_nascimento` date NOT NULL,
  `cliente_cpf_cnpj` varchar(20) NOT NULL,
  `cliente_rg_ie` varchar(20) NOT NULL,
  `cliente_email` varchar(50) NOT NULL,
  `cliente_telefone` varchar(20) NOT NULL,
  `cliente_celular` varchar(20) NOT NULL,
  `cliente_cep` varchar(10) NOT NULL,
  `cliente_endereco` varchar(155) NOT NULL,
  `cliente_numero_endereco` varchar(20) NOT NULL,
  `cliente_bairro` varchar(45) NOT NULL,
  `cliente_complemento` varchar(145) NOT NULL,
  `cliente_cidade` varchar(105) NOT NULL,
  `cliente_estado` varchar(2) NOT NULL,
  `cliente_nome_pai` varchar(45) NOT NULL,
  `cliente_nome_mae` varchar(45) NOT NULL,
  `cliente_ativo` tinyint(1) NOT NULL,
  `cliente_obs` tinytext DEFAULT NULL,
  `cliente_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `cliente_data_cadastro`, `cliente_tipo`, `cliente_nome`, `cliente_sobrenome`, `cliente_data_nascimento`, `cliente_cpf_cnpj`, `cliente_rg_ie`, `cliente_email`, `cliente_telefone`, `cliente_celular`, `cliente_cep`, `cliente_endereco`, `cliente_numero_endereco`, `cliente_bairro`, `cliente_complemento`, `cliente_cidade`, `cliente_estado`, `cliente_nome_pai`, `cliente_nome_mae`, `cliente_ativo`, `cliente_obs`, `cliente_data_alteracao`) VALUES
(2, '2022-01-02 19:57:39', 1, 'Luis Paulo', 'Jorge', '1977-04-10', '09765412399', '107752071', 'luiz@gmail.com', '2133334445', '21988888888', '24111-220', 'Joao Brasil', '23', 'Engenhoca', 'Fundos', 'Niteroi', 'RJ', '', '', 1, 'Inserção de dados para teste', '2022-03-09 18:44:39'),
(3, '2022-03-13 19:28:13', 1, 'Monique', 'Rangel', '1988-05-19', '009.913.314-86', '107753072', 'monique@gmail.com', '2198852312', '21988523124', '23444-555', 'Das violetas', '23', 'Centro', '-', 'Marica', 'RJ', '', '', 1, 'teste de inserçao', '2022-03-13 20:35:56'),
(4, '2022-04-03 18:29:18', 2, 'Stone Pagamentos', 'Stone', '2022-04-01', '16.501.555/0002-38', '', 'stone@stone.com.br', '2130049680', '2130049680', '20021-290', 'Rua do Passeio', '38', 'Centro', '-', 'Rio de Janeiro', 'RJ', '', '', 1, 'Empresa domsalario', '2022-04-03 18:29:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_pagar`
--

CREATE TABLE `contas_pagar` (
  `conta_pagar_id` int(11) NOT NULL,
  `conta_pagar_fornecedor_id` int(11) DEFAULT NULL,
  `conta_pagar_data_vencimento` date DEFAULT NULL,
  `conta_pagar_data_pagamento` datetime DEFAULT NULL,
  `conta_pagar_valor` varchar(15) DEFAULT NULL,
  `conta_pagar_status` tinyint(1) DEFAULT NULL,
  `conta_pagar_obs` tinytext DEFAULT NULL,
  `conta_pagar_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';

--
-- Extraindo dados da tabela `contas_pagar`
--

INSERT INTO `contas_pagar` (`conta_pagar_id`, `conta_pagar_fornecedor_id`, `conta_pagar_data_vencimento`, `conta_pagar_data_pagamento`, `conta_pagar_valor`, `conta_pagar_status`, `conta_pagar_obs`, `conta_pagar_data_alteracao`) VALUES
(1, 1, '2020-01-23', '2022-01-27 01:27:32', '800.00', 1, 'Conta Paga', '2022-01-27 12:27:32'),
(2, 2, '2022-01-31', NULL, '1000', 2, 'Compra de cerveja', '2022-02-24 17:33:53'),
(3, 3, '2022-01-28', '2022-01-28 07:29:57', '31.25', 1, 'Teres cervejas Litro e um Lipton pêssego', '2022-04-09 16:21:44'),
(4, 4, '2022-04-10', '2022-02-08 04:20:16', '950.00', 1, 'Pagamento da prestação da casa', '2022-04-09 16:21:50'),
(5, 5, '2022-02-10', '2022-02-08 04:20:32', '180.00', 1, 'Valor total = 360.\r\nVcmento de Janeiro', '2022-04-09 16:21:54'),
(6, 6, '2022-02-10', '2022-03-03 05:14:38', '92.00', 1, 'Internet', '2022-04-09 16:21:59'),
(7, 3, '2022-01-30', '2022-01-31 08:54:49', '25', 1, 'Três litros de Antártica', '2022-01-31 11:54:49'),
(10, 8, '2022-02-01', '2022-02-01 04:28:20', '85.00', 1, 'Pagamento de Janeiro', '2022-04-09 16:22:02'),
(11, 4, '2022-03-10', NULL, '1,250', 0, 'Prestação da casa', '2022-04-09 16:29:35'),
(13, 8, '2022-03-05', '2022-03-07 08:00:24', '85.00', 1, 'Academia de Março', '2022-04-09 16:22:57'),
(14, 6, '2022-03-10', '2022-03-21 03:10:41', '89.00', 1, 'Valor a pagar de Marco', '2022-04-09 16:23:02'),
(15, 9, '2022-03-04', '2022-03-07 08:01:15', '120.50', 1, 'Bar do Marcelo', '2022-04-09 16:29:56'),
(16, 4, '2022-02-10', '2022-03-31 12:25:49', '1,250.65', 1, 'Prestação de Fevereiro', '2022-04-09 16:29:27'),
(17, 6, '2022-04-10', NULL, '89.90', 0, 'Conta de Internet de Abril', '2022-04-09 16:23:06'),
(18, 10, '2022-03-31', '2022-03-31 04:07:39', '150', 1, 'Recarga da passagem de Bia', '2022-03-31 14:07:39'),
(19, 1, '2022-04-01', '2022-04-02 12:32:32', '200', 1, 'teste', '2022-04-01 22:32:32'),
(20, 4, '2022-04-10', NULL, '1,250.65', 0, 'Prestaçao da cas', '2022-04-09 16:29:18'),
(21, 3, '2022-04-03', '2022-04-03 08:42:04', '31.25', 1, 'Três antártica', '2022-04-09 16:29:09'),
(22, 8, '2022-04-01', '2022-04-14 02:51:12', '85.00', 1, 'Pagar a academia', '2022-04-14 12:51:12'),
(23, 11, '2022-04-05', '2022-04-15 09:05:49', '25.00', 1, 'Recarga mensal', '2022-04-15 19:05:49'),
(24, 9, '2022-04-13', '2022-04-14 04:26:35', '27.90', 1, 'Curso de Ingles do Udemy', '2022-04-14 14:26:35'),
(25, 9, '2022-04-16', '2022-04-18 01:29:57', '31.45', 1, 'Pizza de fim de semana', '2022-04-17 23:29:57'),
(26, 9, '2022-04-16', '2022-04-18 01:34:39', '50.40', 1, 'Lady day - 20,7 + 20,69\r\n\r\n', '2022-04-17 23:34:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_receber`
--

CREATE TABLE `contas_receber` (
  `conta_receber_id` int(11) NOT NULL,
  `conta_receber_cliente_id` int(11) NOT NULL,
  `conta_receber_data_vencimento` date DEFAULT NULL,
  `conta_receber_data_pagamento` datetime DEFAULT NULL,
  `conta_receber_valor` varchar(20) DEFAULT NULL,
  `conta_receber_status` tinyint(1) DEFAULT NULL,
  `conta_receber_obs` tinytext DEFAULT NULL,
  `conta_receber_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contas_receber`
--

INSERT INTO `contas_receber` (`conta_receber_id`, `conta_receber_cliente_id`, `conta_receber_data_vencimento`, `conta_receber_data_pagamento`, `conta_receber_valor`, `conta_receber_status`, `conta_receber_obs`, `conta_receber_data_alteracao`) VALUES
(1, 2, '2020-02-28', '2022-02-02 02:28:57', '1,502.62', 1, '', '2022-04-08 18:42:37'),
(2, 2, '2020-02-21', '2020-02-28 18:33:19', '350.00', 1, NULL, '2022-01-28 21:02:05'),
(3, 2, '2020-02-28', '2020-02-28 17:22:47', '56.00', 1, NULL, '2022-01-28 21:02:32'),
(4, 3, '2022-04-01', '2022-04-18 01:38:05', '11.00', 1, 'tetijdfohysdfoidifusdpojiod0isdufi0sdoji', '2022-04-17 23:38:05'),
(5, 4, '2022-04-01', '2022-04-03 08:30:15', '2,356.00', 1, 'Salarios do mes', '2022-04-03 18:30:15'),
(6, 4, '2022-04-02', '2022-04-18 01:39:14', '1,650.00', 1, 'Ferias ', '2022-04-17 23:39:14'),
(7, 4, '2022-04-30', NULL, '800.00', 0, 'Bônus da empresa', '2022-04-17 23:38:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamentos`
--

CREATE TABLE `formas_pagamentos` (
  `forma_pagamento_id` int(11) NOT NULL,
  `forma_pagamento_nome` varchar(45) DEFAULT NULL,
  `forma_pagamento_aceita_parc` tinyint(1) DEFAULT NULL,
  `forma_pagamento_ativa` tinyint(1) DEFAULT NULL,
  `forma_pagamento_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `formas_pagamentos`
--

INSERT INTO `formas_pagamentos` (`forma_pagamento_id`, `forma_pagamento_nome`, `forma_pagamento_aceita_parc`, `forma_pagamento_ativa`, `forma_pagamento_data_alteracao`) VALUES
(1, 'Cartão de Crédito', 1, 1, '2022-01-30 22:59:45'),
(2, 'Dinheiro', 0, 1, '2022-03-16 19:54:42'),
(3, 'Boleto bancário', 1, 1, '2022-01-30 10:46:03'),
(4, 'Transferência Bancaria', 0, 1, '2022-01-30 13:51:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `fornecedor_id` int(11) NOT NULL,
  `fornecedor_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `fornecedor_razao` varchar(200) DEFAULT NULL,
  `fornecedor_nome_fantasia` varchar(145) DEFAULT NULL,
  `fornecedor_cnpj` varchar(20) DEFAULT NULL,
  `fornecedor_ie` varchar(20) DEFAULT NULL,
  `fornecedor_telefone` varchar(20) DEFAULT NULL,
  `fornecedor_celular` varchar(20) DEFAULT NULL,
  `fornecedor_email` varchar(100) DEFAULT NULL,
  `fornecedor_contato` varchar(45) DEFAULT NULL,
  `fornecedor_cep` varchar(10) DEFAULT NULL,
  `fornecedor_endereco` varchar(145) DEFAULT NULL,
  `fornecedor_numero_endereco` varchar(20) DEFAULT NULL,
  `fornecedor_bairro` varchar(45) DEFAULT NULL,
  `fornecedor_complemento` varchar(45) DEFAULT NULL,
  `fornecedor_cidade` varchar(45) DEFAULT NULL,
  `fornecedor_estado` varchar(2) DEFAULT NULL,
  `fornecedor_ativo` tinyint(1) DEFAULT NULL,
  `fornecedor_obs` tinytext DEFAULT NULL,
  `fornecedor_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fornecedor_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`fornecedor_id`, `fornecedor_data_cadastro`, `fornecedor_razao`, `fornecedor_nome_fantasia`, `fornecedor_cnpj`, `fornecedor_ie`, `fornecedor_telefone`, `fornecedor_celular`, `fornecedor_email`, `fornecedor_contato`, `fornecedor_cep`, `fornecedor_endereco`, `fornecedor_numero_endereco`, `fornecedor_bairro`, `fornecedor_complemento`, `fornecedor_cidade`, `fornecedor_estado`, `fornecedor_ativo`, `fornecedor_obs`, `fornecedor_data_alteracao`, `fornecedor_cat_id`) VALUES
(1, '2021-12-17 17:03:24', 'Lonart Persianas Ltda', 'Lonart', '10.445.677/0001-23', '1077543', '2133335555', '(12) 98888-7777', 'lonart@stone.com', 'Vitor', '24930-460', 'Gardenias', '23', 'Fonseca', 'Fundos', NULL, 'RJ', 1, 'Teste', '2022-01-19 14:29:31', 0),
(2, '2022-01-27 20:32:09', 'Padaria Lady Day', 'Lady Day', '10.445.677/0001-23', '10527754', '2133334444', '(21) 98888-7777', 'gui@gmail.com', 'Guilherme', '24345-678', 'estada Velha', '23', 'Sao Jose', 'Fundos', NULL, 'RJ', 1, 'Teste de cadastramento', '2022-01-27 20:32:09', 0),
(3, '2022-01-28 22:28:43', 'Ze Delivery', 'App do Zé', '41.822.694/0001-20', '10775433', '0800 725 0009', '(08) 00725-0009', 'ze@gmail.com', 'Nenhum', '26127-380', 'Av Suburbana', '10', 'Shangri-La', '-', NULL, 'RJ', 1, 'Venda de bebidas', '2022-01-28 22:28:43', 0),
(4, '2022-01-30 12:23:31', 'Caixa Economica Federal', 'Caixa', '00.360.305/0232-36', '190370642', '2134835300', '(21) 3483-5300', 'caixa@caixa.gov.br', 'Elis', '20940-001', 'RUA SAO CRISTOVAO', '670', 'Sao cirstovao', 'LOJA A', NULL, 'RJ', 1, 'Agencia da Caixa do financiamento', '2022-01-30 12:23:31', 0),
(5, '2022-01-31 11:47:37', 'Enel Brasil', 'Enel', '07.523.555/0001-67', '136138839', '0800 28 00 120', '(08) 00280-0120', 'enel@enel.com.br', 'Central', '24900-000', 'R. Sen. Macedo Soares', '156', 'Eldorado', '-', NULL, 'RJ', 1, 'Fornecedor de energia', '2022-01-31 11:47:37', 0),
(6, '2022-01-31 11:53:18', 'Leste Telecom d Brasil', 'Leste Telecom', '20.611.966/0001-72', '202928362', '(21) 2006-0967', '(21) 2006-0967', 'administrativo@lestetelecom.com.br', 'Central', '24900-100', 'Avenida Vereador Francisco Sabino Da Costa', '19', 'Centro', '-', NULL, 'RJ', 1, 'Fornecedor de Internet', '2022-02-25 14:37:34', 0),
(7, '2022-02-01 18:37:43', 'Stone Pagamentos', 'Stone', '16.501.555/0002-38', '126659256', '2130043680', '(21) 3004-3680', 'stone@stone.com.br', 'Lider', '20021-290', 'Rua do Passeio', '38', 'Passeio', '-', NULL, 'RJ', 1, 'Empresa que trabalho', '2022-02-25 14:37:38', 0),
(8, '2022-02-01 19:27:12', 'Academia Star Fitness', 'Star Fitness', '31.219.293/0001-26', '189946936', '(21) 2606-7466', '(21) 2606-7466', 'Star@star.com.br', 'Fabio', '24931-00', 'Rodovia Ernani do Amaral Peixoto', '20713', 'Sao Jose do Imbassai', '-', NULL, 'RJ', 1, 'Academia de ginastica', '2022-02-01 19:27:12', 0),
(9, '2022-02-07 15:16:59', 'Diversos Ltda', 'Diversos', '17.119.333/0001-37', '163650428', '21565643452', '(21) 56564-3452', 'diversos@gmail.com', 'Diversos', '24111-223', 'Rua Qualquer', '100', 'Ali', '-', NULL, 'RJ', 1, 'Cadastro para despesas diversas', '2022-02-07 15:16:59', 0),
(10, '2022-03-31 14:06:56', 'FEDERACAO DAS EMPRESAS DE TRANSPORTES DE PASSAGEIROS', 'Fetranspor', '33.747.288/0001-11', '232417214', '(21) 2127-4000', '(21) 2127-4000', 'vozativa@canalconfidencial.com.br', 'Atendimento', '24900-445', 'Av. Roberto Silveira', '152', 'Centro', 'Loja B', NULL, 'RJ', 1, 'Para uso de controla das recargas', '2022-03-31 14:06:56', 0),
(11, '2022-04-04 19:00:14', 'Telemar Norte Leste S/a', 'Oi Telecomunicaçoes', '33.000.118/0001-79', '33000118', '2121212131', '(21) 2121-2131', 'oi@oi.com.br', 'Atendimento', '24900-001', 'Rua Alvares de Castro', '22', 'Centro', '-', NULL, 'RJ', 0, 'Cadastro para Recarga de telefone', '2022-04-04 19:00:14', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'vendedores', 'Vendedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `marca_id` int(11) NOT NULL,
  `marca_nome` varchar(45) NOT NULL,
  `marca_ativa` tinyint(1) DEFAULT NULL,
  `marca_data_alteracao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`marca_id`, `marca_nome`, `marca_ativa`, `marca_data_alteracao`) VALUES
(2, '2AM Gaming', 1, '2022-01-10 17:38:15'),
(3, 'Coca Colla', 1, '2022-04-03 00:49:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem_tem_servicos`
--

CREATE TABLE `ordem_tem_servicos` (
  `ordem_ts_id` int(11) NOT NULL,
  `ordem_ts_id_servico` int(11) DEFAULT NULL,
  `ordem_ts_id_ordem_servico` int(11) DEFAULT NULL,
  `ordem_ts_quantidade` int(11) DEFAULT NULL,
  `ordem_ts_valor_unitario` varchar(45) DEFAULT NULL,
  `ordem_ts_valor_desconto` varchar(45) DEFAULT NULL,
  `ordem_ts_valor_total` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de relacionamento entre as tabelas servicos e ordem_servico';

--
-- Extraindo dados da tabela `ordem_tem_servicos`
--

INSERT INTO `ordem_tem_servicos` (`ordem_ts_id`, `ordem_ts_id_servico`, `ordem_ts_id_ordem_servico`, `ordem_ts_quantidade`, `ordem_ts_valor_unitario`, `ordem_ts_valor_desconto`, `ordem_ts_valor_total`) VALUES
(9, 1, 1, 1, '  80.50', '0  ', '  80.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordens_servicos`
--

CREATE TABLE `ordens_servicos` (
  `ordem_servico_id` int(11) NOT NULL,
  `ordem_servico_forma_pagamento_id` int(11) DEFAULT NULL,
  `ordem_servico_cliente_id` int(11) DEFAULT NULL,
  `ordem_servico_data_emissao` timestamp NULL DEFAULT current_timestamp(),
  `ordem_servico_data_conclusao` varchar(100) DEFAULT NULL,
  `ordem_servico_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_marca_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_modelo_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_acessorios` tinytext DEFAULT NULL,
  `ordem_servico_defeito` tinytext DEFAULT NULL,
  `ordem_servico_valor_desconto` varchar(25) DEFAULT NULL,
  `ordem_servico_valor_total` varchar(25) DEFAULT NULL,
  `ordem_servico_status` tinyint(1) DEFAULT NULL,
  `ordem_servico_obs` tinytext DEFAULT NULL,
  `ordem_servico_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ordens_servicos`
--

INSERT INTO `ordens_servicos` (`ordem_servico_id`, `ordem_servico_forma_pagamento_id`, `ordem_servico_cliente_id`, `ordem_servico_data_emissao`, `ordem_servico_data_conclusao`, `ordem_servico_equipamento`, `ordem_servico_marca_equipamento`, `ordem_servico_modelo_equipamento`, `ordem_servico_acessorios`, `ordem_servico_defeito`, `ordem_servico_valor_desconto`, `ordem_servico_valor_total`, `ordem_servico_status`, `ordem_servico_obs`, `ordem_servico_data_alteracao`) VALUES
(1, 1, 3, '2020-02-14 20:30:35', NULL, 'Fone de ouvido', 'Awell', 'AV1801', 'Mouse e carregador', 'Não sai aúdio no lado esquerdo', 'R$ 0.00', '80.50', 0, '', '2022-04-15 18:54:40'),
(2, 1, 2, '2020-02-14 20:48:53', NULL, 'Fone de ouvido', 'Awell', 'AV1801', 'Mouse e carregador', 'Não sai aúdio no lado esquerdo', 'R$ 0.00', '0.00', 0, 'Consertar equipamento', '2022-03-15 10:32:38'),
(3, 1, 2, '2020-02-17 23:53:26', NULL, 'Fone de ouvido', 'Awell', 'AV1801', 'Mouse e carregador', 'Não sai aúdio no lado esquerdo', 'R$ 0.00', '0.00', 0, '', '2022-02-25 10:42:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `produto_id` int(11) NOT NULL,
  `produto_codigo` varchar(45) DEFAULT NULL,
  `produto_data_cadastro` datetime DEFAULT NULL,
  `produto_categoria_id` int(11) NOT NULL,
  `produto_marca_id` int(11) NOT NULL,
  `produto_fornecedor_id` int(11) NOT NULL,
  `produto_descricao` varchar(145) DEFAULT NULL,
  `produto_unidade` varchar(25) DEFAULT NULL,
  `produto_codigo_barras` varchar(45) DEFAULT NULL,
  `produto_ncm` varchar(15) DEFAULT NULL,
  `produto_preco_custo` varchar(45) DEFAULT NULL,
  `produto_preco_venda` varchar(45) DEFAULT NULL,
  `produto_estoque_minimo` varchar(10) DEFAULT NULL,
  `produto_qtde_estoque` varchar(10) DEFAULT NULL,
  `produto_ativo` tinyint(1) DEFAULT NULL,
  `produto_obs` tinytext DEFAULT NULL,
  `produto_data_alteracao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`produto_id`, `produto_codigo`, `produto_data_cadastro`, `produto_categoria_id`, `produto_marca_id`, `produto_fornecedor_id`, `produto_descricao`, `produto_unidade`, `produto_codigo_barras`, `produto_ncm`, `produto_preco_custo`, `produto_preco_venda`, `produto_estoque_minimo`, `produto_qtde_estoque`, `produto_ativo`, `produto_obs`, `produto_data_alteracao`) VALUES
(1, '72495380', NULL, 1, 2, 1, 'Notebook gamer', 'UN', '4545', '5656', '1.800,00', '15.031,00', '2', '4', 1, 'Teste de edição', '2022-01-22 17:26:06'),
(2, '50412637', NULL, 1, 2, 1, 'Fone de ouvido gamer', 'UN', '9999', '9999', '112,00', '25.844,00', '1', '46', 1, 'asdadasd', '2022-01-21 11:32:25'),
(3, '41697502', NULL, 1, 1, 1, 'Mouse usb', 'UN', '9999', '5555', '9,99', '15,22', '2', '3', 1, '', '2020-02-22 00:46:57'),
(7, '72495380', NULL, 1, 2, 1, 'Notebook gamer 1', 'UN', NULL, NULL, '1.800,00', '15.031,00', '2', '4', 1, 'Teste de edição', '2022-01-22 13:45:53'),
(8, '72495380', NULL, 1, 2, 1, 'Notebook gamer 12', 'UN', NULL, NULL, '1.800,00', '1.700,00', '2', '4', 1, 'Teste de edição', '2022-01-22 17:15:25'),
(9, '', NULL, 2, 2, 1, 'Cadeira Gamer', 'UN', NULL, NULL, '20,00', '2,00', '10', '34', 1, 'asxasasd', '2022-01-24 22:13:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `servico_id` int(11) NOT NULL,
  `servico_nome` varchar(145) DEFAULT NULL,
  `servico_preco` varchar(15) DEFAULT NULL,
  `servico_descricao` tinytext DEFAULT NULL,
  `servico_ativo` tinyint(1) DEFAULT NULL,
  `servico_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`servico_id`, `servico_nome`, `servico_preco`, `servico_descricao`, `servico_ativo`, `servico_data_alteracao`) VALUES
(1, 'Limpeza geral - OK', '50,00', 'Lorem Ipsum é uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem', 0, '2022-03-20 19:25:56'),
(2, 'Solda elétrica', '80,00', 'Solda elétrica', 1, '2020-02-13 22:10:21'),
(3, 'Restauração de componentes', '120,00', 'Restauração de componentes', 1, '2022-03-20 19:19:06'),
(4, 'Limpeza geral de computadores', '33,00', 'Limpeza geral de computadores', 1, '2022-03-20 19:24:43'),
(5, 'Troca de Tela', '250,00', 'Troca de telas de Celulares', 1, '2022-03-29 01:02:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sistema`
--

CREATE TABLE `sistema` (
  `sistema_id` int(11) NOT NULL,
  `sistema_razao_social` varchar(145) DEFAULT NULL,
  `sistema_nome_fantasia` varchar(145) DEFAULT NULL,
  `sistema_cnpj` varchar(25) DEFAULT NULL,
  `sistema_ie` varchar(25) DEFAULT NULL,
  `sistema_telefone_fixo` varchar(25) DEFAULT NULL,
  `sistema_telefone_movel` varchar(25) NOT NULL,
  `sistema_email` varchar(100) DEFAULT NULL,
  `sistema_site_url` varchar(100) DEFAULT NULL,
  `sistema_cep` varchar(25) DEFAULT NULL,
  `sistema_endereco` varchar(145) DEFAULT NULL,
  `sistema_numero` varchar(25) DEFAULT NULL,
  `sistema_cidade` varchar(45) DEFAULT NULL,
  `sistema_estado` varchar(2) DEFAULT NULL,
  `sistema_txt_ordem_servico` tinytext DEFAULT NULL,
  `sistema_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sistema`
--

INSERT INTO `sistema` (`sistema_id`, `sistema_razao_social`, `sistema_nome_fantasia`, `sistema_cnpj`, `sistema_ie`, `sistema_telefone_fixo`, `sistema_telefone_movel`, `sistema_email`, `sistema_site_url`, `sistema_cep`, `sistema_endereco`, `sistema_numero`, `sistema_cidade`, `sistema_estado`, `sistema_txt_ordem_servico`, `sistema_data_alteracao`) VALUES
(1, 'System Ordem INC', 'Sistema Ordem NOW', '50.389.234/0001-40', '1077456', '2133334444', '21988889999', 'ordemnow@contato.com.br', 'http://localhost/ordem/home', '24930-460', 'Gardenias', '17', 'Maricá', 'RJ', '', '2022-02-01 17:07:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `grupo_id` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `grupo_id`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$10$CvZtgY.darhB/hc3OfSj3u85S7fxtXws0LzA6.lTul2CXZLUnNraW', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1268889823, 1650463890, 1, 'Admin', 'istrator', 'ADMIN', '0', 1),
(11, '2', 'anavit', '$2y$10$CvZtgY.darhB/hc3OfSj3u85S7fxtXws0LzA6.lTul2CXZLUnNraW', 'anavit@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1649525360, 1, 'Ana', 'Jorge', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `venda_id` int(11) NOT NULL,
  `venda_cliente_id` int(11) DEFAULT NULL,
  `venda_forma_pagamento_id` int(11) DEFAULT NULL,
  `venda_vendedor_id` int(11) DEFAULT NULL,
  `venda_tipo` tinyint(1) DEFAULT NULL,
  `venda_data_emissao` timestamp NULL DEFAULT current_timestamp(),
  `venda_valor_desconto` varchar(25) DEFAULT NULL,
  `venda_valor_total` varchar(25) DEFAULT NULL,
  `venda_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`venda_id`, `venda_cliente_id`, `venda_forma_pagamento_id`, `venda_vendedor_id`, `venda_tipo`, `venda_data_emissao`, `venda_valor_desconto`, `venda_valor_total`, `venda_data_alteracao`) VALUES
(1, 2, 1, 1, NULL, '2022-02-08 23:28:16', NULL, '15.32', '2022-04-15 20:04:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_produtos`
--

CREATE TABLE `venda_produtos` (
  `id_venda_produtos` int(11) NOT NULL,
  `venda_produto_id_venda` int(11) DEFAULT NULL,
  `venda_produto_id_produto` int(11) DEFAULT NULL,
  `venda_produto_quantidade` varchar(15) DEFAULT NULL,
  `venda_produto_valor_unitario` varchar(20) DEFAULT NULL,
  `venda_produto_desconto` varchar(10) DEFAULT NULL,
  `venda_produto_valor_total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda_produtos`
--

INSERT INTO `venda_produtos` (`id_venda_produtos`, `venda_produto_id_venda`, `venda_produto_id_produto`, `venda_produto_quantidade`, `venda_produto_valor_unitario`, `venda_produto_desconto`, `venda_produto_valor_total`) VALUES
(1, 1, 2, '1', '15,22', NULL, '15,22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `vendedor_id` int(11) NOT NULL,
  `vendedor_codigo` varchar(10) NOT NULL,
  `vendedor_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `vendedor_nome_completo` varchar(145) NOT NULL,
  `vendedor_cpf` varchar(25) NOT NULL,
  `vendedor_rg` varchar(25) NOT NULL,
  `vendedor_telefone` varchar(15) DEFAULT NULL,
  `vendedor_celular` varchar(15) DEFAULT NULL,
  `vendedor_email` varchar(45) DEFAULT NULL,
  `vendedor_cep` varchar(15) DEFAULT NULL,
  `vendedor_endereco` varchar(45) DEFAULT NULL,
  `vendedor_numero_endereco` varchar(25) DEFAULT NULL,
  `vendedor_complemento` varchar(45) DEFAULT NULL,
  `vendedor_bairro` varchar(45) DEFAULT NULL,
  `vendedor_cidade` varchar(45) DEFAULT NULL,
  `vendedor_estado` varchar(2) DEFAULT NULL,
  `vendedor_ativo` tinyint(1) DEFAULT NULL,
  `vendedor_obs` tinytext DEFAULT NULL,
  `vendedor_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendedores`
--

INSERT INTO `vendedores` (`vendedor_id`, `vendedor_codigo`, `vendedor_data_cadastro`, `vendedor_nome_completo`, `vendedor_cpf`, `vendedor_rg`, `vendedor_telefone`, `vendedor_celular`, `vendedor_email`, `vendedor_cep`, `vendedor_endereco`, `vendedor_numero_endereco`, `vendedor_complemento`, `vendedor_bairro`, `vendedor_cidade`, `vendedor_estado`, `vendedor_ativo`, `vendedor_obs`, `vendedor_data_alteracao`) VALUES
(1, '09842571', '2020-01-28 01:24:17', 'Lucio Antonio de Souza', '946.873.070-00', '36.803.319-3', '', '(41) 99999-9999', 'vendedor@gmail.com', '80530-000', 'Rua das vendas', '45', '', 'Centro', 'Curitiba', 'PR', 1, '', '2020-01-28 01:24:17'),
(2, ' 09842573', '2020-01-29 22:22:27', 'Sara Betina', '58.207/1790-23', '25.287.429-8', '2132324455', '(22) 98877-6655', 'sara@gmail.com', '24910-220', 'Rua das vendas', '45', 'Fundos', 'Centro', 'Joinville', 'SC', 1, 'Teste', '2022-04-01 16:12:44'),
(3, '41082637', '2022-04-01 16:22:22', 'Luciana Jorge', '07.423/6944-79', '202112896', '2133440000', '(21) 98854-5240', 'luciana@gmail.com', '24930-460', 'Rua Guapore', '45', '-', 'Centro', 'Marica', 'RJ', 1, 'Teste', '2022-04-01 16:22:37');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Índices para tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`conta_pagar_id`),
  ADD KEY `fk_conta_pagar_id_fornecedor` (`conta_pagar_fornecedor_id`);

--
-- Índices para tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD PRIMARY KEY (`conta_receber_id`),
  ADD KEY `fk_conta_receber_id_cliente` (`conta_receber_cliente_id`);

--
-- Índices para tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  ADD PRIMARY KEY (`forma_pagamento_id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`fornecedor_id`);

--
-- Índices para tabela `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`marca_id`);

--
-- Índices para tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  ADD PRIMARY KEY (`ordem_ts_id`),
  ADD KEY `fk_ordem_ts_id_servico` (`ordem_ts_id_servico`),
  ADD KEY `fk_ordem_ts_id_ordem_servico` (`ordem_ts_id_ordem_servico`);

--
-- Índices para tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  ADD PRIMARY KEY (`ordem_servico_id`),
  ADD KEY `fk_ordem_servico_id_cliente` (`ordem_servico_cliente_id`),
  ADD KEY `fk_ordem_servico_id_forma_pagto` (`ordem_servico_forma_pagamento_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`produto_id`),
  ADD KEY `produto_categoria_id` (`produto_categoria_id`,`produto_marca_id`,`produto_fornecedor_id`),
  ADD KEY `fk_produto_marca_id` (`produto_marca_id`),
  ADD KEY `fk_produto_forncedor_id` (`produto_fornecedor_id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`servico_id`);

--
-- Índices para tabela `sistema`
--
ALTER TABLE `sistema`
  ADD PRIMARY KEY (`sistema_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Índices para tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`venda_id`),
  ADD KEY `fk_venda_cliente_id` (`venda_cliente_id`),
  ADD KEY `fk_venda_forma_pagto_id` (`venda_forma_pagamento_id`),
  ADD KEY `fk_venda_vendedor_id` (`venda_vendedor_id`);

--
-- Índices para tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  ADD PRIMARY KEY (`id_venda_produtos`),
  ADD KEY `fk_venda_produtos_id_produto` (`venda_produto_id_produto`),
  ADD KEY `fk_venda_produtos_id_venda` (`venda_produto_id_venda`);

--
-- Índices para tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`vendedor_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  MODIFY `conta_pagar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  MODIFY `conta_receber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  MODIFY `forma_pagamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `fornecedor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  MODIFY `ordem_ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  MODIFY `ordem_servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `produto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sistema`
--
ALTER TABLE `sistema`
  MODIFY `sistema_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `venda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  MODIFY `id_venda_produtos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `vendedor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD CONSTRAINT `fk_conta_pagar_id_fornecedor` FOREIGN KEY (`conta_pagar_fornecedor_id`) REFERENCES `fornecedores` (`fornecedor_id`);

--
-- Limitadores para a tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_venda_cliente_id` FOREIGN KEY (`venda_cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `fk_venda_forma_pagto_id` FOREIGN KEY (`venda_forma_pagamento_id`) REFERENCES `formas_pagamentos` (`forma_pagamento_id`),
  ADD CONSTRAINT `fk_venda_vendedor_id` FOREIGN KEY (`venda_vendedor_id`) REFERENCES `vendedores` (`vendedor_id`);

--
-- Limitadores para a tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  ADD CONSTRAINT `fk_venda_produtos_id_produto` FOREIGN KEY (`venda_produto_id_produto`) REFERENCES `produtos` (`produto_id`),
  ADD CONSTRAINT `fk_venda_produtos_id_venda` FOREIGN KEY (`venda_produto_id_venda`) REFERENCES `vendas` (`venda_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
