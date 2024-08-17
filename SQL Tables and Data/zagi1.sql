-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 06:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zagi1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomodation`
--

CREATE TABLE `accomodation` (
  `AccomodationName` char(50) NOT NULL,
  `AccomodationAddress` char(50) NOT NULL,
  `Type` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accomodation`
--

INSERT INTO `accomodation` (`AccomodationName`, `AccomodationAddress`, `Type`) VALUES
('Burj Khalifa', 'Al Safa St - Dubai - United Arab(shaz) Emirates', 'Hotel'),
('Fairmont Beijing Hotel', 'China, Beijing, Chaoyang, 建国门外大街永安东里', 'Hotel'),
('Hôtel France Eiffel', '8 Rue St Charles, 75015 Paris, France', 'Hotel'),
('Hotel Mercurio Venice', 'C. Frutarol, 1848, 30124 Venezia VE, Italy', 'Hotel'),
('Hotel Xcaret México', 'Carretera Federal Chetumal-Puerto Juárez, Av. Soli', 'Hotel'),
('Leonardo Royal Hotel Frankfurt', 'Mailänder Str. 1, 60598 Frankfurt am Main, Germany', 'Hotel'),
('MGM Grand', '3799 S Las Vegas Blvd, Las Vegas, NV 89109, United', 'Hotel'),
('Novotel Bangkok Platinum Pratunam', '220 Phetchaburi Rd, Khwaeng Thanon Phetchaburi, Ra', 'Hotel'),
('Radisson Blu Hotel Istanbul Ottomare', 'Kazlıçeşme, Abay Cd No: 223, 34020 Zeytinburnu/İst', 'Hotel'),
('Radisson Hotel Agra', 'C-2, C-1, Fatehabad Rd, Taj Nagari Phase 1, R.K. P', 'Hotel'),
('The Ritz-Carlton Abu Dhabi, Grand Canal', 'Al Rawdah - Al Maqta\' - Abu Dhabi - United Arab Em', 'Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `attraction_hasa_event1`
--

CREATE TABLE `attraction_hasa_event1` (
  `AttractionID` int(11) NOT NULL,
  `AttractionName` char(50) NOT NULL,
  `CityName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attraction_hasa_event1`
--

INSERT INTO `attraction_hasa_event1` (`AttractionID`, `AttractionName`, `CityName`) VALUES
(1, 'High Roller', 'Las Vegas'),
(2, 'Doges Palace', 'Venice'),
(3, 'Taj Mahal', 'Agra'),
(4, 'Sheikh Zayed Grand Mosque', 'Abu Dhabi'),
(5, 'Grand Palace', 'Bangkok'),
(6, 'Fichtebunker', 'Berlin'),
(7, 'De Las Perlas Beach', 'Cancun'),
(8, 'Hagia Sophia Mosque', 'Istanbul'),
(9, 'Eiffel Tower', 'Paris'),
(10, 'Shanghai Disney Resort', 'Shanghai');

-- --------------------------------------------------------

--
-- Table structure for table `attraction_hasa_event2`
--

CREATE TABLE `attraction_hasa_event2` (
  `AttractionID` int(11) NOT NULL,
  `eventDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attraction_hasa_event2`
--

INSERT INTO `attraction_hasa_event2` (`AttractionID`, `eventDate`) VALUES
(1, '2022-05-10'),
(2, '1899-12-31'),
(3, NULL),
(4, NULL),
(5, '1941-02-12'),
(6, NULL),
(7, NULL),
(8, '1900-01-12'),
(9, NULL),
(10, '1908-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `city_hasa`
--

CREATE TABLE `city_hasa` (
  `CityName` char(50) NOT NULL,
  `RegionName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_hasa`
--

INSERT INTO `city_hasa` (`CityName`, `RegionName`) VALUES
('Abu Dhabi', 'Central Capital District'),
('Bangkok', 'Central Thailand'),
('Shanghai', 'East China'),
('Paris', 'Ile-de-France'),
('Istanbul', 'Marmara'),
('Las Vegas', 'Nevada'),
('Berlin', 'Northern European Lowlands'),
('Cancun', 'The Riviera Maya'),
('Agra', 'Uttar Pradesh'),
('Venice', 'Venato');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientId` int(11) NOT NULL,
  `FirstName` char(50) NOT NULL,
  `LastName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryName` char(50) NOT NULL,
  `VisaRequired` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryName`, `VisaRequired`) VALUES
('China', 1),
('France', 0),
('Germany', 0),
('India', 1),
('Italy', 0),
('Mexico', 0),
('Thailand', 0),
('Turkey', 1),
('UAE', 0),
('USA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countryhasaregion`
--

CREATE TABLE `countryhasaregion` (
  `CountryName` char(50) NOT NULL,
  `RegionName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countryhasaregion`
--

INSERT INTO `countryhasaregion` (`CountryName`, `RegionName`) VALUES
('China', 'East China'),
('France', 'Ile-de-France'),
('Germany', 'Northern European Lowlands'),
('India', 'Uttar Pradesh'),
('Italy', 'Venato'),
('Mexico', 'The Riviera Maya'),
('Thailand', 'Central Thailand'),
('Turkey', 'Marmara'),
('UAE', 'Central Capital District'),
('USA', 'Nevada');

-- --------------------------------------------------------

--
-- Table structure for table `creates_schedule`
--

CREATE TABLE `creates_schedule` (
  `ScheduleId` int(11) NOT NULL,
  `ClientId` int(11) NOT NULL,
  `ScheduleStartDate` date NOT NULL,
  `ScheduleEndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `CurrencyName` char(50) NOT NULL,
  `CurrencyType` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`CurrencyName`, `CurrencyType`) VALUES
('Bitcoin', 'Crypto Currency'),
('Canadian Dollar', 'Paper Currency'),
('Chinese Yuan', 'Paper Currency'),
('Dirham', 'Paper Currency'),
('Euro', 'Paper Currency'),
('Indian Rupee', 'Paper Currency'),
('Mexican Peso', 'Paper Currency'),
('Thai Baht', 'Paper Currency'),
('Turkish Lira', 'Paper Currency'),
('United States Dollar', 'Paper Currency');

-- --------------------------------------------------------

--
-- Table structure for table `exchangerate`
--

CREATE TABLE `exchangerate` (
  `ExchangeRate` char(50) DEFAULT NULL,
  `CurrencyNameX` char(50) NOT NULL,
  `CurrencyTypeX` char(50) NOT NULL,
  `CurrencyNameY` char(50) NOT NULL,
  `CurrencyTypeY` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exchangerate`
--

INSERT INTO `exchangerate` (`ExchangeRate`, `CurrencyNameX`, `CurrencyTypeX`, `CurrencyNameY`, `CurrencyTypeY`) VALUES
('0.000034', 'Canadian Dollar', 'Paper Currency', 'Bitcoin', 'Crypto Currency'),
('1', 'Canadian Dollar', 'Paper Currency', 'Canadian Dollar', 'Paper Currency'),
('5.27', 'Canadian Dollar', 'Paper Currency', 'Chinese Yuan', 'Paper Currency'),
('2.86', 'Canadian Dollar', 'Paper Currency', 'Dirham', 'Paper Currency'),
('0.76', 'Canadian Dollar', 'Paper Currency', 'Euro', 'Paper Currency'),
('61.81', 'Canadian Dollar', 'Paper Currency', 'Indian Rupee', 'Paper Currency'),
('15.88', 'Canadian Dollar', 'Paper Currency', 'Mexican Peso', 'Paper Currency'),
('28.13', 'Canadian Dollar', 'Paper Currency', 'Thai Baht', 'Paper Currency'),
('13.94', 'Canadian Dollar', 'Paper Currency', 'Turkish Lira', 'Paper Currency'),
('0.78', 'Canadian Dollar', 'Paper Currency', 'United States Dollar', 'Paper Currency');

-- --------------------------------------------------------

--
-- Table structure for table `filledwith`
--

CREATE TABLE `filledwith` (
  `ScheduleId` int(11) NOT NULL,
  `CityName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mayhave_travelrisk`
--

CREATE TABLE `mayhave_travelrisk` (
  `CountryName` char(50) NOT NULL,
  `RiskType` char(50) NOT NULL,
  `RiskSeverity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mayhave_travelrisk`
--

INSERT INTO `mayhave_travelrisk` (`CountryName`, `RiskType`, `RiskSeverity`) VALUES
('China', 'Counterfeit Currency', 8),
('China', 'Fraud', 4),
('China', 'Scam', 6),
('China', 'Theft', 6),
('France', 'Gun Violence', 1),
('France', 'Residential Break-In', 7),
('France', 'Threat of Terrorism', 10),
('France', 'Vigipirate Plan', 8),
('Germany', 'Cyber Crime', 6),
('Germany', 'Phone Scam', 9),
('Germany', 'Terrorism Threat', 9),
('India', 'ATM Fraud', 4),
('India', 'Crimes', 10),
('India', 'Kidnapping', 8),
('India', 'Pick Pocket', 5),
('Italy', 'Mafia', 8),
('Italy', 'Organized Crime', 9),
('Italy', 'Petty Crimes', 7),
('Mexico', 'Cartel Violence', 10),
('Mexico', 'Gang Violence', 9),
('Mexico', 'Violent Crime', 6),
('Thailand', 'Fraudulent Entertainment Venus', 5),
('Thailand', 'Pick Pocket', 6),
('Thailand', 'Political Tension', 7),
('Turkey', 'Fake Currency', 2),
('Turkey', 'Kidnapping', 8),
('Turkey', 'Violent Protest', 4),
('UAE', 'COVID', 4),
('UAE', 'Fatal road accidents', 7),
('UAE', 'Regional Tension', 8),
('UAE', 'Terrorism', 10),
('USA', 'Common Criminal Strategies', 8),
('USA', 'Drug Traffiking', 6),
('USA', 'Gun Violence', 9),
('USA', 'Kidnapping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modesof`
--

CREATE TABLE `modesof` (
  `CityName` char(50) NOT NULL,
  `TransportationType` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modesof`
--

INSERT INTO `modesof` (`CityName`, `TransportationType`) VALUES
('Abu Dhabi', 'Car'),
('Agra', 'Rickshaw'),
('Bangkok', 'Tuktuk'),
('Berlin', 'Bike'),
('Cancun', 'Bus'),
('Istanbul', 'Taxi'),
('Las Vegas', 'Limo'),
('Paris', 'Tram'),
('Shanghai', 'Train'),
('Venice', 'Gondola');

-- --------------------------------------------------------

--
-- Table structure for table `provides1`
--

CREATE TABLE `provides1` (
  `CityName` char(50) NOT NULL,
  `AccomodationAddress` char(50) NOT NULL,
  `AccomodationName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provides1`
--

INSERT INTO `provides1` (`CityName`, `AccomodationAddress`, `AccomodationName`) VALUES
('Abu Dhabi', 'Al Rawdah - Al Maqta\' - Abu Dhabi - United Arab Em', 'The Ritz-Carlton Abu Dhabi, Grand Canal'),
('Agra', 'C-2, C-1, Fatehabad Rd, Taj Nagari Phase 1, R.K. P', 'Radisson Hotel Agra'),
('Bangkok', '220 Phetchaburi Rd, Khwaeng Thanon Phetchaburi, Ra', 'Novotel Bangkok Platinum Pratunam'),
('Berlin', 'Mailänder Str. 1, 60598 Frankfurt am Main, Germany', 'Leonardo Royal Hotel Frankfurt'),
('Cancun', 'Carretera Federal Chetumal-Puerto Juárez, Av. Soli', 'Hotel Xcaret México'),
('Istanbul', 'Kazlıçeşme, Abay Cd No: 223, 34020 Zeytinburnu/İst', 'Radisson Blu Hotel Istanbul Ottomare'),
('Las Vegas', '3799 S Las Vegas Blvd, Las Vegas, NV 89109, United', 'MGM Grand'),
('Paris', '8 Rue St Charles, 75015 Paris, France', 'Hôtel France Eiffel'),
('Shanghai', 'China, Beijing, Chaoyang, 建国门外大街永安东里', 'Fairmont Beijing Hotel'),
('Venice', 'C. Frutarol, 1848, 30124 Venezia VE, Italy', 'Hotel Mercurio Venice');

-- --------------------------------------------------------

--
-- Table structure for table `provides2`
--

CREATE TABLE `provides2` (
  `AccomodationAddress` char(50) NOT NULL,
  `AccomodationName` char(50) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provides2`
--

INSERT INTO `provides2` (`AccomodationAddress`, `AccomodationName`, `StartTime`, `EndTime`) VALUES
('220 Phetchaburi Rd, Khwaeng Thanon Phetchaburi, Ra', 'Novotel Bangkok Platinum Pratunam', '2022-08-02 02:28:10', '2022-08-02 02:28:10'),
('3799 S Las Vegas Blvd, Las Vegas, NV 89109, United', 'MGM Grand', '2022-01-01 15:00:00', '2022-01-01 11:00:00'),
('8 Rue St Charles, 75015 Paris, France', 'Hôtel France Eiffel', '2022-08-02 02:28:09', '2022-08-02 02:28:09'),
('Al Rawdah - Al Maqta\' - Abu Dhabi - United Arab Em', 'The Ritz-Carlton Abu Dhabi, Grand Canal', '2022-08-02 02:28:07', '2022-08-02 02:28:07'),
('C-2, C-1, Fatehabad Rd, Taj Nagari Phase 1, R.K. P', 'Radisson Hotel Agra', '2022-01-01 14:00:00', '2022-01-01 12:00:00'),
('C. Frutarol, 1848, 30124 Venezia VE, Italy', 'Hotel Mercurio Venice', '2022-01-01 14:00:00', '2022-01-01 10:30:00'),
('Carretera Federal Chetumal-Puerto Juárez, Av. Soli', 'Hotel Xcaret México', '2022-08-02 02:28:09', '2022-08-02 02:28:09'),
('China, Beijing, Chaoyang, 建国门外大街永安东里', 'Fairmont Beijing Hotel', '2022-08-02 02:28:07', '2022-08-02 02:28:07'),
('Kazlıçeşme, Abay Cd No: 223, 34020 Zeytinburnu/İst', 'Radisson Blu Hotel Istanbul Ottomare', '2022-08-02 02:28:13', '2022-08-02 02:28:13'),
('Mailänder Str. 1, 60598 Frankfurt am Main, Germany', 'Leonardo Royal Hotel Frankfurt', '2022-08-02 02:28:10', '2022-08-02 02:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `RegionType` char(50) NOT NULL,
  `RegionName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`RegionType`, `RegionName`) VALUES
('Desert', 'Central Capital District'),
('Tropics', 'Central Thailand'),
('Northern Subtropical', 'East China'),
('Deciduous Forest', 'Ile-de-France'),
('Mediterranean Forest', 'Marmara'),
('Desert', 'Nevada'),
('Novartis', 'Northern European Lowlands'),
('Tropical Rainforest', 'The Riviera Maya'),
('Temperate', 'Uttar Pradesh'),
('Tropics', 'Venato');

-- --------------------------------------------------------

--
-- Table structure for table `transportation1`
--

CREATE TABLE `transportation1` (
  `TransportType` char(50) NOT NULL,
  `HoursOfoperation` char(50) NOT NULL,
  `isRentable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transportation1`
--

INSERT INTO `transportation1` (`TransportType`, `HoursOfoperation`, `isRentable`) VALUES
('Bike', '07:00:00 - 20:00:00', 1),
('Bus', '00:00:00 - 24:59:59', 0),
('Car', '12:00:00 - 24:00:00', 1),
('Gondola', '09:00:00 - 18:00:00', 0),
('Limo', '07:00:00 - 24:00:00', 1),
('Rickshaw', '00:00:00 - 24:59:59', 0),
('Taxi', '00:00:00 - 24:59:59', 0),
('Train', '00:00:00 - 24:59:59', 0),
('Tram', '07:00:00 - 20:00:00', 0),
('Tuktuk', '00:00:00 - 23:59:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE `uses` (
  `CurrencyName` char(50) NOT NULL,
  `CountryName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`CurrencyName`, `CountryName`) VALUES
('Chinese Yuan', 'China'),
('Dirham', 'UAE'),
('Euro', 'France'),
('Euro', 'Germany'),
('Euro', 'Italy'),
('Indian Rupee', 'India'),
('Mexican Peso', 'Mexico'),
('Thai Baht', 'Thailand'),
('Turkish Lira', 'Turkey'),
('United States Dollar', 'USA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomodation`
--
ALTER TABLE `accomodation`
  ADD PRIMARY KEY (`AccomodationName`,`AccomodationAddress`);

--
-- Indexes for table `attraction_hasa_event1`
--
ALTER TABLE `attraction_hasa_event1`
  ADD PRIMARY KEY (`AttractionID`,`CityName`),
  ADD KEY `CityName` (`CityName`);

--
-- Indexes for table `attraction_hasa_event2`
--
ALTER TABLE `attraction_hasa_event2`
  ADD PRIMARY KEY (`AttractionID`);

--
-- Indexes for table `city_hasa`
--
ALTER TABLE `city_hasa`
  ADD PRIMARY KEY (`CityName`),
  ADD KEY `RegionName` (`RegionName`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryName`);

--
-- Indexes for table `countryhasaregion`
--
ALTER TABLE `countryhasaregion`
  ADD PRIMARY KEY (`CountryName`,`RegionName`),
  ADD KEY `RegionName` (`RegionName`);

--
-- Indexes for table `creates_schedule`
--
ALTER TABLE `creates_schedule`
  ADD PRIMARY KEY (`ScheduleId`),
  ADD KEY `ClientId` (`ClientId`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`CurrencyName`);

--
-- Indexes for table `exchangerate`
--
ALTER TABLE `exchangerate`
  ADD PRIMARY KEY (`CurrencyNameX`,`CurrencyTypeX`,`CurrencyNameY`,`CurrencyTypeY`),
  ADD KEY `CurrencyNameY` (`CurrencyNameY`);

--
-- Indexes for table `filledwith`
--
ALTER TABLE `filledwith`
  ADD PRIMARY KEY (`ScheduleId`,`CityName`),
  ADD KEY `CityName` (`CityName`);

--
-- Indexes for table `mayhave_travelrisk`
--
ALTER TABLE `mayhave_travelrisk`
  ADD PRIMARY KEY (`CountryName`,`RiskType`);

--
-- Indexes for table `modesof`
--
ALTER TABLE `modesof`
  ADD PRIMARY KEY (`CityName`,`TransportationType`),
  ADD KEY `TransportationType` (`TransportationType`);

--
-- Indexes for table `provides1`
--
ALTER TABLE `provides1`
  ADD PRIMARY KEY (`CityName`,`AccomodationAddress`,`AccomodationName`),
  ADD KEY `AccomodationName` (`AccomodationName`,`AccomodationAddress`);

--
-- Indexes for table `provides2`
--
ALTER TABLE `provides2`
  ADD PRIMARY KEY (`AccomodationAddress`,`AccomodationName`),
  ADD KEY `AccomodationName` (`AccomodationName`,`AccomodationAddress`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`RegionName`);

--
-- Indexes for table `transportation1`
--
ALTER TABLE `transportation1`
  ADD PRIMARY KEY (`TransportType`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`CurrencyName`,`CountryName`),
  ADD KEY `CountryName` (`CountryName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attraction_hasa_event1`
--
ALTER TABLE `attraction_hasa_event1`
  ADD CONSTRAINT `attraction_hasa_event1_ibfk_1` FOREIGN KEY (`CityName`) REFERENCES `city_hasa` (`CityName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city_hasa`
--
ALTER TABLE `city_hasa`
  ADD CONSTRAINT `city_hasa_ibfk_1` FOREIGN KEY (`RegionName`) REFERENCES `region` (`RegionName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `countryhasaregion`
--
ALTER TABLE `countryhasaregion`
  ADD CONSTRAINT `countryhasaregion_ibfk_1` FOREIGN KEY (`CountryName`) REFERENCES `country` (`CountryName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `countryhasaregion_ibfk_2` FOREIGN KEY (`RegionName`) REFERENCES `region` (`RegionName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `creates_schedule`
--
ALTER TABLE `creates_schedule`
  ADD CONSTRAINT `creates_schedule_ibfk_1` FOREIGN KEY (`ClientId`) REFERENCES `client` (`ClientId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exchangerate`
--
ALTER TABLE `exchangerate`
  ADD CONSTRAINT `exchangerate_ibfk_1` FOREIGN KEY (`CurrencyNameX`) REFERENCES `currency` (`CurrencyName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exchangerate_ibfk_2` FOREIGN KEY (`CurrencyNameY`) REFERENCES `currency` (`CurrencyName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `filledwith`
--
ALTER TABLE `filledwith`
  ADD CONSTRAINT `filledwith_ibfk_1` FOREIGN KEY (`ScheduleId`) REFERENCES `creates_schedule` (`ScheduleId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `filledwith_ibfk_2` FOREIGN KEY (`CityName`) REFERENCES `city_hasa` (`CityName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mayhave_travelrisk`
--
ALTER TABLE `mayhave_travelrisk`
  ADD CONSTRAINT `mayhave_travelrisk_ibfk_1` FOREIGN KEY (`CountryName`) REFERENCES `country` (`CountryName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modesof`
--
ALTER TABLE `modesof`
  ADD CONSTRAINT `modesof_ibfk_1` FOREIGN KEY (`CityName`) REFERENCES `city_hasa` (`CityName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modesof_ibfk_2` FOREIGN KEY (`TransportationType`) REFERENCES `transportation1` (`TransportType`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `provides1`
--
ALTER TABLE `provides1`
  ADD CONSTRAINT `provides1_ibfk_1` FOREIGN KEY (`CityName`) REFERENCES `city_hasa` (`CityName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `provides1_ibfk_2` FOREIGN KEY (`AccomodationName`,`AccomodationAddress`) REFERENCES `accomodation` (`AccomodationName`, `AccomodationAddress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `provides2`
--
ALTER TABLE `provides2`
  ADD CONSTRAINT `provides2_ibfk_1` FOREIGN KEY (`AccomodationName`,`AccomodationAddress`) REFERENCES `accomodation` (`AccomodationName`, `AccomodationAddress`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `uses_ibfk_1` FOREIGN KEY (`CurrencyName`) REFERENCES `currency` (`CurrencyName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uses_ibfk_2` FOREIGN KEY (`CountryName`) REFERENCES `country` (`CountryName`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
