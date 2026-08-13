-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 07:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_type` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `disease` varchar(255) NOT NULL,
  `cost_inr_min` int(11) DEFAULT NULL,
  `cost_inr_max` int(11) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  `top_doctors` text DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hospital_name`, `hospital_type`, `location`, `disease`, `cost_inr_min`, `cost_inr_max`, `experience_years`, `top_doctors`, `department`) VALUES
(1, 'Apollo Hospitals - Chennai', 'Private', 'Chennai, Tamil Nadu, India', 'Coronary Artery Disease (CABG)', 177600, 296000, 42, 'Dr. Prof. Balakumar S (29 yrs), Dr. Aarimuthuswamy A (17 yrs)', 'Vascular Surgery, Cardiothoracic Surgery'),
(2, 'SRMC', 'Private', 'Chennai, Tamil Nadu, India', 'Coronary Artery Disease (CABG)', 200000, 500000, 35, 'Dr. T Periyasamy', 'Cardiac Surgery'),
(3, 'Narayana Institute', 'Private', 'Bangalore', 'Coronary Artery Disease (CABG)', 150000, 350000, 20, 'Dr. Devi Shetty', 'Cardiothoracic'),
(4, 'Asian Heart Institute', 'Private', 'Mumbai', 'Coronary Artery Disease (CABG)', 250000, 600000, 22, 'Dr. Ramakanta Panda', 'Heart Surgery'),
(5, 'Fortis Escorts', 'Private', 'New Delhi', 'Coronary Artery Disease (CABG)', 200000, 550000, 30, 'Dr. Ashok Seth', 'Cardiothoracic'),
(6, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon, Haryana', 'Kidney Transplant', 350000, 550000, 25, 'Dr. Sandeep Guleria (26 yrs)', 'Nephrology'),
(7, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi, Delhi', 'Kidney Transplant', 400000, 700000, 25, 'Dr. S. N. Mehta', 'Nephrology, Urology'),
(8, 'Manipal Hospital', 'Private', 'Bangalore', 'Kidney Transplant', 300000, 600000, 30, 'Dr. H. Sudarshan Ballal', 'Nephrology'),
(9, 'Kokilaben Dhirubhai Ambani Hospital', 'Private', 'Mumbai', 'Kidney Transplant', 350000, 650000, 15, 'Dr. Sharad Sheth', 'Nephrology'),
(10, 'Global Hospital, Chennai', 'Private', 'Chennai', 'Kidney Transplant', 450000, 750000, 20, 'Dr. K. S. Ram', 'Nephrology'),
(11, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon, Haryana', 'Stroke (Thrombolysis/Thrombectomy)', 350000, 550000, 25, 'Dr. Sandeep Guleria (26 yrs)', 'Nephrology'),
(12, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi, Delhi', 'Stroke (Thrombolysis/Thrombectomy)', 400000, 700000, 25, 'Dr. S. N. Mehta', 'Nephrology, Urology'),
(13, 'Manipal Hospital', 'Private', 'Bangalore', 'Stroke (Thrombolysis/Thrombectomy)', 300000, 600000, 30, 'Dr. H. Sudarshan Ballal', 'Nephrology'),
(14, 'Kokilaben Dhirubhai Ambani Hospital', 'Private', 'Mumbai', 'Stroke (Thrombolysis/Thrombectomy)', 350000, 650000, 15, 'Dr. Sharad Sheth', 'Nephrology'),
(15, 'Global Hospital, Chennai', 'Private', 'Chennai', 'Stroke (Thrombolysis/Thrombectomy)', 450000, 750000, 20, 'Dr. K. S. Ram', 'Nephrology'),
(16, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Coronary Artery Disease (Angioplasty/PCI)', 150000, 350000, 42, 'Dr. Mathew Samuel Kalarickal (37 yrs)', 'Cardiology'),
(17, 'Fortis Escorts Heart Institute', 'Private', 'New Delhi', 'Coronary Artery Disease (Angioplasty/PCI)', 180000, 400000, 35, 'Dr. Ashok Seth (38 yrs)', 'Cardiology'),
(18, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Coronary Artery Disease (Angioplasty/PCI)', 200000, 450000, 20, 'Dr. Rajneesh Kapoor (25 yrs)', 'Cardiology'),
(19, 'Max Healthcare', 'Private', 'New Delhi', 'Coronary Artery Disease (Angioplasty/PCI)', 170000, 380000, 28, 'Dr. Viveka Kumar (24 yrs)', 'Cardiology'),
(20, 'Manipal Hospital, Old Airport Road', 'Private', 'Bangalore', 'Coronary Artery Disease (Angioplasty/PCI)', 160000, 360000, 30, 'Dr. Ranjan Shetty (22 yrs)', 'Cardiology'),
(21, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Total Knee Replacement (Orthopedics)', 250000, 500000, 35, 'Dr. Yash Gulati (38 yrs)', 'Orthopedics'),
(22, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Total Knee Replacement (Orthopedics)', 280000, 550000, 20, 'Dr. S.K.S. Marya (35 yrs)', 'Orthopedics'),
(23, 'Fortis Hospital, Shalimar Bagh', 'Private', 'New Delhi', 'Total Knee Replacement (Orthopedics)', 230000, 480000, 22, 'Dr. Puneet Girdhar (24 yrs)', 'Orthopedics'),
(24, 'Max Healthcare', 'Private', 'New Delhi', 'Total Knee Replacement (Orthopedics)', 260000, 520000, 28, 'Dr. S.K.S. Marya (35 yrs)', 'Orthopedics'),
(25, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Total Knee Replacement (Orthopedics)', 270000, 530000, 42, 'Dr. A. Navaladi Shankar (40 yrs)', 'Orthopedics'),
(26, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Hip Replacement', 300000, 600000, 35, 'Dr. Yash Gulati (38 yrs)', 'Orthopedics'),
(27, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Hip Replacement', 320000, 650000, 20, 'Dr. S.K.S. Marya (35 yrs)', 'Orthopedics'),
(28, 'Fortis Hospital, Shalimar Bagh', 'Private', 'New Delhi', 'Hip Replacement', 280000, 580000, 22, 'Dr. Puneet Girdhar (24 yrs)', 'Orthopedics'),
(29, 'Max Healthcare', 'Private', 'New Delhi', 'Hip Replacement', 310000, 620000, 28, 'Dr. S.K.S. Marya (35 yrs)', 'Orthopedics'),
(30, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Hip Replacement', 330000, 680000, 42, 'Dr. A. Navaladi Shankar (40 yrs)', 'Orthopedics'),
(31, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Chemotherapy (Medical Oncology)', 200000, 400000, 35, 'Dr. Manish Singhal (25 yrs)', 'Oncology'),
(32, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon', 'Chemotherapy (Medical Oncology)', 180000, 380000, 22, 'Dr. Vinod Raina (40 yrs)', 'Oncology'),
(33, 'Max Healthcare', 'Private', 'New Delhi', 'Chemotherapy (Medical Oncology)', 190000, 390000, 28, 'Dr. Harit Chaturvedi (35 yrs)', 'Oncology'),
(34, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Chemotherapy (Medical Oncology)', 210000, 420000, 20, 'Dr. Ashok Vaid (30 yrs)', 'Oncology'),
(35, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Chemotherapy (Medical Oncology)', 170000, 370000, 42, 'Dr. T Raja (30 yrs)', 'Oncology'),
(36, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Throat Cancer Treatment', 250000, 500000, 35, 'Dr. Manish Singhal (25 yrs)', 'Oncology'),
(37, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon', 'Throat Cancer Treatment', 230000, 480000, 22, 'Dr. Vinod Raina (40 yrs)', 'Oncology'),
(38, 'Max Healthcare', 'Private', 'New Delhi', 'Throat Cancer Treatment', 240000, 490000, 28, 'Dr. Harit Chaturvedi (35 yrs)', 'Oncology'),
(39, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Throat Cancer Treatment', 260000, 520000, 20, 'Dr. Ashok Vaid (30 yrs)', 'Oncology'),
(40, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Throat Cancer Treatment', 220000, 470000, 42, 'Dr. T Raja (30 yrs)', 'Oncology'),
(41, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Liver Transplant', 1800000, 3200000, 35, 'Dr. Subash Gupta (25 yrs)', 'Gastroenterology'),
(42, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Liver Transplant', 1700000, 3100000, 20, 'Dr. A.S. Soin (30 yrs)', 'Gastroenterology'),
(43, 'Fortis Hospital, Mulund', 'Private', 'Mumbai', 'Liver Transplant', 1600000, 3000000, 22, 'Dr. Rakesh Rai (20 yrs)', 'Gastroenterology'),
(44, 'Max Healthcare', 'Private', 'New Delhi', 'Liver Transplant', 1750000, 3150000, 28, 'Dr. Subash Gupta (25 yrs)', 'Gastroenterology'),
(45, 'Global Hospital, Chennai', 'Private', 'Chennai', 'Liver Transplant', 1850000, 3250000, 20, 'Dr. Mohamed Rela (30 yrs)', 'Gastroenterology'),
(46, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Kidney Transplant', 400000, 700000, 35, 'Dr. Sandeep Guleria (26 yrs)', 'Nephrology'),
(47, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Kidney Transplant', 380000, 680000, 20, 'Dr. Vijay Kher (30 yrs)', 'Nephrology'),
(48, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon', 'Kidney Transplant', 350000, 650000, 22, 'Dr. Sandeep Guleria (26 yrs)', 'Nephrology'),
(49, 'Max Healthcare', 'Private', 'New Delhi', 'Kidney Transplant', 390000, 690000, 28, 'Dr. Dinesh Khullar (25 yrs)', 'Nephrology'),
(50, 'Global Hospital, Chennai', 'Private', 'Chennai', 'Kidney Transplant', 420000, 720000, 20, 'Dr. K. S. Ram (25 yrs)', 'Nephrology'),
(51, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Pediatric Cardiac Surgery', 250000, 500000, 35, 'Dr. Rajesh Sharma (30 yrs)', 'Pediatric Cardiology'),
(52, 'Fortis Escorts Heart Institute', 'Private', 'New Delhi', 'Pediatric Cardiac Surgery', 230000, 480000, 35, 'Dr. K. S. Iyer (40 yrs)', 'Pediatric Cardiology'),
(53, 'Max Healthcare', 'Private', 'New Delhi', 'Pediatric Cardiac Surgery', 240000, 490000, 28, 'Dr. Kulbhushan S. Dagar (25 yrs)', 'Pediatric Cardiology'),
(54, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Pediatric Cardiac Surgery', 260000, 520000, 20, 'Dr. Amit Misri (20 yrs)', 'Pediatric Cardiology'),
(55, 'Narayana Health', 'Private', 'Bangalore', 'Pediatric Cardiac Surgery', 220000, 470000, 20, 'Dr. Devi Shetty (35 yrs)', 'Pediatric Cardiology'),
(56, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Spine Surgery', 300000, 600000, 35, 'Dr. Yash Gulati (38 yrs)', 'Orthopedics'),
(57, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Spine Surgery', 320000, 650000, 20, 'Dr. V.P. Singh (30 yrs)', 'Neurosurgery'),
(58, 'Fortis Hospital, Shalimar Bagh', 'Private', 'New Delhi', 'Spine Surgery', 280000, 580000, 22, 'Dr. S.K.S. Marya (35 yrs)', 'Orthopedics'),
(59, 'Max Healthcare', 'Private', 'New Delhi', 'Spine Surgery', 310000, 620000, 28, 'Dr. Bipin S. Walia (25 yrs)', 'Neurosurgery'),
(60, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Spine Surgery', 330000, 680000, 42, 'Dr. Sajan K. Hegde (35 yrs)', 'Orthopedics'),
(61, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Brain Tumor Surgery', 400000, 800000, 35, 'Dr. Sudhir Dubey (30 yrs)', 'Neurosurgery'),
(62, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Brain Tumor Surgery', 420000, 850000, 20, 'Dr. V.P. Singh (30 yrs)', 'Neurosurgery'),
(63, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon', 'Brain Tumor Surgery', 380000, 780000, 22, 'Dr. Rana Patir (35 yrs)', 'Neurosurgery'),
(64, 'Max Healthcare', 'Private', 'New Delhi', 'Brain Tumor Surgery', 410000, 820000, 28, 'Dr. Bipin S. Walia (25 yrs)', 'Neurosurgery'),
(65, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Brain Tumor Surgery', 430000, 880000, 42, 'Dr. Sajan K. Hegde (35 yrs)', 'Neurosurgery'),
(66, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Cataract Surgery (Phaco/Laser)', 80000, 150000, 35, 'Dr. Atul Kumar (30 yrs)', 'Ophthalmology'),
(67, 'Sankara Nethralaya', 'Private', 'Chennai', 'Cataract Surgery (Phaco/Laser)', 70000, 140000, 45, 'Dr. T.S. Surendran (40 yrs)', 'Ophthalmology'),
(68, 'Dr. Agarwal\'s Eye Hospital', 'Private', 'Chennai', 'Cataract Surgery (Phaco/Laser)', 75000, 145000, 60, 'Dr. Amar Agarwal (35 yrs)', 'Ophthalmology'),
(69, 'Max Healthcare', 'Private', 'New Delhi', 'Cataract Surgery (Phaco/Laser)', 85000, 155000, 28, 'Dr. Sanjay Dhawan (30 yrs)', 'Ophthalmology'),
(70, 'L V Prasad Eye Institute', 'Private', 'Hyderabad', 'Cataract Surgery (Phaco/Laser)', 72000, 142000, 35, 'Dr. Gullapalli N Rao (40 yrs)', 'Ophthalmology'),
(71, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'CABG (Heart Bypass)', 280000, 550000, 35, 'Dr. Anoop K. Ganjoo (30 yrs)', 'Cardiothoracic Surgery'),
(72, 'Fortis Escorts Heart Institute', 'Private', 'New Delhi', 'CABG (Heart Bypass)', 260000, 530000, 35, 'Dr. Yugal K. Mishra (35 yrs)', 'Cardiothoracic Surgery'),
(73, 'Max Healthcare', 'Private', 'New Delhi', 'CABG (Heart Bypass)', 270000, 540000, 28, 'Dr. Rajneesh Malhotra (30 yrs)', 'Cardiothoracic Surgery'),
(74, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'CABG (Heart Bypass)', 290000, 560000, 20, 'Dr. Naresh Trehan (40 yrs)', 'Cardiothoracic Surgery'),
(75, 'Narayana Health', 'Private', 'Bangalore', 'CABG (Heart Bypass)', 250000, 520000, 20, 'Dr. Devi Shetty (35 yrs)', 'Cardiothoracic Surgery'),
(76, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Breast Cancer', 250000, 500000, 35, 'Dr. Manish Singhal (25 yrs)', 'Oncology'),
(77, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon', 'Breast Cancer', 230000, 480000, 22, 'Dr. Vinod Raina (40 yrs)', 'Oncology'),
(78, 'Max Healthcare', 'Private', 'New Delhi', 'Breast Cancer', 240000, 490000, 28, 'Dr. Harit Chaturvedi (35 yrs)', 'Oncology'),
(79, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Breast Cancer', 260000, 520000, 20, 'Dr. Ashok Vaid (30 yrs)', 'Oncology'),
(80, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Breast Cancer', 220000, 470000, 42, 'Dr. T Raja (30 yrs)', 'Oncology'),
(81, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Cervical Cancer', 200000, 400000, 35, 'Dr. Sarika Gupta (25 yrs)', 'Gynecologic Oncology'),
(82, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon', 'Cervical Cancer', 180000, 380000, 22, 'Dr. Rama Joshi (30 yrs)', 'Gynecologic Oncology'),
(83, 'Max Healthcare', 'Private', 'New Delhi', 'Cervical Cancer', 190000, 390000, 28, 'Dr. Harit Chaturvedi (35 yrs)', 'Gynecologic Oncology'),
(84, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Cervical Cancer', 210000, 420000, 20, 'Dr. Sabhyata Gupta (25 yrs)', 'Gynecologic Oncology'),
(85, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Cervical Cancer', 170000, 370000, 42, 'Dr. V. P. S. Punnaiah (30 yrs)', 'Gynecologic Oncology'),
(86, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Bone Marrow Transplant', 1500000, 3000000, 35, 'Dr. Gaurav Kharya (20 yrs)', 'Hematology'),
(87, 'Fortis Memorial Research Institute', 'Private', 'Gurgaon', 'Bone Marrow Transplant', 1400000, 2900000, 22, 'Dr. Rahul Bhargava (25 yrs)', 'Hematology'),
(88, 'Max Healthcare', 'Private', 'New Delhi', 'Bone Marrow Transplant', 1450000, 2950000, 28, 'Dr. Dharma Choudhary (20 yrs)', 'Hematology'),
(89, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Bone Marrow Transplant', 1550000, 3050000, 20, 'Dr. Ashok Vaid (30 yrs)', 'Hematology'),
(90, 'Apollo Hospitals - Greams Road', 'Private', 'Chennai', 'Bone Marrow Transplant', 1350000, 2850000, 42, 'Dr. Srikanth M (20 yrs)', 'Hematology'),
(91, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Heart Transplant', 2000000, 4000000, 35, 'Dr. Anoop K. Ganjoo (30 yrs)', 'Cardiothoracic Surgery'),
(92, 'Fortis Escorts Heart Institute', 'Private', 'New Delhi', 'Heart Transplant', 1800000, 3800000, 35, 'Dr. Z.S. Meharwal (30 yrs)', 'Cardiothoracic Surgery'),
(93, 'Max Healthcare', 'Private', 'New Delhi', 'Heart Transplant', 1900000, 3900000, 28, 'Dr. Kewal Krishan (30 yrs)', 'Cardiothoracic Surgery'),
(94, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Heart Transplant', 2100000, 4200000, 20, 'Dr. Naresh Trehan (40 yrs)', 'Cardiothoracic Surgery'),
(95, 'Narayana Health', 'Private', 'Bangalore', 'Heart Transplant', 1700000, 3700000, 20, 'Dr. Devi Shetty (35 yrs)', 'Cardiothoracic Surgery'),
(96, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Acute Respiratory Infection', 50000, 150000, 35, 'Dr. Rajesh Chawla (30 yrs)', 'Pulmonology'),
(97, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Acute Respiratory Infection', 55000, 160000, 20, 'Dr. Anand Jaiswal (25 yrs)', 'Pulmonology'),
(98, 'Fortis Hospital, Vasant Kunj', 'Private', 'New Delhi', 'Acute Respiratory Infection', 48000, 145000, 22, 'Dr. Vivek Nangia (25 yrs)', 'Pulmonology'),
(99, 'Max Healthcare', 'Private', 'New Delhi', 'Acute Respiratory Infection', 52000, 155000, 28, 'Dr. Ashish Kumar Prakash (20 yrs)', 'Pulmonology'),
(100, 'Manipal Hospital, Old Airport Road', 'Private', 'Bangalore', 'Acute Respiratory Infection', 45000, 140000, 30, 'Dr. S.C. Rajanna (30 yrs)', 'Pulmonology'),
(101, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'Diarrheal Diseases', 30000, 80000, 35, 'Dr. S.K. Sarin (35 yrs)', 'Gastroenterology'),
(102, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'Diarrheal Diseases', 35000, 85000, 20, 'Dr. Rajesh Puri (25 yrs)', 'Gastroenterology'),
(103, 'Max Healthcare', 'Private', 'New Delhi', 'Diarrheal Diseases', 32000, 82000, 28, 'Dr. Arvind Khurana (30 yrs)', 'Gastroenterology'),
(104, 'Fortis Hospital, Mulund', 'Private', 'Mumbai', 'Diarrheal Diseases', 28000, 78000, 22, 'Dr. Vinay Dhir (25 yrs)', 'Gastroenterology'),
(105, 'Manipal Hospital, Old Airport Road', 'Private', 'Bangalore', 'Diarrheal Diseases', 25000, 75000, 30, 'Dr. Raj Vigna Venugopal (20 yrs)', 'Gastroenterology'),
(106, 'Indraprastha Apollo Hospital', 'Private', 'New Delhi', 'C - section Delivery', 80000, 150000, 35, 'Dr. Sushma Sinha (30 yrs)', 'Obstetrics and Gynecology'),
(107, 'Medanta - The Medicity', 'Private', 'Gurgaon', 'C - section Delivery', 85000, 160000, 20, 'Dr. Puneet Bedi (25 yrs)', 'Obstetrics and Gynecology'),
(108, 'Fortis La Femme', 'Private', 'New Delhi', 'C - section Delivery', 78000, 145000, 22, 'Dr. Anita Gupta (25 yrs)', 'Obstetrics and Gynecology'),
(109, 'Max Healthcare', 'Private', 'New Delhi', 'C - section Delivery', 82000, 155000, 28, 'Dr. Uma Garg (30 yrs)', 'Obstetrics and Gynecology'),
(110, 'Cloudnine Hospital', 'Private', 'Bangalore', 'C - section Delivery', 75000, 140000, 15, 'Dr. Prakash Kini (20 yrs)', 'Obstetrics and Gynecology');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `signup_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password_hash`, `signup_date`) VALUES
(1, 'Ramandeep pattnaik', 'ramandeeppattnaik04@gmail.com', '$2y$10$Nichj0PLVvufH5Hl2gKMyerQ/t1E6NGjWR9NESPL3fBJLLLdUyIx2', '2025-09-19 16:17:22'),
(2, 'Biranchi narayan pattnaik', 'biranchipattnaik1972@gmail.com', '$2y$10$E1AAGEflYL5yLSFyKuIql.t8c2DqZ5fGdRPLzZksTGJkK72CfScom', '2025-09-19 16:43:12'),
(3, 'Yogapriya Sahoo', 'yoga@gmail.com', '$2y$10$6PK4jJZgmmYEY7DznSnZwekx0ZlTP/chuIkGBE5s.uBHdQ5ozcDGC', '2025-09-21 13:43:44'),
(4, 'devi', 'devi@gmail.com', '$2y$10$u0YrCt8pvf5my7FzgTp8Cu2XO3fEF3nDSNlNWEqErKfXb1RC20WD.', '2025-11-11 05:09:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
