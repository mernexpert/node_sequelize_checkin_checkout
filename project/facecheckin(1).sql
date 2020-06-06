-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 03 Juin 2020 à 23:09
-- Version du serveur :  5.7.30-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `facecheckin`
--

-- --------------------------------------------------------

--
-- Structure de la table `Employees`
--

CREATE TABLE `Employees` (
  `id` int(11) NOT NULL,
  `employeeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employeeDepartment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employeePosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employeeAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employeeContactNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employeeDOB` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employeeImage` blob,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `EmployerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Employees`
--

INSERT INTO `Employees` (`id`, `employeeName`, `employeeDepartment`, `employeePosition`, `employeeAddress`, `employeeContactNumber`, `employeeDOB`, `employeeImage`, `createdAt`, `updatedAt`, `EmployerId`) VALUES
(12, 'Bob', 'service commercial', 'commercial', '11 rue du yaourt', '123456', '14/05/1979', 0x7b225f6c6162656c223a223132222c225f64657363726970746f7273223a5b7b2230223a2d302e30373538353230363632373834353736342c2231223a302e30343432323531373439333336373139352c2232223a302e3032383433373034343437313530323330342c2233223a2d302e30323832303230393431333736363836312c2234223a2d302e30363436333436343334393530383238362c2235223a2d302e3038303537343633313639303937392c2236223a302e3031313036343635383837323738333138342c2237223a2d302e31303833303733393134303531303535392c2238223a302e313436383735353135353830313737332c2239223a2d302e30383236383030333136353732313839332c223130223a302e31383537313737393133313838393334332c223131223a2d302e30343530393933343431303435323834332c223132223a2d302e323538313231383438313036333834332c223133223a2d302e303838303631333639393535353339372c223134223a302e303031373833303331353034363031323430322c223135223a302e30373931333939363237393233393635352c223136223a2d302e3132323932333834333536323630332c223137223a2d302e303834383133313835303336313832342c223138223a2d302e30343730313636333932363234333738322c223139223a2d302e30393737313939303033313030333935322c223230223a302e30393431363937303631303631383539312c223231223a302e30313139333834333837353038303334372c223232223a302e3030353639303534303138373036303833332c223233223a302e3035363637333737323633333037353731342c223234223a2d302e31313030353532373532363134303231332c223235223a2d302e333137333032383832363731333536322c223236223a2d302e31323038323732313239323937323536352c223237223a2d302e31353231363338343832383039303636382c223238223a302e31313033363634373835363233353530342c223239223a2d302e30343432373538313635323939383932342c223330223a302e30343737333133313031323931363536352c223331223a302e3031373533373836303139393830393037342c223332223a2d302e30383632313034383932373330373132392c223333223a2d302e30323333373531313235363333373136362c223334223a302e303735373930383839353631313736332c223335223a302e31303833313238333033323839343133352c223336223a302e3032373438393238303332383135343536342c223337223a2d302e3032323539303834353832333238373936342c223338223a302e32323839333538383234343931353030392c223339223a2d302e31303739393034363630353832353432342c223430223a2d302e31333439323036383634383333383331382c223431223a302e3034303735353032393736373735313639342c223432223a302e30363837333436333039343233343436372c223433223a302e323432333035363636323038323637322c223434223a302e30363935313630393939383934313432322c223435223a302e3035333031373530383233383535342c223436223a302e30363931313439363037333030373538342c223437223a2d302e30323932353137383033363039333731322c223438223a302e313530343632333134343836353033362c223439223a2d302e32333134363137343834383037393638312c223530223a302e31333230313336303430343439313432352c223531223a302e30393935303234323933363631313137362c223532223a302e31383339313039323132313630313130352c223533223a302e30333330363033313937323136393837362c223534223a302e32303835313534323035353630363834322c223535223a2d302e32303233373633303630353639373633322c223536223a302e3033333437363139363232393435373835352c223537223a302e313530343939333838353735353533392c223538223a2d302e323635383736393139303331313433322c223539223a302e31343033323535333133363334383732342c223630223a302e30373037383738353434393236363433342c223631223a2d302e30333834343737363337373038313837312c223632223a2d302e30363433393134313932393134393632382c223633223a302e3031383932303930343032353433353434382c223634223a302e31383234323336323134313630393139322c223635223a302e30393231313532353332313030363737352c223636223a2d302e31373334363539363731373833343437332c223637223a2d302e303937353438343534393939393233372c223638223a302e31353231383738353430353135383939372c223639223a2d302e31393433333032333033353532363237362c223730223a302e30343131373934373831363834383735352c223731223a302e31313438373532313233313137343436392c223732223a2d302e30393139363333323834323131313538382c223733223a2d302e31333235363139393635373931373032332c223734223a2d302e323336333132383936303133323539392c223735223a302e30363438393031343632353534393331362c223736223a302e343635333237383538393234383635372c223737223a302e31353433333536393235323439303939372c223738223a2d302e31383939333532393637373339313035322c223739223a302e3031343636313633393932383831373734392c223830223a2d302e30353039303737313234323937363138392c223831223a302e3033303637323139343433363139323531332c223832223a302e31313933363730363330343535303137312c223833223a2d302e3030373233373034383335333939393835332c223834223a2d302e30383133383130383235333437393030342c223835223a2d302e30363335313432353439383732333938342c223836223a2d302e313430363134353834303838333235352c223837223a302e30343532303331303436313532313134392c223838223a302e30383633393936383138363631363839382c223839223a2d302e303032313430323135353938303436373739362c223930223a2d302e3031323931383132353833383034313330362c223931223a302e323033313437373638393734333034322c223932223a302e30323430303139333137373136333630312c223933223a302e30353632313739333439333632383530322c223934223a2d302e3034303132333936353539313139323234352c223935223a302e3035373534373638343735383930313539362c223936223a2d302e313139373438373933353432333835312c223937223a2d302e3035363733353430373536313036333736362c223938223a2d302e30313536333736343137373236323738332c223939223a302e303335343933333932343937333031312c22313030223a302e31303732323538303535323130313133352c22313031223a2d302e30393135383235363634393937313030382c22313032223a302e3032363331383737393231353231363633372c22313033223a302e30363039323437393037393936313737372c22313034223a2d302e32303535333134393238323933323238312c22313035223a302e31323435393532333233303739313039322c22313036223a2d302e30333334373632373831383538343434322c22313037223a2d302e3031373139393534323337333431383830382c22313038223a2d302e30313337343236343632303234343530332c22313039223a302e30373334313935343835373131303937372c22313130223a2d302e313033383533303032313930353839392c22313131223a302e3034313434333239353737363834343032352c22313132223a302e31333334353531353732373939363832362c22313133223a2d302e333633353333383234363832323335372c22313134223a302e323135343337313434303431303631342c22313135223a302e31333936333130373736343732303931372c22313136223a2d302e303734393036313138323134313330342c22313137223a302e313339383032303038383637323633382c22313138223a2d302e3033303232353439363733393134393039342c22313139223a302e303139313435393032323436323336382c22313230223a302e30343533383839383931353035323431342c22313231223a2d302e31313332363831333639373831343934312c22313232223a2d302e31343039313231373531373835323738332c22313233223a2d302e31333538373937393937323336323531382c22313234223a2d302e3031373735383535313938353032353430362c22313235223a2d302e30353833343239303031323731373234372c22313236223a302e3032303138373234303039333934363435372c22313237223a302e3031303939343832323731383230333036387d5d7d, '2020-06-03 20:20:25', '2020-06-03 20:20:41', 6);

-- --------------------------------------------------------

--
-- Structure de la table `Employers`
--

CREATE TABLE `Employers` (
  `id` int(11) NOT NULL,
  `employerEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employerName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employerPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employerCompanyName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyLogo` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Employers`
--

INSERT INTO `Employers` (`id`, `employerEmail`, `employerName`, `employerPassword`, `employerCompanyName`, `companyLogo`, `link`, `createdAt`, `updatedAt`) VALUES
(6, 'nono647@gmail.com', 'nono2', '$2b$10$lsMSfP3ZUCApZlvOgsoD8uJqdtlaQxgy2vE2N9r3xGsQkbxmkHSYm', 'adds', '', '', '2020-06-03 20:19:49', '2020-06-03 20:19:49');

-- --------------------------------------------------------

--
-- Structure de la table `TimeSheets`
--

CREATE TABLE `TimeSheets` (
  `id` int(11) NOT NULL,
  `EmployeeId` int(11) DEFAULT NULL,
  `employeeStatus` int(11) NOT NULL,
  `check_in` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `check_out` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `TimeSheets`
--

INSERT INTO `TimeSheets` (`id`, `EmployeeId`, `employeeStatus`, `check_in`, `check_out`, `createdAt`, `updatedAt`) VALUES
(12, 12, 0, '2020-06-03 21:06:57', '2020-06-03 21:06:57', '2020-06-03 20:20:48', '2020-06-03 21:06:57');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmployerId` (`EmployerId`);

--
-- Index pour la table `Employers`
--
ALTER TABLE `Employers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employerEmail` (`employerEmail`);

--
-- Index pour la table `TimeSheets`
--
ALTER TABLE `TimeSheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmployeeId` (`EmployeeId`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `Employers`
--
ALTER TABLE `Employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `TimeSheets`
--
ALTER TABLE `TimeSheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `Employees_ibfk_1` FOREIGN KEY (`EmployerId`) REFERENCES `Employers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `TimeSheets`
--
ALTER TABLE `TimeSheets`
  ADD CONSTRAINT `TimeSheets_ibfk_1` FOREIGN KEY (`EmployeeId`) REFERENCES `Employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
