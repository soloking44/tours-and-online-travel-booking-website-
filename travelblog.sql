-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 07:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentstatus`
--

CREATE TABLE `currentstatus` (
  `id` int(11) NOT NULL,
  `cargo_number` varchar(255) NOT NULL,
  `currentDate` date NOT NULL,
  `currentTime` time NOT NULL,
  `currentLocation` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currentstatus`
--

INSERT INTO `currentstatus` (`id`, `cargo_number`, `currentDate`, `currentTime`, `currentLocation`, `status`, `agent`, `remarks`) VALUES
(1, 'LK54788IW', '2005-10-10', '00:00:00', 'TOgo', 'delivered', 'Michael', 'on transit'),
(2, 'MD67990VF', '2003-12-12', '14:22:00', 'Albania', 'delivered', 'VANESSA MARTAINS', 'HOLD ON PLEASE'),
(3, 'LK54788IW', '2023-12-25', '14:03:00', 'NIGERIA', 'AT MY BACKYARD', 'CHARRIOTT WILLIAMS', 'FREE GIFT'),
(0, 'WP38293XL', '2024-01-02', '00:00:00', 'london', 'AT MY BACKYARD', 'Michael', 'on transit'),
(0, 'HX45297SG', '2024-01-09', '10:00:00', 'Airport Mandalay International Airport Myanmar', 'ONHOLD At Mandalay International Airport Myanmar', 'High Sky Logistics ', 'On Hold For Money Laundering Certificate '),
(0, 'PC96274CG', '2024-01-14', '15:00:00', 'Blaise Diagne International Airport Senegal ', 'Transit', 'High Sky Logistics ', 'ONHOLD FOR CUSTOM PACKAGE INSPECTION AT SENEGAL. '),
(0, 'ZF89405EN', '2023-12-31', '22:00:00', 'ÙØ±ÙˆØ¯Ú¯Ø§Ù‡ Ø§Ø³ØªØ§Ù†Ø¨ÙˆÙ„', 'Ø¯Ø± Ø§Ù†ØªØ¸Ø§Ø± Ø¯Ø± ÙØ±ÙˆØ¯Ú¯Ø§Ù‡ Ø§Ø³ØªØ§Ù†Ø¨ÙˆÙ„ Ø¨Ø±Ø§ÛŒ Ú¯ÙˆØ§Ù‡ÛŒ Ù¾ÙˆÙ„Ø´ÙˆÛŒÛŒ 5500 Ø¯Ù„Ø§Ø±', 'High Sky Logistics ', 'Ù…ÙˆØ¬ÙˆØ¯ÛŒ Ø¨Ø§Ù‚ÛŒÙ…Ø§Ù†Ø¯Ù‡ 3500 Ø¯Ù„Ø§Ø± Ø§Ø³ØªØŒ Ø§Ú¯Ø± Ø§Ù…Ø±ÙˆØ² Ø¢Ù† Ø±Ø§ Ù¾Ø±Ø¯Ø§Ø®Øª Ú©Ù†ÛŒØ¯ØŒ ÙØ±Ø¯Ø§ Ø¬Ø¹Ø¨Ù‡ Ø´Ù…Ø§ Ø¨Ù‡ Ø´Ù…Ø§ ØªØ­ÙˆÛŒÙ„ Ø¯Ø§Ø¯Ù‡ Ù…ÛŒ Ø´ÙˆØ¯.'),
(0, 'DL32175AF', '2024-01-08', '10:00:00', 'Ä°stanbul HavalimanÄ±', '1500 $ GÃ¼mrÃ¼k Muayene Ã¼creti KarÅŸÄ±lÄ±ÄŸÄ±nda Ä°stanbul HavalimanÄ±&apos;nda Beklemede', 'High Sky Logistics ', '1500$ GÃ¼mrÃ¼k Muayene Ã¼cretini Ã¶dedikten Sonra Paketiniz YarÄ±n TarafÄ±nÄ±za Teslim Edilecektir.'),
(0, 'DB67040EA', '2024-01-22', '09:00:00', 'Ä°stanbul HavalimanÄ±', '1500 $ GÃ¼mrÃ¼k Muayene Ã¼creti KarÅŸÄ±lÄ±ÄŸÄ±nda Ä°stanbul HavalimanÄ±&apos;nda Beklemede', 'High Sky Logistics ', '1500$ GÃ¼mrÃ¼k Muayene Ã¼cretini Ã¶dediÄŸinizde Paketiniz Bu Sabah AnÄ±nda TarafÄ±nÄ±za Teslim Edilecektir.'),
(0, 'GX31311DQ', '2024-01-23', '21:00:00', ' Mactan-Cebu International Airport Philippines ', 'On Hold At  Mactan-Cebu International Airport Philippines For Custom Inspection Fees $1500', 'High Sky Logistics ', 'Once You Pay The Custom Inspection Fees $1500 Your Package Will Be Delivered To You Tomorrow Morning Immediately By 10 O&apos;clock In The Morning. '),
(0, 'XT63042TX', '2024-01-24', '12:35:00', 'Ä°stanbul HavalimanÄ±', '1500 $ GÃ¼mrÃ¼k Muayene Ã¼creti KarÅŸÄ±lÄ±ÄŸÄ±nda Ä°stanbul HavalimanÄ±&apos;nda Beklemede', 'High Sky Logistics ', ' 1500$ GÃ¼mrÃ¼k Muayene Ã¼cretini Ã¶dediÄŸinizde Paketiniz Bu Sabah AnÄ±nda TarafÄ±nÄ±za Teslim Edilecektir.'),
(0, 'CT35922JE', '2024-01-24', '12:35:00', 'Ä°stanbul HavalimanÄ±', '1500 $ GÃ¼mrÃ¼k Muayene Ã¼creti KarÅŸÄ±lÄ±ÄŸÄ±nda Ä°stanbul HavalimanÄ±&apos;nda Beklemede', 'High Sky Logistics ', ' 1500$ GÃ¼mrÃ¼k Muayene Ã¼cretini Ã¶dediÄŸinizde Paketiniz Bu Sabah AnÄ±nda TarafÄ±nÄ±za Teslim Edilecektir.'),
(0, 'BE28762PR', '2024-01-25', '11:00:00', 'Ä°stanbul HavalimanÄ±', '1500 $ GÃ¼mrÃ¼k Muayene Ã¼creti KarÅŸÄ±lÄ±ÄŸÄ±nda Ä°stanbul HavalimanÄ±&apos;nda Beklemede', 'High Sky Logistics ', ' 1500$ GÃ¼mrÃ¼k Muayene Ã¼cretini Ã¶dediÄŸinizde Paketiniz Bu Sabah AnÄ±nda TarafÄ±nÄ±za Teslim Edilecektir.'),
(0, 'CM89200GP', '2024-02-08', '14:00:00', 'Jakarta Soekarno-Hatta International Airport Indonesia ', 'ON HOLD FOR SHIPPING FEES $1050 DOLLARS ', 'High Sky Logistics ', 'ON HOLD FOR SHIPPING FEES $1050 DOLLARS '),
(0, 'FE82167EQ', '2024-02-17', '13:00:00', 'Aeropuerto Internacional Blaise Diagne Senegal', 'EN ESPERA POR GASTOS DE ENVÍO $300 DÓLARES', 'High Sky Logistics ', 'EN ESPERA POR GASTOS DE ENVÍO $300 DÓLARES'),
(0, 'TX10589AA', '2024-02-29', '09:00:00', 'Indonesia ', 'ONHOLD At Soekarno-Hatta International Airport', 'High Sky Logistics ', 'On Hold For Custom Clearance Fees At Soekarno-Hatta International Airport'),
(0, 'XE18941ER', '2024-04-03', '11:00:00', 'Singapur Changi Havaalanı', 'Yarın Türkiye&apos;ye Teslim Edilecek.', 'Yüksek Gökyüzü Lojistiği', 'Kutu Yarın Sabah Türkiye&apos;ye Ulaşacak.');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `booked_number` varchar(20) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `guest_number` int(11) NOT NULL,
  `phone_Number` varchar(20) NOT NULL,
  `email_Address` varchar(255) NOT NULL,
  `arrival` date NOT NULL,
  `leaving` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `booked_number`, `place_name`, `guest_number`, `phone_Number`, `email_Address`, `arrival`, `leaving`, `user_id`) VALUES
