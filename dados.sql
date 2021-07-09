-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Jun-2021 às 16:56
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
-- Banco de dados: `dados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `procedimentos`
--

CREATE TABLE `procedimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `conteudo` text NOT NULL,
  `equipamento` text NOT NULL,
  `parametros` text NOT NULL,
  `restricoes` text NOT NULL,
  `intervalo` text NOT NULL,
  `profissional` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `procedimentos`
--

INSERT INTO `procedimentos` (`id`, `nome`, `conteudo`, `equipamento`, `parametros`, `restricoes`, `intervalo`, `profissional`) VALUES
(1, 'HIDRATAÇÃO CUTÂNEA', 'Acontece pela aplicação de componentes higroscópicos que promovem uma atração de água para a pele, como cópia do fator hidratante natural.', 'Sem a existencia de equipamento repassado para o caso.', 'As formas de tratamento encontrada-se podem ser através de produtos cosméticos que visam reverter o processo de desidratação cutânea através dos mecanismos de oclusão, umectação, hidratação ativa, recomposição de lamelas da camada córnea e indução da formação de aquaporinas', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', 'NENHUM DADO COMPARTILHADO CONOSCO', 'FISIOTERAPEUTA'),
(2, 'FIBROEDEMA GELÓIDE', 'É  popularmente chamado de celulite. Além de ser desagradável aos olhos do ponto de vista estético, acarreta problemas álgicos nas zonas acometidas e diminuição das atividades funcionais.', 'Ultrasom – O aparelho emite ondas de som acima da frequência audível que produzem microvibrações capazes de romper os adipócitos. A sua utilização está diretamente ligada a neovascularização, ocorrendo um aumento da circulação, rearranjo e aumento da extensibilidade das fibras colágenas, melhorando assim as propriedades mecânicas do tecido.', 'Utilização de Ultrassom de alta potência na frequencia de 3MHz, com 2,5W/cm2. De forma CONTÍNUA para Celulite Flácida e PULSANTE para Celulite Compacta. O tempo é relativo a utilização de toda área a ser tratada.', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', '2/SEMANA', 'FISIOTERAPEUTA'),
(3, 'FLACIDEZ CUTÂNEA', 'A flacidez cutânea é uma das consequências do envelhecimento natural da pele. Aparece já no início da fase adulta e se intensifica próximo aos 40 anos de idade como resultado da diminuição do colágeno no organismo. Atinge principalmente as mulheres, mas os resultados também incomodam os homens mais vaidosos.', 'RÁDIOFREQUÊNCIA;\r\nMICROCORRENTES', '40-42°C, 10 MIN POR HEMIFACE, 2.5MhZ;\r\n50-500 uA, 10 MIN REGIÃO', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', 'MIN 15 DIAS;\r\n2-3/SEMANA', 'FISIOTERAPEURA'),
(4, 'ESTRIAS', 'Trata-se de uma atrofia tegumentar adquirida que surge devido ao rompimento das fibras elásticas e colágenas presentes na derme, apresentam-se como lesões lineares paralelas (formando “cicatrizes”).', 'Microgalvanica – É uma técnica onde utilizam-se microcorrentes variáveis de baixa freqüência, com impulsos de baixa duração e intensidade, as quais tem como finalidade produzir um levantamento dos extratos mais superficiais.', 'Utilização de corrente elétrica de Amperagem entre 100 e 150 mA.', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', '7 dias', 'FISIOTERAPEUTA'),
(5, 'LIPODISTROFIA(GORDURA LOCALIZADA)', 'É uma alteração da distribuição normal da gordura no corpo, se dá devido ao aumento da gordura em algumas regiões, a chamada \"gordura localizada\".', 'Endermologia – trata-se de uma massgem profunda obtida na utilização de vácuo. Pode ser utilizado os sequintes métodos:\r\nCONTÍNUA: onde é gerado por uma bomba, com manoplas de massagem que utilizan-se da técnica de \"palpação e rolamento\";\r\nPULSADA: na qual utiliza-se a sucção sobre a pele através de ventosas de formas e diâmetros diferentes.', 'Utilização de bombeamento/sucção CONTÍNUA ou PULSADA, com fluxo sanguíneo entre 80 e 100mmHg, por 5 a 10 minutos por região tratada.', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', '2-3/SEMANA', 'FISIOTERAPEUTA'),
(6, 'HPERPIGMENTAÇÃO (MANCHAS)', 'É o termo usado para descrever as áreas de pele com pigmentação desigual. Ela manifesta-se como manchas ou zonas escurecidas na pele que lhe dão um aspecto pouco uniforme. As manchas são conhecidas como manchas da idade ou manchas induzidas pelo sol.', 'Luz pulsada – atua destruindo seletivamente e temporariamente esses vasos e portanto melhorando a vermelhidão;\r\nLED – eles ajudam a estimular a produção de colágeno, bem como a prevenir e eliminar casos de rugas, acnes e na amenização de sinais de melasma. Os Led’s podem ser:\r\nAZUL: tem efeito bactericida. Trata a acne, melhora a hidratação do tecido, ameniza as manchas e os vasinhos e ajuda a clarear algumas áreas;\r\nVERDE: age promovendo o rejuvenescimento da pele, o estímulo da circulação linfática e a microcirculação sanguínea;\r\nAMBAR: estimula o colágeno, a elastina, melhora a elasticidade das fibras, além de ter efeito drenante.', 'Utilização de Led para o tratamento, sendo o AZUL (tamanho 450-495nm), VERDE (tamanho 495-570nm), ÂMBAR (tamanho 570-590nm), por um periodo de tempo de 7 a 10 minutos.', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', '2/SEMANA', 'FISIOTERAPEUTA'),
(7, 'LINHAS DE EXPRESSÃO E RUGAS', 'São marcas causadas pela movimentação repetitiva dos músculos do rosto. Os principais influenciadores para isso são a exposição solar, estresse e a má alimentação.', 'Microgalvanica – É uma técnica onde utilizam-se microcorrentes variáveis de baixa freqüência, com impulsos de baixa duração e intensidade, as quais tem como finalidade produzir um levantamento dos extratos mais superficiais.', 'Utilização de corrente elétrica com Amperagem entre 70 e 100 mA.', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', '7 dias', 'FISIOTERAPEUTA'),
(8, 'FORTALECIMENTO MUSCULAR', 'Em resumo é a forma de tonificar e definir os músculos sem que haja necessidade do ganho massa muscular. Consiste em uma forma de melhorar e preservar a saúde muscular, permitindo movimentos mais seguros e autossuficientes.', 'Corrente Russa – trata-se da utilização de um aparelho de eletroestimulação, onde esse proporciona impulsos elétricos os quais são transmitidos aos músculos através de eletrodos que proporcionam uma corrente elétrica de baixa frequência.', 'Utilização à uma frequência de 30Hz, com escalas crescentes de 2 segundos, por 6 segundos de utilização, com mais 2 segundos de escala decrescente, com um intervalo de 20 segundos entre cada pulso sincronizado, tendo o seu tempo de tratamento em 40 minutos por seção.', 'Não deve ser usado em pessoas com marcapasso, sobre o coração, seio carotídeo, em caso de espasticidade, se houver lesão no nervo periférico da região.', '2/SEMANA', 'FISIOTERAPEUTA');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `procedimentos`
--
ALTER TABLE `procedimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
