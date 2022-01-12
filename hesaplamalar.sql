-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2022, 12:30:10
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hesaplamalar`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `girilen` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nerden` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sonuc` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nereye` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ip_adresi` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `area`
--

INSERT INTO `area` (`id`, `girilen`, `nerden`, `sonuc`, `nereye`, `ip_adresi`, `tarih`) VALUES
(29, '100', 'square_inches', '0', 'square_miles', '::1', '2021-12-23'),
(30, '100', 'square_centimeters', '10000', 'square_millimeters', '::1', '2021-12-23'),
(31, '100', 'square_inches', '0', 'square_miles', '::1', '2021-12-23'),
(32, '100000', 'square_inches', '0.00002', 'square_miles', '::1', '2021-12-23'),
(33, '22', 'square_inches', '0.01698', 'square_yards', '::1', '2021-12-30'),
(34, '100', 'square_yards', '129600', 'square_inches', '::1', '2022-01-10'),
(35, '100', 'square_yards', '0.00003', 'square_miles', '::1', '2022-01-10'),
(36, '100', 'square_yards', '83.61274', 'square_meters', '::1', '2022-01-10'),
(37, '100', 'square_yards', '0.02066', 'acres', '::1', '2022-01-10'),
(38, '100', 'square_yards', '0.02066', 'acres', '::1', '2022-01-10'),
(39, '100', 'square_yards', '83612736', 'square_millimeters', '::1', '2022-01-10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `length_and_distance`
--

CREATE TABLE `length_and_distance` (
  `id` int(11) NOT NULL,
  `girilen` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nerden` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sonuc` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nereye` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ip_adresi` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `length_and_distance`
--

INSERT INTO `length_and_distance` (`id`, `girilen`, `nerden`, `sonuc`, `nereye`, `ip_adresi`, `tarih`) VALUES
(27, '100', 'yards', '0.05682', 'miles', '::1', '2021-12-23'),
(28, '222', 'inches', '18.5', 'feet', '::1', '2021-12-27'),
(29, '100', 'yards', '3600', 'inches', '::1', '2022-01-10'),
(30, '100', 'feet', '1200', 'inches', '::1', '2022-01-10'),
(31, '100', 'millimeters', '3.93701', 'inches', '::1', '2022-01-10'),
(32, '100', 'meters', '3937.00787', 'inches', '::1', '2022-01-10'),
(33, '100', 'centimeters', '39.37008', 'inches', '::1', '2022-01-10'),
(34, '100', 'inches', '2.77778', 'yards', '::1', '2022-01-10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mass`
--

CREATE TABLE `mass` (
  `id` int(11) NOT NULL,
  `girilen` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nerden` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sonuc` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nereye` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ip_adresi` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `mass`
--

INSERT INTO `mass` (`id`, `girilen`, `nerden`, `sonuc`, `nereye`, `ip_adresi`, `tarih`) VALUES
(27, '5445', 'pounds', '388.92845', 'stones', '::1', '2021-12-23'),
(28, '100', 'stones', '22400.00705', 'ounces', '::1', '2022-01-10'),
(29, '100', 'stones', '1400.00044', 'pounds', '::1', '2022-01-10'),
(30, '100', 'stones', '0.625', 'long_tons', '::1', '2022-01-10'),
(31, '100', 'stones', '635029000', 'milligrams', '::1', '2022-01-10'),
(32, '100', 'stones', '635029', 'grams', '::1', '2022-01-10'),
(33, '100', 'stones', '635.029', 'kilograms', '::1', '2022-01-10'),
(34, '100', 'stones', '0.63503', 'metric_tonnes', '::1', '2022-01-10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `speed`
--

CREATE TABLE `speed` (
  `id` int(11) NOT NULL,
  `girilen` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nerden` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sonuc` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nereye` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ip_adresi` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `speed`
--

INSERT INTO `speed` (`id`, `girilen`, `nerden`, `sonuc`, `nereye`, `ip_adresi`, `tarih`) VALUES
(27, '444', 'miles_per_hour', '714.54874', 'kilometers_per_hour', '::1', '2021-12-23'),
(28, '100', 'miles_per_hour', '146.66667', 'feet_per_second', '::1', '2021-12-30'),
(29, '100', 'feet_per_second', '109.728', 'kilometers_per_hour', '::1', '2022-01-10'),
(30, '100', 'feet_per_second', '30.48', 'meters_per_second', '::1', '2022-01-10'),
(31, '100', 'feet_per_second', '68.18182', 'miles_per_hour', '::1', '2022-01-10'),
(32, '100', 'feet_per_second', '59.24838', 'knots', '::1', '2022-01-10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `temperature`
--

CREATE TABLE `temperature` (
  `id` int(11) NOT NULL,
  `girilen` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nerden` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sonuc` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nereye` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ip_adresi` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `temperature`
--

INSERT INTO `temperature` (`id`, `girilen`, `nerden`, `sonuc`, `nereye`, `ip_adresi`, `tarih`) VALUES
(27, '45445', 'fahrenheit', '25502.59444', 'kelvin', '::1', '2021-12-23'),
(28, '100', 'kelvin', '-173.15', 'celsius', '::1', '2022-01-10'),
(29, '100', 'kelvin', '-279.67', 'fahrenheit', '::1', '2022-01-10'),
(30, '100', 'kelvin', '100', 'kelvin', '::1', '2022-01-10'),
(31, '100000', 'kelvin', '99726.85', 'celsius', '::1', '2022-01-10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `volume`
--

CREATE TABLE `volume` (
  `id` int(11) NOT NULL,
  `girilen` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nerden` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sonuc` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `nereye` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ip_adresi` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `volume`
--

INSERT INTO `volume` (`id`, `girilen`, `nerden`, `sonuc`, `nereye`, `ip_adresi`, `tarih`) VALUES
(27, '4554', 'imperial_gallons', '728639.03833', 'imperial_ounces', '::1', '2021-12-23'),
(28, '100', 'imperial_pints', '3467.73377', 'cubic_inches', '::1', '2022-01-10'),
(29, '100', 'imperial_teaspoons', '36.12225', 'cubic_inches', '::1', '2022-01-10'),
(30, '100', 'us_pints', '2887.49077', 'cubic_inches', '::1', '2022-01-10'),
(31, '100', 'us_teaspoons', '30.07805', 'cubic_inches', '::1', '2022-01-10'),
(32, '100', 'us_tablespoons', '90.23439', 'cubic_inches', '::1', '2022-01-10'),
(33, '100', 'cubic_centimeters', '6.10236', 'cubic_inches', '::1', '2022-01-10');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `length_and_distance`
--
ALTER TABLE `length_and_distance`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mass`
--
ALTER TABLE `mass`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `speed`
--
ALTER TABLE `speed`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `temperature`
--
ALTER TABLE `temperature`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `volume`
--
ALTER TABLE `volume`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `length_and_distance`
--
ALTER TABLE `length_and_distance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `mass`
--
ALTER TABLE `mass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `speed`
--
ALTER TABLE `speed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `temperature`
--
ALTER TABLE `temperature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `volume`
--
ALTER TABLE `volume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