(1, '34424232', 'mumbai', 2, '9544483333', 'ryan11@gmail.com', '2024-06-07', '2024-07-12', 12),
(4, 'OB97329IW', 'MUMBAI', 7, '8036068213', 'clintonwilla@gmail.com', '2024-05-05', '2023-08-08', 57);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_edited` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `category`, `img`, `publish`, `date_created`, `date_edited`) VALUES
(7, 'Chevening UK Government Scholarship Programme 2022 For Nigerians To Study In The UK', 'Funded by the Foreign, Commonwealth and Development Office and partner organisations, they offer awards to study in the UK for one year on a fully funded master’s degree course.\r\n\r\nThere are many benefits to being selected, including fully funded tuition fees, access to some of the best quality education in the world, exclusive networking opportunities, and the chance to explore the UK’s diverse culture.\r\n\r\nEligibility\r\nTo be eligible for a Chevening Scholarship you must:\r\nYou must be a Nigerian\r\nYou must return to your country of citizenship for a minimum of two years after your award has ended\r\nYou must have an undergraduate degree that will enable you to gain entry onto a postgraduate programme at a UK university. This is typically equivalent to an upper second-class 2:1 honours degree in the UK.\r\nYou must have at least two years’ work experience (this may be up to five years for fellowship programmes, so please refer to your country page for further details)\r\nYou must have Applied to three different eligible UK university courses and have received an unconditional offer from one of these choices\r\n\r\n\r\nScholarship Benefits\r\nAs Chevening Scholarships are fully-funded, your award includes the following:\r\nUniversity tuition fees.\r\nA monthly stipend.\r\nTravel costs to and from the UK.\r\nAn arrival allowance.\r\nA homeward departure allowance.\r\nThe cost of one visa application.\r\nA travel grant to attend Chevening events in the UK.\r\n\r\n\r\n\r\nHow to Apply\r\nTo apply, find the awards available in your country/territory. Begin by selecting your country of citizenship. You can then refine your search depending on if you are applying for a scholarship or a fellowship.', 17, 'scholarships', 'https://www.schoolngr.com/attachments/cf6e09225c67a93e0cd1e1a20d319d903c5b97d0', 1, '2023-10-03 15:19:19', '2023-10-03 15:19:19'),
(9, 'Michael Okpara University Of Agriculture (MOUAU) Post UTME/DE Screening Form For 2022/2023 Academic Session [UPDATED]', 'Applications are invited from suitably qualified candidates for admission into the Michael Okpara University of Agriculture, Umudike (MOUAU) various DEGREE PROGRAMMES for the 2022/2023 academic session.\r\n\r\n\r\nMOUAU Post UTM Eligibility\r\nAll candidates who scored 140 and above in the 2022/2023 UTME examinations and made the Michael Okpara University of Agriculture, Umudike (MOUAU) first (1ST) choice are eligible. Candidates who applied to other Universities could change to MOUAU as the first(1st) choice at a JAMB Portal and then apply accordingly. Applicants who wish to change to MOUAU should visit the link https://mouau.edu.ng/academic-department-by-faculty/ to view the courses offered by MOUAU before proceeding to apply.\r\n\r\n\r\nHow to Apply for MOUAU Post UTME Form\r\nBeginning on 20th September 2022 and closing at midnight on 30th November 2022, candidates are required to register online for the admission screening exercise. To register, candidates must proceed as follows:\r\n\r\nCandidates are to visit the University Website at www.mouau.edu.ng ;\r\nClick on the 2022/2023 Admission Screening banner\r\nInput the Jamb Registration Number\r\nInput a valid email address. This leads you to the Remita Payment Platform (RRR), where an RRR number is generated with which payment of N2000.00 will be made. Payment can be made by debit/credit card or by taking your RRR number to any bank nationwide and depositing cash. Return to the Website to continue your registration.\r\nTransaction charge(s) apply, please: If you encounter any challenge(s) after payment, kindly send an email to the University Portal Office at portal@mouau.edu.ng.\r\nRegister by filling out an online Application form and selecting the proposed Department and other requisite details.\r\nCandidates are required to input their O’Level qualifying details for WAEC/NECO/NABTEB results obtained in not more than two sittings, indicating the type of Exam, Year of Result, Scratch card details (PIN and Serial Number on the card)\r\nFetch results from examining body (WAEC/NECO/NABTEB)\r\nKindly note that O’Level results and number of sittings are weighted.\r\nConfirm that the WAEC/NECO/NABTEB result fetched is correct before submission of the form.\r\nCandidates awaiting 2022 WAEC/NECO are advised not to register till these results are available to avoid problems.\r\nNote: Some fields are prefilled and cannot be changed\r\nFill out the form, submit and take a print-out after executing the Submit button. The system sends a copy of the submitted forms to your email for records.\r\nKindly note that the University is not liable for any wrong information entered by candidates.\r\nCandidates are advised to check the University portal for their screening test results 14 working days after registration.\r\n\r\n\r\nADMISSION STATUS: Candidates should regularly check the University website for further information on their admission status. Candidates are strictly advised not to pay money to any person except fees as approved by MOUAU in the advert, as the University does not charge any money for candidates to obtain admission.', 17, 'Admission', 'https://www.schoolngr.com/img/attachments/Michael-Okpara-University-of-Agriculture.jpg', 1, '2023-10-03 15:28:07', '2023-10-03 15:28:07'),
(10, 'FG Bilateral Education Agreement (BEA) 2023 Scholarship Awards To Study Overseas', 'Mallam Adamu Adamu, the Honourable Minister of Education (HME), officially invites interested and qualified Nigerians to participate in the 2023/2024 Federal Government Scholarship Awards for:\r\nUndergraduate (UG) studies tenable in Russia, Morocco, Hungary, Egypt and Venezuela;\r\nPostgraduate (PG) studies tenable in Russia (for those whose first degrees were obtained from Russia), China, Hungary, Serbia, and Romania.\r\n\r\nFederal Government BEA Scholarship Fields of Study\r\nUndergraduate level – Engineering, Geology, Agriculture, Sciences, Mathematics, Environmental Sciences, Sports, Law, Social Sciences, Biotechnology, Architecture, Medicine (very limited), Pilot Engineering, Neurologist and\r\nPostgraduate level (Master’s Degree and Ph.D.) in all fields.\r\n\r\n\r\nFederal Government BEA Scholarship Criteria &amp; Eligibility\r\nUNDERGRADUATE SCHOLARSHIPS: All applicants for undergraduate degree courses must possess a minimum qualification (Seven (7) Distinctions (As &amp; Bs) in the Senior Secondary School Certificates, WASSCE/WAC (May/June) only in the subjects relevant to their fields of study, including English Language and Mathematics. Certificates should not be more than two (2) years old (2021 &amp;2022) for Non- African Countries, and for African countries, the age of the certificate is one year (2022) only. The age limit is from 17 to 20 years.\r\nPOSTGRADUATE SCHOLARSHIPS: All applicants for Postgraduate degree courses must hold a First Degree with 1st Class or at least 2nd Class Upper Division. All applicants must have completed N.Y.S.C. Programme, and the age limit is 35 years for Masters and 40 years for PhD.\r\nN.Y.S.C discharge or exemption certificates only are accepted; and\r\nEvidence of readiness to be released by an employer.\r\n\r\nNOTE (For all Applicants):\r\nSince the BEA countries are non-English speaking, applicants should be prepared to undertake a mandatory one-year foreign Language course of the Country of choice, which will be the standard medium of instruction;\r\nAll applicants for Hungarian Scholarship can apply for up to two fields of study in order of preference and must visit the website: www.stipendiumhungaricum.hu , which was opened Middle of November to close on 16 January 2023. Complete the application form online,\r\nAll applicants for Russia should visit the website https://education-in-russia.com/ which will open in November.\r\nAll applicants for the Russian Postgraduate Scholarship must have acquired their 1st Degree in Russia;\r\nAll Applicants are to upload the following certificates online\r\nUNDERGRADUATE (UG): WAEC/WASSCE\r\nPOSTGRADUATE (PG): 1st Degree Certificate, Masters Degree WAEC/WASSCE, Indigene letter &amp; NYSC discharge Certificate.\r\n\r\nNB: Candidates nominated by the Board will be required to submit to Federal Scholarship Board the following:\r\nAuthenticated copies of academic certificates;\r\nData page of the current International passport;\r\nSpecified Medical Reports from Government hospitals;\r\nBirth Certificate &amp; Indigene letter\r\nPolice Clearance Certificate where necessary.\r\n\r\n\r\nHow to Apply for Federal Government BEA Scholarship\r\nInterested candidates who meet the criteria listed above should apply by clicking on the “Apply” button below:\r\n\r\nAPPLY NOW OFFICIAL LINK\r\n\r\nOFFICIAL PHONE NUMBERS/E-MAIL:\r\n08077884417/08035996213\r\nfsb@education.gov.ng\r\n\r\nApplication Deadline: January 6, 2023.\r\nKindly share on Whatsapp, Twitter, Facebook. If you think this post can be helpful to someone.', 17, 'FG SCHOLARSHIP', 'https://www.schoolngr.com/attachments/615d438b754591a67eb927b6788de70e29897b6b', 0, '2023-10-03 15:31:42', '2023-10-03 15:31:42'),
(11, 'Josephus Foundation Scholarship For Nigerians At First Technical University (Tech-U) 2022/2023', 'Josephus Foundation Scholarship is a highly competitive scholarship endowed by the Josephus Foundation, courtesy of the University Chancellor, Chief (Dr.) Tunde Afolabi, MFR. It is part of the institution’s support services to exceptionally brilliant but indigent students who otherwise may not be able to afford University tertiary education.\r\n\r\nThe scholarship is a partial scholarship that covers tuition and accommodation fees only, while the beneficiaries will be responsible for a one-time payment of other municipal and service charges as enumerated in the schedule of fees for undergraduate students which is available on the University website. School Fees Structure\r\n\r\nThe scholarship will be offered on an annual basis to newly admitted (UTME, JUBEP and direct entry) students and could be held, subject to satisfactory performance, for the duration of a beneficiary’s programme of study.\r\n\r\nJosephus Foundation Scholarship Requirement\r\nEligibility Criteria Applicants for the scholarship must satisfy the following criteria:\r\nHave accepted admission or under consideration for admission to any of the degree programmes at First Technical University, Ibadan in the on-going 2022/2023 admission cycle;\r\nPassed at only one sitting ordinary level English Language, Chemistry, Mathematics, Physics, and Biology/Agricultural Science/Geography at least at the credit level. In addition, Direct Entry students must have at least Credit at an advanced level in any 3 relevant science subjects;\r\nPerform satisfactorily in the University Scholarship Screening Examination; and\r\nMaintain a Cumulative Grade Point Average of at least 3.50 to qualify for the annual renewal of the scholarship.\r\n\r\n\r\nHow to Apply for Josephus Foundation Scholarship\r\nClick the link below to apply', 17, 'scholarships', 'https://www.schoolngr.com/attachments/31aef508146f5b41aa78f9333a3221ea85489f2b', 1, '2023-10-03 15:32:58', '2023-10-03 15:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verification` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` float NOT NULL DEFAULT 0,
  `access` varchar(50) NOT NULL DEFAULT 'guest'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `password`, `verification`, `created_date`, `amount`, `access`) VALUES
(17, 'admin123', '   Daniel Mack', 'admin@highskylogistics.com', '$2y$10$s.LXHJczY942TJrt6/b07./z9jRVZpU.ryEsruZnPhjOZZRq3MNMC', '660148', '2023-09-30 19:27:08', 2000, 'admin'),
(57, 'ryanww', 'Ryan Vixck', 'ryanvick@gmail.com', '$2y$10$8Af2YAyRrBleat2XLtsn5uMnn/OztxVqxIjvr0lamdsn3TbBKkyNa', NULL, '2024-06-07 12:23:58', 0, 'secured');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
