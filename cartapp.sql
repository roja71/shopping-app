-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 07:17 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `fullname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`fullname`, `username`, `password`, `phone`) VALUES
('roja tatikonda', 'roja7', 'roja@1234', '8709361986');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `pid` int(3) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `category` text NOT NULL,
  `price` varchar(200) NOT NULL,
  `quantity` text NOT NULL,
  `description` text NOT NULL,
  `longdesc` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`pid`, `pname`, `category`, `price`, `quantity`, `description`, `longdesc`, `image`) VALUES
(142, 'LG HD  Smart TV', 'television', '14990', '9', 'LG 80 cm (32 inches) HD Ready Smart LED TV 32LM563BPTC (Dark Iron Gray)', 'Resolution: HD Ready (1366x768) |\r\n Refresh Rate: 50 hertz\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console\r\n |\r\n 1 USB ports to connect hard drives and other USB devices\r\nSound output: 10 Watts Output I 2 Speakers |\r\n DTS Virtual:X |\r\n Sound Type : Down Firing\r\nSmart TV Features: Web OS Smart TV |\r\n Wi-Fi |\r\n Home Dashboard | \r\nScreen Mirroring |\r\n Mini TV Browser |\r\n Multi-Tasking |\r\n Office 365\r\nDisplay: Active HDR | \r\nDisplay Type: Flat | \r\nBackLight Module: Slim LED', 'product_images\\tv1.jpg'),
(143, 'Voltas  Split AC', 'air conditioner', '31999', '10', 'Voltas 1.5 Ton 3 Star Inverter Split AC (Copper 183VCZS White)', 'Split AC with inverter compressor: Variable speed compressor which adjusts power depending on heat load. It is most energy efficient and has lowest-noise operation\r\nCapacity: 1.5 ton Ton. Suitable for medium sized rooms (111 to 150 sq ft)\r\nEnergy Rating : 3 Star Efficiency', 'product_images\\ac1.jpg'),
(144, 'LG Refrigerator', 'Refrigerator', '72999', '15', 'Frost Free Side-by-Side Refrigerator(GC-B247KQDV.ADSQEBN, Graphite steel, Inverter Compressor)', 'Frost Free, Side-by-Side: Auto defrost to stop ice-build up\r\nCapacity 679 L: Suitable for families with 5 or more members\r\nWarranty: 1 year on product, 10 years on compressor\r\nInverter Compressor – Energy efficient, less noise & more durable\r\nShelf Type: Toughened Glass\r\nDimension (mm): Height (Net) 1790; Width (Net) 912; Depth (Net) 717', 'product_images\\ref1.jpg'),
(145, 'Apple MacBook Pro ', 'laptops', '195902', '2', '(16-inch, 16GB RAM, 512GB Storage, 2.6GHz 9th Gen Intel Core i7) - Space Grey', 'Ninth-generation 6-core Intel Core i7 processor\r\nStunning 16-inch Retina display with True Tone technology\r\nTouch Bar and Touch ID\r\nAMD Radeon Pro 5300M graphics with GDDR6 memory\r\nUltrafast SSD\r\nIntel UHD Graphics 630\r\nSix-speaker system with force-cancelling woofers', 'product_images\\laptop1.jpg'),
(146, 'OnePlus 11', 'mobiles', '41999', '10', 'Glacial Green 6GB RAM+128GB Storage 48MP rear camera with 4k video', '48MP rear camera with 4k video at 30/60 fps, 1080p video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080p 30fps, 4k 30fps, cine aspect ratio video recording, ultrashot hdr, nightscape, micro, portrait, pro mode, panorama, cat&dog face detection&focus, ai scene detection, raw image | 16MP front facing camera\r\n16.637 centimeters (6.55-inch) 90Hz fluid display with 2400 x 1080 pixels resolution, 402 ppi pixel density\r\nMemory, Storage & SIM: 6GB RAM | 128GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)\r\nOxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865, powered by Kryo 585 CPU octa core processor, Adreno 650\r\n4300mAH lithium-ion battery', 'product_images\\ip11.jfif'),
(147, 'Voltas Dishwasher ', 'dishwasher', '40950', '2', 'Voltas Beko 14 Place Settings Dishwasher (DF14S2, Silver)', 'ProSmartTM Inverter Motor This helps lower the noise and energy consumption. Due to its magnetic design, the motor has a low frequency, and fewer vibrations. The absence of bearings in the design also helps reduce mechanical noises\r\nAquaFlexTM Whether it’s porcelain or plastic. AquaFlexTM enables adjusting water pressures to the lower and upper baskets gently, providing A class washing and drying results for all kinds of dishes.\r\nFast + The ProSmartTM Inverter Motor enables efficient energy consumption and reduces friction in the motor. There are no bearings in the design so that mechanical noises are lower. Along with that, the motor produces less vibrations due to its magnetic design.\r\nAquaIntenseTM This specially designed 360° rotating head helps water reach the nooks and corners of dishes and cleans even heavily soiled pots and pans. It provides dedicated function and stronger washing power by applying higher water pressure in the lower basket power', 'product_images\\d1.jpg'),
(148, 'Voltas Automatic Washing Machine', 'Washing Machine', '41810', '10', 'Voltas Beko 8 kg Fully Automatic Dryer (WDR80S, Silver)Opti sense', 'Washing machine; 8 kg\r\n16 wash programs\r\nWarranty: 2 years on product, 2 years on motor\r\nHeat pump\r\nOpti sense\r\nPro smart inverter motor\r\nSilent tech\r\n', 'product_images\\wash1.jpg'),
(149, 'Nikon D5600', 'cameras', '50999', '15', 'AF-P 18-55 mm + AF-P 70-300 mm VR Kit with Bag and 16GB Memory Card Free', 'Details at its finest\r\nSeize split-second moments\r\nDiscover a fresh point of view\r\nIntuitively designed for easy handling\r\nCinematic brilliance\r\nShare your creations on-the-go\r\n24.2 effective megapixels, an Expeed 4 image-processing engine and an ISO range of 100-25600 that captures beautiful and vibrant imagery', 'product_images\\c1.jpg'),
(150, 'boAt Rockerz', 'headphones', '1899', '10', '600 Bluetooth Headphone with Luxurious Sound, Plush Earcushions, Foldable Ergonomic Design and Up to 8H Playtime (Black)', 'Explore and plunge into the smarter world with Alexa built-in\r\nFeel the HD Sound Quality with Super Extra Bass. Made for today’s heavy-hitting bass lines and dropping beats, SUPER EXTRA BASS technology delivers powerful, clear bass sound\r\nAn ear cup that doubles as a control panel, the Rockerz 600 are truly the wireless headphones of the future. Now you can pause/play, change tracks, adjust the volume and even answer calls with a simple tap of the ear cup\r\nCreated to compliment your lifestyle, the stylish Rockerz 600 Wireless headphones are a definite fashion statement. What’s more, it’s lightweight, foldable, portable and most of all compact. These precision designed pair of headphones are made to let you move with ease\r\nYou can enjoy your favourite tunes all day thanks to its 300mAh battery that delivers up to 8 hours of audio excellence', 'product_images\\h1.jpg'),
(151, 'Sony Home Theatre System', 'speakers', '22790', '10', ' HT-RT40 Real 5.1ch Dolby Digital Tall boy Soundbar  One touch wireless listening with NFC and Bluetoot', 'Real 5.1 channel surround sound provides immersive sound\r\nOne touch wireless listening with NFC and Bluetooth\r\nMusic center app compatibility, Power Consumption: 85 W ; Power Requirement: AC 220 - 240V, 50/60 Hz\r\nEnjoy your favorite playlist by just plugging in your USB\r\nTall boy speakers', 'product_images\\s1.jpg'),
(152, 'Sony Bravia Smart TV', 'television', '234490', '2', 'Smart TV Features: Built-in WiFi | Android TV | Voice Search | Google Play Store | Chromecast | Notify Bravia | Netflix | Content Bar | Amazon Prime Video | Youtube, Hotstar and MX Player', 'Resolution: 4K Ultra HD (3840 x 2160p), Refresh Rate: 50 hertz\r\nDisplay: X1, 4K HDR, Triluminos Display, 4K X-Reality Pro, Motionflow XR\r\nSmart TV Features: Android TV, Voice Search, Google Play, Chromecast, Netflix Recommended, Amazon Prime Video, HDR Gaming\r\nConnectivity: 4 HDMI ports to connect set top box, Blu Ray players, gaming console, 2 USB ports to connect hard drives and other USB devices\r\nSound : 20 Watts Output, X-Balanced Speaker, Bass Reflex speakers, Dolby Atmos, TV MusicBox', 'product_images\\t2.jpg'),
(153, 'Haier Split AC', 'air conditioner', '67629', '10', '1.5 Ton 5 Star DCInverter Wi-Fi Split AC with In Built Air Purifier (Copper, HSU19P-JS5B(INV), Silver)', 'Spilt Ac with Inbuilt Air Purifier-Which Cleans the Air passing through it making it 99.9% Bacteria Free.\r\nCapacity: 1.5 Ton suitable for medium sized rooms (Upto 150 square feet).\r\nEnergy rating: 5 star, Annual energy consumption: 880.30 units per year, ISEER value: 4.75. (Please refer energy label on product page or contact brand for more details)', 'product_images\\ac2.jpg'),
(154, 'Samsung Refrigerator', 'Refrigerator', '19590', '16', ' 253 L 1 Star Frost Free Double Door Refrigerator(RT28M3022S8, Elegant Inox, Inverter Compressor) Frost Free, Double Door: Auto defrost to stop ice-build up', 'Frost-free refrigerator; 253 litres capacity\r\nEnergy Rating: 2 Star\r\nWarranty: 1 year on product, 10 years on compressor\r\nFrost free refrigerator: auto defrost function to prevent ice build up\r\n253L capacity: Suitable for family of 2 to 3 members\r\nEnergy Rating: 2 Star', 'product_images\\ref2.jpg'),
(155, 'HP Laptop', 'laptops', '47990', '15', '15.6-inch Laptop (3rd Gen Ryzen 5 3500U/8GB/512GB SSD/Windows 10/MS Office 2019/Radeon Vega 8 Graphics), Natural Silver', 'Processor: AMD Ryzen 5 3500U processor, 2.1 GHz base processor speed, up to 3.7 GHz burst frequency, 4 cores, 6MB L3 cache\r\nOperating System: Pre-loaded Windows 10 Home\r\nDisplay: 15.6-inch FHD (1920 x 1080) SVA WLED Display\r\nMemory & Storage: 8 GB DDR4 RAM, with AMD Radeon Vega 8 Graphics | Storage: 512 GB SSD\r\nDesign & battery: Laptop weight: 1.7 kg\r\nIncluded Software: Microsoft Office Home & Student 2019\r\nConnectivity: Wifi 802.11b/g/n (1x1) and Bluetooth 4.2 combo', 'product_images\\laptop2.jpg'),
(156, 'Samsung Galaxy', 'mobiles', '21499', '25', 'M31s (Mirage Black, 8GB RAM, 128GB Storage) Quad camera setup - 64MP ', 'Quad camera setup - 64MP (F1.8) main camera + 12MP (F2.2) ultra wide camera + 5MP (F2.4) depth camera + 5MP (F2.4) macro camera | 32MP (F2.2) front camera\r\n16.4 centimeters (6.5-inch) super Amoled - Infinity-O display, FHD+ capacitive multi-touch touchscreen with 1080 x 2400 pixels resolution, 407 ppi pixel density and Contrast Ratio: 78960:1\r\nMemory, Storage & SIM: 8GB RAM, 128GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)\r\nAndroid v10.0 operating system with 1.7GHz+2.3GHz Exynos 9611 octa core processor\r\n6000mAH lithium-ion battery with 5x fast charge | 25W Type-C fast charger in the box\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\r\nBox also includes: Travel adapter, USB Type-C to Type-C Cable, ejection pin and user manual\r\nFast face unlock and fingerprint sensor | Dual SIM (nano+nano) with dual standby and dual VoLTE, Dedicated Sim slot', 'product_images\\phone2.jpg'),
(157, 'Voltas Dishwasher ', 'dishwasher', '21999', '10', '8 place settings\r\n6 wash programs ; Product Size: Table Top ; Cutlery Tray: Small', '8 place settings\r\n6 wash programs ; Product Size: Table Top ; Cutlery Tray: Small\r\nWarranty- ( 2+3) 2 years comprehensive / 5 years only on motor\r\nTable Top\r\nEasy to Install\r\nPerfect for nuclear family\r\nNumber of Spray Levels: 2', 'product_images\\d2.jpg'),
(158, ' Samsung Washing Machine', 'Washing Machine', '13299', '15', 'Samsung Fully-automatic top load washing machine; 6.2 kg Best Wash Quality and Water efficient', 'Samsung Fully-automatic top load washing machine; 6.2 kg Best Wash Quality and Water efficient\r\nProduct Warranty: 2 years comprehensive warranty on product and 4 years on motor\r\n680 rpm: Higher spin speeds helps in faster drying\r\nNumber of wash Cycle -6\r\nCycle - blanket, delicates, eco tub clean, additional cycle - normal, quick wash, soak plus norma\r\nAlso included in the box: 1 Washing Machine, 1 Anti Rat cover, 1 Owner’s manual, 1 OT Hose, 1 Drain Hose,\r\nFeature - air turbo, auto restart, child lock, magic filter, tempered glass window, drum type - diamond drum, pulsator- center jet, water level - 5 levels\r\nPhysical specification - voltage/frequency- 220/50, drum material- SS', 'product_images\\wash2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `fname` varchar(200) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mob` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`fname`, `uname`, `email`, `mob`, `pass`) VALUES
('justin foley', 'justin1', 'justinfoley1@gmail.com', '8551067321', 'justin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uname`),
  ADD UNIQUE KEY `pass` (`pass`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `pid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
