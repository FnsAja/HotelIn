-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 06:00 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabelhotel`
--

CREATE TABLE `tabelhotel` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` varchar(300) NOT NULL,
  `bintang` decimal(10,2) NOT NULL,
  `alamat` text NOT NULL,
  `fasilitas` text NOT NULL,
  `jml_kamar_famili` int(15) NOT NULL,
  `desc_famili` text NOT NULL,
  `jml_kamar_deluxe` int(15) NOT NULL,
  `desc_deluxe` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabelhotel`
--

INSERT INTO `tabelhotel` (`id`, `nama`, `harga`, `bintang`, `alamat`, `fasilitas`, `jml_kamar_famili`, `desc_famili`, `jml_kamar_deluxe`, `desc_deluxe`, `foto`) VALUES
(1, 'Hotel Indonesia Kempinski Jakarta', 'Rp 3.076.425 - Rp 7.078.500', '5.00', 'Jalan MH Thamrin No. 1, Thamrin, Jakarta Pusat, Jakarta, Indonesia, 10310', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 3, '1 Double Bed Or 2 Single Bed, Free Breakfast, Free WiFi, 64.0 sqm', 2, '1 King Bed, Free Breakfast, Free WiFi, 85.0 sqm', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20020708-cba6d863056a1910b400710aacab716f.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768'),
(2, 'The Langham, Jakarta', 'Rp 3.484.800 - Rp 15.584.800', '5.00', 'District 8, SCBD, Lot 28, Jakarta, Kebayoran Baru, Senayan, Jakarta, Indonesia, 12190', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 4, '42.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 1, '1 King Bed, Free WiFi, Non-smoking, 109.0 sqm, No Breakfast', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20052530-6ec94a2936b1dee2212d9f5bf63359b9.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768'),
(3, 'The Ritz-Carlton Jakarta, Pacific Place Hotel', 'Rp 5.995.489 - Rp 8.458.283', '5.00', 'Jl Jendral Sudirman Kav 52-53, Kebayoran Baru, Senayan, Jakarta, Indonesia, 12190', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 5, '42.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 3, '42.0 sqm, No Breakfast, Free WiFi, Non-smoking, 1 King Bed', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10023329-b51e3a939dc390616451d356f228780b.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768'),
(4, 'Fairmont Jakarta', 'Rp 3.630.000 - Rp 7.562.500', '5.00', 'Jl. Asia Afrika No.8, Kebayoran Baru, Senayan, Jakarta, Indonesia, 10270', '\r\nA/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 4, '49.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 3, '113.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed, Reschedule Policy Applies', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20038897-a21addb3005ca1eeb98af1cfd5bc105f.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768'),
(5, 'Alila SCBD Jakarta', 'Rp 3.630.000 - Rp 4.585.900', '5.00', 'SCBD Lot 11. Jalan Jenderal Sudirman Kavling 52 - 53, Kebayoran Baru, Senayan, Jakarta, Indonesia, 12190', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 10, '38.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 5, '45.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20012566-8cf6f230f78cf765c74583bd35d93742.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768\r\n'),
(6, 'The Westin Jakarta', 'Rp 3.496.900', '5.00', 'Jl. H.R. Rasuna Said Kav.C-22 A, Setiabudi, Rasuna Said, Jakarta, Indonesia, 12940', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 3, '42.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 0, 'Tidak tersedia', 'https://ik.imagekit.io/tvlk/apr-asset/TzEv3ZUmG4-4Dz22hvmO9NUDzw1DGCIdWl4oPtKumOg=/hotels/16000000/15670000/15663900/15663894/10cc74fb_z.jpg?_src=imagekit&tr=c-at_max,h-360,q-40,w-640'),
(7, 'Four Seasons Hotel Jakarta', 'Rp 2.860.000 - Rp 4.062.500', '5.00', 'Capital Place, Jalan Jend. Gatot Subroto Kav. 18, Gatot Subroto, Jakarta Selatan, Jakarta, Indonesia, 12710', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 3, '62.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed Or 2 Queen Bed', 2, '68.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20018687-df0d70b859fedef352ad9595a301b732.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768'),
(8, 'Grand Hyatt Jakarta', 'Rp 2.631.750 - Rp 3.772.175', '4.00', 'Jalan M. H. Thamrin Kav. 28-30, Thamrin, Jakarta Pusat, Jakarta, Indonesia, 10350', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 2, '50.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 5, '50.0 sqm, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed, Non-refundable, Non-reschedulable', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/20014186-0986fb0dd2bb99bdc4676d5be33cceba.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768'),
(9, 'The Dharmawangsa Jakarta', 'Rp 2.500.000 - Rp 4.500.000', '4.00', 'Jalan Brawijaya No. 26, Kebayoran Baru, Kebayoran Baru, Dharmawangsa, Jakarta, Indonesia, 12160', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Wi-Fi', 3, '66.0 sqm, Without Breakfast, Free WiFi, Non-smoking, 1 King Bed', 5, '107.0 sqm, Without Breakfast, Free WiFi, Non-smoking, 1 King Bed', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10018774-c014c9705b2b8561cad6deb50da034ec.jpeg?_src=imagekit&tr=c-at_max,h-488,q-40,w-768'),
(10, 'JW Marriott Hotel Jakarta', 'Rp 2.422.420 - Rp 5.087.082', '4.00', 'Jalan Dr. Ide Gde Anak Agung Gde Agung, Kav. E. 1.2, No. 1 & 2, Mega Kuningan , Kuningan, Setiabudi, Jakarta, Indonesia, 12950', 'A/C, Restaurant, Swimming Pool, 24-Hour Front Desk, Parking, Elevator, Wi-Fi', 5, '452-sq-foot room with city views, Without Breakfast, Free WiFi, Non-smoking, 1 King Bed', 5, '904 sq feet, Free Breakfast, Free WiFi, Non-smoking, 1 King Bed', 'https://ik.imagekit.io/tvlk/apr-asset/dgXfoyh24ryQLRcGq00cIdKHRmotrWLNlvG-TxlcLxGkiDwaUSggleJNPRgIHCX6/hotel/asset/10022535-4562ec5c43cf5ffb675475a8534340df.jpeg?tr=q-40,c-at_max,w-740,h-500&_src=imagekit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabelhotel`
--
ALTER TABLE `tabelhotel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabelhotel`
--
ALTER TABLE `tabelhotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
