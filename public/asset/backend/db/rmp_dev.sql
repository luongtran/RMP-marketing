/*
Navicat MySQL Data Transfer

Source Server         : soft
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : rmp_dev

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-06-04 10:04:09
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `adminsettings`
-- ----------------------------
DROP TABLE IF EXISTS `adminsettings`;
CREATE TABLE `adminsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_portal` text COLLATE utf8_unicode_ci,
  `task_text` text COLLATE utf8_unicode_ci,
  `university_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `educational_organisation` tinyint(4) NOT NULL,
  `organisation_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_full_profile` tinyint(1) DEFAULT NULL,
  `edit_experience` tinyint(1) DEFAULT NULL,
  `edit_qualification` tinyint(1) DEFAULT NULL,
  `pma` tinyint(1) NOT NULL,
  `observations` tinyint(1) NOT NULL,
  `student_complaints` tinyint(1) NOT NULL,
  `pd` tinyint(1) unsigned NOT NULL,
  `task_completion` tinyint(1) DEFAULT NULL,
  `disciplinaries` tinyint(1) NOT NULL,
  `finance` tinyint(1) NOT NULL,
  `attendance` tinyint(1) unsigned NOT NULL,
  `workshops` tinyint(1) NOT NULL,
  `workshop_location_filtering` tinyint(1) DEFAULT NULL,
  `workshop_review_limit` tinyint(1) DEFAULT '5',
  `workflow_location_filtering` tinyint(1) DEFAULT NULL,
  `flight_requests` tinyint(1) DEFAULT NULL,
  `loan_requests` tinyint(1) DEFAULT NULL,
  `loan_creation` tinyint(1) DEFAULT NULL,
  `leave_requests` tinyint(1) DEFAULT NULL,
  `reimbursement_requests` tinyint(1) DEFAULT NULL,
  `housing_requests` tinyint(1) DEFAULT NULL,
  `keep_request_trail` tinyint(1) DEFAULT NULL,
  `academic_year` year(4) NOT NULL,
  `academic_start_date` date NOT NULL,
  `semester_length` tinyint(4) NOT NULL,
  `attendance_hours` int(11) NOT NULL,
  `absence_cost` int(11) NOT NULL,
  `passport_disclaimer` text COLLATE utf8_unicode_ci,
  `documents_info` text COLLATE utf8_unicode_ci,
  `why_register` text COLLATE utf8_unicode_ci,
  `leave_calc_from_date` date DEFAULT NULL,
  `country_currency` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `academic_year` (`academic_year`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of adminsettings
-- ----------------------------
INSERT INTO `adminsettings` VALUES ('1', 'Iceat', '/uploads/logos/logo.png', 'Vivamus imperdiet felis consectetur onec eget orci adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'HR11', '0', 'medical', '2', '2', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '2017', '1970-01-01', '0', '20', '533', 'Please note that we only request your passport details to ensure that there are not duplicate entries.', 'Please upload your CV, passport, photograph and certificates. If you have more than one BA,MA or PHD. Upload your fisrt degree using the relevant field and any additional degree certificates using the \"other certificates\" field.  ', 'Please upload your CV, passport, photograph and certificates. If you have more than one BA, MA or PHD. Upload your fisrt degree using the relevant field and any additional degree certificates using the \"other certificates\" field.  ', '2014-05-13', 'SAR', '0000-00-00 00:00:00', '2014-05-13 07:34:15');

-- ----------------------------
-- Table structure for `agents`
-- ----------------------------
DROP TABLE IF EXISTS `agents`;
CREATE TABLE `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` text,
  `contact_number` varchar(20) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agents
-- ----------------------------

-- ----------------------------
-- Table structure for `airport_codes`
-- ----------------------------
DROP TABLE IF EXISTS `airport_codes`;
CREATE TABLE `airport_codes` (
  `id` int(11) DEFAULT NULL,
  `airport` varchar(255) NOT NULL,
  `code` varchar(4) NOT NULL,
  KEY `airport` (`airport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of airport_codes
-- ----------------------------
INSERT INTO `airport_codes` VALUES (null, 'Aalborg, Denmark ', 'AAL');
INSERT INTO `airport_codes` VALUES (null, 'Aalesund, Norway ', 'AES');
INSERT INTO `airport_codes` VALUES (null, 'Aarhus, Denmark - Bus service ', 'ZID');
INSERT INTO `airport_codes` VALUES (null, 'Aarhus, Denmark - Tirstrup ', 'AAR');
INSERT INTO `airport_codes` VALUES (null, 'Aasiaat, Greenland ', 'JEG');
INSERT INTO `airport_codes` VALUES (null, 'Abadan, Iran ', 'ABD');
INSERT INTO `airport_codes` VALUES (null, 'Abakan, Russia ', 'ABA');
INSERT INTO `airport_codes` VALUES (null, 'Abbotsford, BC ', 'YXX');
INSERT INTO `airport_codes` VALUES (null, 'Aberdeen, SD ', 'ABR');
INSERT INTO `airport_codes` VALUES (null, 'Aberdeen, United Kingdom ', 'ABZ');
INSERT INTO `airport_codes` VALUES (null, 'Abha, Saudi Arabia ', 'AHB');
INSERT INTO `airport_codes` VALUES (null, 'Abidjan, Cote d\'Ivoire ', 'ABJ');
INSERT INTO `airport_codes` VALUES (null, 'Abilene, TX ', 'ABI');
INSERT INTO `airport_codes` VALUES (null, 'Abu Dhabi, United Arab Emirates ', 'AUH');
INSERT INTO `airport_codes` VALUES (null, 'Abu Simbel, Egypt ', 'ABS');
INSERT INTO `airport_codes` VALUES (null, 'Abuja, Nigeria ', 'ABV');
INSERT INTO `airport_codes` VALUES (null, 'Acapulco, Mexico ', 'ACA');
INSERT INTO `airport_codes` VALUES (null, 'Acarigua, Venezuela ', 'AGV');
INSERT INTO `airport_codes` VALUES (null, 'Accra, Ghana ', 'ACC');
INSERT INTO `airport_codes` VALUES (null, 'Adak Island, AK ', 'ADK');
INSERT INTO `airport_codes` VALUES (null, 'Adana, Turkey ', 'ADA');
INSERT INTO `airport_codes` VALUES (null, 'Addis Ababa, Ethopia ', 'ADD');
INSERT INTO `airport_codes` VALUES (null, 'Adelaide, Australia ', 'ADL');
INSERT INTO `airport_codes` VALUES (null, 'Aden, Yemen ', 'ADE');
INSERT INTO `airport_codes` VALUES (null, 'Adler/Sochi, Russia ', 'AER');
INSERT INTO `airport_codes` VALUES (null, 'Adrar, Algeria ', 'AZR');
INSERT INTO `airport_codes` VALUES (null, 'Afutara, Soloman Islands ', 'AFT');
INSERT INTO `airport_codes` VALUES (null, 'Agadir, Morocco ', 'AGA');
INSERT INTO `airport_codes` VALUES (null, 'Agartala, India ', 'IXA');
INSERT INTO `airport_codes` VALUES (null, 'Agaun, Papua New Guinea ', 'AUP');
INSERT INTO `airport_codes` VALUES (null, 'Agen, France ', 'AGF');
INSERT INTO `airport_codes` VALUES (null, 'Agra, India ', 'AGR');
INSERT INTO `airport_codes` VALUES (null, 'Agri, Turkey ', 'AJI');
INSERT INTO `airport_codes` VALUES (null, 'Aguadilla, Puerto Rico ', 'BQN');
INSERT INTO `airport_codes` VALUES (null, 'Aguascalientes, Mexico ', 'AGU');
INSERT INTO `airport_codes` VALUES (null, 'Aguni, Japan ', 'AGJ');
INSERT INTO `airport_codes` VALUES (null, 'Ahmedabad, India ', 'AMD');
INSERT INTO `airport_codes` VALUES (null, 'Ahwaz, Iran ', 'AWZ');
INSERT INTO `airport_codes` VALUES (null, 'Ailuk Island, Marshall Islands ', 'AIM');
INSERT INTO `airport_codes` VALUES (null, 'Aioun El Atrouss, Mauritania ', 'AEO');
INSERT INTO `airport_codes` VALUES (null, 'Airok, Marshall Islands ', 'AIC');
INSERT INTO `airport_codes` VALUES (null, 'Aitutaki, Cook Islands ', 'AIT');
INSERT INTO `airport_codes` VALUES (null, 'Aizawl, India ', 'AJL');
INSERT INTO `airport_codes` VALUES (null, 'Ajaccio, France ', 'AJA');
INSERT INTO `airport_codes` VALUES (null, 'Akiachak, AK ', 'KKI');
INSERT INTO `airport_codes` VALUES (null, 'Akiak, AK ', 'AKI');
INSERT INTO `airport_codes` VALUES (null, 'Akita, Japan ', 'AXT');
INSERT INTO `airport_codes` VALUES (null, 'Akron/Canton, OH ', 'CAK');
INSERT INTO `airport_codes` VALUES (null, 'Aksu, China ', 'AKU');
INSERT INTO `airport_codes` VALUES (null, 'Aktyubinsk, Kazakhstan ', 'AKX');
INSERT INTO `airport_codes` VALUES (null, 'Akulivik, QC ', 'AKV');
INSERT INTO `airport_codes` VALUES (null, 'Akureyri, Iceland ', 'AEY');
INSERT INTO `airport_codes` VALUES (null, 'Akuton, AK ', 'KQA');
INSERT INTO `airport_codes` VALUES (null, 'Al Ain, United Arab Emirates ', 'AAN');
INSERT INTO `airport_codes` VALUES (null, 'Al Arish, Egypt ', 'AAC');
INSERT INTO `airport_codes` VALUES (null, 'Al Ghaydah, Yemen ', 'AAY');
INSERT INTO `airport_codes` VALUES (null, 'Al Hoceima, Morocco ', 'AHU');
INSERT INTO `airport_codes` VALUES (null, 'Alakanuk, AK ', 'AUK');
INSERT INTO `airport_codes` VALUES (null, 'Alamogordo, NM ', 'ALM');
INSERT INTO `airport_codes` VALUES (null, 'Alamosa, CO ', 'ALS');
INSERT INTO `airport_codes` VALUES (null, 'Al-Baha, Saudi Arabia ', 'ABT');
INSERT INTO `airport_codes` VALUES (null, 'Albany, NY ', 'ALB');
INSERT INTO `airport_codes` VALUES (null, 'Albany, OR - Bus service ', 'CVO');
INSERT INTO `airport_codes` VALUES (null, 'Albany, OR - Bus service ', 'QWY');
INSERT INTO `airport_codes` VALUES (null, 'Albuquerque, NM ', 'ABQ');
INSERT INTO `airport_codes` VALUES (null, 'Albury, Australia ', 'ABX');
INSERT INTO `airport_codes` VALUES (null, 'Alderney, United Kingdom ', 'ACI');
INSERT INTO `airport_codes` VALUES (null, 'Aldershot, ON - Rail service ', 'XLY');
INSERT INTO `airport_codes` VALUES (null, 'Aleknagik, AK ', 'WKK');
INSERT INTO `airport_codes` VALUES (null, 'Aleppo, Syrian Arab Republic ', 'ALP');
INSERT INTO `airport_codes` VALUES (null, 'Alexander Bay, South Africa ', 'ALJ');
INSERT INTO `airport_codes` VALUES (null, 'Alexandria, Egypt ', 'ALY');
INSERT INTO `airport_codes` VALUES (null, 'Alexandria, LA ', 'AEX');
INSERT INTO `airport_codes` VALUES (null, 'Alexandria,ON - Rail service ', 'XFS');
INSERT INTO `airport_codes` VALUES (null, 'Alexandroupolis, Greece ', 'AXD');
INSERT INTO `airport_codes` VALUES (null, 'Al-Fujairah, United Arab Emirates ', 'FJR');
INSERT INTO `airport_codes` VALUES (null, 'Alghero, Italy ', 'AHO');
INSERT INTO `airport_codes` VALUES (null, 'Algiers, Algeria ', 'ALG');
INSERT INTO `airport_codes` VALUES (null, 'Alicante, Spain ', 'ALC');
INSERT INTO `airport_codes` VALUES (null, 'Alice Springs, Australia ', 'ASP');
INSERT INTO `airport_codes` VALUES (null, 'Allakaket, AK ', 'AET');
INSERT INTO `airport_codes` VALUES (null, 'Allentown, PA ', 'ABE');
INSERT INTO `airport_codes` VALUES (null, 'Alliance, NE ', 'AIA');
INSERT INTO `airport_codes` VALUES (null, 'Alma, QC ', 'YTF');
INSERT INTO `airport_codes` VALUES (null, 'Almaty, Kazakhstan ', 'AKX');
INSERT INTO `airport_codes` VALUES (null, 'Almeria, Spain ', 'LEI');
INSERT INTO `airport_codes` VALUES (null, 'Alor Island, Indonesia ', 'ARD');
INSERT INTO `airport_codes` VALUES (null, 'Alorsetar, Malaysia ', 'AOR');
INSERT INTO `airport_codes` VALUES (null, 'Alotau, Papua New Guinea ', 'GUR');
INSERT INTO `airport_codes` VALUES (null, 'Alpena, MI ', 'APN');
INSERT INTO `airport_codes` VALUES (null, 'Alta, Norway ', 'ALF');
INSERT INTO `airport_codes` VALUES (null, 'Altamira, Brazil ', 'ATM');
INSERT INTO `airport_codes` VALUES (null, 'Altay, China ', 'AAT');
INSERT INTO `airport_codes` VALUES (null, 'Altenrhein, Switzerland ', 'ACH');
INSERT INTO `airport_codes` VALUES (null, 'Alto Rio Senguerr, Argentina ', 'ARR');
INSERT INTO `airport_codes` VALUES (null, 'Altoona, PA ', 'AOO');
INSERT INTO `airport_codes` VALUES (null, 'Amami O Shima, Japan ', 'ASJ');
INSERT INTO `airport_codes` VALUES (null, 'Amarillo, TX ', 'AMA');
INSERT INTO `airport_codes` VALUES (null, 'Amazon Bay, Papua New Guinea ', 'AZB');
INSERT INTO `airport_codes` VALUES (null, 'Ambanja, Madagascar ', 'IVA');
INSERT INTO `airport_codes` VALUES (null, 'Ambatomainty, Madagascar ', 'AMY');
INSERT INTO `airport_codes` VALUES (null, 'Ambatondrazaka, Madagascar ', 'WAM');
INSERT INTO `airport_codes` VALUES (null, 'Ambler, AK ', 'ABL');
INSERT INTO `airport_codes` VALUES (null, 'Ambon, Indonesia ', 'AMQ');
INSERT INTO `airport_codes` VALUES (null, 'Amboseli, Kenya ', 'ASV');
INSERT INTO `airport_codes` VALUES (null, 'Amderma, Russia ', 'AMV');
INSERT INTO `airport_codes` VALUES (null, 'Amman, Jordan - Civil/Marka Airport ', 'ADJ');
INSERT INTO `airport_codes` VALUES (null, 'Amman, Jordan - Queen Alia International ', 'AMM');
INSERT INTO `airport_codes` VALUES (null, 'Amritsar, India ', 'ATQ');
INSERT INTO `airport_codes` VALUES (null, 'Amsterdam, Netherlands ', 'AMS');
INSERT INTO `airport_codes` VALUES (null, 'Anadyr, Russia ', 'DYR');
INSERT INTO `airport_codes` VALUES (null, 'Anahim Lake, BC ', 'YAA');
INSERT INTO `airport_codes` VALUES (null, 'Anaktueuk, AK ', 'AKP');
INSERT INTO `airport_codes` VALUES (null, 'Analalava, Madagascar ', 'HVA');
INSERT INTO `airport_codes` VALUES (null, 'Anapa, Russia ', 'AAQ');
INSERT INTO `airport_codes` VALUES (null, 'Anchorage, AK ', 'ANC');
INSERT INTO `airport_codes` VALUES (null, 'Ancona, Italy ', 'AOI');
INSERT INTO `airport_codes` VALUES (null, 'Andenes, Norway ', 'ANX');
INSERT INTO `airport_codes` VALUES (null, 'Andizhan, Uzbekistan ', 'AZN');
INSERT INTO `airport_codes` VALUES (null, 'Aneityum, Vanuatu ', 'AUY');
INSERT INTO `airport_codes` VALUES (null, 'Angelholm/Helsingborg, Sweden ', 'JHE');
INSERT INTO `airport_codes` VALUES (null, 'Angers, France - Marce ', 'ANE');
INSERT INTO `airport_codes` VALUES (null, 'Angers, France - Rail service ', 'QXG');
INSERT INTO `airport_codes` VALUES (null, 'Anggi, Indonesia ', 'AGD');
INSERT INTO `airport_codes` VALUES (null, 'Anging, China ', 'AQG');
INSERT INTO `airport_codes` VALUES (null, 'Angling Lake, ON ', 'YAX');
INSERT INTO `airport_codes` VALUES (null, 'Angoon, AK ', 'AGN');
INSERT INTO `airport_codes` VALUES (null, 'Angouleme, France ', 'ANG');
INSERT INTO `airport_codes` VALUES (null, 'Anguilla, Anguilla ', 'AXA');
INSERT INTO `airport_codes` VALUES (null, 'Aniak, AK ', 'ANI');
INSERT INTO `airport_codes` VALUES (null, 'Aniwa, Vanuatu ', 'AWD');
INSERT INTO `airport_codes` VALUES (null, 'Ankang, China ', 'AKA');
INSERT INTO `airport_codes` VALUES (null, 'Ankara, Turkey - Esenboga ', 'ESB');
INSERT INTO `airport_codes` VALUES (null, 'Ankara, Turkey - Etimesqut ', 'ANK');
INSERT INTO `airport_codes` VALUES (null, 'Ankavandra, Madagascar ', 'JVA');
INSERT INTO `airport_codes` VALUES (null, 'Annaba, Algeria ', 'AAE');
INSERT INTO `airport_codes` VALUES (null, 'Annecy, France ', 'NCY');
INSERT INTO `airport_codes` VALUES (null, 'Antalaha, Madagascar ', 'ANM');
INSERT INTO `airport_codes` VALUES (null, 'Antalya, Turkey ', 'AYT');
INSERT INTO `airport_codes` VALUES (null, 'Antaninvarivo, Madgascar ', 'TNR');
INSERT INTO `airport_codes` VALUES (null, 'Antigua, Antigua and Barbuda ', 'ANU');
INSERT INTO `airport_codes` VALUES (null, 'Antofagasta, Chile ', 'ANF');
INSERT INTO `airport_codes` VALUES (null, 'Antsalova, Madagascar ', 'WAQ');
INSERT INTO `airport_codes` VALUES (null, 'Antsiranana, Madagascar ', 'DIE');
INSERT INTO `airport_codes` VALUES (null, 'Antsohihy, Madagascar ', 'WAI');
INSERT INTO `airport_codes` VALUES (null, 'Antwerp, Belgium - Bus service ', 'ZAY');
INSERT INTO `airport_codes` VALUES (null, 'Antwerp, Belgium - Deurne Airport ', 'ANR');
INSERT INTO `airport_codes` VALUES (null, 'Anvik, AK ', 'ANV');
INSERT INTO `airport_codes` VALUES (null, 'Aomori, Japan ', 'AOJ');
INSERT INTO `airport_codes` VALUES (null, 'Aosta, Italy ', 'AOT');
INSERT INTO `airport_codes` VALUES (null, 'Apartado, Colombia ', 'APO');
INSERT INTO `airport_codes` VALUES (null, 'Apia, Western Samoa ', 'APW');
INSERT INTO `airport_codes` VALUES (null, 'Apia, Western Samoa ', 'FGI');
INSERT INTO `airport_codes` VALUES (null, 'Appleton, WI ', 'ATW');
INSERT INTO `airport_codes` VALUES (null, 'Aqaba, Jordan ', 'AQJ');
INSERT INTO `airport_codes` VALUES (null, 'Araca, Brazil ', 'AJU');
INSERT INTO `airport_codes` VALUES (null, 'Aracatuba, Brazil ', 'ARU');
INSERT INTO `airport_codes` VALUES (null, 'Arad, Romania ', 'ARW');
INSERT INTO `airport_codes` VALUES (null, 'Aragip, Papua New Guinea ', 'ARP');
INSERT INTO `airport_codes` VALUES (null, 'Araguaina, Brazil ', 'AUX');
INSERT INTO `airport_codes` VALUES (null, 'Arapoti, Brazil ', 'AAG');
INSERT INTO `airport_codes` VALUES (null, 'Arar, Saudi Arabia ', 'RAE');
INSERT INTO `airport_codes` VALUES (null, 'Arauca, Colombia ', 'AUC');
INSERT INTO `airport_codes` VALUES (null, 'Arba Mintch, Ethiopia ', 'AMH');
INSERT INTO `airport_codes` VALUES (null, 'Arcata, CA ', 'ACV');
INSERT INTO `airport_codes` VALUES (null, 'Arctic Bay, NU ', 'YAB');
INSERT INTO `airport_codes` VALUES (null, 'Arctic Village, AK ', 'ARC');
INSERT INTO `airport_codes` VALUES (null, 'Ardabil, Iran ', 'ADU');
INSERT INTO `airport_codes` VALUES (null, 'Arequipa, Peru ', 'AQP');
INSERT INTO `airport_codes` VALUES (null, 'Argelholm/Helsingborg, Sweden ', 'AGH');
INSERT INTO `airport_codes` VALUES (null, 'Argyle, Australia ', 'GYL');
INSERT INTO `airport_codes` VALUES (null, 'Arica, Chile ', 'ARI');
INSERT INTO `airport_codes` VALUES (null, 'Arkangelsk, Russia ', 'ARH');
INSERT INTO `airport_codes` VALUES (null, 'Armenia, Colombia ', 'AXM');
INSERT INTO `airport_codes` VALUES (null, 'Armidale, Australia ', 'ARM');
INSERT INTO `airport_codes` VALUES (null, 'Arthur\'s Town, Bahamas ', 'ATC');
INSERT INTO `airport_codes` VALUES (null, 'Arua, Uganda ', 'RUA');
INSERT INTO `airport_codes` VALUES (null, 'Aruba, Aruba ', 'AUA');
INSERT INTO `airport_codes` VALUES (null, 'Arusha, Tanzania ', 'ARK');
INSERT INTO `airport_codes` VALUES (null, 'Arviat, NU ', 'YEK');
INSERT INTO `airport_codes` VALUES (null, 'Arvidsjaur, Sweden ', 'AJR');
INSERT INTO `airport_codes` VALUES (null, 'Asahikawa, Japan ', 'AKJ');
INSERT INTO `airport_codes` VALUES (null, 'Asheville, NC ', 'AVL');
INSERT INTO `airport_codes` VALUES (null, 'Ashgabat, Turkmenistan ', 'ASB');
INSERT INTO `airport_codes` VALUES (null, 'Ashland, KY/Huntington, WV ', 'HTS');
INSERT INTO `airport_codes` VALUES (null, 'Asmara, Eritrea ', 'ASM');
INSERT INTO `airport_codes` VALUES (null, 'Asosa, Ethopia ', 'ASO');
INSERT INTO `airport_codes` VALUES (null, 'Aspen, CO ', 'ASE');
INSERT INTO `airport_codes` VALUES (null, 'Assiut, Egypt ', 'ATZ');
INSERT INTO `airport_codes` VALUES (null, 'Astana, Kazakhstan ', 'TSE');
INSERT INTO `airport_codes` VALUES (null, 'Astrakhan, Russia ', 'ASF');
INSERT INTO `airport_codes` VALUES (null, 'Asturias, Spain and Canary Islands ', 'OVD');
INSERT INTO `airport_codes` VALUES (null, 'Asuncion, Paraguay ', 'ASU');
INSERT INTO `airport_codes` VALUES (null, 'Aswan, Egypt ', 'ASW');
INSERT INTO `airport_codes` VALUES (null, 'Ataq, Yemen ', 'AXK');
INSERT INTO `airport_codes` VALUES (null, 'Athens, GA ', 'AHN');
INSERT INTO `airport_codes` VALUES (null, 'Athens, Greece ', 'ATH');
INSERT INTO `airport_codes` VALUES (null, 'Atiu Island, Cook Islands ', 'AIU');
INSERT INTO `airport_codes` VALUES (null, 'Atka, AK ', 'AKB');
INSERT INTO `airport_codes` VALUES (null, 'Atlanta, GA ', 'ATL');
INSERT INTO `airport_codes` VALUES (null, 'Atlantic City, NJ ', 'AIY');
INSERT INTO `airport_codes` VALUES (null, 'Atoifi, Solomon Islands ', 'ATD');
INSERT INTO `airport_codes` VALUES (null, 'Atqasuk, AK ', 'ATK');
INSERT INTO `airport_codes` VALUES (null, 'Attawapiskat, ON ', 'YAT');
INSERT INTO `airport_codes` VALUES (null, 'Atuona, French Polynesia ', 'AUQ');
INSERT INTO `airport_codes` VALUES (null, 'Atyrau, Kazakhstan ', 'GUW');
INSERT INTO `airport_codes` VALUES (null, 'Auckland, New Zealand ', 'AKL');
INSERT INTO `airport_codes` VALUES (null, 'Augsburg/Munich, Germany ', 'AGB');
INSERT INTO `airport_codes` VALUES (null, 'Augusta, GA ', 'AGS');
INSERT INTO `airport_codes` VALUES (null, 'Augusta, ME ', 'AUG');
INSERT INTO `airport_codes` VALUES (null, 'Auki, Solomon Islands ', 'AKS');
INSERT INTO `airport_codes` VALUES (null, 'Aupaluk, QC ', 'YPJ');
INSERT INTO `airport_codes` VALUES (null, 'Aur Island, Marshall Islands ', 'AUL');
INSERT INTO `airport_codes` VALUES (null, 'Aurangabad, India ', 'IXU');
INSERT INTO `airport_codes` VALUES (null, 'Aurillac, France ', 'AUR');
INSERT INTO `airport_codes` VALUES (null, 'Aurukun, Australia ', 'AUU');
INSERT INTO `airport_codes` VALUES (null, 'Austin, TX ', 'AUS');
INSERT INTO `airport_codes` VALUES (null, 'Avignon, France ', 'AVN');
INSERT INTO `airport_codes` VALUES (null, 'Ayawaki, Indonesia ', 'AYW');
INSERT INTO `airport_codes` VALUES (null, 'Ayers Rock, Australia ', 'AYQ');
INSERT INTO `airport_codes` VALUES (null, 'Babo, Indonesia ', 'BXB');
INSERT INTO `airport_codes` VALUES (null, 'Bacolod, Philippines ', 'BCD');
INSERT INTO `airport_codes` VALUES (null, 'Badajcz, Spain ', 'BJZ');
INSERT INTO `airport_codes` VALUES (null, 'Bade, Indonesia ', 'BXD');
INSERT INTO `airport_codes` VALUES (null, 'Badu Island, Australia ', 'BDD');
INSERT INTO `airport_codes` VALUES (null, 'Bagdogra, India ', 'IXB');
INSERT INTO `airport_codes` VALUES (null, 'Bagotville, QC ', 'YBG');
INSERT INTO `airport_codes` VALUES (null, 'Baharpar, Ethiopia ', 'BJR');
INSERT INTO `airport_codes` VALUES (null, 'Bahawalpur, Pakistan ', 'BHV');
INSERT INTO `airport_codes` VALUES (null, 'Bahia Blanca, Argentina ', 'BHI');
INSERT INTO `airport_codes` VALUES (null, 'Bahia Pinas, Panama ', 'BFQ');
INSERT INTO `airport_codes` VALUES (null, 'Bahia Solano, Colombia ', 'BSC');
INSERT INTO `airport_codes` VALUES (null, 'Bahrain, Bahrain ', 'BAH');
INSERT INTO `airport_codes` VALUES (null, 'Baia Mare, Romania ', 'BAY');
INSERT INTO `airport_codes` VALUES (null, 'Baie Comeau, QC ', 'YBC');
INSERT INTO `airport_codes` VALUES (null, 'Baimuru, Papua New Guinea ', 'VMU');
INSERT INTO `airport_codes` VALUES (null, 'Baker Lake, NU ', 'YBK');
INSERT INTO `airport_codes` VALUES (null, 'Bakersfield, CA ', 'BFL');
INSERT INTO `airport_codes` VALUES (null, 'Baku, Azerbaijan ', 'GYD');
INSERT INTO `airport_codes` VALUES (null, 'Balalae, Solomon Islands ', 'BAS');
INSERT INTO `airport_codes` VALUES (null, 'Balikesir, Turkey ', 'BZI');
INSERT INTO `airport_codes` VALUES (null, 'Balikpapan, Indonesia ', 'BPN');
INSERT INTO `airport_codes` VALUES (null, 'Balimo, Papua New Guinea ', 'OPU');
INSERT INTO `airport_codes` VALUES (null, 'Ballina, Australia ', 'BNK');
INSERT INTO `airport_codes` VALUES (null, 'Balmaceda, Chile ', 'BBA');
INSERT INTO `airport_codes` VALUES (null, 'Baltimore, MD ', 'BWI');
INSERT INTO `airport_codes` VALUES (null, 'Bam, Iran ', 'BXR');
INSERT INTO `airport_codes` VALUES (null, 'Bamaga, Australia ', 'ABM');
INSERT INTO `airport_codes` VALUES (null, 'Bamako, Mali ', 'BKO');
INSERT INTO `airport_codes` VALUES (null, 'Banda Aceh, Indonesia ', 'BTJ');
INSERT INTO `airport_codes` VALUES (null, 'Bandar Abbas, Iran ', 'BND');
INSERT INTO `airport_codes` VALUES (null, 'Bandar Lampung, Indonesia - Branti ', 'TKG');
INSERT INTO `airport_codes` VALUES (null, 'Bandar Lengeh, Iran ', 'BDH');
INSERT INTO `airport_codes` VALUES (null, 'Bandar Seri Begawan, Brunei ', 'BWN');
INSERT INTO `airport_codes` VALUES (null, 'Bandung, Indonesia ', 'BDO');
INSERT INTO `airport_codes` VALUES (null, 'Bangalore, India ', 'BLR');
INSERT INTO `airport_codes` VALUES (null, 'Bangda, China ', 'BPX');
INSERT INTO `airport_codes` VALUES (null, 'Bangkok, Thailand ', 'BKK');
INSERT INTO `airport_codes` VALUES (null, 'Bangor, ME ', 'BGR');
INSERT INTO `airport_codes` VALUES (null, 'Banja Luka, Bosnia Herzegovina ', 'BNX');
INSERT INTO `airport_codes` VALUES (null, 'Banjarmasin, Indonesia ', 'BDJ');
INSERT INTO `airport_codes` VALUES (null, 'Banjul, Gambia ', 'BJL');
INSERT INTO `airport_codes` VALUES (null, 'Banmethuot, Viet Nam - Phung-Doc ', 'BMV');
INSERT INTO `airport_codes` VALUES (null, 'Bannu, Pakistan ', 'BNP');
INSERT INTO `airport_codes` VALUES (null, 'Banqui, Central African Republic ', 'BGF');
INSERT INTO `airport_codes` VALUES (null, 'Baoshan, China ', 'BSD');
INSERT INTO `airport_codes` VALUES (null, 'Baotou, China ', 'BAV');
INSERT INTO `airport_codes` VALUES (null, 'Bar Harbour, ME ', 'BHB');
INSERT INTO `airport_codes` VALUES (null, 'Baracoa, Cuba ', 'BCA');
INSERT INTO `airport_codes` VALUES (null, 'Barcaldine, Australia ', 'BCI');
INSERT INTO `airport_codes` VALUES (null, 'Barcelona, Spain ', 'BCN');
INSERT INTO `airport_codes` VALUES (null, 'Barcelona, Venezuela ', 'BLA');
INSERT INTO `airport_codes` VALUES (null, 'Bardufoss, Norway ', 'BDU');
INSERT INTO `airport_codes` VALUES (null, 'Bari, Italy ', 'BRI');
INSERT INTO `airport_codes` VALUES (null, 'Barinas, Venezuela ', 'BNS');
INSERT INTO `airport_codes` VALUES (null, 'Bario, Malaysia ', 'BBN');
INSERT INTO `airport_codes` VALUES (null, 'Barisal, Bangladesh ', 'BZL');
INSERT INTO `airport_codes` VALUES (null, 'Barnaul, Russia ', 'BAX');
INSERT INTO `airport_codes` VALUES (null, 'Barquisimeto, Venezuela ', 'BRM');
INSERT INTO `airport_codes` VALUES (null, 'Barra Colorado, Costa Rica ', 'BCL');
INSERT INTO `airport_codes` VALUES (null, 'Barra, United Kingdom ', 'BRR');
INSERT INTO `airport_codes` VALUES (null, 'Barran Cabermeja, Colombia ', 'EJA');
INSERT INTO `airport_codes` VALUES (null, 'Barranquilla, Colombia ', 'BAQ');
INSERT INTO `airport_codes` VALUES (null, 'Barreiras, Brazil ', 'BRA');
INSERT INTO `airport_codes` VALUES (null, 'Barrow, AK ', 'BRW');
INSERT INTO `airport_codes` VALUES (null, 'Barter Island, AK ', 'BTI');
INSERT INTO `airport_codes` VALUES (null, 'Basco, Philippines ', 'BSO');
INSERT INTO `airport_codes` VALUES (null, 'Basel, Switzerland ', 'BSL');
INSERT INTO `airport_codes` VALUES (null, 'Basel/Mulhouse Railway Station, Switzerland ', 'ZDH');
INSERT INTO `airport_codes` VALUES (null, 'Bashehr, Iran ', 'BUZ');
INSERT INTO `airport_codes` VALUES (null, 'Bastia, France ', 'BIA');
INSERT INTO `airport_codes` VALUES (null, 'Batam, Indonesia ', 'BTH');
INSERT INTO `airport_codes` VALUES (null, 'Bathhurst, NB ', 'ZBF');
INSERT INTO `airport_codes` VALUES (null, 'Bathurst Island, Australia ', 'BRT');
INSERT INTO `airport_codes` VALUES (null, 'Bathurst, Australia ', 'BHS');
INSERT INTO `airport_codes` VALUES (null, 'Batman, Turkey ', 'BAL');
INSERT INTO `airport_codes` VALUES (null, 'Batna, Algeria ', 'BLJ');
INSERT INTO `airport_codes` VALUES (null, 'Batom, Indonesia ', 'BXM');
INSERT INTO `airport_codes` VALUES (null, 'Baton Rouge, LA ', 'BTR');
INSERT INTO `airport_codes` VALUES (null, 'Batsfijord, Norway ', 'BJF');
INSERT INTO `airport_codes` VALUES (null, 'Battambang, Cambodia ', 'BBM');
INSERT INTO `airport_codes` VALUES (null, 'Batumi, Georgia ', 'BUS');
INSERT INTO `airport_codes` VALUES (null, 'Batuna, Solomon Islands ', 'BPF');
INSERT INTO `airport_codes` VALUES (null, 'Bauru, Brazil ', 'BAU');
INSERT INTO `airport_codes` VALUES (null, 'Bay City, MI ', 'MBS');
INSERT INTO `airport_codes` VALUES (null, 'Bayamo, Cuba ', 'BYM');
INSERT INTO `airport_codes` VALUES (null, 'Bayreuth, Germany ', 'BYU');
INSERT INTO `airport_codes` VALUES (null, 'Bearskin Lake, ON ', 'XBE');
INSERT INTO `airport_codes` VALUES (null, 'Beaumont/Port Arthur, TX ', 'BPT');
INSERT INTO `airport_codes` VALUES (null, 'Beaver Creek, CO - Van service ', 'ZBV');
INSERT INTO `airport_codes` VALUES (null, 'Beaver, AK ', 'WBQ');
INSERT INTO `airport_codes` VALUES (null, 'Bechar, Algeria ', 'CBH');
INSERT INTO `airport_codes` VALUES (null, 'Beckley, WV ', 'BKW');
INSERT INTO `airport_codes` VALUES (null, 'Bedford, MA ', 'BED');
INSERT INTO `airport_codes` VALUES (null, 'Bedourie, Australia ', 'BEU');
INSERT INTO `airport_codes` VALUES (null, 'Beef Island, British Virgin Islands ', 'EIS');
INSERT INTO `airport_codes` VALUES (null, 'Beica, Ethiopia ', 'BEI');
INSERT INTO `airport_codes` VALUES (null, 'Beida, Libya - La Braq ', 'LAQ');
INSERT INTO `airport_codes` VALUES (null, 'Beihai, China ', 'BHY');
INSERT INTO `airport_codes` VALUES (null, 'Beijing, China ', 'PEK');
INSERT INTO `airport_codes` VALUES (null, 'Beira, Mozambique ', 'BEW');
INSERT INTO `airport_codes` VALUES (null, 'Beirut, Lebanon ', 'BEY');
INSERT INTO `airport_codes` VALUES (null, 'Bejaia, Algeria ', 'BJA');
INSERT INTO `airport_codes` VALUES (null, 'Belaga, Mozambique ', 'BLG');
INSERT INTO `airport_codes` VALUES (null, 'Belem, Brazil ', 'BEL');
INSERT INTO `airport_codes` VALUES (null, 'Belep Island, New Caledonia ', 'BMY');
INSERT INTO `airport_codes` VALUES (null, 'Belfast, Northern Ireland, United Kingdom ', 'BFS');
INSERT INTO `airport_codes` VALUES (null, 'Belfast, United Kingdom ', 'BHD');
INSERT INTO `airport_codes` VALUES (null, 'Belgorod, Russia ', 'EGO');
INSERT INTO `airport_codes` VALUES (null, 'Belgrade, Serbia and Montenegro - Beograd ', 'BEG');
INSERT INTO `airport_codes` VALUES (null, 'Belize City, Belize - International ', 'BZE');
INSERT INTO `airport_codes` VALUES (null, 'Belize City, Belize - Municipal ', 'TZA');
INSERT INTO `airport_codes` VALUES (null, 'Bella Bella, BC ', 'ZEL');
INSERT INTO `airport_codes` VALUES (null, 'Bella Coola, BC ', 'QBC');
INSERT INTO `airport_codes` VALUES (null, 'Belleville, IL ', 'BLV');
INSERT INTO `airport_codes` VALUES (null, 'Belleville, ON - Rail service ', 'XVV');
INSERT INTO `airport_codes` VALUES (null, 'Bellingham, WA ', 'BLI');
INSERT INTO `airport_codes` VALUES (null, 'Bellona, Solomon Islands ', 'BNY');
INSERT INTO `airport_codes` VALUES (null, 'Belo Horizonte, Brazil - Pampulha ', 'PLU');
INSERT INTO `airport_codes` VALUES (null, 'Belo Horizonte, Brazil - Tancredo Neves Intl. ', 'CNF');
INSERT INTO `airport_codes` VALUES (null, 'Belo, Madagascar ', 'BMD');
INSERT INTO `airport_codes` VALUES (null, 'Bemidji, MN ', 'BJI');
INSERT INTO `airport_codes` VALUES (null, 'Benbecula, United Kingdom ', 'BEB');
INSERT INTO `airport_codes` VALUES (null, 'Benghazi, Libya ', 'BEN');
INSERT INTO `airport_codes` VALUES (null, 'Bengkulu, Indonesia ', 'BKS');
INSERT INTO `airport_codes` VALUES (null, 'Benton Harbor, MI ', 'BEH');
INSERT INTO `airport_codes` VALUES (null, 'Berau, Indonesia ', 'BEJ');
INSERT INTO `airport_codes` VALUES (null, 'Berbera, Somalia ', 'BBO');
INSERT INTO `airport_codes` VALUES (null, 'Berens River, MB ', 'YBV');
INSERT INTO `airport_codes` VALUES (null, 'Bergen, Norway ', 'BGO');
INSERT INTO `airport_codes` VALUES (null, 'Bergerac, France ', 'EGC');
INSERT INTO `airport_codes` VALUES (null, 'Berlevag, Norway ', 'BVG');
INSERT INTO `airport_codes` VALUES (null, 'Berlin, Germany - All airports ', 'BER');
INSERT INTO `airport_codes` VALUES (null, 'Berlin, Germany - Schoenefeld ', 'SXF');
INSERT INTO `airport_codes` VALUES (null, 'Berlin, Germany - Tegel ', 'TXL');
INSERT INTO `airport_codes` VALUES (null, 'Berlin, Germany - Tempelhof ', 'THF');
INSERT INTO `airport_codes` VALUES (null, 'Bermuda, Bermuda ', 'BDA');
INSERT INTO `airport_codes` VALUES (null, 'Berne, Switzerland - Belp Airport ', 'BRN');
INSERT INTO `airport_codes` VALUES (null, 'Berne, Switzerland - Rail service ', 'ZDJ');
INSERT INTO `airport_codes` VALUES (null, 'Besalampy, Madagascar ', 'BPY');
INSERT INTO `airport_codes` VALUES (null, 'Bethel, AK ', 'BET');
INSERT INTO `airport_codes` VALUES (null, 'Bethlehem, PA ', 'ABE');
INSERT INTO `airport_codes` VALUES (null, 'Bettles, AK ', 'BTT');
INSERT INTO `airport_codes` VALUES (null, 'Beziers, France ', 'BZR');
INSERT INTO `airport_codes` VALUES (null, 'Bhadrapur, Nepal ', 'BDP');
INSERT INTO `airport_codes` VALUES (null, 'Bhairawa, Nepal ', 'BWA');
INSERT INTO `airport_codes` VALUES (null, 'Bhamo, Myanmar ', 'BMO');
INSERT INTO `airport_codes` VALUES (null, 'Bharatpur, Nepal ', 'BHR');
INSERT INTO `airport_codes` VALUES (null, 'Bhavnagar, India ', 'BHU');
INSERT INTO `airport_codes` VALUES (null, 'Bhopal, India ', 'BHO');
INSERT INTO `airport_codes` VALUES (null, 'Bhubaneswar, India ', 'BBI');
INSERT INTO `airport_codes` VALUES (null, 'Bhuj, India ', 'BHJ');
INSERT INTO `airport_codes` VALUES (null, 'Biak, Indonesia ', 'BIK');
INSERT INTO `airport_codes` VALUES (null, 'Biarritz, France ', 'BIQ');
INSERT INTO `airport_codes` VALUES (null, 'Big Trout, ON ', 'YTL');
INSERT INTO `airport_codes` VALUES (null, 'Bikini Atoll, Marshall Islands ', 'BII');
INSERT INTO `airport_codes` VALUES (null, 'Bilbao, Spain ', 'BIO');
INSERT INTO `airport_codes` VALUES (null, 'Billings, MT ', 'BIL');
INSERT INTO `airport_codes` VALUES (null, 'Billund, Denmark ', 'BLL');
INSERT INTO `airport_codes` VALUES (null, 'Biloxi/Gulfport, MS ', 'GPT');
INSERT INTO `airport_codes` VALUES (null, 'Bima, Indonesia ', 'BMU');
INSERT INTO `airport_codes` VALUES (null, 'Bimini, Bahamas ', 'BIM');
INSERT INTO `airport_codes` VALUES (null, 'Bimini, Bahamas ', 'NSB');
INSERT INTO `airport_codes` VALUES (null, 'Binghamton, NY ', 'BGM');
INSERT INTO `airport_codes` VALUES (null, 'Bintulu, Malaysia ', 'BTU');
INSERT INTO `airport_codes` VALUES (null, 'Bintuni, Indonesia ', 'NTI');
INSERT INTO `airport_codes` VALUES (null, 'Biratragar, Nepal ', 'BIR');
INSERT INTO `airport_codes` VALUES (null, 'Birch Creek, AK ', 'KBC');
INSERT INTO `airport_codes` VALUES (null, 'Birdsville, Australia ', 'BVI');
INSERT INTO `airport_codes` VALUES (null, 'Birmingham, AL ', 'BHM');
INSERT INTO `airport_codes` VALUES (null, 'Birmingham, United Kingdom ', 'BHX');
INSERT INTO `airport_codes` VALUES (null, 'Bisha, Saudi Arabia ', 'BHH');
INSERT INTO `airport_codes` VALUES (null, 'Bishkek, Kyrgyzstan ', 'FRU');
INSERT INTO `airport_codes` VALUES (null, 'Biskra, Algeria ', 'BSK');
INSERT INTO `airport_codes` VALUES (null, 'Bismarck, ND ', 'BIS');
INSERT INTO `airport_codes` VALUES (null, 'Bissau, Guinea-Bissau ', 'OXB');
INSERT INTO `airport_codes` VALUES (null, 'Black Tickle, NL ', 'YBI');
INSERT INTO `airport_codes` VALUES (null, 'Blackall, Australia ', 'BKQ');
INSERT INTO `airport_codes` VALUES (null, 'Blackpool, United Kingdom ', 'BLK');
INSERT INTO `airport_codes` VALUES (null, 'Blackwater, Australia ', 'BLT');
INSERT INTO `airport_codes` VALUES (null, 'Blagoveschensk, Russia ', 'BQS');
INSERT INTO `airport_codes` VALUES (null, 'Blanc Sablon, QC ', 'YBX');
INSERT INTO `airport_codes` VALUES (null, 'Blantyre, Malawi ', 'BLZ');
INSERT INTO `airport_codes` VALUES (null, 'Blenheim, New Zealand ', 'BHE');
INSERT INTO `airport_codes` VALUES (null, 'Blo Horizonte, Brazil ', 'CNF');
INSERT INTO `airport_codes` VALUES (null, 'Block Island, RI ', 'BID');
INSERT INTO `airport_codes` VALUES (null, 'Bloemfontein, South Africa ', 'BFN');
INSERT INTO `airport_codes` VALUES (null, 'Bloomington, IL ', 'BMI');
INSERT INTO `airport_codes` VALUES (null, 'Bluefield, WV ', 'BLF');
INSERT INTO `airport_codes` VALUES (null, 'Boa Vista, Cape Verde ', 'BVC');
INSERT INTO `airport_codes` VALUES (null, 'Boang, Papua New Guinea ', 'BOV');
INSERT INTO `airport_codes` VALUES (null, 'Boavista, Brazil ', 'BVB');
INSERT INTO `airport_codes` VALUES (null, 'Bocas Del Toro, Panama ', 'BOC');
INSERT INTO `airport_codes` VALUES (null, 'Bodo, Norway ', 'BOO');
INSERT INTO `airport_codes` VALUES (null, 'Bodrum, Turkey ', 'BJV');
INSERT INTO `airport_codes` VALUES (null, 'Bogota, Colombia ', 'BOG');
INSERT INTO `airport_codes` VALUES (null, 'Boiju Island, Australia ', 'GIC');
INSERT INTO `airport_codes` VALUES (null, 'Boise, ID ', 'BOI');
INSERT INTO `airport_codes` VALUES (null, 'Bojnord, Iran ', 'BJB');
INSERT INTO `airport_codes` VALUES (null, 'Bokondini, Indonesia ', 'BUI');
INSERT INTO `airport_codes` VALUES (null, 'Bol, Croatia ', 'BWK');
INSERT INTO `airport_codes` VALUES (null, 'Bolzano, Italy ', 'BZO');
INSERT INTO `airport_codes` VALUES (null, 'Boma, Congo ', 'BOA');
INSERT INTO `airport_codes` VALUES (null, 'Bombay, India ', 'BOM');
INSERT INTO `airport_codes` VALUES (null, 'Bonaire, Netherlands Antilles ', 'BON');
INSERT INTO `airport_codes` VALUES (null, 'Bonaventure, QC ', 'YVB');
INSERT INTO `airport_codes` VALUES (null, 'Bonn, Germany ', 'BNJ');
INSERT INTO `airport_codes` VALUES (null, 'Bora Bora, French Polynesia ', 'BOB');
INSERT INTO `airport_codes` VALUES (null, 'Bordeaux, France ', 'BOD');
INSERT INTO `airport_codes` VALUES (null, 'Borg El Arab, Egypt ', 'HBE');
INSERT INTO `airport_codes` VALUES (null, 'Borkum, Germany ', 'BMK');
INSERT INTO `airport_codes` VALUES (null, 'Borlange, Sweden ', 'BLE');
INSERT INTO `airport_codes` VALUES (null, 'Bornholm, Denmark ', 'RNN');
INSERT INTO `airport_codes` VALUES (null, 'Borroloola, Australia ', 'BOX');
INSERT INTO `airport_codes` VALUES (null, 'Bossaro, Somalia ', 'BSA');
INSERT INTO `airport_codes` VALUES (null, 'Boston, MA ', 'BOS');
INSERT INTO `airport_codes` VALUES (null, 'Boulder, CO - Bus service ', 'XHH');
INSERT INTO `airport_codes` VALUES (null, 'Boulder, CO - Hiltons Har H ', 'WHH');
INSERT INTO `airport_codes` VALUES (null, 'Boulder, CO - Municipal Airport ', 'WBU');
INSERT INTO `airport_codes` VALUES (null, 'Boulia, Australia ', 'BQL');
INSERT INTO `airport_codes` VALUES (null, 'Boundary, AK ', 'BYA');
INSERT INTO `airport_codes` VALUES (null, 'Bourgas, Bulgaria ', 'BOJ');
INSERT INTO `airport_codes` VALUES (null, 'Bourke, Australia ', 'BRK');
INSERT INTO `airport_codes` VALUES (null, 'Bournemouth, United Kingdom ', 'BOH');
INSERT INTO `airport_codes` VALUES (null, 'Bowling Green, KY ', 'BWG');
INSERT INTO `airport_codes` VALUES (null, 'Bozeman, MT ', 'BZN');
INSERT INTO `airport_codes` VALUES (null, 'Brack, Libya ', 'BCQ');
INSERT INTO `airport_codes` VALUES (null, 'Bradford, PA ', 'BFD');
INSERT INTO `airport_codes` VALUES (null, 'Brainerd, MN ', 'BRD');
INSERT INTO `airport_codes` VALUES (null, 'Brampton Island, Australia ', 'BMP');
INSERT INTO `airport_codes` VALUES (null, 'Brampton, ON - Rail service ', 'XPN');
INSERT INTO `airport_codes` VALUES (null, 'Brandon, MB ', 'YBR');
INSERT INTO `airport_codes` VALUES (null, 'Brantford, ON - Rail service ', 'XFV');
INSERT INTO `airport_codes` VALUES (null, 'Brasilia, DF, Brazil ', 'BSB');
INSERT INTO `airport_codes` VALUES (null, 'Bratislava, Slovakia ', 'BTS');
INSERT INTO `airport_codes` VALUES (null, 'Bratsk, Russia ', 'BTK');
INSERT INTO `airport_codes` VALUES (null, 'Braunschweig, Denmark ', 'BWE');
INSERT INTO `airport_codes` VALUES (null, 'Brawnwood, TX ', 'BWD');
INSERT INTO `airport_codes` VALUES (null, 'Brazzaville, Congo ', 'BZV');
INSERT INTO `airport_codes` VALUES (null, 'Breckenridge, CO - Van service ', 'QKB');
INSERT INTO `airport_codes` VALUES (null, 'Bremen, Germany ', 'BRE');
INSERT INTO `airport_codes` VALUES (null, 'Brest, France ', 'BES');
INSERT INTO `airport_codes` VALUES (null, 'Brewarrina, Australia ', 'BWQ');
INSERT INTO `airport_codes` VALUES (null, 'Bridgetown, Barbados ', 'BGI');
INSERT INTO `airport_codes` VALUES (null, 'Brindisi, Italy ', 'BDS');
INSERT INTO `airport_codes` VALUES (null, 'Brisbane, Queensland, Australia ', 'BNE');
INSERT INTO `airport_codes` VALUES (null, 'Bristol, United Kingdom ', 'BRS');
INSERT INTO `airport_codes` VALUES (null, 'Bristol, VA ', 'TRI');
INSERT INTO `airport_codes` VALUES (null, 'Brive-La-Gaillarde, France - Laroche', 'BVE');
INSERT INTO `airport_codes` VALUES (null, 'Brno, Czech Republic - Bus service ', 'ZDN');
INSERT INTO `airport_codes` VALUES (null, 'Brno, Czech Republic - Turany ', 'BRQ');
INSERT INTO `airport_codes` VALUES (null, 'Brochet, MB ', 'YBT');
INSERT INTO `airport_codes` VALUES (null, 'Brockville, ON ', 'XBR');
INSERT INTO `airport_codes` VALUES (null, 'Broken Hill, Australia ', 'BHQ');
INSERT INTO `airport_codes` VALUES (null, 'Bronnoysund, Norway ', 'BNN');
INSERT INTO `airport_codes` VALUES (null, 'Brookings, SD ', 'BKX');
INSERT INTO `airport_codes` VALUES (null, 'Brooks Lodge, AK ', 'RBH');
INSERT INTO `airport_codes` VALUES (null, 'Broome, Australia ', 'BME');
INSERT INTO `airport_codes` VALUES (null, 'Brownsville, TX ', 'BRO');
INSERT INTO `airport_codes` VALUES (null, 'Brunswick, GA ', 'BQK');
INSERT INTO `airport_codes` VALUES (null, 'Brus Laguna, Honduras ', 'BHG');
INSERT INTO `airport_codes` VALUES (null, 'Brussels, Belgium - National ', 'BRU');
INSERT INTO `airport_codes` VALUES (null, 'Brussels, Belgium - Rail service ', 'ZYR');
INSERT INTO `airport_codes` VALUES (null, 'Brussels, Belguim - Charleroi ', 'CRL');
INSERT INTO `airport_codes` VALUES (null, 'Bucaramanga, Colombia ', 'BGA');
INSERT INTO `airport_codes` VALUES (null, 'Bucharest, Romania - Baneasa ', 'BBU');
INSERT INTO `airport_codes` VALUES (null, 'Bucharest, Romania - Otopeni International ', 'OTP');
INSERT INTO `airport_codes` VALUES (null, 'Buckland, AK ', 'BKC');
INSERT INTO `airport_codes` VALUES (null, 'Budapest, Hungary ', 'BUD');
INSERT INTO `airport_codes` VALUES (null, 'Buenos Aires, Argentina - Jorge Newbery ', 'AEP');
INSERT INTO `airport_codes` VALUES (null, 'Buenos Aires, Argentina - Ministro Pistarini ', 'EZE');
INSERT INTO `airport_codes` VALUES (null, 'Buffalo, NY ', 'BUF');
INSERT INTO `airport_codes` VALUES (null, 'Bugulma, Russia ', 'UUA');
INSERT INTO `airport_codes` VALUES (null, 'Bujumbura, Burundi ', 'BJM');
INSERT INTO `airport_codes` VALUES (null, 'Buka, Papua New Guinea ', 'BUA');
INSERT INTO `airport_codes` VALUES (null, 'Bukhara, Uzbekistan ', 'BHK');
INSERT INTO `airport_codes` VALUES (null, 'Bukoba, Malaysia ', 'BKZ');
INSERT INTO `airport_codes` VALUES (null, 'Bulawayo, Zimbabwe ', 'BUQ');
INSERT INTO `airport_codes` VALUES (null, 'Bulgulma, Russia ', 'UUA');
INSERT INTO `airport_codes` VALUES (null, 'Bullhead City/Laughlin, AZ ', 'IFP');
INSERT INTO `airport_codes` VALUES (null, 'Bundaberg, Australia ', 'BDB');
INSERT INTO `airport_codes` VALUES (null, 'Bunsil, Papua New Guinea ', 'BXZ');
INSERT INTO `airport_codes` VALUES (null, 'Burao, Somalia ', 'BUO');
INSERT INTO `airport_codes` VALUES (null, 'Burbank, CA ', 'BUR');
INSERT INTO `airport_codes` VALUES (null, 'Bureta, Fiji ', 'LEV');
INSERT INTO `airport_codes` VALUES (null, 'Buri Ram, Thailand ', 'BFV');
INSERT INTO `airport_codes` VALUES (null, 'Burketown, Australia ', 'BUC');
INSERT INTO `airport_codes` VALUES (null, 'Burlington, IA ', 'BRL');
INSERT INTO `airport_codes` VALUES (null, 'Burlington, VT ', 'BTV');
INSERT INTO `airport_codes` VALUES (null, 'Burnie, Australia ', 'BWT');
INSERT INTO `airport_codes` VALUES (null, 'Burns Lake, BC ', 'YPZ');
INSERT INTO `airport_codes` VALUES (null, 'Busan, South Korea - Gimhae ', 'PUS');
INSERT INTO `airport_codes` VALUES (null, 'Butte, MT ', 'BTM');
INSERT INTO `airport_codes` VALUES (null, 'Butuan, Philippines ', 'BXU');
INSERT INTO `airport_codes` VALUES (null, 'Bydgoszcz, Poland ', 'BZG');
INSERT INTO `airport_codes` VALUES (null, 'Cabo San Lucas, \'Los Cabos\', Mexico ', 'SJD');
INSERT INTO `airport_codes` VALUES (null, 'Caen, France ', 'CFR');
INSERT INTO `airport_codes` VALUES (null, 'Cagayan De Oro, Philippines - Lumbia ', 'CGY');
INSERT INTO `airport_codes` VALUES (null, 'Cagliari, Italy ', 'CAG');
INSERT INTO `airport_codes` VALUES (null, 'Cairns, Australia ', 'CNS');
INSERT INTO `airport_codes` VALUES (null, 'Cairo, Egypt ', 'CAI');
INSERT INTO `airport_codes` VALUES (null, 'Cajamarca, Peru ', 'CJA');
INSERT INTO `airport_codes` VALUES (null, 'Calabar, Nigeria ', 'CBQ');
INSERT INTO `airport_codes` VALUES (null, 'Calama, Chile ', 'CJC');
INSERT INTO `airport_codes` VALUES (null, 'Calcutta, India ', 'CCU');
INSERT INTO `airport_codes` VALUES (null, 'Calgary, AB ', 'YYC');
INSERT INTO `airport_codes` VALUES (null, 'Cali, Colombia ', 'CLO');
INSERT INTO `airport_codes` VALUES (null, 'Calvi, France ', 'CLY');
INSERT INTO `airport_codes` VALUES (null, 'Camaguey, Cuba ', 'CMW');
INSERT INTO `airport_codes` VALUES (null, 'Cambridge Bay, NU ', 'YCB');
INSERT INTO `airport_codes` VALUES (null, 'Cambridge, United Kingdom ', 'CBG');
INSERT INTO `airport_codes` VALUES (null, 'Camodoro, Argentina ', 'CRD');
INSERT INTO `airport_codes` VALUES (null, 'Campbell River, BC ', 'YBL');
INSERT INTO `airport_codes` VALUES (null, 'Campbellton, NB - Rail service ', 'XAZ');
INSERT INTO `airport_codes` VALUES (null, 'Campbeltown, United Kingdom ', 'CAL');
INSERT INTO `airport_codes` VALUES (null, 'Campeche, Mexico ', 'CPE');
INSERT INTO `airport_codes` VALUES (null, 'Campina Grande, Brazil ', 'CPV');
INSERT INTO `airport_codes` VALUES (null, 'Campinas, Brazil ', 'CPQ');
INSERT INTO `airport_codes` VALUES (null, 'Campo Grande, Brazil ', 'CGR');
INSERT INTO `airport_codes` VALUES (null, 'Campos, Brazil ', 'CAW');
INSERT INTO `airport_codes` VALUES (null, 'Canaima, Venezuela ', 'CAS');
INSERT INTO `airport_codes` VALUES (null, 'Canberra, Australia ', 'CBR');
INSERT INTO `airport_codes` VALUES (null, 'Cancun, Mexico ', 'CUN');
INSERT INTO `airport_codes` VALUES (null, 'Cannes, France - Coisette Heliport ', 'JCA');
INSERT INTO `airport_codes` VALUES (null, 'Cannes, France - Mandelieu ', 'CEQ');
INSERT INTO `airport_codes` VALUES (null, 'Cannes, France - Vieux Port ', 'QYW');
INSERT INTO `airport_codes` VALUES (null, 'Canouan, Saint Vincent and the Grenadines ', 'CIW');
INSERT INTO `airport_codes` VALUES (null, 'Canton/Akron, OH ', 'CAK');
INSERT INTO `airport_codes` VALUES (null, 'Cap Haitien, Haiti ', 'CAP');
INSERT INTO `airport_codes` VALUES (null, 'Cape Dorset, NU ', 'YTE');
INSERT INTO `airport_codes` VALUES (null, 'Cape Girardeau, MO ', 'CGI');
INSERT INTO `airport_codes` VALUES (null, 'Cape Lisburne, AK ', 'LUR');
INSERT INTO `airport_codes` VALUES (null, 'Cape Newenham, AK ', 'EHM');
INSERT INTO `airport_codes` VALUES (null, 'Cape Orford, Papua New Guinea ', 'CPI');
INSERT INTO `airport_codes` VALUES (null, 'Cape Town, South Africa ', 'CPT');
INSERT INTO `airport_codes` VALUES (null, 'Cape Vogel, Papua New Guinea ', 'CVL');
INSERT INTO `airport_codes` VALUES (null, 'Capreol, ON - Rail service ', 'XAW');
INSERT INTO `airport_codes` VALUES (null, 'Caracas, Venezuela ', 'CCS');
INSERT INTO `airport_codes` VALUES (null, 'Carajas, Brazil ', 'CKS');
INSERT INTO `airport_codes` VALUES (null, 'Carbondale, IL ', 'MDH');
INSERT INTO `airport_codes` VALUES (null, 'Carcassonne, France ', 'CCF');
INSERT INTO `airport_codes` VALUES (null, 'Cardiff, United Kingdom ', 'CWL');
INSERT INTO `airport_codes` VALUES (null, 'Carlsbad, CA ', 'CLD');
INSERT INTO `airport_codes` VALUES (null, 'Carlsbad, NM ', 'CNM');
INSERT INTO `airport_codes` VALUES (null, 'Carmel, CA ', 'MRY');
INSERT INTO `airport_codes` VALUES (null, 'Carnarvon, Australia ', 'CVQ');
INSERT INTO `airport_codes` VALUES (null, 'Carrillo, Costa Rica ', 'RIK');
INSERT INTO `airport_codes` VALUES (null, 'Cartagena, Colombia ', 'CTG');
INSERT INTO `airport_codes` VALUES (null, 'Cartwright, NL ', 'YRF');
INSERT INTO `airport_codes` VALUES (null, 'Carupani, Venezuela ', 'CUP');
INSERT INTO `airport_codes` VALUES (null, 'Casablanca, Morocco - Anfa ', 'CAS');
INSERT INTO `airport_codes` VALUES (null, 'Casablanca, Morocco - Mohamed V ', 'CMN');
INSERT INTO `airport_codes` VALUES (null, 'Cascavel, Brazil ', 'CAC');
INSERT INTO `airport_codes` VALUES (null, 'Casino, Australia ', 'CSI');
INSERT INTO `airport_codes` VALUES (null, 'Casper, WY ', 'CPR');
INSERT INTO `airport_codes` VALUES (null, 'Casselman, ON - Rail service ', 'XZB');
INSERT INTO `airport_codes` VALUES (null, 'Castaway, Fiji ', 'CST');
INSERT INTO `airport_codes` VALUES (null, 'Castlegar, BC ', 'YCG');
INSERT INTO `airport_codes` VALUES (null, 'Castres, France ', 'DCM');
INSERT INTO `airport_codes` VALUES (null, 'Cat Lake, ON ', 'YAC');
INSERT INTO `airport_codes` VALUES (null, 'Catamarca, Argentina ', 'CTC');
INSERT INTO `airport_codes` VALUES (null, 'Catania, Italy ', 'CTA');
INSERT INTO `airport_codes` VALUES (null, 'Caucasia, Colombia ', 'CAQ');
INSERT INTO `airport_codes` VALUES (null, 'Caxias Do Sul, Brazil ', 'CXJ');
INSERT INTO `airport_codes` VALUES (null, 'Cayenne, French Guiana ', 'CAY');
INSERT INTO `airport_codes` VALUES (null, 'Cayman Brac Is, Cambodia ', 'CYB');
INSERT INTO `airport_codes` VALUES (null, 'Cayo Largo Del Sur, Cuba ', 'CYO');
INSERT INTO `airport_codes` VALUES (null, 'Cebu, Philippines - Matan International ', 'CEB');
INSERT INTO `airport_codes` VALUES (null, 'Cedar City, UT ', 'CDC');
INSERT INTO `airport_codes` VALUES (null, 'Cedar Rapids, IA ', 'CID');
INSERT INTO `airport_codes` VALUES (null, 'Cedun, Australia ', 'CED');
INSERT INTO `airport_codes` VALUES (null, 'Central, AK ', 'CEM');
INSERT INTO `airport_codes` VALUES (null, 'Ceuta, Spain and Canary Islands ', 'JCU');
INSERT INTO `airport_codes` VALUES (null, 'Chadron, NE ', 'CDR');
INSERT INTO `airport_codes` VALUES (null, 'Chah-Bahar, Iran ', 'ZBR');
INSERT INTO `airport_codes` VALUES (null, 'Chalkyitsik, AK ', 'CIK');
INSERT INTO `airport_codes` VALUES (null, 'Chambery, France ', 'CMF');
INSERT INTO `airport_codes` VALUES (null, 'Chambord, QC - Rail service ', 'XCI');
INSERT INTO `airport_codes` VALUES (null, 'Champaign/Urbana, IL ', 'CMI');
INSERT INTO `airport_codes` VALUES (null, 'Chandigarh, India ', 'IXC');
INSERT INTO `airport_codes` VALUES (null, 'Chandler, QC - Rail service ', 'XDL');
INSERT INTO `airport_codes` VALUES (null, 'Changchun, China ', 'CGQ');
INSERT INTO `airport_codes` VALUES (null, 'Changde, China ', 'CGD');
INSERT INTO `airport_codes` VALUES (null, 'Changuinda, Panama ', 'CHX');
INSERT INTO `airport_codes` VALUES (null, 'Changzhou, China ', 'CZX');
INSERT INTO `airport_codes` VALUES (null, 'Chania, Greece ', 'CHQ');
INSERT INTO `airport_codes` VALUES (null, 'Chaoyang, China ', 'CHG');
INSERT INTO `airport_codes` VALUES (null, 'Chapeco, Brazil ', 'XAP');
INSERT INTO `airport_codes` VALUES (null, 'Chapleau, ON ', 'YLD');
INSERT INTO `airport_codes` VALUES (null, 'Charleston, SC ', 'CHS');
INSERT INTO `airport_codes` VALUES (null, 'Charleston, WV ', 'CRW');
INSERT INTO `airport_codes` VALUES (null, 'Charleville, Australia ', 'CTL');
INSERT INTO `airport_codes` VALUES (null, 'Charlotte, NC ', 'CLT');
INSERT INTO `airport_codes` VALUES (null, 'Charlottesville, VA ', 'CHO');
INSERT INTO `airport_codes` VALUES (null, 'Charlottetown, NL ', 'YHG');
INSERT INTO `airport_codes` VALUES (null, 'Charlottetown, PE ', 'YYG');
INSERT INTO `airport_codes` VALUES (null, 'Chatham Island, New Zealand ', 'CHT');
INSERT INTO `airport_codes` VALUES (null, 'Chatham, ON ', 'XCM');
INSERT INTO `airport_codes` VALUES (null, 'Chattanooga, TN ', 'CHA');
INSERT INTO `airport_codes` VALUES (null, 'Cheboksary, Russia ', 'CSY');
INSERT INTO `airport_codes` VALUES (null, 'Chefornak, AK ', 'CYF');
INSERT INTO `airport_codes` VALUES (null, 'Chelybinsk, Russia ', 'CEK');
INSERT INTO `airport_codes` VALUES (null, 'Chemainus, BC - Rail service ', 'XHS');
INSERT INTO `airport_codes` VALUES (null, 'Chennai, India ', 'MAA');
INSERT INTO `airport_codes` VALUES (null, 'Cheongju, South Korea ', 'CJJ');
INSERT INTO `airport_codes` VALUES (null, 'Cherepovets, Russia ', 'CEE');
INSERT INTO `airport_codes` VALUES (null, 'Chergdu, China ', 'CTU');
INSERT INTO `airport_codes` VALUES (null, 'Chester, United Kingdom ', 'CEG');
INSERT INTO `airport_codes` VALUES (null, 'Chesterfield Inlet, NU ', 'YCS');
INSERT INTO `airport_codes` VALUES (null, 'Chetumal, Mexico ', 'CTM');
INSERT INTO `airport_codes` VALUES (null, 'Chevak, AK ', 'VAK');
INSERT INTO `airport_codes` VALUES (null, 'Chevepovets, Russia ', 'CEE');
INSERT INTO `airport_codes` VALUES (null, 'Chevery, QC ', 'YHR');
INSERT INTO `airport_codes` VALUES (null, 'Cheyenne, WY ', 'CYS');
INSERT INTO `airport_codes` VALUES (null, 'Chi Mei, Taiwan ', 'CMJ');
INSERT INTO `airport_codes` VALUES (null, 'Chiang Mai, Thailand ', 'CNX');
INSERT INTO `airport_codes` VALUES (null, 'Chiang Rai, Thailand ', 'CEI');
INSERT INTO `airport_codes` VALUES (null, 'Chiayi, Taiwan ', 'CYI');
INSERT INTO `airport_codes` VALUES (null, 'Chibougamau, QC ', 'YMT');
INSERT INTO `airport_codes` VALUES (null, 'Chicago, IL - All airports ', 'CHI');
INSERT INTO `airport_codes` VALUES (null, 'Chicago, IL - Midway ', 'MDW');
INSERT INTO `airport_codes` VALUES (null, 'Chicago, IL - O\'Hare ', 'ORD');
INSERT INTO `airport_codes` VALUES (null, 'Chicayo, Peru ', 'CIX');
INSERT INTO `airport_codes` VALUES (null, 'Chicken, AK ', 'CKX');
INSERT INTO `airport_codes` VALUES (null, 'Chico, CA ', 'CIC');
INSERT INTO `airport_codes` VALUES (null, 'Chifeng, China ', 'CIF');
INSERT INTO `airport_codes` VALUES (null, 'Chignik, AK - ', 'KCQ');
INSERT INTO `airport_codes` VALUES (null, 'Chignik, AK - Fisheries ', 'KCG');
INSERT INTO `airport_codes` VALUES (null, 'Chignik, AK - Lagoon ', 'KCL');
INSERT INTO `airport_codes` VALUES (null, 'Chihuahua, Mexico ', 'CUU');
INSERT INTO `airport_codes` VALUES (null, 'Chillan, Chile ', 'YAI');
INSERT INTO `airport_codes` VALUES (null, 'Chipata, Zambia ', 'CIP');
INSERT INTO `airport_codes` VALUES (null, 'Chisana, AK ', 'CZN');
INSERT INTO `airport_codes` VALUES (null, 'Chisasibi, QC ', 'YKU');
INSERT INTO `airport_codes` VALUES (null, 'Chisholm/Hibbing, MN ', 'HIB');
INSERT INTO `airport_codes` VALUES (null, 'Chisinau, Republic of Moldova ', 'KIV');
INSERT INTO `airport_codes` VALUES (null, 'Chita, Russia ', 'HTA');
INSERT INTO `airport_codes` VALUES (null, 'Chitral, Pakistan ', 'CJL');
INSERT INTO `airport_codes` VALUES (null, 'Chitre, Panama ', 'CTD');
INSERT INTO `airport_codes` VALUES (null, 'Chittagong, Bangladesh ', 'CGP');
INSERT INTO `airport_codes` VALUES (null, 'Choiseul Bay, Solomon Islands ', 'CHY');
INSERT INTO `airport_codes` VALUES (null, 'Chongqing, China ', 'CKG');
INSERT INTO `airport_codes` VALUES (null, 'Christchurch, New Zealand ', 'CHC');
INSERT INTO `airport_codes` VALUES (null, 'Christmas Island, Christmas Island ', 'XCH');
INSERT INTO `airport_codes` VALUES (null, 'Chuathbaluk, AK ', 'CHU');
INSERT INTO `airport_codes` VALUES (null, 'Churchill Falls, NL ', 'ZUM');
INSERT INTO `airport_codes` VALUES (null, 'Churchill, MB ', 'YYQ');
INSERT INTO `airport_codes` VALUES (null, 'Churchill, MB - Rail service ', 'XAD');
INSERT INTO `airport_codes` VALUES (null, 'Cicia, Fiji ', 'ICI');
INSERT INTO `airport_codes` VALUES (null, 'Ciego De Avila, Cuba ', 'AVI');
INSERT INTO `airport_codes` VALUES (null, 'Cincinnati, OH ', 'CVG');
INSERT INTO `airport_codes` VALUES (null, 'Circle Hot Springs, AK ', 'CHP');
INSERT INTO `airport_codes` VALUES (null, 'Circle, AK ', 'IRC');
INSERT INTO `airport_codes` VALUES (null, 'Ciudad Bolivar, Venezuela ', 'CBL');
INSERT INTO `airport_codes` VALUES (null, 'Ciudad Del Carmen, Mexico ', 'CME');
INSERT INTO `airport_codes` VALUES (null, 'Ciudad del Este, Paraguay ', 'AGT');
INSERT INTO `airport_codes` VALUES (null, 'Ciudad Juarez, Mexico ', 'CJS');
INSERT INTO `airport_codes` VALUES (null, 'Ciudad Obregon, Mexico ', 'CEN');
INSERT INTO `airport_codes` VALUES (null, 'Ciudad Victoria, Mexico ', 'CVM');
INSERT INTO `airport_codes` VALUES (null, 'Clarks Point, AK ', 'CLP');
INSERT INTO `airport_codes` VALUES (null, 'Clarksburg, WV ', 'CKB');
INSERT INTO `airport_codes` VALUES (null, 'Clearwater/St Petersburg, FL ', 'PIE');
INSERT INTO `airport_codes` VALUES (null, 'Clermont-ferrand, France ', 'CFE');
INSERT INTO `airport_codes` VALUES (null, 'Cleve, Australia ', 'CVC');
INSERT INTO `airport_codes` VALUES (null, 'Cleveland, OH ', 'CLE');
INSERT INTO `airport_codes` VALUES (null, 'Cloncurry, Australia ', 'CNJ');
INSERT INTO `airport_codes` VALUES (null, 'Clovis, NM ', 'CVN');
INSERT INTO `airport_codes` VALUES (null, 'Club Makokola, Malawi ', 'CMK');
INSERT INTO `airport_codes` VALUES (null, 'Cluj, Romania ', 'CLJ');
INSERT INTO `airport_codes` VALUES (null, 'Clyde River, NU ', 'YCY');
INSERT INTO `airport_codes` VALUES (null, 'Cobar, Australia ', 'CAZ');
INSERT INTO `airport_codes` VALUES (null, 'Cobija, Bolivia ', 'CIJ');
INSERT INTO `airport_codes` VALUES (null, 'Cobourg, ON - Rail service ', 'XGJ');
INSERT INTO `airport_codes` VALUES (null, 'Cochabamba, Bolivia ', 'CBB');
INSERT INTO `airport_codes` VALUES (null, 'Cochin, India ', 'COK');
INSERT INTO `airport_codes` VALUES (null, 'Coconut Island, Australia ', 'CNC');
INSERT INTO `airport_codes` VALUES (null, 'Cocos Islands, Cocos ', 'Keel');
INSERT INTO `airport_codes` VALUES (null, 'Cody/Yellowstone, WY ', 'COD');
INSERT INTO `airport_codes` VALUES (null, 'Coen, Australia ', 'CUQ');
INSERT INTO `airport_codes` VALUES (null, 'Coffee Point, AK ', 'CFA');
INSERT INTO `airport_codes` VALUES (null, 'Coffman Cove, AK ', 'KCC');
INSERT INTO `airport_codes` VALUES (null, 'Coffs Harbor, Australia ', 'CFS');
INSERT INTO `airport_codes` VALUES (null, 'Coimbatore, India ', 'CJB');
INSERT INTO `airport_codes` VALUES (null, 'Cold Bay, AK ', 'CDB');
INSERT INTO `airport_codes` VALUES (null, 'Colima, Mexico ', 'CLQ');
INSERT INTO `airport_codes` VALUES (null, 'College Station, TX ', 'CLL');
INSERT INTO `airport_codes` VALUES (null, 'Cologne, Germany - Cologne/Bonn ', 'CGN');
INSERT INTO `airport_codes` VALUES (null, 'Cologne, Germany - Rail service ', 'QKL');
INSERT INTO `airport_codes` VALUES (null, 'Colombo, Sri Lanka ', 'CMB');
INSERT INTO `airport_codes` VALUES (null, 'Colon, Panama ', 'ONX');
INSERT INTO `airport_codes` VALUES (null, 'Colorado Springs, CO ', 'COS');
INSERT INTO `airport_codes` VALUES (null, 'Columbia, MO ', 'COU');
INSERT INTO `airport_codes` VALUES (null, 'Columbia, SC ', 'CAE');
INSERT INTO `airport_codes` VALUES (null, 'Columbus, GA ', 'CSG');
INSERT INTO `airport_codes` VALUES (null, 'Columbus, MS ', 'GTR');
INSERT INTO `airport_codes` VALUES (null, 'Columbus, OH ', 'CMH');
INSERT INTO `airport_codes` VALUES (null, 'Colville Lake, NT ', 'YCK');
INSERT INTO `airport_codes` VALUES (null, 'Comox, BC ', 'YQQ');
INSERT INTO `airport_codes` VALUES (null, 'Conakry, Guinea ', 'CKY');
INSERT INTO `airport_codes` VALUES (null, 'Concepcion, Chile ', 'CCP');
INSERT INTO `airport_codes` VALUES (null, 'Concord, CA ', 'CCR');
INSERT INTO `airport_codes` VALUES (null, 'Concordia, Argentina ', 'COC');
INSERT INTO `airport_codes` VALUES (null, 'Concordia, KS ', 'CNK');
INSERT INTO `airport_codes` VALUES (null, 'Condoto, Colombia ', 'COG');
INSERT INTO `airport_codes` VALUES (null, 'Constanta, Romania ', 'CND');
INSERT INTO `airport_codes` VALUES (null, 'Constantine, Algeria ', 'CZL');
INSERT INTO `airport_codes` VALUES (null, 'Contadora, Panama ', 'OTD');
INSERT INTO `airport_codes` VALUES (null, 'Coober Pedy, Australia ', 'CPD');
INSERT INTO `airport_codes` VALUES (null, 'Cooktown, Australia ', 'CTN');
INSERT INTO `airport_codes` VALUES (null, 'Cooma, NS, Australia ', 'OOM');
INSERT INTO `airport_codes` VALUES (null, 'Coonamble, Australia ', 'CNB');
INSERT INTO `airport_codes` VALUES (null, 'Copenhagen, Denmark ', 'CPH');
INSERT INTO `airport_codes` VALUES (null, 'Copiapo, Chile ', 'CPO');
INSERT INTO `airport_codes` VALUES (null, 'Copper Mountain, CO - Van service ', 'QCE');
INSERT INTO `airport_codes` VALUES (null, 'Coral Harbour, NU ', 'YZS');
INSERT INTO `airport_codes` VALUES (null, 'Cordoba, Argentina ', 'COR');
INSERT INTO `airport_codes` VALUES (null, 'Cordova, AK ', 'CDV');
INSERT INTO `airport_codes` VALUES (null, 'Cork, Ireland ', 'ORK');
INSERT INTO `airport_codes` VALUES (null, 'Cornwall, ON ', 'YCC');
INSERT INTO `airport_codes` VALUES (null, 'Coro, Venezuela ', 'CZE');
INSERT INTO `airport_codes` VALUES (null, 'Corozal, Belize ', 'CZH');
INSERT INTO `airport_codes` VALUES (null, 'Corpus Christi, TX ', 'CRP');
INSERT INTO `airport_codes` VALUES (null, 'Corrientes, Argentina ', 'CNQ');
INSERT INTO `airport_codes` VALUES (null, 'Cortez, CO ', 'CEZ');
INSERT INTO `airport_codes` VALUES (null, 'Corumba, Brazil ', 'CMG');
INSERT INTO `airport_codes` VALUES (null, 'Corvo Island, Portugal ', 'CVU');
INSERT INTO `airport_codes` VALUES (null, 'Cotabato, Philippines ', 'CBO');
INSERT INTO `airport_codes` VALUES (null, 'Cotarou, Benin ', 'COC');
INSERT INTO `airport_codes` VALUES (null, 'Coteau, QC - Rail service ', 'XGK');
INSERT INTO `airport_codes` VALUES (null, 'Courtenay, BC ', 'YCA');
INSERT INTO `airport_codes` VALUES (null, 'Cox\'s Bazar, Bangladesh ', 'CXB');
INSERT INTO `airport_codes` VALUES (null, 'Cozumel, Mexico ', 'CZM');
INSERT INTO `airport_codes` VALUES (null, 'Craig Cove, Vanuatu ', 'CCV');
INSERT INTO `airport_codes` VALUES (null, 'Craig, AK ', 'CGA');
INSERT INTO `airport_codes` VALUES (null, 'Cranbrook, BC ', 'YXC');
INSERT INTO `airport_codes` VALUES (null, 'Crescent City, CA ', 'CEC');
INSERT INTO `airport_codes` VALUES (null, 'Criciuma, Brazil ', 'CCM');
INSERT INTO `airport_codes` VALUES (null, 'Croker Island, Australia ', 'CKI');
INSERT INTO `airport_codes` VALUES (null, 'Crooked Creek, AK ', 'CKO');
INSERT INTO `airport_codes` VALUES (null, 'Crooked Island, Bahamas ', 'CRI');
INSERT INTO `airport_codes` VALUES (null, 'Cross Lake, MB ', 'YCR');
INSERT INTO `airport_codes` VALUES (null, 'Crotone, Italy ', 'CRV');
INSERT INTO `airport_codes` VALUES (null, 'Cruzeiro Do Sul, Brazil ', 'CZS');
INSERT INTO `airport_codes` VALUES (null, 'Cube Cove, AK ', 'CUW');
INSERT INTO `airport_codes` VALUES (null, 'Cucata, Colombia ', 'CUC');
INSERT INTO `airport_codes` VALUES (null, 'Cuenca, Ecuador ', 'CUE');
INSERT INTO `airport_codes` VALUES (null, 'Cuernavaca, Mexico ', 'CVJ');
INSERT INTO `airport_codes` VALUES (null, 'Cuiaba, Brazil ', 'CGB');
INSERT INTO `airport_codes` VALUES (null, 'Culiacan, Mexico ', 'CUL');
INSERT INTO `airport_codes` VALUES (null, 'Cumana, Venezuela ', 'CUM');
INSERT INTO `airport_codes` VALUES (null, 'Cumberland, MD ', 'CBE');
INSERT INTO `airport_codes` VALUES (null, 'Cunnamulla, Australia ', 'CMA');
INSERT INTO `airport_codes` VALUES (null, 'Curacao, Netherlands Antilles ', 'CUR');
INSERT INTO `airport_codes` VALUES (null, 'Curitiba, Brazil ', 'CWB');
INSERT INTO `airport_codes` VALUES (null, 'Cuzco, Peru ', 'CUZ');
INSERT INTO `airport_codes` VALUES (null, 'Da Nang, Viet Nam ', 'DAD');
INSERT INTO `airport_codes` VALUES (null, 'Dabra, Indonesia ', 'DRH');
INSERT INTO `airport_codes` VALUES (null, 'Daegu, South Korea ', 'TAE');
INSERT INTO `airport_codes` VALUES (null, 'Dakar, Senegal ', 'DKR');
INSERT INTO `airport_codes` VALUES (null, 'Dakhla, Morocco ', 'VIL');
INSERT INTO `airport_codes` VALUES (null, 'Dalaman, Turkey ', 'DLM');
INSERT INTO `airport_codes` VALUES (null, 'Dalat, Viet Nam - Lienkhang DLI)', '');
INSERT INTO `airport_codes` VALUES (null, 'Dali City, China ', 'DLU');
INSERT INTO `airport_codes` VALUES (null, 'Dalian, China ', 'DLC');
INSERT INTO `airport_codes` VALUES (null, 'Dallas, TX - Dallas/Ft Worth Intl. ', 'DFW');
INSERT INTO `airport_codes` VALUES (null, 'Dallas, TX - Love Field ', 'DAL');
INSERT INTO `airport_codes` VALUES (null, 'Damascus, Syrian Arab Republic ', 'DAM');
INSERT INTO `airport_codes` VALUES (null, 'Dammam, Saudi Arabia ', 'DMM');
INSERT INTO `airport_codes` VALUES (null, 'Dangriga, Belize ', 'DGA');
INSERT INTO `airport_codes` VALUES (null, 'Dar Es Salaam, Tanzania ', 'DAR');
INSERT INTO `airport_codes` VALUES (null, 'Darnley Island, QL, Australia ', 'NLF');
INSERT INTO `airport_codes` VALUES (null, 'Daru, Papua New Guinea ', 'DAU');
INSERT INTO `airport_codes` VALUES (null, 'Darwin, Northern Territory, Australia ', 'DRW');
INSERT INTO `airport_codes` VALUES (null, 'Datadawai, Indonesia ', 'DTD');
INSERT INTO `airport_codes` VALUES (null, 'Dauphin, MB ', 'YDN');
INSERT INTO `airport_codes` VALUES (null, 'Davao, Philipines - Mati ', 'DVO');
INSERT INTO `airport_codes` VALUES (null, 'David, Panama ', 'DAV');
INSERT INTO `airport_codes` VALUES (null, 'Davis Inlet, NL ', 'YDI');
INSERT INTO `airport_codes` VALUES (null, 'Dawe, Myanmar ', 'TVY');
INSERT INTO `airport_codes` VALUES (null, 'Dawson City, YT ', 'YDA');
INSERT INTO `airport_codes` VALUES (null, 'Dawson Creek, BC ', 'YDQ');
INSERT INTO `airport_codes` VALUES (null, 'Daxian, China ', 'DAX');
INSERT INTO `airport_codes` VALUES (null, 'Dayang, China ', 'DYG');
INSERT INTO `airport_codes` VALUES (null, 'Daydream Is, Australia ', 'DDI');
INSERT INTO `airport_codes` VALUES (null, 'Dayton, OH ', 'DAY');
INSERT INTO `airport_codes` VALUES (null, 'Daytona Beach, FL ', 'DAB');
INSERT INTO `airport_codes` VALUES (null, 'Deauville, France ', 'DOL');
INSERT INTO `airport_codes` VALUES (null, 'Debra Marcos, Ethiopia ', 'DBM');
INSERT INTO `airport_codes` VALUES (null, 'Debra Tabor, Ethiopia ', 'DBT');
INSERT INTO `airport_codes` VALUES (null, 'Decatur, IL ', 'DEC');
INSERT INTO `airport_codes` VALUES (null, 'Deer Lake, NL ', 'YDF');
INSERT INTO `airport_codes` VALUES (null, 'Deer Lake, ON ', 'YVZ');
INSERT INTO `airport_codes` VALUES (null, 'Deering, AK ', 'DRG');
INSERT INTO `airport_codes` VALUES (null, 'Deirezzor, Syria - Al Jafrah ', 'DEZ');
INSERT INTO `airport_codes` VALUES (null, 'Del Reo, TX ', 'DRT');
INSERT INTO `airport_codes` VALUES (null, 'Delhi, India ', 'DEL');
INSERT INTO `airport_codes` VALUES (null, 'Deline, NT ', 'YWJ');
INSERT INTO `airport_codes` VALUES (null, 'Delta Junction, AK ', 'DJN');
INSERT INTO `airport_codes` VALUES (null, 'Dembidollo, Ethiopia ', 'DEM');
INSERT INTO `airport_codes` VALUES (null, 'Denham, Australia ', 'DNM');
INSERT INTO `airport_codes` VALUES (null, 'Denizli, Turkey ', 'DNZ');
INSERT INTO `airport_codes` VALUES (null, 'Denpasar Bali, Indonesia ', 'DPS');
INSERT INTO `airport_codes` VALUES (null, 'Denver, CO - International ', 'DEN');
INSERT INTO `airport_codes` VALUES (null, 'Denver, CO - Longmont Bus service ', 'QWM');
INSERT INTO `airport_codes` VALUES (null, 'Dera Ghazi, Pakistan ', 'DEA');
INSERT INTO `airport_codes` VALUES (null, 'Dera Ismail Khan, Pakistan ', 'DSK');
INSERT INTO `airport_codes` VALUES (null, 'Derby, Australia ', 'DRB');
INSERT INTO `airport_codes` VALUES (null, 'Derim, Papua New Guinea ', 'DER');
INSERT INTO `airport_codes` VALUES (null, 'Des Moines, IA ', 'DSM');
INSERT INTO `airport_codes` VALUES (null, 'Dessie, Ethiopia ', 'DSE');
INSERT INTO `airport_codes` VALUES (null, 'Detroit, MI - All airports ', 'DTT');
INSERT INTO `airport_codes` VALUES (null, 'Detroit, MI - Metro/Wayne County ', 'DTW');
INSERT INTO `airport_codes` VALUES (null, 'Devil\'s Lake, ND ', 'DVL');
INSERT INTO `airport_codes` VALUES (null, 'Devonport, Australia ', 'DPO');
INSERT INTO `airport_codes` VALUES (null, 'Dhaka, Bangledesh - Zia International ', 'DAC');
INSERT INTO `airport_codes` VALUES (null, 'Dibrugarn, India ', 'DIB');
INSERT INTO `airport_codes` VALUES (null, 'Dickinson, ND ', 'DIK');
INSERT INTO `airport_codes` VALUES (null, 'Dien Bien Phu, Viet Nam - Gialam ', 'DIN');
INSERT INTO `airport_codes` VALUES (null, 'Dijon, France ', 'DIJ');
INSERT INTO `airport_codes` VALUES (null, 'Dili, Indonesia ', 'DIL');
INSERT INTO `airport_codes` VALUES (null, 'Dillingham, AK ', 'DLG');
INSERT INTO `airport_codes` VALUES (null, 'Dillons Bay, Vanuata ', 'DLY');
INSERT INTO `airport_codes` VALUES (null, 'Dimapur, India ', 'DMU');
INSERT INTO `airport_codes` VALUES (null, 'Dinard, France ', 'DNR');
INSERT INTO `airport_codes` VALUES (null, 'Dipolog, Philippines ', 'DPL');
INSERT INTO `airport_codes` VALUES (null, 'Dire Dawa, Ethiopia ', 'DIR');
INSERT INTO `airport_codes` VALUES (null, 'Div, India ', 'DIU');
INSERT INTO `airport_codes` VALUES (null, 'Diyarbakir, Turkey ', 'DIY');
INSERT INTO `airport_codes` VALUES (null, 'Djanet, Algeria ', 'DJG');
INSERT INTO `airport_codes` VALUES (null, 'Djerba, Tunisia ', 'DJE');
INSERT INTO `airport_codes` VALUES (null, 'Djibouti, Djibouti ', 'JIB');
INSERT INTO `airport_codes` VALUES (null, 'Dnepropetrovsk, Ukraine ', 'DNK');
INSERT INTO `airport_codes` VALUES (null, 'Dobo, Indonesia ', 'DOB');
INSERT INTO `airport_codes` VALUES (null, 'Dodge City, KS ', 'DDC');
INSERT INTO `airport_codes` VALUES (null, 'Dodoima, Papua New Guinea ', 'DDM');
INSERT INTO `airport_codes` VALUES (null, 'Dodoma, Tanzania ', 'DOD');
INSERT INTO `airport_codes` VALUES (null, 'Doha, Qatar ', 'DOH');
INSERT INTO `airport_codes` VALUES (null, 'Dominica, Dominica - Cane Field ', 'DCF');
INSERT INTO `airport_codes` VALUES (null, 'Dominica, Dominica - Melville Hall ', 'DOM');
INSERT INTO `airport_codes` VALUES (null, 'Donegal, Ireland ', 'CFN');
INSERT INTO `airport_codes` VALUES (null, 'Donetsk, Ukraine ', 'DOK');
INSERT INTO `airport_codes` VALUES (null, 'Dongola, Sudan ', 'DOG');
INSERT INTO `airport_codes` VALUES (null, 'Doomadgee, Australia ', 'DMD');
INSERT INTO `airport_codes` VALUES (null, 'Dortmund, Germany ', 'DTM');
INSERT INTO `airport_codes` VALUES (null, 'Dothan, AL ', 'DHN');
INSERT INTO `airport_codes` VALUES (null, 'Dourados, Brazil ', 'DOU');
INSERT INTO `airport_codes` VALUES (null, 'Dovala, Cameroon ', 'DLA');
INSERT INTO `airport_codes` VALUES (null, 'Dresden, Germany ', 'DRS');
INSERT INTO `airport_codes` VALUES (null, 'Drummondville, QC - Rail service ', 'XDM');
INSERT INTO `airport_codes` VALUES (null, 'Dryden, ON ', 'YHD');
INSERT INTO `airport_codes` VALUES (null, 'Dubai, United Arab Emirates - Bus Station ', 'XNB');
INSERT INTO `airport_codes` VALUES (null, 'Dubai, United Arab Emirates - International ', 'DXB');
INSERT INTO `airport_codes` VALUES (null, 'Dubbo, Australia ', 'DBO');
INSERT INTO `airport_codes` VALUES (null, 'Dublin, Ireland ', 'DUB');
INSERT INTO `airport_codes` VALUES (null, 'Dubois, PA ', 'DUJ');
INSERT INTO `airport_codes` VALUES (null, 'Dubrovnik, Croatia ', 'DBV');
INSERT INTO `airport_codes` VALUES (null, 'Dubuque, IA ', 'DBQ');
INSERT INTO `airport_codes` VALUES (null, 'Duluth, MN ', 'DLH');
INSERT INTO `airport_codes` VALUES (null, 'Dumaguete, Philippines ', 'DGT');
INSERT INTO `airport_codes` VALUES (null, 'Dumai, Indonesia ', 'DUM');
INSERT INTO `airport_codes` VALUES (null, 'Duncan/Quam, BC ', 'DUQ');
INSERT INTO `airport_codes` VALUES (null, 'Dundee, United Kingdom ', 'DND');
INSERT INTO `airport_codes` VALUES (null, 'Dunedin, New Zealand ', 'DUD');
INSERT INTO `airport_codes` VALUES (null, 'Dunhuang, China ', 'DNH');
INSERT INTO `airport_codes` VALUES (null, 'Dunk Island, Australia ', 'DKI');
INSERT INTO `airport_codes` VALUES (null, 'Durango, CO ', 'DRO');
INSERT INTO `airport_codes` VALUES (null, 'Durango, Mexico ', 'DGO');
INSERT INTO `airport_codes` VALUES (null, 'Durban, South Africa ', 'DUR');
INSERT INTO `airport_codes` VALUES (null, 'Durham, NC ', 'RDU');
INSERT INTO `airport_codes` VALUES (null, 'Durham/Raleigh, NC ', 'RDU');
INSERT INTO `airport_codes` VALUES (null, 'Dushanbe, Tajikistan ', 'DYU');
INSERT INTO `airport_codes` VALUES (null, 'Dusseldorf, Germany - International ', 'DUS');
INSERT INTO `airport_codes` VALUES (null, 'Dusseldorf, Germany - Moenchen-Gl. ', 'MGL');
INSERT INTO `airport_codes` VALUES (null, 'Dusseldorf, Germany - Rail service ', 'QDU');
INSERT INTO `airport_codes` VALUES (null, 'Dutch Harbor, AK ', 'DUT');
INSERT INTO `airport_codes` VALUES (null, 'Dzaoudzi, Mayotte ', 'DZA');
INSERT INTO `airport_codes` VALUES (null, 'East London, South Africa ', 'ELS');
INSERT INTO `airport_codes` VALUES (null, 'East Main, QC ', 'ZEM');
INSERT INTO `airport_codes` VALUES (null, 'Easton, PA ', 'ABE');
INSERT INTO `airport_codes` VALUES (null, 'Eau Claire, WI ', 'EAU');
INSERT INTO `airport_codes` VALUES (null, 'Ebon, Marshall Islands ', 'EBO');
INSERT INTO `airport_codes` VALUES (null, 'Eday, United Kingdom ', 'EOI');
INSERT INTO `airport_codes` VALUES (null, 'Edinburgh, United Kingdom ', 'EDI');
INSERT INTO `airport_codes` VALUES (null, 'Edmonton, AB - International ', 'YEG');
INSERT INTO `airport_codes` VALUES (null, 'Edmonton, AB - Rail service ', 'XZL');
INSERT INTO `airport_codes` VALUES (null, 'Edna Bay, AK ', 'EDA');
INSERT INTO `airport_codes` VALUES (null, 'Edremit, Turkey ', 'EDO');
INSERT INTO `airport_codes` VALUES (null, 'Edward River, Australia ', 'EDR');
INSERT INTO `airport_codes` VALUES (null, 'Eek, AK ', 'EEK');
INSERT INTO `airport_codes` VALUES (null, 'Egilsstadir, Iceland ', 'EGS');
INSERT INTO `airport_codes` VALUES (null, 'Eindhoven, Netherlands ', 'EIN');
INSERT INTO `airport_codes` VALUES (null, 'Eisenach, Germany ', 'EIB');
INSERT INTO `airport_codes` VALUES (null, 'Ekaterinburg, Russia ', 'SVX');
INSERT INTO `airport_codes` VALUES (null, 'Ekuk, AK ', 'KKU');
INSERT INTO `airport_codes` VALUES (null, 'Ekwok, AK ', 'KEK');
INSERT INTO `airport_codes` VALUES (null, 'El Bolsan, Argentina ', 'EHL');
INSERT INTO `airport_codes` VALUES (null, 'El Centro, CA ', 'IPL');
INSERT INTO `airport_codes` VALUES (null, 'El Dorado, AR ', 'ELD');
INSERT INTO `airport_codes` VALUES (null, 'El Fasher, Sudan ', 'ELF');
INSERT INTO `airport_codes` VALUES (null, 'El Maiten, Argentina ', 'EMX');
INSERT INTO `airport_codes` VALUES (null, 'El Obeid, Sudan ', 'EBD');
INSERT INTO `airport_codes` VALUES (null, 'El Oved, Algeria ', 'ELU');
INSERT INTO `airport_codes` VALUES (null, 'El Paso, TX ', 'ELP');
INSERT INTO `airport_codes` VALUES (null, 'El Portillo/Samana, Dominician Republic - El Portillo', 'EPS');
INSERT INTO `airport_codes` VALUES (null, 'El Real, Panama ', 'ELE');
INSERT INTO `airport_codes` VALUES (null, 'El Salvador, Chile ', 'ESR');
INSERT INTO `airport_codes` VALUES (null, 'El Vigia, Venezuela ', 'VIG');
INSERT INTO `airport_codes` VALUES (null, 'El Yopal, Colombia ', 'EYP');
INSERT INTO `airport_codes` VALUES (null, 'Elat, Italy ', 'ETH');
INSERT INTO `airport_codes` VALUES (null, 'Elazig, Turkey ', 'EZS');
INSERT INTO `airport_codes` VALUES (null, 'Elba Island, Italy ', 'EBA');
INSERT INTO `airport_codes` VALUES (null, 'Elcho Island, Australia ', 'ELC');
INSERT INTO `airport_codes` VALUES (null, 'Eldoret, Kenya ', 'EDL');
INSERT INTO `airport_codes` VALUES (null, 'Eleuthera Island, Bahamas ', 'ELH');
INSERT INTO `airport_codes` VALUES (null, 'Elfin Cove, AK ', 'ELV');
INSERT INTO `airport_codes` VALUES (null, 'Elim, AK ', 'ELI');
INSERT INTO `airport_codes` VALUES (null, 'Elista, Russia ', 'ESL');
INSERT INTO `airport_codes` VALUES (null, 'Elko, NV ', 'EKO');
INSERT INTO `airport_codes` VALUES (null, 'Elmira, NY ', 'ELM');
INSERT INTO `airport_codes` VALUES (null, 'Ely, MN ', 'LYU');
INSERT INTO `airport_codes` VALUES (null, 'Emae, Vanuata ', 'EAE');
INSERT INTO `airport_codes` VALUES (null, 'Embessa, Papua New Guinea ', 'EMS');
INSERT INTO `airport_codes` VALUES (null, 'Emerald, Australia ', 'EMD');
INSERT INTO `airport_codes` VALUES (null, 'Emmonak, AK ', 'EMK');
INSERT INTO `airport_codes` VALUES (null, 'Emo, Papua New Guinea ', 'EMO');
INSERT INTO `airport_codes` VALUES (null, 'Enarotali, Indonesia ', 'EWI');
INSERT INTO `airport_codes` VALUES (null, 'Ende, Indonesia ', 'ENE');
INSERT INTO `airport_codes` VALUES (null, 'Endicott, NY ', 'BGM');
INSERT INTO `airport_codes` VALUES (null, 'Enewetak Island, Marshall Islands ', 'ENT');
INSERT INTO `airport_codes` VALUES (null, 'Enid, OK ', 'WDG');
INSERT INTO `airport_codes` VALUES (null, 'Enontekio, Finland ', 'ENF');
INSERT INTO `airport_codes` VALUES (null, 'Enshi, China ', 'ENH');
INSERT INTO `airport_codes` VALUES (null, 'Entebbe, Uganda ', 'EBB');
INSERT INTO `airport_codes` VALUES (null, 'Enugu, Nigeria ', 'ENU');
INSERT INTO `airport_codes` VALUES (null, 'Epinal, France ', 'EPL');
INSERT INTO `airport_codes` VALUES (null, 'Ercan, Cyprus ', 'ECN');
INSERT INTO `airport_codes` VALUES (null, 'Erfurt, Germany ', 'ERF');
INSERT INTO `airport_codes` VALUES (null, 'Erie, PA ', 'ERI');
INSERT INTO `airport_codes` VALUES (null, 'Erzincan, Turkey ', 'ERC');
INSERT INTO `airport_codes` VALUES (null, 'Erzurum, Turkey ', 'ERZ');
INSERT INTO `airport_codes` VALUES (null, 'Esbjerg, Denmark - Esbjerg Airport ', 'EBJ');
INSERT INTO `airport_codes` VALUES (null, 'Esbjerg, Denmark - Rail service ', 'ZBB');
INSERT INTO `airport_codes` VALUES (null, 'Escanaba, MI ', 'ESC');
INSERT INTO `airport_codes` VALUES (null, 'Esmeraldas, Ecuador ', 'ESM');
INSERT INTO `airport_codes` VALUES (null, 'Esperance, Australia ', 'EPR');
INSERT INTO `airport_codes` VALUES (null, 'Espiritu Santo, Vanuatu ', 'SON');
INSERT INTO `airport_codes` VALUES (null, 'Esquel, Argentina ', 'EQS');
INSERT INTO `airport_codes` VALUES (null, 'Esquimalt, BC ', 'YPF');
INSERT INTO `airport_codes` VALUES (null, 'Eugene, OR ', 'EUG');
INSERT INTO `airport_codes` VALUES (null, 'Eureka, NV ', 'EUE');
INSERT INTO `airport_codes` VALUES (null, 'Eureka/Arcata, CA ', 'ACV');
INSERT INTO `airport_codes` VALUES (null, 'Evansville, IN ', 'EVV');
INSERT INTO `airport_codes` VALUES (null, 'Eveter, United Kingdom ', 'EXT');
INSERT INTO `airport_codes` VALUES (null, 'Ewer, Indonesia ', 'EWE');
INSERT INTO `airport_codes` VALUES (null, 'Exmouth Gulf, Australia ', 'EXM');
INSERT INTO `airport_codes` VALUES (null, 'Fagernes, Norway ', 'VDB');
INSERT INTO `airport_codes` VALUES (null, 'Fair Isle, United Kingdom ', 'FIE');
INSERT INTO `airport_codes` VALUES (null, 'Fairbanks, AK ', 'FAI');
INSERT INTO `airport_codes` VALUES (null, 'Faisalabad, Pakistan ', 'LYP');
INSERT INTO `airport_codes` VALUES (null, 'Fajard, Puerto Rico ', 'FAJ');
INSERT INTO `airport_codes` VALUES (null, 'Fak Fak, Indonesia ', 'FKQ');
INSERT INTO `airport_codes` VALUES (null, 'Fakarava, French Polynesia ', 'FAV');
INSERT INTO `airport_codes` VALUES (null, 'Farafangana, Madagascar ', 'RVA');
INSERT INTO `airport_codes` VALUES (null, 'Fargo, ND ', 'FAR');
INSERT INTO `airport_codes` VALUES (null, 'Farmington, NM ', 'FMN');
INSERT INTO `airport_codes` VALUES (null, 'Faro, Portugal ', 'FAO');
INSERT INTO `airport_codes` VALUES (null, 'Faroe Islands, Faroe Islands ', 'FAE');
INSERT INTO `airport_codes` VALUES (null, 'Fayetteville, AR - Municipal/Drake ', 'FYV');
INSERT INTO `airport_codes` VALUES (null, 'Fayetteville, AR - Northwest Arkansas Regional ', 'XNA');
INSERT INTO `airport_codes` VALUES (null, 'Fayetteville, NC ', 'FAY');
INSERT INTO `airport_codes` VALUES (null, 'Fera Island, Solomon Islands ', 'FRE');
INSERT INTO `airport_codes` VALUES (null, 'Fergana, Uzbekistan ', 'FEG');
INSERT INTO `airport_codes` VALUES (null, 'Fernando De Noronha, Brazil ', 'FEN');
INSERT INTO `airport_codes` VALUES (null, 'Fez, Morocco ', 'FEZ');
INSERT INTO `airport_codes` VALUES (null, 'Fianarantsoa, Madagascar ', 'WFI');
INSERT INTO `airport_codes` VALUES (null, 'Figari, France ', 'FSC');
INSERT INTO `airport_codes` VALUES (null, 'Filton, United Kingdom ', 'FZO');
INSERT INTO `airport_codes` VALUES (null, 'Finkenwerder, Germany ', 'XFW');
INSERT INTO `airport_codes` VALUES (null, 'Fitzroy Crossing, Australia ', 'FIZ');
INSERT INTO `airport_codes` VALUES (null, 'Flagstaff, AZ ', 'FLG');
INSERT INTO `airport_codes` VALUES (null, 'Flensburg, Germany ', 'FLF');
INSERT INTO `airport_codes` VALUES (null, 'Flin Flon, MB ', 'YFO');
INSERT INTO `airport_codes` VALUES (null, 'Flint, MI ', 'FNT');
INSERT INTO `airport_codes` VALUES (null, 'Florence, Italy - Gal Galilei ', 'PSA');
INSERT INTO `airport_codes` VALUES (null, 'Florence, Italy - Peretola ', 'FLR');
INSERT INTO `airport_codes` VALUES (null, 'Florence, SC ', 'FLO');
INSERT INTO `airport_codes` VALUES (null, 'Florence/Muscle Shoals/Sheffield, AL ', 'MSL');
INSERT INTO `airport_codes` VALUES (null, 'Florencia, Colombia ', 'FLA');
INSERT INTO `airport_codes` VALUES (null, 'Flores Island, Portugal ', 'FLW');
INSERT INTO `airport_codes` VALUES (null, 'Flores, Guatemala ', 'FRS');
INSERT INTO `airport_codes` VALUES (null, 'Florianopolis, Brazil ', 'FLN');
INSERT INTO `airport_codes` VALUES (null, 'Floro, Norway ', 'FRO');
INSERT INTO `airport_codes` VALUES (null, 'Foggia, Italy ', 'FOG');
INSERT INTO `airport_codes` VALUES (null, 'Fond du Lac, SK ', 'ZFD');
INSERT INTO `airport_codes` VALUES (null, 'Forde, Norway ', 'FDE');
INSERT INTO `airport_codes` VALUES (null, 'Formosa, Argentina ', 'FMA');
INSERT INTO `airport_codes` VALUES (null, 'Fort Albany, ON ', 'YFA');
INSERT INTO `airport_codes` VALUES (null, 'Fort Chipewyan, AB ', 'YPY');
INSERT INTO `airport_codes` VALUES (null, 'Fort Collins/Loveland, CO - Bus service ', 'QWF');
INSERT INTO `airport_codes` VALUES (null, 'Fort Collins/Loveland, CO - Municipal Airport ', 'FNL');
INSERT INTO `airport_codes` VALUES (null, 'Fort Dauphin, Madagascar ', 'FTU');
INSERT INTO `airport_codes` VALUES (null, 'Fort De France, Martinique ', 'FDF');
INSERT INTO `airport_codes` VALUES (null, 'Fort Dodge, IA ', 'FOD');
INSERT INTO `airport_codes` VALUES (null, 'Fort Frances, ON ', 'YAG');
INSERT INTO `airport_codes` VALUES (null, 'Fort Good Hope, NT ', 'YGH');
INSERT INTO `airport_codes` VALUES (null, 'Fort Hope, ON ', 'YFH');
INSERT INTO `airport_codes` VALUES (null, 'Fort Lauderdale, FL ', 'FLL');
INSERT INTO `airport_codes` VALUES (null, 'Fort Leonard Wood, MO ', 'TBN');
INSERT INTO `airport_codes` VALUES (null, 'Fort Mcmurray, AB ', 'YMM');
INSERT INTO `airport_codes` VALUES (null, 'Fort Myers, FL ', 'RSW');
INSERT INTO `airport_codes` VALUES (null, 'Fort Nelson, BC ', 'YYE');
INSERT INTO `airport_codes` VALUES (null, 'Fort Severn, ON ', 'YER');
INSERT INTO `airport_codes` VALUES (null, 'Fort Simpson, NT ', 'YFS');
INSERT INTO `airport_codes` VALUES (null, 'Fort Smith, AR ', 'FSM');
INSERT INTO `airport_codes` VALUES (null, 'Fort Smith, NT ', 'YSM');
INSERT INTO `airport_codes` VALUES (null, 'Fort St John, BC ', 'YXJ');
INSERT INTO `airport_codes` VALUES (null, 'Fort Walton Beach, FL ', 'VPS');
INSERT INTO `airport_codes` VALUES (null, 'Fort Wayne, IN ', 'FWA');
INSERT INTO `airport_codes` VALUES (null, 'Fort Worth/Dallas, TX ', 'DFW');
INSERT INTO `airport_codes` VALUES (null, 'Fortaleza, Brazil ', 'FOR');
INSERT INTO `airport_codes` VALUES (null, 'Fox Harbour/St Lewis, NL ', 'YFX');
INSERT INTO `airport_codes` VALUES (null, 'Franca, Brazil ', 'FRC');
INSERT INTO `airport_codes` VALUES (null, 'Franceville, Gabon ', 'MVB');
INSERT INTO `airport_codes` VALUES (null, 'Francistown, Botswana ', 'FRW');
INSERT INTO `airport_codes` VALUES (null, 'Frankfurt, Germany - Hahn ', 'HHN');
INSERT INTO `airport_codes` VALUES (null, 'Frankfurt, Germany - International ', 'FRA');
INSERT INTO `airport_codes` VALUES (null, 'Franklin, PA ', 'FKL');
INSERT INTO `airport_codes` VALUES (null, 'Fredericia, Denmark ', 'ZBJ');
INSERT INTO `airport_codes` VALUES (null, 'Fredericton Junction, NB - Rail service ', 'XFC');
INSERT INTO `airport_codes` VALUES (null, 'Fredericton, NB ', 'YFC');
INSERT INTO `airport_codes` VALUES (null, 'Freeport, Bahamas ', 'FPO');
INSERT INTO `airport_codes` VALUES (null, 'Freetown, Sierra Leone - Lungi Intl ', 'FNA');
INSERT INTO `airport_codes` VALUES (null, 'Fresno, CA ', 'FAT');
INSERT INTO `airport_codes` VALUES (null, 'Friedrichshafer, Germany ', 'FDH');
INSERT INTO `airport_codes` VALUES (null, 'Fuerteventura, Spain ', 'FUE');
INSERT INTO `airport_codes` VALUES (null, 'Fukue, Japan ', 'FUJ');
INSERT INTO `airport_codes` VALUES (null, 'Fukuoka, Japan ', 'FUK');
INSERT INTO `airport_codes` VALUES (null, 'Fukushima, Japan ', 'FKS');
INSERT INTO `airport_codes` VALUES (null, 'Funafuti Atol, Tuvalu ', 'FUN');
INSERT INTO `airport_codes` VALUES (null, 'Funchal, Portugal ', 'FNC');
INSERT INTO `airport_codes` VALUES (null, 'Futuna Island, Vanuatu ', 'FTA');
INSERT INTO `airport_codes` VALUES (null, 'Futuna Island, Wallis and Futuna Islands ', 'FUT');
INSERT INTO `airport_codes` VALUES (null, 'Fuyang, China ', 'FUG');
INSERT INTO `airport_codes` VALUES (null, 'Fuzhou, China ', 'FOC');
INSERT INTO `airport_codes` VALUES (null, 'Gaborone, Botswana ', 'GBE');
INSERT INTO `airport_codes` VALUES (null, 'Gafsa, Tunisia ', 'GAF');
INSERT INTO `airport_codes` VALUES (null, 'Gagnoa, Cote D\'Ivoire ', 'GGN');
INSERT INTO `airport_codes` VALUES (null, 'Gainesville, FL ', 'GNV');
INSERT INTO `airport_codes` VALUES (null, 'Galapagos, Ecuador ', 'GPS');
INSERT INTO `airport_codes` VALUES (null, 'Gallivare, Sweden ', 'GEV');
INSERT INTO `airport_codes` VALUES (null, 'Gallup, NM ', 'GUP');
INSERT INTO `airport_codes` VALUES (null, 'Galway, Ireland ', 'GWY');
INSERT INTO `airport_codes` VALUES (null, 'Gamba, Gabon ', 'GAX');
INSERT INTO `airport_codes` VALUES (null, 'Gambela, Ethiopia ', 'GMB');
INSERT INTO `airport_codes` VALUES (null, 'Gan Island, Maldives ', 'GAN');
INSERT INTO `airport_codes` VALUES (null, 'Gander, NL ', 'YQX');
INSERT INTO `airport_codes` VALUES (null, 'Gangneung, South Korea ', 'KAG');
INSERT INTO `airport_codes` VALUES (null, 'Garachine, Panama ', 'GHE');
INSERT INTO `airport_codes` VALUES (null, 'Garaina, Papua New Guinea ', 'GAR');
INSERT INTO `airport_codes` VALUES (null, 'Garasa, Papua New Guinea ', 'GRL');
INSERT INTO `airport_codes` VALUES (null, 'Garden City, KS ', 'GCK');
INSERT INTO `airport_codes` VALUES (null, 'Garden Point, Australia ', 'GPN');
INSERT INTO `airport_codes` VALUES (null, 'Garoua, Cameroon ', 'GOV');
INSERT INTO `airport_codes` VALUES (null, 'Gary, IN ', 'GYY');
INSERT INTO `airport_codes` VALUES (null, 'Gaspe, QC ', 'YGP');
INSERT INTO `airport_codes` VALUES (null, 'Gaspe, QC - Rail service ', 'XDD');
INSERT INTO `airport_codes` VALUES (null, 'Gassim, Saudi Arabia ', 'ELQ');
INSERT INTO `airport_codes` VALUES (null, 'Gaua, Vanuatu ', 'ZGU');
INSERT INTO `airport_codes` VALUES (null, 'Gawahati, India ', 'GAU');
INSERT INTO `airport_codes` VALUES (null, 'Gaza City, Occupied Palestinian Territory ', 'GZA');
INSERT INTO `airport_codes` VALUES (null, 'Gaziatep, Turkey ', 'GZT');
INSERT INTO `airport_codes` VALUES (null, 'Gdansk, Poland ', 'GDN');
INSERT INTO `airport_codes` VALUES (null, 'Gebe, Indonesia ', 'GEB');
INSERT INTO `airport_codes` VALUES (null, 'Gelendzik, Russia ', 'GDZ');
INSERT INTO `airport_codes` VALUES (null, 'Geneina, Sudan ', 'EGN');
INSERT INTO `airport_codes` VALUES (null, 'General Santos, Philippines ', 'GES');
INSERT INTO `airport_codes` VALUES (null, 'Geneva, Switzerland ', 'GVA');
INSERT INTO `airport_codes` VALUES (null, 'Genoa, Italy ', 'GOA');
INSERT INTO `airport_codes` VALUES (null, 'George Town, Bahamas ', 'GGT');
INSERT INTO `airport_codes` VALUES (null, 'George, South Africa ', 'GRJ');
INSERT INTO `airport_codes` VALUES (null, 'Georgetown, Guyana ', 'GEO');
INSERT INTO `airport_codes` VALUES (null, 'Georgetown, ON - Rail service ', 'XHM');
INSERT INTO `airport_codes` VALUES (null, 'Geraldton, Australia, ', 'GET');
INSERT INTO `airport_codes` VALUES (null, 'Gerona, Spain ', 'GRO');
INSERT INTO `airport_codes` VALUES (null, 'Gethsemani, QC ', 'ZGS');
INSERT INTO `airport_codes` VALUES (null, 'Ghadames, Libya ', 'LTD');
INSERT INTO `airport_codes` VALUES (null, 'Ghardala, Algeria ', 'GHA');
INSERT INTO `airport_codes` VALUES (null, 'Ghat, Libya ', 'GHT');
INSERT INTO `airport_codes` VALUES (null, 'Gibraltar, Gibraltar ', 'GIB');
INSERT INTO `airport_codes` VALUES (null, 'Gilgit, Pakistan ', 'GIL');
INSERT INTO `airport_codes` VALUES (null, 'Gillam, MB ', 'YGX');
INSERT INTO `airport_codes` VALUES (null, 'Gillette, WY ', 'GCC');
INSERT INTO `airport_codes` VALUES (null, 'Gillies Bay, BC ', 'YGB');
INSERT INTO `airport_codes` VALUES (null, 'Gisborne, New Zealand ', 'GIS');
INSERT INTO `airport_codes` VALUES (null, 'Gizan, Saudi Arabia ', 'GIZ');
INSERT INTO `airport_codes` VALUES (null, 'Gizo, Solomon Islands ', 'GZO');
INSERT INTO `airport_codes` VALUES (null, 'Gjoa Haven, NU ', 'YHK');
INSERT INTO `airport_codes` VALUES (null, 'Gladewater/Kilgore, TX ', 'GGG');
INSERT INTO `airport_codes` VALUES (null, 'Gladstone, Australia ', 'GLT');
INSERT INTO `airport_codes` VALUES (null, 'Glasgow, MT ', 'GGW');
INSERT INTO `airport_codes` VALUES (null, 'Glasgow, United Kingdom - Glasgow International ', 'GLA');
INSERT INTO `airport_codes` VALUES (null, 'Glasgow, United Kingdom - Prestwick ', 'PIK');
INSERT INTO `airport_codes` VALUES (null, 'Glen Innes, Australia ', 'GLI');
INSERT INTO `airport_codes` VALUES (null, 'Glencoe, ON - Rail service ', 'XZC');
INSERT INTO `airport_codes` VALUES (null, 'Glendive, MT ', 'GDV');
INSERT INTO `airport_codes` VALUES (null, 'Goa, India ', 'GOI');
INSERT INTO `airport_codes` VALUES (null, 'Goba, Ethiopia ', 'GOB');
INSERT INTO `airport_codes` VALUES (null, 'Gobernador Gregores, Argentina ', 'GGS');
INSERT INTO `airport_codes` VALUES (null, 'Gode/Iddidole, Ethopia ', 'GDE');
INSERT INTO `airport_codes` VALUES (null, 'Gods Narrows, MB ', 'YGO');
INSERT INTO `airport_codes` VALUES (null, 'Gods River, MB ', 'ZGI');
INSERT INTO `airport_codes` VALUES (null, 'Goiania, Brazil ', 'GYN');
INSERT INTO `airport_codes` VALUES (null, 'Gold Coast, QL, Australia ', 'OOL');
INSERT INTO `airport_codes` VALUES (null, 'Golfito, Costa Rica ', 'GLF');
INSERT INTO `airport_codes` VALUES (null, 'Golmud, China ', 'GOQ');
INSERT INTO `airport_codes` VALUES (null, 'Golovin, AK ', 'GLV');
INSERT INTO `airport_codes` VALUES (null, 'Gonalia, Papua New Guinea ', 'GOE');
INSERT INTO `airport_codes` VALUES (null, 'Gondari, Ethiopia ', 'GDQ');
INSERT INTO `airport_codes` VALUES (null, 'Goodnews Bay, AK ', 'GNU');
INSERT INTO `airport_codes` VALUES (null, 'Goose Bay, NL ', 'YYR');
INSERT INTO `airport_codes` VALUES (null, 'Gore, Ethiopia ', 'GOR');
INSERT INTO `airport_codes` VALUES (null, 'Goroka, Papua New Guinea ', 'GKA');
INSERT INTO `airport_codes` VALUES (null, 'Gorontalo, Indonesia ', 'GTO');
INSERT INTO `airport_codes` VALUES (null, 'Gothenburg, Sweden - Landvetter ', 'GOT');
INSERT INTO `airport_codes` VALUES (null, 'Gothenburg, Sweden - Saeve ', 'GSE');
INSERT INTO `airport_codes` VALUES (null, 'Goulburn Island, Australia ', 'GBL');
INSERT INTO `airport_codes` VALUES (null, 'Goundam, Mali ', 'GUD');
INSERT INTO `airport_codes` VALUES (null, 'Gove, Australia ', 'GOV');
INSERT INTO `airport_codes` VALUES (null, 'Governador Valadares, Brazil ', 'GVR');
INSERT INTO `airport_codes` VALUES (null, 'Governors Harbour, Bahamas ', 'GHB');
INSERT INTO `airport_codes` VALUES (null, 'Goya, CR, Argentina ', 'OYA');
INSERT INTO `airport_codes` VALUES (null, 'Gozo, Malta ', 'GZM');
INSERT INTO `airport_codes` VALUES (null, 'Graciosa Island, Portugal ', 'GRW');
INSERT INTO `airport_codes` VALUES (null, 'Grafton, Australia ', 'GFN');
INSERT INTO `airport_codes` VALUES (null, 'Granada, Spain ', 'GRX');
INSERT INTO `airport_codes` VALUES (null, 'Grand Canyon, AZ - Heliport ', 'JGC');
INSERT INTO `airport_codes` VALUES (null, 'Grand Canyon, AZ - National Park ', 'GCN');
INSERT INTO `airport_codes` VALUES (null, 'Grand Cayman, Cayman Islands ', 'GCM');
INSERT INTO `airport_codes` VALUES (null, 'Grand Forks, ND ', 'GFK');
INSERT INTO `airport_codes` VALUES (null, 'Grand Island, NE ', 'GRI');
INSERT INTO `airport_codes` VALUES (null, 'Grand Junction, CO ', 'GJT');
INSERT INTO `airport_codes` VALUES (null, 'Grand Rapids, MI ', 'GRR');
INSERT INTO `airport_codes` VALUES (null, 'Grand Rapids, MN ', 'GPZ');
INSERT INTO `airport_codes` VALUES (null, 'Grand Turk Island, Turks and Caicos Islands ', 'GDT');
INSERT INTO `airport_codes` VALUES (null, 'Grande Prairie, AB ', 'YQU');
INSERT INTO `airport_codes` VALUES (null, 'Grayling, AK ', 'KGX');
INSERT INTO `airport_codes` VALUES (null, 'Graz, Austria ', 'GRZ');
INSERT INTO `airport_codes` VALUES (null, 'Great Falls, MT ', 'GTF');
INSERT INTO `airport_codes` VALUES (null, 'Green Bay, WI ', 'GRB');
INSERT INTO `airport_codes` VALUES (null, 'Greensboro, NC ', 'GSO');
INSERT INTO `airport_codes` VALUES (null, 'Greenville, MS ', 'GLH');
INSERT INTO `airport_codes` VALUES (null, 'Greenville, NC ', 'PGV');
INSERT INTO `airport_codes` VALUES (null, 'Greenville/Spartanburg, SC ', 'GSP');
INSERT INTO `airport_codes` VALUES (null, 'Grenada, Grenada, ', 'GND');
INSERT INTO `airport_codes` VALUES (null, 'Grenoble, France ', 'GNB');
INSERT INTO `airport_codes` VALUES (null, 'Griffith, Australia ', 'GFF');
INSERT INTO `airport_codes` VALUES (null, 'Grimsby, ON ', 'XGY');
INSERT INTO `airport_codes` VALUES (null, 'Grimsey, Iceland ', 'GRY');
INSERT INTO `airport_codes` VALUES (null, 'Grise Fiord, NU ', 'YGZ');
INSERT INTO `airport_codes` VALUES (null, 'Groennedal, Greenland ', 'JGR');
INSERT INTO `airport_codes` VALUES (null, 'Groningen, Netherlands ', 'GRQ');
INSERT INTO `airport_codes` VALUES (null, 'Groofe Eylandt, Australia ', 'GTE');
INSERT INTO `airport_codes` VALUES (null, 'Groton/New London, CT ', 'GON');
INSERT INTO `airport_codes` VALUES (null, 'Guadalajara, Mexico ', 'GDL');
INSERT INTO `airport_codes` VALUES (null, 'Guam ', 'GUM');
INSERT INTO `airport_codes` VALUES (null, 'Guanaja, Honduras ', 'GJA');
INSERT INTO `airport_codes` VALUES (null, 'Guanajuato, Mexico ', 'BJX');
INSERT INTO `airport_codes` VALUES (null, 'Guangzhou, China ', 'CAN');
INSERT INTO `airport_codes` VALUES (null, 'Guantanamo, Cuba ', 'GAO');
INSERT INTO `airport_codes` VALUES (null, 'Guatemala City, Guatemala ', 'GUA');
INSERT INTO `airport_codes` VALUES (null, 'Guayaquil, Ecuador ', 'GYE');
INSERT INTO `airport_codes` VALUES (null, 'Guayaramerin, Bolivia ', 'GYA');
INSERT INTO `airport_codes` VALUES (null, 'Guaymas, Mexico ', 'GYM');
INSERT INTO `airport_codes` VALUES (null, 'Guelph, ON - Rail service ', 'XIA');
INSERT INTO `airport_codes` VALUES (null, 'Guernsey, United Kingdom ', 'GCI');
INSERT INTO `airport_codes` VALUES (null, 'Guerrero Negro, Mexico ', 'GUB');
INSERT INTO `airport_codes` VALUES (null, 'Guilin, China ', 'KWL');
INSERT INTO `airport_codes` VALUES (null, 'Guiria, Venezuela ', 'GUI');
INSERT INTO `airport_codes` VALUES (null, 'Gulfport, MS ', 'GPT');
INSERT INTO `airport_codes` VALUES (null, 'Gulu, Uganda ', 'ULU');
INSERT INTO `airport_codes` VALUES (null, 'Gulyang, China ', 'KWE');
INSERT INTO `airport_codes` VALUES (null, 'Gunnison, CO ', 'GUC');
INSERT INTO `airport_codes` VALUES (null, 'Gunsan, South Korea ', 'KUV');
INSERT INTO `airport_codes` VALUES (null, 'Gurayat, Saudi Arabia ', 'URY');
INSERT INTO `airport_codes` VALUES (null, 'Gustavus, AK ', 'GST');
INSERT INTO `airport_codes` VALUES (null, 'Gwadar, Pakistan ', 'GWD');
INSERT INTO `airport_codes` VALUES (null, 'Gwalior, India ', 'GWL');
INSERT INTO `airport_codes` VALUES (null, 'Gwangju, South Korea ', 'KWJ');
INSERT INTO `airport_codes` VALUES (null, 'Gyandzha, Azerbaijan ', 'KVD');
INSERT INTO `airport_codes` VALUES (null, 'Gyourmri, Armenia ', 'LWN');
INSERT INTO `airport_codes` VALUES (null, 'HaApa, Tonga ', 'HPA');
INSERT INTO `airport_codes` VALUES (null, 'Hachijo Jima, Japan ', 'HAC');
INSERT INTO `airport_codes` VALUES (null, 'Hagerstown, MD ', 'HGR');
INSERT INTO `airport_codes` VALUES (null, 'Hagfors, Sweden ', 'HFS');
INSERT INTO `airport_codes` VALUES (null, 'Haifa, Israel ', 'HFA');
INSERT INTO `airport_codes` VALUES (null, 'Haikou, China ', 'HAK');
INSERT INTO `airport_codes` VALUES (null, 'Hail, Saudi Arabia ', 'HAS');
INSERT INTO `airport_codes` VALUES (null, 'Hailar, China ', 'HLD');
INSERT INTO `airport_codes` VALUES (null, 'Hailey, ID ', 'SUN');
INSERT INTO `airport_codes` VALUES (null, 'Haines, AK ', 'HNS');
INSERT INTO `airport_codes` VALUES (null, 'Haiphong, Viet Nam - Catbi ', 'HPH');
INSERT INTO `airport_codes` VALUES (null, 'Hakodate, Japan ', 'HKD');
INSERT INTO `airport_codes` VALUES (null, 'Halberstadt, Germany ', 'ZHQ');
INSERT INTO `airport_codes` VALUES (null, 'Halifax, NS - International ', 'YHZ');
INSERT INTO `airport_codes` VALUES (null, 'Halifax, NS - Rail service ', 'XDG');
INSERT INTO `airport_codes` VALUES (null, 'Hall Beach, NU ', 'YUX');
INSERT INTO `airport_codes` VALUES (null, 'Halls Creek, Australia ', 'HCQ');
INSERT INTO `airport_codes` VALUES (null, 'Halmstad, Sweden ', 'HAD');
INSERT INTO `airport_codes` VALUES (null, 'Hamburg, Germany - Fuhisbuettel ', 'HAM');
INSERT INTO `airport_codes` VALUES (null, 'Hamburg, Germany - Luebeck ', 'LBC');
INSERT INTO `airport_codes` VALUES (null, 'Hamilton Island, Australia ', 'HTI');
INSERT INTO `airport_codes` VALUES (null, 'Hamilton, Bermuda ', 'BDA');
INSERT INTO `airport_codes` VALUES (null, 'Hamilton, New Zealand ', 'HLZ');
INSERT INTO `airport_codes` VALUES (null, 'Hamilton, ON ', 'YHM');
INSERT INTO `airport_codes` VALUES (null, 'Hammerfest, Norway ', 'HFT');
INSERT INTO `airport_codes` VALUES (null, 'Hampton, VA ', 'PHF');
INSERT INTO `airport_codes` VALUES (null, 'Hana, HI - Island of Maui ', 'HNM');
INSERT INTO `airport_codes` VALUES (null, 'Hanapepe, HI ', 'PAK');
INSERT INTO `airport_codes` VALUES (null, 'Hancock, MI ', 'CMX');
INSERT INTO `airport_codes` VALUES (null, 'Hangzhou, China ', 'HGH');
INSERT INTO `airport_codes` VALUES (null, 'Hanimaadhoo, Maldives ', 'HAQ');
INSERT INTO `airport_codes` VALUES (null, 'Hanoi, Viet Nam - Noibai ', 'HAN');
INSERT INTO `airport_codes` VALUES (null, 'Hanover, Germany ', 'HAJ');
INSERT INTO `airport_codes` VALUES (null, 'Hanover, NH ', 'LEB');
INSERT INTO `airport_codes` VALUES (null, 'Hanzhang, China ', 'HZG');
INSERT INTO `airport_codes` VALUES (null, 'Harare, Zimbabwe ', 'HRE');
INSERT INTO `airport_codes` VALUES (null, 'Harbin, China ', 'HRB');
INSERT INTO `airport_codes` VALUES (null, 'Hargeisa, Somolia ', 'HGA');
INSERT INTO `airport_codes` VALUES (null, 'Harlingen, TX ', 'HRL');
INSERT INTO `airport_codes` VALUES (null, 'Harrisburg, PA ', 'MDT');
INSERT INTO `airport_codes` VALUES (null, 'Harrison, AR ', 'HRO');
INSERT INTO `airport_codes` VALUES (null, 'Harstad-Narvik, Norway ', 'EVE');
INSERT INTO `airport_codes` VALUES (null, 'Hartford, CT ', 'BDL');
INSERT INTO `airport_codes` VALUES (null, 'Hassi Messaoud, Algeria ', 'HME');
INSERT INTO `airport_codes` VALUES (null, 'Hasvik, Norway ', 'HAA');
INSERT INTO `airport_codes` VALUES (null, 'Hat Yai, Thailand ', 'HDY');
INSERT INTO `airport_codes` VALUES (null, 'Hateruma, Japan ', 'HTR');
INSERT INTO `airport_codes` VALUES (null, 'Haugesund, Norway ', 'HAU');
INSERT INTO `airport_codes` VALUES (null, 'Havana, Cuba ', 'HAV');
INSERT INTO `airport_codes` VALUES (null, 'Havasupai, AZ ', 'HAE');
INSERT INTO `airport_codes` VALUES (null, 'Havre St Pierre, QC ', 'YGV');
INSERT INTO `airport_codes` VALUES (null, 'Havre, MT ', 'HVR');
INSERT INTO `airport_codes` VALUES (null, 'Hay River, NT ', 'YHY');
INSERT INTO `airport_codes` VALUES (null, 'Hayden, CO ', 'HDN');
INSERT INTO `airport_codes` VALUES (null, 'Hayman Island, Australia ', 'HIS');
INSERT INTO `airport_codes` VALUES (null, 'Hays, KS ', 'HYS');
INSERT INTO `airport_codes` VALUES (null, 'Healy Lake, AK ', 'HKB');
INSERT INTO `airport_codes` VALUES (null, 'Hefei, China ', 'HFE');
INSERT INTO `airport_codes` VALUES (null, 'Heidelberg, Germany ', 'HDB');
INSERT INTO `airport_codes` VALUES (null, 'Helena, MT ', 'HLN');
INSERT INTO `airport_codes` VALUES (null, 'Helgoland, Germany ', 'HGL');
INSERT INTO `airport_codes` VALUES (null, 'Helsinki, Finland ', 'HEL');
INSERT INTO `airport_codes` VALUES (null, 'Hendersonville, NC ', 'AVL');
INSERT INTO `airport_codes` VALUES (null, 'Heno, Myanmar ', 'HEH');
INSERT INTO `airport_codes` VALUES (null, 'Heraklian, Greece ', 'HER');
INSERT INTO `airport_codes` VALUES (null, 'Heringsdorf, Germany ', 'HDF');
INSERT INTO `airport_codes` VALUES (null, 'Hermavan, Sweden ', 'HMV');
INSERT INTO `airport_codes` VALUES (null, 'Hermosillo, Mexico ', 'HMO');
INSERT INTO `airport_codes` VALUES (null, 'Herning, Denmark ', 'XAK');
INSERT INTO `airport_codes` VALUES (null, 'Hervey Bay, Australia ', 'HVB');
INSERT INTO `airport_codes` VALUES (null, 'Hervey, QC - Rail service ', 'XDU');
INSERT INTO `airport_codes` VALUES (null, 'Hibbing/Chisholm, MN ', 'HIB');
INSERT INTO `airport_codes` VALUES (null, 'Hickory, NC ', 'HKY');
INSERT INTO `airport_codes` VALUES (null, 'High Level, AB ', 'YOJ');
INSERT INTO `airport_codes` VALUES (null, 'High Point, NC ', 'GSO');
INSERT INTO `airport_codes` VALUES (null, 'Hilo, HI - Island of Hawaii ', 'ITO');
INSERT INTO `airport_codes` VALUES (null, 'Hilton Head, SC ', 'HHH');
INSERT INTO `airport_codes` VALUES (null, 'Hiroshima, Japan - Hiroshima West ', 'HIW');
INSERT INTO `airport_codes` VALUES (null, 'Hiroshima, Japan - International ', 'HIJ');
INSERT INTO `airport_codes` VALUES (null, 'Hivaro, Papua New Guinea ', 'HIT');
INSERT INTO `airport_codes` VALUES (null, 'Ho Chi Minh City, Viet Nam ', 'SGN');
INSERT INTO `airport_codes` VALUES (null, 'Hobart, Australia ', 'HBA');
INSERT INTO `airport_codes` VALUES (null, 'Hobbs, NM ', 'HBB');
INSERT INTO `airport_codes` VALUES (null, 'Hodeidah, Yemen ', 'HOD');
INSERT INTO `airport_codes` VALUES (null, 'Hoedspruit, South Africa ', 'HDS');
INSERT INTO `airport_codes` VALUES (null, 'Hof, Germany ', 'HOQ');
INSERT INTO `airport_codes` VALUES (null, 'Hofuf, Saudi Arabia ', 'HOF');
INSERT INTO `airport_codes` VALUES (null, 'Hohhot, China ', 'HET');
INSERT INTO `airport_codes` VALUES (null, 'Hokitika, New Zealand ', 'HKK');
INSERT INTO `airport_codes` VALUES (null, 'Holguin, Cuba ', 'HOG');
INSERT INTO `airport_codes` VALUES (null, 'Hollis, AK ', 'HYL');
INSERT INTO `airport_codes` VALUES (null, 'Holman, NT ', 'YHI');
INSERT INTO `airport_codes` VALUES (null, 'Holy Cross, AK ', 'HCR');
INSERT INTO `airport_codes` VALUES (null, 'Homer, AK ', 'HOM');
INSERT INTO `airport_codes` VALUES (null, 'Hong Kong, Hong Kong ', 'HKG');
INSERT INTO `airport_codes` VALUES (null, 'Honiara, Solomon Islands ', 'HIR');
INSERT INTO `airport_codes` VALUES (null, 'Honningsvag, Norway ', 'HVG');
INSERT INTO `airport_codes` VALUES (null, 'Honolulu, HI - Island of Oahu ', 'HNL');
INSERT INTO `airport_codes` VALUES (null, 'Hooker, Australia ', 'HOK');
INSERT INTO `airport_codes` VALUES (null, 'Hoolehua, HI - Island of Molokai ', 'MKK');
INSERT INTO `airport_codes` VALUES (null, 'Hoonah, AK ', 'HNH');
INSERT INTO `airport_codes` VALUES (null, 'Hooper Bay, AK ', 'HPB');
INSERT INTO `airport_codes` VALUES (null, 'Hopedale, NL ', 'YHO');
INSERT INTO `airport_codes` VALUES (null, 'Horn Island Australia ', 'HID');
INSERT INTO `airport_codes` VALUES (null, 'Hornafjordur, Iceland ', 'HFN');
INSERT INTO `airport_codes` VALUES (null, 'Horta, Portugal ', 'HOR');
INSERT INTO `airport_codes` VALUES (null, 'Hoskins, Papua New Guinea ', 'HKN');
INSERT INTO `airport_codes` VALUES (null, 'Hot Springs, AR ', 'HOT');
INSERT INTO `airport_codes` VALUES (null, 'Hotan, China ', 'HTN');
INSERT INTO `airport_codes` VALUES (null, 'Houeisay, Laos ', 'HOE');
INSERT INTO `airport_codes` VALUES (null, 'Houn, Libya ', 'HUQ');
INSERT INTO `airport_codes` VALUES (null, 'Houston, BC - Bus station ', 'ZHO');
INSERT INTO `airport_codes` VALUES (null, 'Houston, TX - All airports ', 'HOU');
INSERT INTO `airport_codes` VALUES (null, 'Houston, TX - Hobby ', 'HOU');
INSERT INTO `airport_codes` VALUES (null, 'Houston, TX - Intercontinental ', 'IAH');
INSERT INTO `airport_codes` VALUES (null, 'Huahine, French Polynesia ', 'HUH');
INSERT INTO `airport_codes` VALUES (null, 'Hualien, Taiwan - Phi Bai ', 'HUN');
INSERT INTO `airport_codes` VALUES (null, 'Hualtin, Thailand ', 'HHQ');
INSERT INTO `airport_codes` VALUES (null, 'Huanuco, French Polynesia ', 'HUU');
INSERT INTO `airport_codes` VALUES (null, 'Huargyan, China ', 'HYN');
INSERT INTO `airport_codes` VALUES (null, 'Huatulco, Mexico ', 'HUX');
INSERT INTO `airport_codes` VALUES (null, 'Hudiksvall, Sweden ', 'HUV');
INSERT INTO `airport_codes` VALUES (null, 'Hudson Bay, SK ', 'YHB');
INSERT INTO `airport_codes` VALUES (null, 'Hue, Viet Nam ', 'HUI');
INSERT INTO `airport_codes` VALUES (null, 'Hughenden, Australia ', 'HGD');
INSERT INTO `airport_codes` VALUES (null, 'Hughes, AK ', 'HUS');
INSERT INTO `airport_codes` VALUES (null, 'Hultsfred, Sweden ', 'HLF');
INSERT INTO `airport_codes` VALUES (null, 'Humberside, United Kingdom ', 'HUY');
INSERT INTO `airport_codes` VALUES (null, 'Huntington, WV/Ashland, KY ', 'HTS');
INSERT INTO `airport_codes` VALUES (null, 'Huntsville, AL ', 'HSV');
INSERT INTO `airport_codes` VALUES (null, 'Hurghada, Egypt ', 'HRG');
INSERT INTO `airport_codes` VALUES (null, 'Huron, SD ', 'HON');
INSERT INTO `airport_codes` VALUES (null, 'Huslia, AK ', 'HSL');
INSERT INTO `airport_codes` VALUES (null, 'Hwange Nat Park, Zimbabwe ', 'HWN');
INSERT INTO `airport_codes` VALUES (null, 'Hyannis, MA ', 'HYA');
INSERT INTO `airport_codes` VALUES (null, 'Hydaburg, AK ', 'HYG');
INSERT INTO `airport_codes` VALUES (null, 'Hyderabad, India ', 'HYD');
INSERT INTO `airport_codes` VALUES (null, 'Iasi, Romania ', 'IAS');
INSERT INTO `airport_codes` VALUES (null, 'Ibague, Colombia ', 'IBE');
INSERT INTO `airport_codes` VALUES (null, 'Ibiza, Spain ', 'IBZ');
INSERT INTO `airport_codes` VALUES (null, 'Idaho Falls, ID ', 'IDA');
INSERT INTO `airport_codes` VALUES (null, 'Igarka, Russia ', 'IAA');
INSERT INTO `airport_codes` VALUES (null, 'Igiugig, AK ', 'IGG');
INSERT INTO `airport_codes` VALUES (null, 'Igloolik, NU ', 'YGT');
INSERT INTO `airport_codes` VALUES (null, 'Iguassu Falls, PR, Brazil ', 'IGU');
INSERT INTO `airport_codes` VALUES (null, 'Iguazu, Argentina ', 'IGR');
INSERT INTO `airport_codes` VALUES (null, 'Ihu, Papua New Guinea ', 'IHU');
INSERT INTO `airport_codes` VALUES (null, 'Ile Des Pins, New Caledonia ', 'ILP');
INSERT INTO `airport_codes` VALUES (null, 'Iles De La Madeleine, QC ', 'YGR');
INSERT INTO `airport_codes` VALUES (null, 'Ilford, MB ', 'ILF');
INSERT INTO `airport_codes` VALUES (null, 'Ilheus, Brazil ', 'IOS');
INSERT INTO `airport_codes` VALUES (null, 'Iliamna, AK ', 'ILI');
INSERT INTO `airport_codes` VALUES (null, 'Illaga, Indonesia ', 'ILA');
INSERT INTO `airport_codes` VALUES (null, 'Iloilo, Philippines - Mandurriao ', 'ILO');
INSERT INTO `airport_codes` VALUES (null, 'Ilu, Indonesia ', 'IUL');
INSERT INTO `airport_codes` VALUES (null, 'Ilulissat, Greenland ', 'JAV');
INSERT INTO `airport_codes` VALUES (null, 'Imperatriz, Brazil ', 'IMP');
INSERT INTO `airport_codes` VALUES (null, 'Imperial, CA ', 'IPL');
INSERT INTO `airport_codes` VALUES (null, 'Imphal, India ', 'IMF');
INSERT INTO `airport_codes` VALUES (null, 'In Amenas, Algeria ', 'IAM');
INSERT INTO `airport_codes` VALUES (null, 'Inagua, Bahamas ', 'IGA');
INSERT INTO `airport_codes` VALUES (null, 'Inanwatan, Indonesia ', 'INX');
INSERT INTO `airport_codes` VALUES (null, 'Indagen, Papua New Guinea ', 'IDN');
INSERT INTO `airport_codes` VALUES (null, 'Indianapolis, IN ', 'IND');
INSERT INTO `airport_codes` VALUES (null, 'Indore, India ', 'IDR');
INSERT INTO `airport_codes` VALUES (null, 'Ingersoll, ON - Rail service ', 'XIB');
INSERT INTO `airport_codes` VALUES (null, 'Innsbruck, Austria ', 'INN');
INSERT INTO `airport_codes` VALUES (null, 'Inta, Russia ', 'INA');
INSERT INTO `airport_codes` VALUES (null, 'International Falls, MN ', 'INL');
INSERT INTO `airport_codes` VALUES (null, 'Inukjuak, QC ', 'YPH');
INSERT INTO `airport_codes` VALUES (null, 'Inuvik, NT ', 'YEV');
INSERT INTO `airport_codes` VALUES (null, 'Invercargill, New Zealand ', 'IVC');
INSERT INTO `airport_codes` VALUES (null, 'Inverell, Australia ', 'IVR');
INSERT INTO `airport_codes` VALUES (null, 'Inverness, United Kingdom ', 'INV');
INSERT INTO `airport_codes` VALUES (null, 'Inyokern, CA ', 'IYK');
INSERT INTO `airport_codes` VALUES (null, 'Ioannina, Greece ', 'IOA');
INSERT INTO `airport_codes` VALUES (null, 'Ioma, Papua New Guinea ', 'IOP');
INSERT INTO `airport_codes` VALUES (null, 'Ipatinga, Brazil ', 'IPN');
INSERT INTO `airport_codes` VALUES (null, 'Ipiales, Colombia ', 'IPI');
INSERT INTO `airport_codes` VALUES (null, 'Ipil, Philippines ', 'IPE');
INSERT INTO `airport_codes` VALUES (null, 'Ipoh, Malaysia ', 'IPH');
INSERT INTO `airport_codes` VALUES (null, 'Ipota, Vanuatu ', 'IPA');
INSERT INTO `airport_codes` VALUES (null, 'Iqaluit, NU ', 'YFB');
INSERT INTO `airport_codes` VALUES (null, 'Iquique, Chile ', 'IQQ');
INSERT INTO `airport_codes` VALUES (null, 'Iquitos, Peru ', 'IQT');
INSERT INTO `airport_codes` VALUES (null, 'Irkutsk, Russia ', 'IKT');
INSERT INTO `airport_codes` VALUES (null, 'Iron Mountain, MI ', 'IMT');
INSERT INTO `airport_codes` VALUES (null, 'Ironwood, MI ', 'IWD');
INSERT INTO `airport_codes` VALUES (null, 'Isafjordur, Iceland ', 'IFJ');
INSERT INTO `airport_codes` VALUES (null, 'Isfahan, Iran ', 'IFN');
INSERT INTO `airport_codes` VALUES (null, 'Ishigakij, Japan ', 'ISG');
INSERT INTO `airport_codes` VALUES (null, 'Islamabad, Pakistan ', 'ISB');
INSERT INTO `airport_codes` VALUES (null, 'Island Lake/Garden Hill ', 'YIV');
INSERT INTO `airport_codes` VALUES (null, 'Island Lake/Garden Hill, Canada ', 'YIV');
INSERT INTO `airport_codes` VALUES (null, 'Islay, United Kingdom ', 'ILY');
INSERT INTO `airport_codes` VALUES (null, 'Isle of Man, United Kingdom ', 'IOM');
INSERT INTO `airport_codes` VALUES (null, 'Isles of Scilly, United Kingdom - St Marys ', 'ISC');
INSERT INTO `airport_codes` VALUES (null, 'Isles of Scilly, United Kingdom - Tresco ', 'TSO');
INSERT INTO `airport_codes` VALUES (null, 'Islip, NY ', 'ISP');
INSERT INTO `airport_codes` VALUES (null, 'Istanbul, Turkey ', 'IST');
INSERT INTO `airport_codes` VALUES (null, 'Itaituba, Brazil ', 'ITB');
INSERT INTO `airport_codes` VALUES (null, 'Ithaca, NY ', 'ITH');
INSERT INTO `airport_codes` VALUES (null, 'Itokama, Papua New Guinea ', 'ITK');
INSERT INTO `airport_codes` VALUES (null, 'Ivalo, Finland ', 'IVL');
INSERT INTO `airport_codes` VALUES (null, 'Ivano-Frankovsk, Ukraine ', 'IFO');
INSERT INTO `airport_codes` VALUES (null, 'Ivujivik, QC ', 'YIK');
INSERT INTO `airport_codes` VALUES (null, 'Iwami, Japan ', 'IWJ');
INSERT INTO `airport_codes` VALUES (null, 'Ixtapa, Mexico ', 'ZIH');
INSERT INTO `airport_codes` VALUES (null, 'Ixtepec, Mexico ', 'IZT');
INSERT INTO `airport_codes` VALUES (null, 'Izmir, Turkey ', 'ADB');
INSERT INTO `airport_codes` VALUES (null, 'Izumo, Japan ', 'IZO');
INSERT INTO `airport_codes` VALUES (null, 'Jabor, Marshall Islands ', 'JAT');
INSERT INTO `airport_codes` VALUES (null, 'Jacareacanga, Brazil ', 'JCR');
INSERT INTO `airport_codes` VALUES (null, 'Jackson Hole, WY ', 'JAC');
INSERT INTO `airport_codes` VALUES (null, 'Jackson, MS ', 'JAN');
INSERT INTO `airport_codes` VALUES (null, 'Jackson, TN ', 'MKL');
INSERT INTO `airport_codes` VALUES (null, 'Jacksonville, FL ', 'JAX');
INSERT INTO `airport_codes` VALUES (null, 'Jacksonville, NC ', 'OAJ');
INSERT INTO `airport_codes` VALUES (null, 'Jacobabad, Pakistan ', 'JAG');
INSERT INTO `airport_codes` VALUES (null, 'Jacquinot Bay, Papua New Guinea ', 'JAQ');
INSERT INTO `airport_codes` VALUES (null, 'Jaipur, India ', 'JAI');
INSERT INTO `airport_codes` VALUES (null, 'Jakarta, Indonesia ', 'CGK');
INSERT INTO `airport_codes` VALUES (null, 'Jalapa, Mexico ', 'JAL');
INSERT INTO `airport_codes` VALUES (null, 'Jaluit Island, Marshall Islands ', 'UIT');
INSERT INTO `airport_codes` VALUES (null, 'Jambi. Indonesia ', 'DJB');
INSERT INTO `airport_codes` VALUES (null, 'Jamestown, ND ', 'JMS');
INSERT INTO `airport_codes` VALUES (null, 'Jamestown, NY ', 'JHW');
INSERT INTO `airport_codes` VALUES (null, 'Jamnagar, India ', 'JGA');
INSERT INTO `airport_codes` VALUES (null, 'Janakpur, Nepal ', 'JKR');
INSERT INTO `airport_codes` VALUES (null, 'Janesville, WI ', 'JVL');
INSERT INTO `airport_codes` VALUES (null, 'Jaque, Panama ', 'JQE');
INSERT INTO `airport_codes` VALUES (null, 'Jasper, AB - Rail service ', 'XDH');
INSERT INTO `airport_codes` VALUES (null, 'Jayapura, Indonesia ', 'DJJ');
INSERT INTO `airport_codes` VALUES (null, 'Jeddah, Saudi Arabia ', 'JED');
INSERT INTO `airport_codes` VALUES (null, 'Jeh, Marshall Islands ', 'JEJ');
INSERT INTO `airport_codes` VALUES (null, 'Jeju, South Korea - Jeju Airport, metro area ', 'CJU');
INSERT INTO `airport_codes` VALUES (null, 'Jerez De La Frontere, Spain ', 'XRY');
INSERT INTO `airport_codes` VALUES (null, 'Jersey, United Kingdom ', 'JER');
INSERT INTO `airport_codes` VALUES (null, 'Jessore, Bangladesh ', 'JSR');
INSERT INTO `airport_codes` VALUES (null, 'Jiamusi, China ', 'JMU');
INSERT INTO `airport_codes` VALUES (null, 'Jiayuguan, China ', 'JGN');
INSERT INTO `airport_codes` VALUES (null, 'Jijel, Algeria ', 'GJL');
INSERT INTO `airport_codes` VALUES (null, 'Jijiga, Ethiopia ', 'JIJ');
INSERT INTO `airport_codes` VALUES (null, 'Jimma, Ethiopia ', 'JIM');
INSERT INTO `airport_codes` VALUES (null, 'Jinan, China ', 'TNA');
INSERT INTO `airport_codes` VALUES (null, 'Jingdezhen, China ', 'JDZ');
INSERT INTO `airport_codes` VALUES (null, 'Jinghong, China ', 'JHG');
INSERT INTO `airport_codes` VALUES (null, 'Jinja, Uganda ', 'JIN');
INSERT INTO `airport_codes` VALUES (null, 'Jinjiang, China ', 'JJN');
INSERT INTO `airport_codes` VALUES (null, 'Jinju, South Korea - Sancheon ', 'HIN');
INSERT INTO `airport_codes` VALUES (null, 'Jinka, Ethiopia ', 'BCO');
INSERT INTO `airport_codes` VALUES (null, 'Jinzhou, China ', 'JNZ');
INSERT INTO `airport_codes` VALUES (null, 'Ji-Parana, Brazil ', 'JPR');
INSERT INTO `airport_codes` VALUES (null, 'Jiwani, Pakistan ', 'JIW');
INSERT INTO `airport_codes` VALUES (null, 'Joao Pessoa, Brazil ', 'JPA');
INSERT INTO `airport_codes` VALUES (null, 'Jodhpur, India ', 'JDH');
INSERT INTO `airport_codes` VALUES (null, 'Joensuu, Finland ', 'JOE');
INSERT INTO `airport_codes` VALUES (null, 'Johannesburg, South Africa ', 'JNB');
INSERT INTO `airport_codes` VALUES (null, 'Johnson City, NY ', 'BGM');
INSERT INTO `airport_codes` VALUES (null, 'Johnson City, TN ', 'TRI');
INSERT INTO `airport_codes` VALUES (null, 'Johnston Island, US Minor Outlying Islands ', 'JON');
INSERT INTO `airport_codes` VALUES (null, 'Johnstown, PA ', 'JST');
INSERT INTO `airport_codes` VALUES (null, 'Johor, Malaysia ', 'JHB');
INSERT INTO `airport_codes` VALUES (null, 'Joinville, Brazil ', 'JOI');
INSERT INTO `airport_codes` VALUES (null, 'Joliette, QC - Rail service ', 'XJL');
INSERT INTO `airport_codes` VALUES (null, 'Jommu, India ', 'IXJ');
INSERT INTO `airport_codes` VALUES (null, 'Jomsom, Nepal ', 'JMO');
INSERT INTO `airport_codes` VALUES (null, 'Jonesboro, AR ', 'JBR');
INSERT INTO `airport_codes` VALUES (null, 'Jonkoping, Sweden ', 'JKG');
INSERT INTO `airport_codes` VALUES (null, 'Jonquiere, QC - Rail service ', 'XJQ');
INSERT INTO `airport_codes` VALUES (null, 'Joplin, MO ', 'JLN');
INSERT INTO `airport_codes` VALUES (null, 'Jorhat, India ', 'JRH');
INSERT INTO `airport_codes` VALUES (null, 'Jose De San Martin, Argentina ', 'JSM');
INSERT INTO `airport_codes` VALUES (null, 'Jouf, Saudi Arabia ', 'AJF');
INSERT INTO `airport_codes` VALUES (null, 'Juazeiro Do Norte, Brazil ', 'JDO');
INSERT INTO `airport_codes` VALUES (null, 'Juist, Germany ', 'JUI');
INSERT INTO `airport_codes` VALUES (null, 'Juiz De Fora, Brazil ', 'JDF');
INSERT INTO `airport_codes` VALUES (null, 'Jujuy, Argentina ', 'JUJ');
INSERT INTO `airport_codes` VALUES (null, 'Julia Creek, Australia ', 'JCK');
INSERT INTO `airport_codes` VALUES (null, 'Juliaca, Peru ', 'JUL');
INSERT INTO `airport_codes` VALUES (null, 'Juneau, AK ', 'JNU');
INSERT INTO `airport_codes` VALUES (null, 'Juzha, China ', 'JUZ');
INSERT INTO `airport_codes` VALUES (null, 'Jyvaskyla, Finland ', 'JYV');
INSERT INTO `airport_codes` VALUES (null, 'Kaadedhdhoo, Maldives ', 'KDM');
INSERT INTO `airport_codes` VALUES (null, 'Kaben, Marshall Islands ', 'KBT');
INSERT INTO `airport_codes` VALUES (null, 'Kabri Dar, Ethiopia ', 'ABK');
INSERT INTO `airport_codes` VALUES (null, 'Kabul, Afghanistan ', 'KBL');
INSERT INTO `airport_codes` VALUES (null, 'Kabwun, Papua New Guinea ', 'KBM');
INSERT INTO `airport_codes` VALUES (null, 'Kadanwari, Pakistan ', 'KCF');
INSERT INTO `airport_codes` VALUES (null, 'Kadhonoo, Maldives ', 'KDO');
INSERT INTO `airport_codes` VALUES (null, 'Kahramanmaras, Turkey ', 'KCM');
INSERT INTO `airport_codes` VALUES (null, 'Kahului, HI - Island of Maui, ', 'OGG');
INSERT INTO `airport_codes` VALUES (null, 'Kaintiba, Papua New Guinea ', 'KZF');
INSERT INTO `airport_codes` VALUES (null, 'Kaitaia, New Zealand ', 'KAT');
INSERT INTO `airport_codes` VALUES (null, 'Kajaani, Finland ', 'KAJ');
INSERT INTO `airport_codes` VALUES (null, 'Kake, AK ', 'KAE');
INSERT INTO `airport_codes` VALUES (null, 'Kakhonak, AK ', 'KNK');
INSERT INTO `airport_codes` VALUES (null, 'Kalamazoo, MI ', 'AZO');
INSERT INTO `airport_codes` VALUES (null, 'Kalaupapa, HI - Island of Molokai, ', 'LUP');
INSERT INTO `airport_codes` VALUES (null, 'Kalbarri, Australia ', 'KAX');
INSERT INTO `airport_codes` VALUES (null, 'Kaliningrad, Russia ', 'KGD');
INSERT INTO `airport_codes` VALUES (null, 'Kalskag, AK ', 'KLG');
INSERT INTO `airport_codes` VALUES (null, 'Kaltag, AK ', 'KAL');
INSERT INTO `airport_codes` VALUES (null, 'Kambuaya, Indonesia ', 'KBX');
INSERT INTO `airport_codes` VALUES (null, 'Kameshli, Syrian Arab Republic ', 'KAC');
INSERT INTO `airport_codes` VALUES (null, 'Kamloops, BC ', 'YKA');
INSERT INTO `airport_codes` VALUES (null, 'Kamuela, HI - Island of Hawaii, ', 'MUE');
INSERT INTO `airport_codes` VALUES (null, 'Kamur, Indonesia ', 'KCD');
INSERT INTO `airport_codes` VALUES (null, 'Kamusi, Papua New Guinea ', 'KUY');
INSERT INTO `airport_codes` VALUES (null, 'Kangiqsualujjuaq, QC ', 'XGR');
INSERT INTO `airport_codes` VALUES (null, 'Kangiqsujuaq, QC ', 'YWB');
INSERT INTO `airport_codes` VALUES (null, 'Kangirsuk, QC ', 'YKG');
INSERT INTO `airport_codes` VALUES (null, 'Kano, Nigeria ', 'KAN');
INSERT INTO `airport_codes` VALUES (null, 'Kansas City, MO ', 'MCI');
INSERT INTO `airport_codes` VALUES (null, 'Kapalua, HI - Island of Maui, ', 'JHM');
INSERT INTO `airport_codes` VALUES (null, 'Kapuskasing, ON ', 'YYU');
INSERT INTO `airport_codes` VALUES (null, 'Karachi, Pakistan - Quaid-E-Azam International ', 'KHI');
INSERT INTO `airport_codes` VALUES (null, 'Kardia, Estonia ', 'KDL');
INSERT INTO `airport_codes` VALUES (null, 'Kariba, Zimbabwe ', 'KAB');
INSERT INTO `airport_codes` VALUES (null, 'Karlsruhe/Badern Baden, Germany ', 'FKB');
INSERT INTO `airport_codes` VALUES (null, 'Karpathos, Greece ', 'AOK');
INSERT INTO `airport_codes` VALUES (null, 'Karubaga, Indonesia ', 'KBF');
INSERT INTO `airport_codes` VALUES (null, 'Kasaan, AK ', 'KXA');
INSERT INTO `airport_codes` VALUES (null, 'Kasaba Bay, Zambia ', 'ZKB');
INSERT INTO `airport_codes` VALUES (null, 'Kasabonika, ON ', 'XKS');
INSERT INTO `airport_codes` VALUES (null, 'Kasama, Zambia ', 'KAA');
INSERT INTO `airport_codes` VALUES (null, 'Kasane, Botswana ', 'BBK');
INSERT INTO `airport_codes` VALUES (null, 'Kaschechewan, ON ', 'ZKE');
INSERT INTO `airport_codes` VALUES (null, 'Kasigluk, AK ', 'KUK');
INSERT INTO `airport_codes` VALUES (null, 'Katherine, NT, Australia ', 'KTR');
INSERT INTO `airport_codes` VALUES (null, 'Kathmandu, Nepal ', 'KTM');
INSERT INTO `airport_codes` VALUES (null, 'Katowice, Poland ', 'KTW');
INSERT INTO `airport_codes` VALUES (null, 'Kauai Island/Lihue, HI ', 'LIH');
INSERT INTO `airport_codes` VALUES (null, 'Kaunas, Lithuania ', 'KUN');
INSERT INTO `airport_codes` VALUES (null, 'Kavala, Greece ', 'KVA');
INSERT INTO `airport_codes` VALUES (null, 'Kavieng, Papua New Guinea ', 'KVG');
INSERT INTO `airport_codes` VALUES (null, 'Kawthaung, Myanmar ', 'KAW');
INSERT INTO `airport_codes` VALUES (null, 'Kayseri, Turkey ', 'ASR');
INSERT INTO `airport_codes` VALUES (null, 'Kazan,, Russia ', 'KZN');
INSERT INTO `airport_codes` VALUES (null, 'Kearney, NE ', 'EAR');
INSERT INTO `airport_codes` VALUES (null, 'Keene, NH ', 'EEN');
INSERT INTO `airport_codes` VALUES (null, 'Keewaywin, ON ', 'KEW');
INSERT INTO `airport_codes` VALUES (null, 'Kefallinia, Greece ', 'EFL');
INSERT INTO `airport_codes` VALUES (null, 'Kegaska, QC ', 'ZKG');
INSERT INTO `airport_codes` VALUES (null, 'Kelowna, BC ', 'YLW');
INSERT INTO `airport_codes` VALUES (null, 'Kenai, AK ', 'ENA');
INSERT INTO `airport_codes` VALUES (null, 'Kendari, Indonesia ', 'KDI');
INSERT INTO `airport_codes` VALUES (null, 'Kenora, ON ', 'YQK');
INSERT INTO `airport_codes` VALUES (null, 'Kerkyra, Greece ', 'CFU');
INSERT INTO `airport_codes` VALUES (null, 'Ketchikan, AK ', 'KTN');
INSERT INTO `airport_codes` VALUES (null, 'Key West, FL ', 'EYW');
INSERT INTO `airport_codes` VALUES (null, 'Keystone, CO - Van service ', 'QKS');
INSERT INTO `airport_codes` VALUES (null, 'Khajuraho, India ', 'HJR');
INSERT INTO `airport_codes` VALUES (null, 'Kharga, Egypt ', 'UVL');
INSERT INTO `airport_codes` VALUES (null, 'Kharkov, Ukraine ', 'HRK');
INSERT INTO `airport_codes` VALUES (null, 'Khudzhand, Tajikistan ', 'LBD');
INSERT INTO `airport_codes` VALUES (null, 'Khuzdar, Pakistan ', 'KDD');
INSERT INTO `airport_codes` VALUES (null, 'Kiana, AK ', 'IAN');
INSERT INTO `airport_codes` VALUES (null, 'Kiev, Ukraine - Borispol ', 'KBP');
INSERT INTO `airport_codes` VALUES (null, 'Kiev, Ukraine - Zhulhany ', 'IEV');
INSERT INTO `airport_codes` VALUES (null, 'Kigali, Rwanda ', 'KGL');
INSERT INTO `airport_codes` VALUES (null, 'Kigoma, Tanzania ', 'TKQ');
INSERT INTO `airport_codes` VALUES (null, 'Kilgore/Gladewater, TX ', 'GGG');
INSERT INTO `airport_codes` VALUES (null, 'Kilimanjaro, Tanzania ', 'JRO');
INSERT INTO `airport_codes` VALUES (null, 'Killeen, TX ', 'ILE');
INSERT INTO `airport_codes` VALUES (null, 'Kimmirut/Lake Harbour NU ', 'YLC');
INSERT INTO `airport_codes` VALUES (null, 'Kimmirut/Lake Harbour, Canada ', 'YLC');
INSERT INTO `airport_codes` VALUES (null, 'King Cove, AK ', 'KVC');
INSERT INTO `airport_codes` VALUES (null, 'King Salmon, AK ', 'AKN');
INSERT INTO `airport_codes` VALUES (null, 'Kingfisher Lake, ON ', 'KIF');
INSERT INTO `airport_codes` VALUES (null, 'Kingman, AZ ', 'IGM');
INSERT INTO `airport_codes` VALUES (null, 'Kingsport, TN ', 'TRI');
INSERT INTO `airport_codes` VALUES (null, 'Kingston, Jamaica - Norman Manley ', 'KIN');
INSERT INTO `airport_codes` VALUES (null, 'Kingston, Jamaica - Tinson ', 'KTP');
INSERT INTO `airport_codes` VALUES (null, 'Kingston, ON - Norman Rogers Airport ', 'YGK');
INSERT INTO `airport_codes` VALUES (null, 'Kingston, ON - Rail service ', 'XEG');
INSERT INTO `airport_codes` VALUES (null, 'Kinshasa, Congo ', 'FIH');
INSERT INTO `airport_codes` VALUES (null, 'Kipnuk, AK ', 'KPN');
INSERT INTO `airport_codes` VALUES (null, 'Kirakira, Solomon Islands ', 'IRA');
INSERT INTO `airport_codes` VALUES (null, 'Kirksville, MO ', 'IRK');
INSERT INTO `airport_codes` VALUES (null, 'Kitadaito, Japan ', 'KTD');
INSERT INTO `airport_codes` VALUES (null, 'Kitchener, ON ', 'YKF');
INSERT INTO `airport_codes` VALUES (null, 'Kittila, Finland ', 'KTT');
INSERT INTO `airport_codes` VALUES (null, 'Kiunga, Papua New Guinea ', 'UNG');
INSERT INTO `airport_codes` VALUES (null, 'Kivalina, AK ', 'KVL');
INSERT INTO `airport_codes` VALUES (null, 'Kiwayu, Kenya ', 'KWY');
INSERT INTO `airport_codes` VALUES (null, 'Klamath Falls, OR ', 'LMT');
INSERT INTO `airport_codes` VALUES (null, 'Klawock, AK ', 'KLW');
INSERT INTO `airport_codes` VALUES (null, 'Klemtu, BC ', 'YKT');
INSERT INTO `airport_codes` VALUES (null, 'Knock, Ireland ', 'NOC');
INSERT INTO `airport_codes` VALUES (null, 'Knoxville, TN ', 'TYS');
INSERT INTO `airport_codes` VALUES (null, 'Kobuk, AK ', 'OBU');
INSERT INTO `airport_codes` VALUES (null, 'Kochi, Japan ', 'KCZ');
INSERT INTO `airport_codes` VALUES (null, 'Kodiak, AK ', 'ADQ');
INSERT INTO `airport_codes` VALUES (null, 'Koh Samui, Thailand ', 'USM');
INSERT INTO `airport_codes` VALUES (null, 'Kolkata, India ', 'CCU');
INSERT INTO `airport_codes` VALUES (null, 'Kolobrzeg, Poland ', 'QJY');
INSERT INTO `airport_codes` VALUES (null, 'Komsomolsk Na Amure, Russia ', 'KXK');
INSERT INTO `airport_codes` VALUES (null, 'Kona, HI - Island of Hawaii ', 'KOA');
INSERT INTO `airport_codes` VALUES (null, 'Kongiganak, AK ', 'KKH');
INSERT INTO `airport_codes` VALUES (null, 'Konya, Turkey ', 'KYA');
INSERT INTO `airport_codes` VALUES (null, 'Koror, Palau ', 'ROR');
INSERT INTO `airport_codes` VALUES (null, 'Koszalin, Poland ', 'OSZ');
INSERT INTO `airport_codes` VALUES (null, 'Kota Bharu, Malaysia ', 'KBR');
INSERT INTO `airport_codes` VALUES (null, 'Kota Kinabalu, Malaysia ', 'BKI');
INSERT INTO `airport_codes` VALUES (null, 'Kotlik, AK ', 'KOT');
INSERT INTO `airport_codes` VALUES (null, 'Kotzebue, AK ', 'OTZ');
INSERT INTO `airport_codes` VALUES (null, 'Kowanyama, QL, Australia ', 'KWM');
INSERT INTO `airport_codes` VALUES (null, 'Koyukuk, AK ', 'KYU');
INSERT INTO `airport_codes` VALUES (null, 'Kozhikode, India ', 'CCJ');
INSERT INTO `airport_codes` VALUES (null, 'Krabi, Thailand ', 'KBV');
INSERT INTO `airport_codes` VALUES (null, 'Krakow, Poland ', 'KRK');
INSERT INTO `airport_codes` VALUES (null, 'Krivoy Rog, Ukraine ', 'KWG');
INSERT INTO `airport_codes` VALUES (null, 'Kuala Lumpur, Malaysia ', 'KUL');
INSERT INTO `airport_codes` VALUES (null, 'Kuala Terengganu, Malaysia ', 'TGG');
INSERT INTO `airport_codes` VALUES (null, 'Kuantan, Malaysia ', 'KUA');
INSERT INTO `airport_codes` VALUES (null, 'Kubin Island, QL, Australia ', 'KUG');
INSERT INTO `airport_codes` VALUES (null, 'Kuching, Malaysia ', 'KCH');
INSERT INTO `airport_codes` VALUES (null, 'Kudat, Malaysia ', 'KUD');
INSERT INTO `airport_codes` VALUES (null, 'Kufrah, Libya ', 'AKF');
INSERT INTO `airport_codes` VALUES (null, 'Kugaaruk, NU ', 'YBB');
INSERT INTO `airport_codes` VALUES (null, 'Kugluktuk/Coppermine, NU ', 'YCO');
INSERT INTO `airport_codes` VALUES (null, 'Kulusuk, Greenland ', 'KUS');
INSERT INTO `airport_codes` VALUES (null, 'Kumejima, Japan ', 'UEO');
INSERT INTO `airport_codes` VALUES (null, 'Kundiawa, Papau New Guinea ', 'CMU');
INSERT INTO `airport_codes` VALUES (null, 'Kuopio, Finland ', 'KUO');
INSERT INTO `airport_codes` VALUES (null, 'Kuri, Papua New Guinea ', 'KUQ');
INSERT INTO `airport_codes` VALUES (null, 'Kushiro, Japan ', 'KUH');
INSERT INTO `airport_codes` VALUES (null, 'Kutaisi, Georgia ', 'KUT');
INSERT INTO `airport_codes` VALUES (null, 'Kuujjuaq, QC ', 'YVP');
INSERT INTO `airport_codes` VALUES (null, 'Kuujjuarapik, QC ', 'YGW');
INSERT INTO `airport_codes` VALUES (null, 'Kuusamo, Finland ', 'KAO');
INSERT INTO `airport_codes` VALUES (null, 'Kuwait, Kuwait ', 'KWI');
INSERT INTO `airport_codes` VALUES (null, 'Kwajalein, Marshall Islands ', 'KWA');
INSERT INTO `airport_codes` VALUES (null, 'Kwethluk, AK ', 'KWT');
INSERT INTO `airport_codes` VALUES (null, 'Kwigillingok, AK ', 'KWK');
INSERT INTO `airport_codes` VALUES (null, 'Kyzyl, Russia ', 'KYZ');
INSERT INTO `airport_codes` VALUES (null, 'La Ceiba, Honduras ', 'LCE');
INSERT INTO `airport_codes` VALUES (null, 'La Coruna, Spain ', 'LCG');
INSERT INTO `airport_codes` VALUES (null, 'La Crosse, WI ', 'LSE');
INSERT INTO `airport_codes` VALUES (null, 'La Grande, QC ', 'YGL');
INSERT INTO `airport_codes` VALUES (null, 'La Palma, Panama ', 'PLP');
INSERT INTO `airport_codes` VALUES (null, 'La Paz, Bolivia ', 'LPB');
INSERT INTO `airport_codes` VALUES (null, 'La Paz, Mexico ', 'LAP');
INSERT INTO `airport_codes` VALUES (null, 'La Rioja, Argentina ', 'IRJ');
INSERT INTO `airport_codes` VALUES (null, 'La Romana, Dominican Republic ', 'LRM');
INSERT INTO `airport_codes` VALUES (null, 'La Ronge, SK ', 'YVC');
INSERT INTO `airport_codes` VALUES (null, 'La Serena, Chile ', 'LSC');
INSERT INTO `airport_codes` VALUES (null, 'La Tabatiere, QC ', 'ZLT');
INSERT INTO `airport_codes` VALUES (null, 'La Tuque, QC ', 'YLQ');
INSERT INTO `airport_codes` VALUES (null, 'Laayoune, Morocco ', 'EUN');
INSERT INTO `airport_codes` VALUES (null, 'Labasa, Fiji ', 'LBS');
INSERT INTO `airport_codes` VALUES (null, 'Lablab, Papua New Guinea ', 'LAB');
INSERT INTO `airport_codes` VALUES (null, 'Labuan Bajo, Indonesia ', 'LBJ');
INSERT INTO `airport_codes` VALUES (null, 'Labuan, Malaysia ', 'LBU');
INSERT INTO `airport_codes` VALUES (null, 'Lac Brochet, MB ', 'XLB');
INSERT INTO `airport_codes` VALUES (null, 'Lac Edouard, QC - Rail service ', 'XEE');
INSERT INTO `airport_codes` VALUES (null, 'Ladysmith, BC - Rail service ', 'XEH');
INSERT INTO `airport_codes` VALUES (null, 'Lae Island, Marshall Islands ', 'LML');
INSERT INTO `airport_codes` VALUES (null, 'Lae, Papua New Guinea ', 'LAE');
INSERT INTO `airport_codes` VALUES (null, 'Lafayette, IN ', 'LAF');
INSERT INTO `airport_codes` VALUES (null, 'Lafayette, LA ', 'LFT');
INSERT INTO `airport_codes` VALUES (null, 'Lages, SC, Brazil ', 'LAJ');
INSERT INTO `airport_codes` VALUES (null, 'Lago Agrio, Ecuador ', 'LGQ');
INSERT INTO `airport_codes` VALUES (null, 'Lago Argentina, Argentina ', 'ING');
INSERT INTO `airport_codes` VALUES (null, 'Lagos, Nigeria ', 'LOS');
INSERT INTO `airport_codes` VALUES (null, 'Lahadbatu, Malaysia ', 'LDU');
INSERT INTO `airport_codes` VALUES (null, 'Lahore, Pakistan ', 'LHE');
INSERT INTO `airport_codes` VALUES (null, 'Lake Charles, LA ', 'LCH');
INSERT INTO `airport_codes` VALUES (null, 'Lake Havasu City, AZ ', 'HII');
INSERT INTO `airport_codes` VALUES (null, 'Lake Minchumina, AK ', 'LMA');
INSERT INTO `airport_codes` VALUES (null, 'Lakeba, Fiji ', 'LKB');
INSERT INTO `airport_codes` VALUES (null, 'Lakselv, Norway ', 'LKL');
INSERT INTO `airport_codes` VALUES (null, 'Lalibela, Ethiopia ', 'LLI');
INSERT INTO `airport_codes` VALUES (null, 'Lamap, Vanuatu ', 'LPM');
INSERT INTO `airport_codes` VALUES (null, 'Lamen Bay, Vanuatu ', 'LNB');
INSERT INTO `airport_codes` VALUES (null, 'Lamezia-Terme, Italy ', 'SUF');
INSERT INTO `airport_codes` VALUES (null, 'Lampang, Thailand ', 'LPI');
INSERT INTO `airport_codes` VALUES (null, 'Lampedusa, Italy ', 'LMP');
INSERT INTO `airport_codes` VALUES (null, 'Lamu, Kenya ', 'LAU');
INSERT INTO `airport_codes` VALUES (null, 'Lanai City, HI - Island of Lanai ', 'LNY');
INSERT INTO `airport_codes` VALUES (null, 'Lancaster, PA ', 'LNS');
INSERT INTO `airport_codes` VALUES (null, 'Lands End, United Kingdom ', 'LEQ');
INSERT INTO `airport_codes` VALUES (null, 'Langford, BC - Rail service ', 'XEJ');
INSERT INTO `airport_codes` VALUES (null, 'Langguri, Indonesia ', 'LUV');
INSERT INTO `airport_codes` VALUES (null, 'Langkawi, Malaysia ', 'LGK');
INSERT INTO `airport_codes` VALUES (null, 'Lannion, France ', 'LAI');
INSERT INTO `airport_codes` VALUES (null, 'Lansdowne House, ON ', 'YLH');
INSERT INTO `airport_codes` VALUES (null, 'Lansing, MI ', 'LAN');
INSERT INTO `airport_codes` VALUES (null, 'Lanzarote, Spain ', 'ACE');
INSERT INTO `airport_codes` VALUES (null, 'Lanzhau, Guinea ', 'LHW');
INSERT INTO `airport_codes` VALUES (null, 'Lanzhou, China ', 'ZGC');
INSERT INTO `airport_codes` VALUES (null, 'Laoag, Philippines ', 'LAO');
INSERT INTO `airport_codes` VALUES (null, 'Lappeenranta, Finland ', 'LPP');
INSERT INTO `airport_codes` VALUES (null, 'Laramie, WY ', 'LAR');
INSERT INTO `airport_codes` VALUES (null, 'Larantuka, Indonesia ', 'LKA');
INSERT INTO `airport_codes` VALUES (null, 'Laredo, TX ', 'LRD');
INSERT INTO `airport_codes` VALUES (null, 'Larnaca, Cyprus ', 'LCA');
INSERT INTO `airport_codes` VALUES (null, 'Larochelle, France ', 'LRH');
INSERT INTO `airport_codes` VALUES (null, 'Las Palmas, Spain ', 'LPA');
INSERT INTO `airport_codes` VALUES (null, 'Las Piedras, Venezuela ', 'LSP');
INSERT INTO `airport_codes` VALUES (null, 'Las Vegas, NV ', 'LAS');
INSERT INTO `airport_codes` VALUES (null, 'Latakia, Syria ', 'LTK');
INSERT INTO `airport_codes` VALUES (null, 'Latrobe, PA ', 'LBE');
INSERT INTO `airport_codes` VALUES (null, 'Laucala Island, Fiji ', 'LUC');
INSERT INTO `airport_codes` VALUES (null, 'Launceston, TS, Australia ', 'LST');
INSERT INTO `airport_codes` VALUES (null, 'Laurel, MS ', 'PIB');
INSERT INTO `airport_codes` VALUES (null, 'Laverton, WA, Australia ', 'LVO');
INSERT INTO `airport_codes` VALUES (null, 'Lawas, Malaysia ', 'LWY');
INSERT INTO `airport_codes` VALUES (null, 'Lawton, OK ', 'LAW');
INSERT INTO `airport_codes` VALUES (null, 'Le Havre, France ', 'LEH');
INSERT INTO `airport_codes` VALUES (null, 'Le Mans, France ', 'ZLN');
INSERT INTO `airport_codes` VALUES (null, 'Le Puy, France ', 'LPY');
INSERT INTO `airport_codes` VALUES (null, 'Le Touquet, France ', 'LTQ');
INSERT INTO `airport_codes` VALUES (null, 'Leaf Rapids, MB ', 'YLR');
INSERT INTO `airport_codes` VALUES (null, 'Learmonth, WA, Australia ', 'LEA');
INSERT INTO `airport_codes` VALUES (null, 'Lebanon, NH ', 'LEB');
INSERT INTO `airport_codes` VALUES (null, 'Leeds, United Kingdom ', 'LBA');
INSERT INTO `airport_codes` VALUES (null, 'Legaspi, Philippines ', 'LGP');
INSERT INTO `airport_codes` VALUES (null, 'Leh, India ', 'IXL');
INSERT INTO `airport_codes` VALUES (null, 'Leinster, WA, Australia ', 'LER');
INSERT INTO `airport_codes` VALUES (null, 'Leipzig, Germany ', 'LEJ');
INSERT INTO `airport_codes` VALUES (null, 'Leknes, Norway ', 'LKN');
INSERT INTO `airport_codes` VALUES (null, 'Lemnos, Greece ', 'LXS');
INSERT INTO `airport_codes` VALUES (null, 'Leon, Mexico ', 'BJX');
INSERT INTO `airport_codes` VALUES (null, 'Leonora, WA, Australia ', 'LNO');
INSERT INTO `airport_codes` VALUES (null, 'Lethbridge, AB ', 'YQL');
INSERT INTO `airport_codes` VALUES (null, 'Leticia, Colombia ', 'LET');
INSERT INTO `airport_codes` VALUES (null, 'Levelock, AK ', 'KLL');
INSERT INTO `airport_codes` VALUES (null, 'Lewisburg, WV ', 'LWB');
INSERT INTO `airport_codes` VALUES (null, 'Lewiston, ID ', 'LWS');
INSERT INTO `airport_codes` VALUES (null, 'Lewistown, MT ', 'LWT');
INSERT INTO `airport_codes` VALUES (null, 'Lexington, KY ', 'LEX');
INSERT INTO `airport_codes` VALUES (null, 'Lhasa, China ', 'LXA');
INSERT INTO `airport_codes` VALUES (null, 'Lianyungang, China ', 'LYG');
INSERT INTO `airport_codes` VALUES (null, 'Liberal, KS ', 'LBL');
INSERT INTO `airport_codes` VALUES (null, 'Liberia, Costa Rica ', 'LIR');
INSERT INTO `airport_codes` VALUES (null, 'Libreville, Gabon ', 'LBV');
INSERT INTO `airport_codes` VALUES (null, 'Lichinga, Mozambique ', 'VXC');
INSERT INTO `airport_codes` VALUES (null, 'Liege, Belgium ', 'LGG');
INSERT INTO `airport_codes` VALUES (null, 'Lifa, New Caledonia ', 'LIF');
INSERT INTO `airport_codes` VALUES (null, 'Lightning Ridge, NS, Australia ', 'LHG');
INSERT INTO `airport_codes` VALUES (null, 'Lihir Island, Papua New Guinea ', 'LNV');
INSERT INTO `airport_codes` VALUES (null, 'Lihue, HI - Island of Kaui ', 'LIH');
INSERT INTO `airport_codes` VALUES (null, 'Lijiang City, China ', 'LJG');
INSERT INTO `airport_codes` VALUES (null, 'Likiep Island, Marshall Islands ', 'LIK');
INSERT INTO `airport_codes` VALUES (null, 'Lille, France - Lesquin ', 'LIL');
INSERT INTO `airport_codes` VALUES (null, 'Lille, France - Rail service ', 'XDB');
INSERT INTO `airport_codes` VALUES (null, 'Lilongwe, Malawi ', 'LLW');
INSERT INTO `airport_codes` VALUES (null, 'Lima, Peru ', 'LIM');
INSERT INTO `airport_codes` VALUES (null, 'Limbang, Malaysia ', 'LMN');
INSERT INTO `airport_codes` VALUES (null, 'Limoges, France ', 'LIG');
INSERT INTO `airport_codes` VALUES (null, 'Lincoln, NE ', 'LNK');
INSERT INTO `airport_codes` VALUES (null, 'Lindeman Island, QL, Australia ', 'LDC');
INSERT INTO `airport_codes` VALUES (null, 'Lindi, Tanzania ', 'LDI');
INSERT INTO `airport_codes` VALUES (null, 'Linkoping, Sweden ', 'LPI');
INSERT INTO `airport_codes` VALUES (null, 'Linyi, China ', 'LYI');
INSERT INTO `airport_codes` VALUES (null, 'Linz, Austria ', 'LNZ');
INSERT INTO `airport_codes` VALUES (null, 'Lisbon, Portugal ', 'LIS');
INSERT INTO `airport_codes` VALUES (null, 'Lismore, NS, Australia ', 'LSY');
INSERT INTO `airport_codes` VALUES (null, 'Little Rock, AR ', 'LIT');
INSERT INTO `airport_codes` VALUES (null, 'Liuzhou, China ', 'LZH');
INSERT INTO `airport_codes` VALUES (null, 'Liverpool, United Kingdom ', 'LPL');
INSERT INTO `airport_codes` VALUES (null, 'Livingstone, Zambia ', 'LVI');
INSERT INTO `airport_codes` VALUES (null, 'Lizard Island, QL, Australia ', 'LZR');
INSERT INTO `airport_codes` VALUES (null, 'Ljubliana, Slovenia ', 'LJU');
INSERT INTO `airport_codes` VALUES (null, 'Lloydminister, AB ', 'YLL');
INSERT INTO `airport_codes` VALUES (null, 'Lockhart River, Australia ', 'IRG');
INSERT INTO `airport_codes` VALUES (null, 'Loen, Marshall Islands ', 'LOF');
INSERT INTO `airport_codes` VALUES (null, 'Loja, Ecuador ', 'LOH');
INSERT INTO `airport_codes` VALUES (null, 'Lome, Togo ', 'LFW');
INSERT INTO `airport_codes` VALUES (null, 'London, ON - Municipal Airport ', 'YXU');
INSERT INTO `airport_codes` VALUES (null, 'London, ON - Rail service ', 'XDQ');
INSERT INTO `airport_codes` VALUES (null, 'London, United Kingdom - All airports ', 'LON');
INSERT INTO `airport_codes` VALUES (null, 'London, United Kingdom - Biggin Hill ', 'BQH');
INSERT INTO `airport_codes` VALUES (null, 'London, United Kingdom - Gatwick ', 'LGW');
INSERT INTO `airport_codes` VALUES (null, 'London, United Kingdom - Heathrow ', 'LHR');
INSERT INTO `airport_codes` VALUES (null, 'London, United Kingdom - London City ', 'LCY');
INSERT INTO `airport_codes` VALUES (null, 'London, United Kingdom - Luton ', 'LTN');
INSERT INTO `airport_codes` VALUES (null, 'London, United Kingdom - Stansted ', 'STN');
INSERT INTO `airport_codes` VALUES (null, 'Londonderry, United Kingdom ', 'LDY');
INSERT INTO `airport_codes` VALUES (null, 'London-Paddington, United Kingdom - Rail service ', 'QQP');
INSERT INTO `airport_codes` VALUES (null, 'Londrina, PR, Brazil ', 'LDB');
INSERT INTO `airport_codes` VALUES (null, 'Long Apung, Indonesia ', 'LPU');
INSERT INTO `airport_codes` VALUES (null, 'Long Banga, Malaysia ', 'LBP');
INSERT INTO `airport_codes` VALUES (null, 'Long Bawan, Indonesia ', 'LBW');
INSERT INTO `airport_codes` VALUES (null, 'Long Beach, CA ', 'LGB');
INSERT INTO `airport_codes` VALUES (null, 'Long Island, Australia ', 'HAP');
INSERT INTO `airport_codes` VALUES (null, 'Long Island/Deadmans Cay, Bahamas ', 'LGI');
INSERT INTO `airport_codes` VALUES (null, 'Long Lellang, Malaysia ', 'LGL');
INSERT INTO `airport_codes` VALUES (null, 'Long Seridan, Malaysia ', 'ODN');
INSERT INTO `airport_codes` VALUES (null, 'Longana, Vanuatu ', 'LOD');
INSERT INTO `airport_codes` VALUES (null, 'Longreach, QL, Australia ', 'LRE');
INSERT INTO `airport_codes` VALUES (null, 'Longview, TX ', 'GGG');
INSERT INTO `airport_codes` VALUES (null, 'Longyearbyen, Svalbard & Jan Mayen Island ', 'LYR');
INSERT INTO `airport_codes` VALUES (null, 'Lonorore, Vanuatu ', 'LNE');
INSERT INTO `airport_codes` VALUES (null, 'Lopez Island, WA ', 'LPS');
INSERT INTO `airport_codes` VALUES (null, 'Lord Howe Island, NS, Australia ', 'LDH');
INSERT INTO `airport_codes` VALUES (null, 'Loreto, Mexico ', 'LTO');
INSERT INTO `airport_codes` VALUES (null, 'Lorient, France ', 'LRT');
INSERT INTO `airport_codes` VALUES (null, 'Los Angeles, CA ', 'LAX');
INSERT INTO `airport_codes` VALUES (null, 'Los Cabos, Mexico ', 'SJD');
INSERT INTO `airport_codes` VALUES (null, 'Los Mochis, Mexico ', 'LMM');
INSERT INTO `airport_codes` VALUES (null, 'Losuia, Papua New Guinea ', 'LSA');
INSERT INTO `airport_codes` VALUES (null, 'Louisville, KY ', 'SDF');
INSERT INTO `airport_codes` VALUES (null, 'Lourdes/Tarbes, France ', 'LDE');
INSERT INTO `airport_codes` VALUES (null, 'Loveland/Fort Collins, CO - Bus service ', 'QWF');
INSERT INTO `airport_codes` VALUES (null, 'Loveland/Fort Collins, CO - Municipal Airport ', 'FNL');
INSERT INTO `airport_codes` VALUES (null, 'Lozaro Cardenas, Mexico ', 'LZC');
INSERT INTO `airport_codes` VALUES (null, 'Luanda, Angola ', 'LAD');
INSERT INTO `airport_codes` VALUES (null, 'Luanda, Angola ', 'LAD');
INSERT INTO `airport_codes` VALUES (null, 'Luang Namtha, Laos ', 'LXG');
INSERT INTO `airport_codes` VALUES (null, 'Luang Prabang, Laos ', 'LPQ');
INSERT INTO `airport_codes` VALUES (null, 'Lubbock, TX ', 'LBB');
INSERT INTO `airport_codes` VALUES (null, 'Lucknow, India ', 'LKO');
INSERT INTO `airport_codes` VALUES (null, 'Luderitz, Namibia ', 'LUD');
INSERT INTO `airport_codes` VALUES (null, 'Lugano, Switzerland ', 'LUG');
INSERT INTO `airport_codes` VALUES (null, 'Lugansk, Uganda ', 'VSG');
INSERT INTO `airport_codes` VALUES (null, 'Lukla, Nepal ', 'LUA');
INSERT INTO `airport_codes` VALUES (null, 'Lulea, Sweden ', 'LLA');
INSERT INTO `airport_codes` VALUES (null, 'Lumbashi, Congo ', 'FBM');
INSERT INTO `airport_codes` VALUES (null, 'Luoyang, China ', 'LYA');
INSERT INTO `airport_codes` VALUES (null, 'Lusaka, Zambia ', 'LUN');
INSERT INTO `airport_codes` VALUES (null, 'Lutselke/Snowdrift, NT ', 'YSG');
INSERT INTO `airport_codes` VALUES (null, 'Luwuk, Indonesia ', 'LUW');
INSERT INTO `airport_codes` VALUES (null, 'Luxembourg, Luxembourg ', 'LUX');
INSERT INTO `airport_codes` VALUES (null, 'Luxi, China ', 'LUM');
INSERT INTO `airport_codes` VALUES (null, 'Luxor, Egypt ', 'LXR');
INSERT INTO `airport_codes` VALUES (null, 'Luzhou, China ', 'LZO');
INSERT INTO `airport_codes` VALUES (null, 'Lvov, Ukraine ', 'LWO');
INSERT INTO `airport_codes` VALUES (null, 'Lyoksele, Sweden ', 'LYC');
INSERT INTO `airport_codes` VALUES (null, 'Lyon, France - Lyon Part-Dieu Rail service ', 'XYD');
INSERT INTO `airport_codes` VALUES (null, 'Lyon, France - Satolas ', 'LYS');
INSERT INTO `airport_codes` VALUES (null, 'Maastricht, Netherlands ', 'MST');
INSERT INTO `airport_codes` VALUES (null, 'Mabuiag Island, QL, Australia ', 'UBB');
INSERT INTO `airport_codes` VALUES (null, 'Macapa, AP, Brazil ', 'MCP');
INSERT INTO `airport_codes` VALUES (null, 'Macas, Ecuador ', 'XMS');
INSERT INTO `airport_codes` VALUES (null, 'Macau, China ', 'MFM');
INSERT INTO `airport_codes` VALUES (null, 'Maceio, AL, Brazil ', 'MCZ');
INSERT INTO `airport_codes` VALUES (null, 'Machala, Ecuador ', 'MCH');
INSERT INTO `airport_codes` VALUES (null, 'Mackay, QL, Australia ', 'MKY');
INSERT INTO `airport_codes` VALUES (null, 'Macon, GA ', 'MCN');
INSERT INTO `airport_codes` VALUES (null, 'Madang, Papua New Guinea ', 'MAG');
INSERT INTO `airport_codes` VALUES (null, 'Madinah, Saudi Arabia ', 'MED');
INSERT INTO `airport_codes` VALUES (null, 'Madison, WI ', 'MSN');
INSERT INTO `airport_codes` VALUES (null, 'Madras, OR ', 'MDJ');
INSERT INTO `airport_codes` VALUES (null, 'Madrid, Spain ', 'MAD');
INSERT INTO `airport_codes` VALUES (null, 'Madurai, India ', 'IXM');
INSERT INTO `airport_codes` VALUES (null, 'Mae Hong Son, Thailand ', 'HGN');
INSERT INTO `airport_codes` VALUES (null, 'Mae Sot, Thailand ', 'MAQ');
INSERT INTO `airport_codes` VALUES (null, 'Maewo, Vanuatu ', 'MWF');
INSERT INTO `airport_codes` VALUES (null, 'Mafia, Tanzania ', 'MFA');
INSERT INTO `airport_codes` VALUES (null, 'Magadan, Russia ', 'GDX');
INSERT INTO `airport_codes` VALUES (null, 'Magnitogorsk, Russia ', 'MQF');
INSERT INTO `airport_codes` VALUES (null, 'Mahanoro, Madagascar ', 'VVB');
INSERT INTO `airport_codes` VALUES (null, 'Mahe Island, Seychelles ', 'SEZ');
INSERT INTO `airport_codes` VALUES (null, 'Maintirano, Madagascar ', 'MXT');
INSERT INTO `airport_codes` VALUES (null, 'Maio, Cape Verde ', 'MMO');
INSERT INTO `airport_codes` VALUES (null, 'Majkin, Marshall Islands ', 'MJE');
INSERT INTO `airport_codes` VALUES (null, 'Majunga, Madagascar ', 'MJN');
INSERT INTO `airport_codes` VALUES (null, 'Majuro, Marshall Islands ', 'MAJ');
INSERT INTO `airport_codes` VALUES (null, 'Makale, Ethiopia ', 'MQX');
INSERT INTO `airport_codes` VALUES (null, 'Makhachkala, Russia ', 'MCX');
INSERT INTO `airport_codes` VALUES (null, 'Makokou, Gabon ', 'MKU');
INSERT INTO `airport_codes` VALUES (null, 'Makung, Taiwan ', 'MZG');
INSERT INTO `airport_codes` VALUES (null, 'Malabo, Equatorial Guinea ', 'SSG');
INSERT INTO `airport_codes` VALUES (null, 'Malacca, Malaysia ', 'MKZ');
INSERT INTO `airport_codes` VALUES (null, 'Malaga, Spain ', 'AGP');
INSERT INTO `airport_codes` VALUES (null, 'Malakai, Sudan ', 'MAK');
INSERT INTO `airport_codes` VALUES (null, 'Malargue, MD, Argentina ', 'LGS');
INSERT INTO `airport_codes` VALUES (null, 'Malatya, Turkey ', 'MLX');
INSERT INTO `airport_codes` VALUES (null, 'Male, Maldives ', 'MLE');
INSERT INTO `airport_codes` VALUES (null, 'Malindi, Kenya ', 'MYD');
INSERT INTO `airport_codes` VALUES (null, 'Malmo, Sweden ', 'MMX');
INSERT INTO `airport_codes` VALUES (null, 'Maloelap Island, Marshall Islands ', 'MAV');
INSERT INTO `airport_codes` VALUES (null, 'Malololailai, Fiji ', 'PTF');
INSERT INTO `airport_codes` VALUES (null, 'Malta, Malta ', 'MLA');
INSERT INTO `airport_codes` VALUES (null, 'Mampikony, Madagascar ', 'WMP');
INSERT INTO `airport_codes` VALUES (null, 'Mana Island, Fiji ', 'MNF');
INSERT INTO `airport_codes` VALUES (null, 'Manado, Indonesia ', 'MDC');
INSERT INTO `airport_codes` VALUES (null, 'Managua, Nicaragua ', 'MGA');
INSERT INTO `airport_codes` VALUES (null, 'Manakara, Madagascar ', 'WVK');
INSERT INTO `airport_codes` VALUES (null, 'Mananara, Madagascar ', 'WMR');
INSERT INTO `airport_codes` VALUES (null, 'Manang, Nepal ', 'NGX');
INSERT INTO `airport_codes` VALUES (null, 'Mananjary, Madagascar ', 'MNJ');
INSERT INTO `airport_codes` VALUES (null, 'Manaus, AM, Brazil ', 'MAO');
INSERT INTO `airport_codes` VALUES (null, 'Manchester, NH ', 'MHT');
INSERT INTO `airport_codes` VALUES (null, 'Manchester, United Kingdom ', 'MAN');
INSERT INTO `airport_codes` VALUES (null, 'Mandalay, Myanmar ', 'MDL');
INSERT INTO `airport_codes` VALUES (null, 'Mandritsara, Madagascar ', 'WMA');
INSERT INTO `airport_codes` VALUES (null, 'Mangaia Island, Cook Islands ', 'MGS');
INSERT INTO `airport_codes` VALUES (null, 'Mangalore, India ', 'IXE');
INSERT INTO `airport_codes` VALUES (null, 'Mangrove Cay, Bahamas ', 'MAY');
INSERT INTO `airport_codes` VALUES (null, 'Mangu, Zambia ', 'MNR');
INSERT INTO `airport_codes` VALUES (null, 'Manguna, Papua New Guinea ', 'MFO');
INSERT INTO `airport_codes` VALUES (null, 'Manhattan, KS ', 'MHK');
INSERT INTO `airport_codes` VALUES (null, 'Manihi, French Polynesia ', 'XMH');
INSERT INTO `airport_codes` VALUES (null, 'Manihiki Island, Cook Islands ', 'MHX');
INSERT INTO `airport_codes` VALUES (null, 'Manila, Philippines ', 'MNL');
INSERT INTO `airport_codes` VALUES (null, 'Maningrioa, NT, Australia ', 'MNG');
INSERT INTO `airport_codes` VALUES (null, 'Manistee, MI ', 'MBL');
INSERT INTO `airport_codes` VALUES (null, 'Manizales, Colombia ', 'MZL');
INSERT INTO `airport_codes` VALUES (null, 'Manja, Madagascar ', 'MJA');
INSERT INTO `airport_codes` VALUES (null, 'Mankato, MN ', 'MKT');
INSERT INTO `airport_codes` VALUES (null, 'Manley Hot Springs, AK ', 'MLY');
INSERT INTO `airport_codes` VALUES (null, 'Mannheim, Germany ', 'MHG');
INSERT INTO `airport_codes` VALUES (null, 'Manokotak, AK ', 'KMO');
INSERT INTO `airport_codes` VALUES (null, 'Manokwari, Indonesia ', 'MKW');
INSERT INTO `airport_codes` VALUES (null, 'Manston, United Kingdom ', 'MSE');
INSERT INTO `airport_codes` VALUES (null, 'Manta, Ecuador ', 'MEC');
INSERT INTO `airport_codes` VALUES (null, 'Manus Island, Papua New Guinea ', 'MAS');
INSERT INTO `airport_codes` VALUES (null, 'Manzanillo, Cuba ', 'MZO');
INSERT INTO `airport_codes` VALUES (null, 'Manzanillo, Mexico ', 'ZLO');
INSERT INTO `airport_codes` VALUES (null, 'Manzini, Swaziland ', 'MTS');
INSERT INTO `airport_codes` VALUES (null, 'Mao, Chad ', 'AMO');
INSERT INTO `airport_codes` VALUES (null, 'Maota Savaii Is, Western Samoa ', 'MXS');
INSERT INTO `airport_codes` VALUES (null, 'Maputo, Mozambique ', 'MPM');
INSERT INTO `airport_codes` VALUES (null, 'Mar Del Plata, BA, Argentina ', 'MDQ');
INSERT INTO `airport_codes` VALUES (null, 'Mara Lodges, Kenya ', 'MRE');
INSERT INTO `airport_codes` VALUES (null, 'Maraba, PA, Brazil ', 'MAB');
INSERT INTO `airport_codes` VALUES (null, 'Maracaibo, Venezuela ', 'MAR');
INSERT INTO `airport_codes` VALUES (null, 'Maracay, Venezuela ', 'MYC');
INSERT INTO `airport_codes` VALUES (null, 'Mare, New Caledonia ', 'MEE');
INSERT INTO `airport_codes` VALUES (null, 'Margate, South Africa ', 'MGH');
INSERT INTO `airport_codes` VALUES (null, 'Maribor, Slovenia ', 'MBX');
INSERT INTO `airport_codes` VALUES (null, 'Mariehamn, Finland ', 'MHQ');
INSERT INTO `airport_codes` VALUES (null, 'Marietta, OH/Parkersburg, WV ', 'PKB');
INSERT INTO `airport_codes` VALUES (null, 'Mariitsoq, Greenland ', 'JSU');
INSERT INTO `airport_codes` VALUES (null, 'Marilia, SP, Brazil ', 'MII');
INSERT INTO `airport_codes` VALUES (null, 'Maringa, PR, Brazil ', 'MGF');
INSERT INTO `airport_codes` VALUES (null, 'Marion, IL ', 'MWA');
INSERT INTO `airport_codes` VALUES (null, 'Mariupol, Ukraine ', 'MPW');
INSERT INTO `airport_codes` VALUES (null, 'Maroantsetra, Madagascar ', 'WMN');
INSERT INTO `airport_codes` VALUES (null, 'Marova, Cameroon ', 'MVR');
INSERT INTO `airport_codes` VALUES (null, 'Marquette, MI ', 'MQT');
INSERT INTO `airport_codes` VALUES (null, 'Marseille, France ', 'MRS');
INSERT INTO `airport_codes` VALUES (null, 'Marsh Harbour, Bahamas ', 'MHH');
INSERT INTO `airport_codes` VALUES (null, 'Marshall, AK ', 'MLL');
INSERT INTO `airport_codes` VALUES (null, 'Martha\'s Vineyard, MA ', 'MVY');
INSERT INTO `airport_codes` VALUES (null, 'Martinsburg, PA ', 'AOO');
INSERT INTO `airport_codes` VALUES (null, 'Marudi, Malaysia ', 'MUR');
INSERT INTO `airport_codes` VALUES (null, 'Maryborough, QL, Australia ', 'MBH');
INSERT INTO `airport_codes` VALUES (null, 'Mary\'s Harbour, NL ', 'YMH');
INSERT INTO `airport_codes` VALUES (null, 'Masbate, Philippines ', 'MBT');
INSERT INTO `airport_codes` VALUES (null, 'Maseru, Lesotho ', 'MSU');
INSERT INTO `airport_codes` VALUES (null, 'Mashad, Iran ', 'MHD');
INSERT INTO `airport_codes` VALUES (null, 'Mason City, IA ', 'MCW');
INSERT INTO `airport_codes` VALUES (null, 'Massena, NY ', 'MSS');
INSERT INTO `airport_codes` VALUES (null, 'Matamoros, Mexico ', 'MAM');
INSERT INTO `airport_codes` VALUES (null, 'Mataram, Indonesia ', 'AMI');
INSERT INTO `airport_codes` VALUES (null, 'Matsumoto, Japan ', 'MMJ');
INSERT INTO `airport_codes` VALUES (null, 'Matsuyama, Japan ', 'MYJ');
INSERT INTO `airport_codes` VALUES (null, 'Maturin, Venezuela ', 'MUN');
INSERT INTO `airport_codes` VALUES (null, 'Maui, HI ', 'OGG');
INSERT INTO `airport_codes` VALUES (null, 'Mauke Island, Cook Islands ', 'MUK');
INSERT INTO `airport_codes` VALUES (null, 'Maulmyine, Myanmar ', 'MNU');
INSERT INTO `airport_codes` VALUES (null, 'Maumere, Indonesia ', 'MOF');
INSERT INTO `airport_codes` VALUES (null, 'Maun, Botswana ', 'MUB');
INSERT INTO `airport_codes` VALUES (null, 'Maupiti, French Polynesia ', 'MAU');
INSERT INTO `airport_codes` VALUES (null, 'Mauritius, Mauritius ', 'MRU');
INSERT INTO `airport_codes` VALUES (null, 'Maxville, ON - Rail service ', 'XID');
INSERT INTO `airport_codes` VALUES (null, 'Mayaguana, Bahamas ', 'MYG');
INSERT INTO `airport_codes` VALUES (null, 'Mayaguez, Puerto Rico ', 'MAZ');
INSERT INTO `airport_codes` VALUES (null, 'Mazatlan, Mexico ', 'MZT');
INSERT INTO `airport_codes` VALUES (null, 'Mbandaka, Congo ', 'MDK');
INSERT INTO `airport_codes` VALUES (null, 'Mbuji Mayi, Congo ', 'MJM');
INSERT INTO `airport_codes` VALUES (null, 'Mcallen, TX ', 'MFE');
INSERT INTO `airport_codes` VALUES (null, 'Mcarthur River, NT, Australia ', 'MCV');
INSERT INTO `airport_codes` VALUES (null, 'Mccook, NE ', 'MCK');
INSERT INTO `airport_codes` VALUES (null, 'Mcgrath, AK ', 'MCG');
INSERT INTO `airport_codes` VALUES (null, 'Medan, Indonesia ', 'MES');
INSERT INTO `airport_codes` VALUES (null, 'Medellin, Colombia - Enrique Olaya Herrera ', 'EOH');
INSERT INTO `airport_codes` VALUES (null, 'Medellin, Colombia - Jose Marie Cordova ', 'MDE');
INSERT INTO `airport_codes` VALUES (null, 'Medford, OR ', 'MFR');
INSERT INTO `airport_codes` VALUES (null, 'Medicine Hat, AB ', 'YXH');
INSERT INTO `airport_codes` VALUES (null, 'Meekatharra, WA, Australia ', 'MKR');
INSERT INTO `airport_codes` VALUES (null, 'Mehamn, Norway ', 'MEH');
INSERT INTO `airport_codes` VALUES (null, 'Meixian, China ', 'MXZ');
INSERT INTO `airport_codes` VALUES (null, 'Mejit Island, Marshall Islands ', 'MJB');
INSERT INTO `airport_codes` VALUES (null, 'Mekane Selam, Ethiopia ', 'MKS');
INSERT INTO `airport_codes` VALUES (null, 'Mekoryuk, AK ', 'MYU');
INSERT INTO `airport_codes` VALUES (null, 'Melbourne, FL ', 'MLB');
INSERT INTO `airport_codes` VALUES (null, 'Melbourne, Victoria, Australia ', 'MEL');
INSERT INTO `airport_codes` VALUES (null, 'Melilla, Spain ', 'MLN');
INSERT INTO `airport_codes` VALUES (null, 'Melville, SK - Rail service ', 'XEK');
INSERT INTO `airport_codes` VALUES (null, 'Memanbetsu, Japan ', 'MMB');
INSERT INTO `airport_codes` VALUES (null, 'Memphis, TN ', 'MEM');
INSERT INTO `airport_codes` VALUES (null, 'Mendi, Ethiopia ', 'NDM');
INSERT INTO `airport_codes` VALUES (null, 'Mendi, Papua New Guinea ', 'MDU');
INSERT INTO `airport_codes` VALUES (null, 'Mendoza, MD, Argentina ', 'MDZ');
INSERT INTO `airport_codes` VALUES (null, 'Menorca, Spain ', 'MAH');
INSERT INTO `airport_codes` VALUES (null, 'Menyamya, Papua New Guinea ', 'MYX');
INSERT INTO `airport_codes` VALUES (null, 'Merauke, Indonesia ', 'MKQ');
INSERT INTO `airport_codes` VALUES (null, 'Merave, Sudan ', 'MWE');
INSERT INTO `airport_codes` VALUES (null, 'Merced, CA ', 'MCE');
INSERT INTO `airport_codes` VALUES (null, 'Merdey, Indonesia ', 'RDE');
INSERT INTO `airport_codes` VALUES (null, 'Merida, Mexico ', 'MID');
INSERT INTO `airport_codes` VALUES (null, 'Merida, Venezuela ', 'MRD');
INSERT INTO `airport_codes` VALUES (null, 'Meridian, MS ', 'MEI');
INSERT INTO `airport_codes` VALUES (null, 'Merimbula, NS, Australia ', 'MIM');
INSERT INTO `airport_codes` VALUES (null, 'Mersa Matruh, Egypt ', 'MUH');
INSERT INTO `airport_codes` VALUES (null, 'Metlakatla, AK ', 'MTM');
INSERT INTO `airport_codes` VALUES (null, 'Metz/Nancy, France ', 'ETZ');
INSERT INTO `airport_codes` VALUES (null, 'Mexicali, Mexico ', 'MXL');
INSERT INTO `airport_codes` VALUES (null, 'Mexico City, Mexico ', 'MEX');
INSERT INTO `airport_codes` VALUES (null, 'Meyers Chuck, AK ', 'WMK');
INSERT INTO `airport_codes` VALUES (null, 'Mfume, Zambia ', 'MFU');
INSERT INTO `airport_codes` VALUES (null, 'Miami, FL - International ', 'MIA');
INSERT INTO `airport_codes` VALUES (null, 'Miami, FL - Sea Plane Base ', 'MPB');
INSERT INTO `airport_codes` VALUES (null, 'Miandrivazo, Madagascar ', 'ZVA');
INSERT INTO `airport_codes` VALUES (null, 'Middle Caicos, Turks and Caicos ', 'MDS');
INSERT INTO `airport_codes` VALUES (null, 'Midland, MI ', 'MBS');
INSERT INTO `airport_codes` VALUES (null, 'Midland/Odessa, TX ', 'MAF');
INSERT INTO `airport_codes` VALUES (null, 'Midway Island, US Minor Outlying Islands ', 'MDY');
INSERT INTO `airport_codes` VALUES (null, 'Mikkeli, Finland ', 'MIK');
INSERT INTO `airport_codes` VALUES (null, 'Mikonos, Greece ', 'JMK');
INSERT INTO `airport_codes` VALUES (null, 'Milan, Italy - Linate ', 'LIN');
INSERT INTO `airport_codes` VALUES (null, 'Milan, Italy - Malpensa ', 'MXP');
INSERT INTO `airport_codes` VALUES (null, 'Milan, Italy - Orio Al Serio ', 'BGY');
INSERT INTO `airport_codes` VALUES (null, 'Milan, Italy - Parma ', 'PMF');
INSERT INTO `airport_codes` VALUES (null, 'Mildura, VI, Australia ', 'MQL');
INSERT INTO `airport_codes` VALUES (null, 'Miles City, MT ', 'MLS');
INSERT INTO `airport_codes` VALUES (null, 'Mili Island, Marshall Islands ', 'MIJ');
INSERT INTO `airport_codes` VALUES (null, 'Milingimbi, NT, Australia ', 'MGT');
INSERT INTO `airport_codes` VALUES (null, 'Milwaukee, WI ', 'MKE');
INSERT INTO `airport_codes` VALUES (null, 'Minami Daito, Japan ', 'MMD');
INSERT INTO `airport_codes` VALUES (null, 'Minatitla, Mexico ', 'MTT');
INSERT INTO `airport_codes` VALUES (null, 'Mindiptana, Indonesia ', 'MDP');
INSERT INTO `airport_codes` VALUES (null, 'Mineralnye Vody, Russia ', 'MRV');
INSERT INTO `airport_codes` VALUES (null, 'Minneapolis, MN ', 'MSP');
INSERT INTO `airport_codes` VALUES (null, 'Minot, ND ', 'MOT');
INSERT INTO `airport_codes` VALUES (null, 'Minsk, Belarus - Minsk International 1 ', 'MHP');
INSERT INTO `airport_codes` VALUES (null, 'Minsk, Belarus - Minsk International 2 ', 'MSQ');
INSERT INTO `airport_codes` VALUES (null, 'Minto, AK ', 'MNT');
INSERT INTO `airport_codes` VALUES (null, 'Miramichi, NB - Rail service ', 'XEY');
INSERT INTO `airport_codes` VALUES (null, 'Miri, Malaysia ', 'MYY');
INSERT INTO `airport_codes` VALUES (null, 'Mirnyj, Russia ', 'MJZ');
INSERT INTO `airport_codes` VALUES (null, 'Misawa, Japan ', 'MSJ');
INSERT INTO `airport_codes` VALUES (null, 'Misima Island, Papua New Guinea ', 'MIS');
INSERT INTO `airport_codes` VALUES (null, 'Mission, TX ', 'MFE');
INSERT INTO `airport_codes` VALUES (null, 'Missoula, MT ', 'MSO');
INSERT INTO `airport_codes` VALUES (null, 'Misurata, Libya ', 'MRA');
INSERT INTO `airport_codes` VALUES (null, 'Mitiaro Island, Cook Islands ', 'MOI');
INSERT INTO `airport_codes` VALUES (null, 'MiyakeJima, Japan ', 'MYE');
INSERT INTO `airport_codes` VALUES (null, 'Miyako Jima, Japan ', 'MMY');
INSERT INTO `airport_codes` VALUES (null, 'Mizan Teferi, Ethiopia ', 'MTF');
INSERT INTO `airport_codes` VALUES (null, 'Mo I Rana, Norway ', 'MQN');
INSERT INTO `airport_codes` VALUES (null, 'Moa, Cuba ', 'MOA');
INSERT INTO `airport_codes` VALUES (null, 'Moab, UT ', 'CNY');
INSERT INTO `airport_codes` VALUES (null, 'Moala, Fiji ', 'MFJ');
INSERT INTO `airport_codes` VALUES (null, 'Moanamani, Indonesia ', 'ONI');
INSERT INTO `airport_codes` VALUES (null, 'Moanda, Congo ', 'MNB');
INSERT INTO `airport_codes` VALUES (null, 'Moanda, Gabon ', 'MFF');
INSERT INTO `airport_codes` VALUES (null, 'Mobile, AL ', 'MOB');
INSERT INTO `airport_codes` VALUES (null, 'Modesto, CA ', 'MOD');
INSERT INTO `airport_codes` VALUES (null, 'Mogadishu, Somalia ', 'MGQ');
INSERT INTO `airport_codes` VALUES (null, 'Mohenjodaro, Denmark ', 'MJD');
INSERT INTO `airport_codes` VALUES (null, 'Mokpo, South Korea ', 'MPK');
INSERT INTO `airport_codes` VALUES (null, 'Mokuti Lodge, Namibia ', 'OKU');
INSERT INTO `airport_codes` VALUES (null, 'Molde, Norway ', 'MOL');
INSERT INTO `airport_codes` VALUES (null, 'Moline, IL ', 'MLI');
INSERT INTO `airport_codes` VALUES (null, 'Mombasa, Kenya ', 'MBA');
INSERT INTO `airport_codes` VALUES (null, 'Monastir, Tunisia ', 'MIR');
INSERT INTO `airport_codes` VALUES (null, 'Monbetsu, Japan ', 'MBE');
INSERT INTO `airport_codes` VALUES (null, 'Monclova, Mexico ', 'LOV');
INSERT INTO `airport_codes` VALUES (null, 'Moncton, NB - Airport ', 'YQM');
INSERT INTO `airport_codes` VALUES (null, 'Moncton, NB - Rail service ', 'XDP');
INSERT INTO `airport_codes` VALUES (null, 'Monkey Mia, WA, Australia ', 'MJK');
INSERT INTO `airport_codes` VALUES (null, 'Mono, Solomon Islands ', 'MNY');
INSERT INTO `airport_codes` VALUES (null, 'Monroe, LA ', 'MLU');
INSERT INTO `airport_codes` VALUES (null, 'Monrovia, Liberia ', 'ROB');
INSERT INTO `airport_codes` VALUES (null, 'Mont Joli, QC ', 'YYY');
INSERT INTO `airport_codes` VALUES (null, 'Monte Carlo, Monaco ', 'MCM');
INSERT INTO `airport_codes` VALUES (null, 'Monte Dourado, PA, Brazil ', 'MEU');
INSERT INTO `airport_codes` VALUES (null, 'Montego Bay, Jamaica ', 'MBJ');
INSERT INTO `airport_codes` VALUES (null, 'Monterey, CA ', 'MRY');
INSERT INTO `airport_codes` VALUES (null, 'Monteria, Colombia ', 'MTR');
INSERT INTO `airport_codes` VALUES (null, 'Monterrey, Mexico ', 'MTY');
INSERT INTO `airport_codes` VALUES (null, 'Montes Claros, MG, Brazil ', 'MOC');
INSERT INTO `airport_codes` VALUES (null, 'Montevideo, Uruguay ', 'MVD');
INSERT INTO `airport_codes` VALUES (null, 'Montgomery, AL ', 'MGM');
INSERT INTO `airport_codes` VALUES (null, 'Montpellier, France ', 'MPL');
INSERT INTO `airport_codes` VALUES (null, 'Montreal, QC - all airports ', 'YMQ');
INSERT INTO `airport_codes` VALUES (null, 'Montreal, QC - Dorval ', 'YUL');
INSERT INTO `airport_codes` VALUES (null, 'Montreal, QC - Dorval Rail service ', 'XAX');
INSERT INTO `airport_codes` VALUES (null, 'Montreal, QC - Downtown Rail service ', 'YMY');
INSERT INTO `airport_codes` VALUES (null, 'Montreal, QC - Mirabel ', 'YMX');
INSERT INTO `airport_codes` VALUES (null, 'Montreal, QC - St Lambert Rail service ', 'XLM');
INSERT INTO `airport_codes` VALUES (null, 'Montrose, CO ', 'MTJ');
INSERT INTO `airport_codes` VALUES (null, 'Montserrat, Montserrat ', 'MNI');
INSERT INTO `airport_codes` VALUES (null, 'Moorea, French Polynesia ', 'MOZ');
INSERT INTO `airport_codes` VALUES (null, 'Moosonee, ON ', 'YMO');
INSERT INTO `airport_codes` VALUES (null, 'Mopti, Mali ', 'MZI');
INSERT INTO `airport_codes` VALUES (null, 'Mora, Sweden ', 'MXX');
INSERT INTO `airport_codes` VALUES (null, 'Morafenobe, Madagascar ', 'TVA');
INSERT INTO `airport_codes` VALUES (null, 'Morambe, Madagascar ', 'MXM');
INSERT INTO `airport_codes` VALUES (null, 'Moranbah, QL, Australia ', 'MOV');
INSERT INTO `airport_codes` VALUES (null, 'Moree, NS, Australia ', 'MRZ');
INSERT INTO `airport_codes` VALUES (null, 'Morelia, Mexico ', 'MLM');
INSERT INTO `airport_codes` VALUES (null, 'Morgantown, WV ', 'MGW');
INSERT INTO `airport_codes` VALUES (null, 'Morioka, Japan ', 'HNA');
INSERT INTO `airport_codes` VALUES (null, 'Mornington, QL, Australia ', 'ONG');
INSERT INTO `airport_codes` VALUES (null, 'Moro, Papua New Guinea ', 'MXH');
INSERT INTO `airport_codes` VALUES (null, 'Morondava, Madagascar ', 'MOQ');
INSERT INTO `airport_codes` VALUES (null, 'Moroni, Comoros ', 'HAH');
INSERT INTO `airport_codes` VALUES (null, 'Moruya, NS, Australia ', 'MYA');
INSERT INTO `airport_codes` VALUES (null, 'Moscow, Russia - all locations ', 'MOW');
INSERT INTO `airport_codes` VALUES (null, 'Moscow, Russia - Bykovo ', 'BKA');
INSERT INTO `airport_codes` VALUES (null, 'Moscow, Russia - Domodedovo ', 'DME');
INSERT INTO `airport_codes` VALUES (null, 'Moscow, Russia - Sheremetyevo ', 'SVO');
INSERT INTO `airport_codes` VALUES (null, 'Moscow, Russia - Vnukovo ', 'VKO');
INSERT INTO `airport_codes` VALUES (null, 'Moses Lake, WA ', 'MWH');
INSERT INTO `airport_codes` VALUES (null, 'Mosjoen, Norway ', 'MJF');
INSERT INTO `airport_codes` VALUES (null, 'Mostar, Bosnia and Herzegovina ', 'OMO');
INSERT INTO `airport_codes` VALUES (null, 'Mota Lava, Vanuatu ', 'MTV');
INSERT INTO `airport_codes` VALUES (null, 'Mouila, Gabon ', 'MJL');
INSERT INTO `airport_codes` VALUES (null, 'Mount Cook, New Zealand ', 'MON');
INSERT INTO `airport_codes` VALUES (null, 'Mount Gambier, SA, Australia ', 'MGB');
INSERT INTO `airport_codes` VALUES (null, 'Mount Hagen, Papua New Guinea ', 'HGU');
INSERT INTO `airport_codes` VALUES (null, 'Mount Hotham, VI, Australia ', 'MHU');
INSERT INTO `airport_codes` VALUES (null, 'Mount Isa, Australia ', 'ISA');
INSERT INTO `airport_codes` VALUES (null, 'Mount Keith, WA, Australia ', 'WME');
INSERT INTO `airport_codes` VALUES (null, 'Mount Magnet, WA, Australia ', 'MMG');
INSERT INTO `airport_codes` VALUES (null, 'Mount Pleasant, Falkland Islands ', 'MPN');
INSERT INTO `airport_codes` VALUES (null, 'Mountain Home, AR ', 'WMH');
INSERT INTO `airport_codes` VALUES (null, 'Mountain Village, AK ', 'MOU');
INSERT INTO `airport_codes` VALUES (null, 'Mpacha, Namibia ', 'MPA');
INSERT INTO `airport_codes` VALUES (null, 'Mtwara, Tanzania ', 'MYW');
INSERT INTO `airport_codes` VALUES (null, 'Mucuri, BA, Brazil ', 'MVS');
INSERT INTO `airport_codes` VALUES (null, 'Mudanjiang, China ', 'MDG');
INSERT INTO `airport_codes` VALUES (null, 'Mudgee, Australia ', 'DGE');
INSERT INTO `airport_codes` VALUES (null, 'Muenster, Germany ', 'FMO');
INSERT INTO `airport_codes` VALUES (null, 'Mukan, Malaysia ', 'MKM');
INSERT INTO `airport_codes` VALUES (null, 'Mulhouse, France ', 'MLH');
INSERT INTO `airport_codes` VALUES (null, 'Mulia, Indonesia ', 'LII');
INSERT INTO `airport_codes` VALUES (null, 'Multan, Pakistan ', 'MUX');
INSERT INTO `airport_codes` VALUES (null, 'Mulu, Malaysia ', 'MZV');
INSERT INTO `airport_codes` VALUES (null, 'Mumbai, India ', 'BOM');
INSERT INTO `airport_codes` VALUES (null, 'Munda, Solomon Islands ', 'MUA');
INSERT INTO `airport_codes` VALUES (null, 'Munich, Germany ', 'MUC');
INSERT INTO `airport_codes` VALUES (null, 'Murcia, Spain ', 'MJV');
INSERT INTO `airport_codes` VALUES (null, 'Murmansk, Russia ', 'MMK');
INSERT INTO `airport_codes` VALUES (null, 'Murray Island, QL, Australia ', 'MYI');
INSERT INTO `airport_codes` VALUES (null, 'Mus, Turkey ', 'MSR');
INSERT INTO `airport_codes` VALUES (null, 'Muscat, Oman ', 'MCT');
INSERT INTO `airport_codes` VALUES (null, 'Muscle Shoals, AL ', 'MSL');
INSERT INTO `airport_codes` VALUES (null, 'Muskegon, MI ', 'MKG');
INSERT INTO `airport_codes` VALUES (null, 'Muskrat Dam, ON ', 'MSA');
INSERT INTO `airport_codes` VALUES (null, 'Musoma, Tanzania ', 'MUZ');
INSERT INTO `airport_codes` VALUES (null, 'Muzaffarabad, Pakistan ', 'MFG');
INSERT INTO `airport_codes` VALUES (null, 'Mwanza, Tanzania ', 'MWZ');
INSERT INTO `airport_codes` VALUES (null, 'Myeik, Myanmar ', 'MGZ');
INSERT INTO `airport_codes` VALUES (null, 'Myitkyina, Myanmar ', 'MYT');
INSERT INTO `airport_codes` VALUES (null, 'Myrtle Beach, SC ', 'MYR');
INSERT INTO `airport_codes` VALUES (null, 'Mytilene, Greece ', 'MJT');
INSERT INTO `airport_codes` VALUES (null, 'Mzuzu, Malawi ', 'ZZU');
INSERT INTO `airport_codes` VALUES (null, 'Nabire, Indonesia ', 'NBX');
INSERT INTO `airport_codes` VALUES (null, 'Nacala, Mozambique ', 'MNC');
INSERT INTO `airport_codes` VALUES (null, 'Nadar, Morocco ', 'NDR');
INSERT INTO `airport_codes` VALUES (null, 'Nadi, Fiji ', 'NAN');
INSERT INTO `airport_codes` VALUES (null, 'Nadym, Russia ', 'NYM');
INSERT INTO `airport_codes` VALUES (null, 'Naga, Philippines ', 'WNP');
INSERT INTO `airport_codes` VALUES (null, 'Nagasaki, Japan ', 'NGS');
INSERT INTO `airport_codes` VALUES (null, 'Nagoya, Japan - Chubu CentrAir Intl ', 'NGO');
INSERT INTO `airport_codes` VALUES (null, 'Nagoya, Japan - Nagoya Komaki APT ', 'NGO');
INSERT INTO `airport_codes` VALUES (null, 'Nagpur, India ', 'NAG');
INSERT INTO `airport_codes` VALUES (null, 'Nain, NL ', 'YDP');
INSERT INTO `airport_codes` VALUES (null, 'Nairobi, Kenya - Jomo Kenyatta Intl ', 'NBO');
INSERT INTO `airport_codes` VALUES (null, 'Nairobi, Kenya - Wilson ', 'WIL');
INSERT INTO `airport_codes` VALUES (null, 'Nakhichevan, Azerbaijan ', 'NAJ');
INSERT INTO `airport_codes` VALUES (null, 'Nakhon Ratchosima, Thailand ', 'NAK');
INSERT INTO `airport_codes` VALUES (null, 'Nakhon Si Thammarat, Thailand ', 'NST');
INSERT INTO `airport_codes` VALUES (null, 'Nakina, ON ', 'YQN');
INSERT INTO `airport_codes` VALUES (null, 'Nalchik, Russia ', 'NAL');
INSERT INTO `airport_codes` VALUES (null, 'Namangan, Uzbekistan ', 'NMA');
INSERT INTO `airport_codes` VALUES (null, 'Namatana, Papua New Guinea ', 'ATN');
INSERT INTO `airport_codes` VALUES (null, 'Namorik Island, Marshall Islands ', 'NDK');
INSERT INTO `airport_codes` VALUES (null, 'Nampula, Mozambique ', 'APL');
INSERT INTO `airport_codes` VALUES (null, 'Namsos, Norway ', 'OSY');
INSERT INTO `airport_codes` VALUES (null, 'Namudi, Papua New Guinea ', 'NDI');
INSERT INTO `airport_codes` VALUES (null, 'Nan, Thailand ', 'NNT');
INSERT INTO `airport_codes` VALUES (null, 'Nanaimo, BC - Cassidy Airport ', 'YCD');
INSERT INTO `airport_codes` VALUES (null, 'Nanaimo, BC - Harbour Airport ', 'ZNA');
INSERT INTO `airport_codes` VALUES (null, 'Nanchong, China ', 'NAO');
INSERT INTO `airport_codes` VALUES (null, 'Nanisivik, NU ', 'YSR');
INSERT INTO `airport_codes` VALUES (null, 'Nanking/Nanjing, China ', 'NKG');
INSERT INTO `airport_codes` VALUES (null, 'Nanning, China ', 'NNG');
INSERT INTO `airport_codes` VALUES (null, 'Nanortalik, Greenland ', 'JNN');
INSERT INTO `airport_codes` VALUES (null, 'Nantes, France - Nantes Atlantique ', 'NTE');
INSERT INTO `airport_codes` VALUES (null, 'Nantes, France - Rail service ', 'QJZ');
INSERT INTO `airport_codes` VALUES (null, 'Nantong, China ', 'NTG');
INSERT INTO `airport_codes` VALUES (null, 'Nantucket, MA ', 'ACK');
INSERT INTO `airport_codes` VALUES (null, 'Nanyang, China ', 'NNY');
INSERT INTO `airport_codes` VALUES (null, 'Nanyuki, Kenya ', 'NYK');
INSERT INTO `airport_codes` VALUES (null, 'Napakiak, AK ', 'WNA');
INSERT INTO `airport_codes` VALUES (null, 'Napanee, ON - Rail service ', 'XIF');
INSERT INTO `airport_codes` VALUES (null, 'Napaskiak, AK ', 'PKA');
INSERT INTO `airport_codes` VALUES (null, 'Napier-Hastings, New Zealand ', 'NPE');
INSERT INTO `airport_codes` VALUES (null, 'Naples, FL ', 'APF');
INSERT INTO `airport_codes` VALUES (null, 'Naples, Italy ', 'NAP');
INSERT INTO `airport_codes` VALUES (null, 'Narathiwat, Thailand ', 'NAW');
INSERT INTO `airport_codes` VALUES (null, 'Narrabri, NS, Australia ', 'NAA');
INSERT INTO `airport_codes` VALUES (null, 'Narsaq, Greenland ', 'JNS');
INSERT INTO `airport_codes` VALUES (null, 'Narsarsuaq, Greenland ', 'UAK');
INSERT INTO `airport_codes` VALUES (null, 'Narvik, Norway ', 'NVK');
INSERT INTO `airport_codes` VALUES (null, 'Naryan-Mar, Russia ', 'NNM');
INSERT INTO `airport_codes` VALUES (null, 'Nashville, TN ', 'BNA');
INSERT INTO `airport_codes` VALUES (null, 'Nassau, Bahamas - Paradise Island ', 'NAS');
INSERT INTO `airport_codes` VALUES (null, 'Natadi, Congo ', 'MAT');
INSERT INTO `airport_codes` VALUES (null, 'Natal, RN, Brazil ', 'NAT');
INSERT INTO `airport_codes` VALUES (null, 'Natashquan, QC ', 'YNA');
INSERT INTO `airport_codes` VALUES (null, 'Naukiti, AK ', 'NKI');
INSERT INTO `airport_codes` VALUES (null, 'Nauru Island, Nauru ', 'INU');
INSERT INTO `airport_codes` VALUES (null, 'Navegantes, SC, Brazil ', 'NVT');
INSERT INTO `airport_codes` VALUES (null, 'Nawabshah, Pakistan ', 'WNS');
INSERT INTO `airport_codes` VALUES (null, 'NayUrengoy, Russia ', 'NUX');
INSERT INTO `airport_codes` VALUES (null, 'Ndjamena, Chad ', 'NDJ');
INSERT INTO `airport_codes` VALUES (null, 'Ndola, Zambia ', 'NLA');
INSERT INTO `airport_codes` VALUES (null, 'Neerlerit Inaat, Greenland ', 'CNP');
INSERT INTO `airport_codes` VALUES (null, 'Nefteyugansk, Russia ', 'NFG');
INSERT INTO `airport_codes` VALUES (null, 'Neghelli, Ethiopia ', 'EGL');
INSERT INTO `airport_codes` VALUES (null, 'Negril, Jamaica ', 'NEG');
INSERT INTO `airport_codes` VALUES (null, 'Neiva, Colombia ', 'NVA');
INSERT INTO `airport_codes` VALUES (null, 'Nejran, Saudi Arabia ', 'EAM');
INSERT INTO `airport_codes` VALUES (null, 'Nelso, New Zealand ', 'NSN');
INSERT INTO `airport_codes` VALUES (null, 'Nelson Lagoon, AK ', 'NLG');
INSERT INTO `airport_codes` VALUES (null, 'Nelspruit, South Africa ', 'NLP');
INSERT INTO `airport_codes` VALUES (null, 'Nema, Mauritania ', 'EMN');
INSERT INTO `airport_codes` VALUES (null, 'Nemiscau, QC ', 'YNS');
INSERT INTO `airport_codes` VALUES (null, 'Neryjungri, Russia ', 'NER');
INSERT INTO `airport_codes` VALUES (null, 'Neuquen, NE, Argentina ', 'NQN');
INSERT INTO `airport_codes` VALUES (null, 'Nevis, St. Kitts and Nevis ', 'NEV');
INSERT INTO `airport_codes` VALUES (null, 'New Carlisle, QC - Rail service ', 'XEL');
INSERT INTO `airport_codes` VALUES (null, 'New Chenega, AK ', 'NCN');
INSERT INTO `airport_codes` VALUES (null, 'New Haven, CT ', 'HVN');
INSERT INTO `airport_codes` VALUES (null, 'New Koliganek, AK ', 'KGK');
INSERT INTO `airport_codes` VALUES (null, 'New London/Groton ', 'GON');
INSERT INTO `airport_codes` VALUES (null, 'New London/Groton ', 'GON');
INSERT INTO `airport_codes` VALUES (null, 'New Orleans, LA ', 'MSY');
INSERT INTO `airport_codes` VALUES (null, 'New Plymouth, New Zealand ', 'NPL');
INSERT INTO `airport_codes` VALUES (null, 'New Richmond, QC - Rail service ', 'XEM');
INSERT INTO `airport_codes` VALUES (null, 'New Stuyahok, AK ', 'KNW');
INSERT INTO `airport_codes` VALUES (null, 'New York, NY - All airports ', 'NYC');
INSERT INTO `airport_codes` VALUES (null, 'New York, NY - Kennedy ', 'JFK');
INSERT INTO `airport_codes` VALUES (null, 'New York, NY - La Guardia ', 'LGA');
INSERT INTO `airport_codes` VALUES (null, 'Newark, NJ ', 'EWR');
INSERT INTO `airport_codes` VALUES (null, 'Newburgh/Stewart Field, NY ', 'SWF');
INSERT INTO `airport_codes` VALUES (null, 'Newcastle, New South Wales, Australia ', 'NTL');
INSERT INTO `airport_codes` VALUES (null, 'Newcastle, New South Wales, Australia - Belmont ', 'BEO');
INSERT INTO `airport_codes` VALUES (null, 'Newcastle, United Kingdom ', 'NCL');
INSERT INTO `airport_codes` VALUES (null, 'Newman, WA, Australia ', 'ZNE');
INSERT INTO `airport_codes` VALUES (null, 'Newport News, VA ', 'PHF');
INSERT INTO `airport_codes` VALUES (null, 'Newquay, United Kingdom ', 'NQY');
INSERT INTO `airport_codes` VALUES (null, 'Newtok, AK ', 'WWT');
INSERT INTO `airport_codes` VALUES (null, 'Ngaoundere, Cameroon ', 'NGE');
INSERT INTO `airport_codes` VALUES (null, 'Ngau Island, Fiji ', 'NGI');
INSERT INTO `airport_codes` VALUES (null, 'Ngukurr, NT, Australia ', 'RPM');
INSERT INTO `airport_codes` VALUES (null, 'Nha Trang, Viet Nam ', 'NHA');
INSERT INTO `airport_codes` VALUES (null, 'Niagara Falls, ON - Rail service ', 'XLV');
INSERT INTO `airport_codes` VALUES (null, 'Niamey, Niger ', 'NIM');
INSERT INTO `airport_codes` VALUES (null, 'Nice, France ', 'NCE');
INSERT INTO `airport_codes` VALUES (null, 'Nicosia, Cyprus ', 'NIC');
INSERT INTO `airport_codes` VALUES (null, 'Nightmute, AK ', 'NME');
INSERT INTO `airport_codes` VALUES (null, 'Nikolai, AK ', 'NIB');
INSERT INTO `airport_codes` VALUES (null, 'Nikolski, AK ', 'IKO');
INSERT INTO `airport_codes` VALUES (null, 'Nimes, France ', 'FNI');
INSERT INTO `airport_codes` VALUES (null, 'Ningbo, China ', 'NGB');
INSERT INTO `airport_codes` VALUES (null, 'Nioko, Congo ', 'NIX');
INSERT INTO `airport_codes` VALUES (null, 'Niuafo\'ou, Tonga ', 'NFO');
INSERT INTO `airport_codes` VALUES (null, 'Niuatoputapu, Tonga ', 'NTT');
INSERT INTO `airport_codes` VALUES (null, 'Niue Island, Niue ', 'IUE');
INSERT INTO `airport_codes` VALUES (null, 'Nizhnevartovsk, Russia ', 'NJC');
INSERT INTO `airport_codes` VALUES (null, 'Nizhniy Novgorod, Russia ', 'GOJ');
INSERT INTO `airport_codes` VALUES (null, 'Noatak, AK ', 'WTK');
INSERT INTO `airport_codes` VALUES (null, 'Nojabrxsk, Russia ', 'NOJ');
INSERT INTO `airport_codes` VALUES (null, 'Nome, AK ', 'OME');
INSERT INTO `airport_codes` VALUES (null, 'Nondalton, AK ', 'NNL');
INSERT INTO `airport_codes` VALUES (null, 'Noorvik, AK ', 'ORV');
INSERT INTO `airport_codes` VALUES (null, 'Noranda/Rouyn, QC ', 'YUY');
INSERT INTO `airport_codes` VALUES (null, 'Norderney, Germany ', 'NRD');
INSERT INTO `airport_codes` VALUES (null, 'Nordholz-Speika, Germany ', 'NDZ');
INSERT INTO `airport_codes` VALUES (null, 'Norfolk Island, Norfolk Island ', 'NLK');
INSERT INTO `airport_codes` VALUES (null, 'Norfolk, NE ', 'OFK');
INSERT INTO `airport_codes` VALUES (null, 'Norfolk, VA ', 'ORF');
INSERT INTO `airport_codes` VALUES (null, 'Noril\'sk, Russia ', 'NSK');
INSERT INTO `airport_codes` VALUES (null, 'Norman Wells, NT ', 'YVQ');
INSERT INTO `airport_codes` VALUES (null, 'Normanton, QL, Australia ', 'NTN');
INSERT INTO `airport_codes` VALUES (null, 'Norrkoping, Sweden ', 'NRK');
INSERT INTO `airport_codes` VALUES (null, 'Norsup, Vanuatu ', 'NUS');
INSERT INTO `airport_codes` VALUES (null, 'North Bay, ON ', 'YYB');
INSERT INTO `airport_codes` VALUES (null, 'North Bend, OR ', 'OTH');
INSERT INTO `airport_codes` VALUES (null, 'North Caicos, Turks and Caicos Islands ', 'NCA');
INSERT INTO `airport_codes` VALUES (null, 'North Eleuthera, Bahamas ', 'ELH');
INSERT INTO `airport_codes` VALUES (null, 'North Platte, NE ', 'LBF');
INSERT INTO `airport_codes` VALUES (null, 'North Ronaldsay, United Kingdom ', 'NRL');
INSERT INTO `airport_codes` VALUES (null, 'North Spirit Lake, ON ', 'YNO');
INSERT INTO `airport_codes` VALUES (null, 'Northway, AK ', 'ORT');
INSERT INTO `airport_codes` VALUES (null, 'Norway House, MB ', 'YNE');
INSERT INTO `airport_codes` VALUES (null, 'Norwich, United Kingdom ', 'NWI');
INSERT INTO `airport_codes` VALUES (null, 'Nosara Beach, Costa Rica ', 'NOB');
INSERT INTO `airport_codes` VALUES (null, 'Nossi-be, Madagascar ', 'NOS');
INSERT INTO `airport_codes` VALUES (null, 'Nottingham, United Kingdom ', 'EMA');
INSERT INTO `airport_codes` VALUES (null, 'Nouadhiba, Mauritania ', 'NDB');
INSERT INTO `airport_codes` VALUES (null, 'Nouakchott, Mauritania ', 'NKC');
INSERT INTO `airport_codes` VALUES (null, 'Noumea, New Caledonia - Magenta ', 'GEA');
INSERT INTO `airport_codes` VALUES (null, 'Noumea, New Caledonia - Tontouta ', 'NOU');
INSERT INTO `airport_codes` VALUES (null, 'Novgorod, Russia ', 'NVR');
INSERT INTO `airport_codes` VALUES (null, 'Novokuznetsk, Russia ', 'NOZ');
INSERT INTO `airport_codes` VALUES (null, 'Novosibirsk, Russia - Tolmachevo ', 'OVB');
INSERT INTO `airport_codes` VALUES (null, 'Nueva Gerona, Cuba ', 'GER');
INSERT INTO `airport_codes` VALUES (null, 'Nuevo Laredo, Mexico ', 'NLD');
INSERT INTO `airport_codes` VALUES (null, 'Nuiqsut, AK ', 'NUI');
INSERT INTO `airport_codes` VALUES (null, 'Nuku Hiva, French Polynesia ', 'NHV');
INSERT INTO `airport_codes` VALUES (null, 'Nuku\'Alofa, Tonga ', 'TBU');
INSERT INTO `airport_codes` VALUES (null, 'Nukus, Uzbekistan ', 'NCU');
INSERT INTO `airport_codes` VALUES (null, 'Nulato, AK ', 'NUL');
INSERT INTO `airport_codes` VALUES (null, 'Numbulwar, NT, Australia ', 'NUB');
INSERT INTO `airport_codes` VALUES (null, 'Nunapitchuk, AK ', 'NUP');
INSERT INTO `airport_codes` VALUES (null, 'Nunukan, Indonesia ', 'NNX');
INSERT INTO `airport_codes` VALUES (null, 'Nuremberg, Germany ', 'NUE');
INSERT INTO `airport_codes` VALUES (null, 'Nuremberg, Germany - Rail service ', 'ZAQ');
INSERT INTO `airport_codes` VALUES (null, 'Nuuk, Greenland ', 'GOH');
INSERT INTO `airport_codes` VALUES (null, 'Nyala, Sudan ', 'UYL');
INSERT INTO `airport_codes` VALUES (null, 'Nyaung, Myanmar ', 'NYU');
INSERT INTO `airport_codes` VALUES (null, 'Nyngan, NS, Australia ', 'NYN');
INSERT INTO `airport_codes` VALUES (null, 'Oakland, CA ', 'OAK');
INSERT INTO `airport_codes` VALUES (null, 'Oaxaca, Mexico ', 'OAX');
INSERT INTO `airport_codes` VALUES (null, 'Obano, Indonesia ', 'OBD');
INSERT INTO `airport_codes` VALUES (null, 'Obihiro, Japan ', 'OBO');
INSERT INTO `airport_codes` VALUES (null, 'Ocho Rios, Jamaica ', 'OCJ');
INSERT INTO `airport_codes` VALUES (null, 'Odense, Denmark ', 'ZBQ');
INSERT INTO `airport_codes` VALUES (null, 'Odessa, Ukraine ', 'ODS');
INSERT INTO `airport_codes` VALUES (null, 'Odessa/Midland, TX ', 'MAF');
INSERT INTO `airport_codes` VALUES (null, 'Ogdensburg, NY ', 'OGS');
INSERT INTO `airport_codes` VALUES (null, 'Ogoki, ON ', 'YOG');
INSERT INTO `airport_codes` VALUES (null, 'Ohrid, Macedonia ', 'OHD');
INSERT INTO `airport_codes` VALUES (null, 'Oita, Japan ', 'OIT');
INSERT INTO `airport_codes` VALUES (null, 'Okaba, Indonedia ', 'OKQ');
INSERT INTO `airport_codes` VALUES (null, 'Okayama, Japan ', 'OKJ');
INSERT INTO `airport_codes` VALUES (null, 'Okhotsk, Russia ', 'OHO');
INSERT INTO `airport_codes` VALUES (null, 'Okinawa, Japan ', 'OKA');
INSERT INTO `airport_codes` VALUES (null, 'Oklahoma City, OK ', 'OKC');
INSERT INTO `airport_codes` VALUES (null, 'Okoshiri, Japan ', 'OIR');
INSERT INTO `airport_codes` VALUES (null, 'Oksibil, Indonesia ', 'OKL');
INSERT INTO `airport_codes` VALUES (null, 'Olbia, Italy ', 'OLB');
INSERT INTO `airport_codes` VALUES (null, 'Old Crow, YT ', 'YOC');
INSERT INTO `airport_codes` VALUES (null, 'Olpoi, Vanuatu ', 'OLJ');
INSERT INTO `airport_codes` VALUES (null, 'Olympic Dam, SA, Australia ', 'OLP');
INSERT INTO `airport_codes` VALUES (null, 'Omaha, NE ', 'OMA');
INSERT INTO `airport_codes` VALUES (null, 'Omboue, Gabon ', 'OMB');
INSERT INTO `airport_codes` VALUES (null, 'Omsk, Russia ', 'OMS');
INSERT INTO `airport_codes` VALUES (null, 'Ondangwa, Namibia ', 'OND');
INSERT INTO `airport_codes` VALUES (null, 'Ontario, CA ', 'ONT');
INSERT INTO `airport_codes` VALUES (null, 'Opapamiska Lake, ON ', 'YBS');
INSERT INTO `airport_codes` VALUES (null, 'Oradea, Romania ', 'OMR');
INSERT INTO `airport_codes` VALUES (null, 'Oran, Algeria ', 'ORN');
INSERT INTO `airport_codes` VALUES (null, 'Orange County, CA ', 'SNA');
INSERT INTO `airport_codes` VALUES (null, 'Orange, New South Wales, Australia ', 'OAG');
INSERT INTO `airport_codes` VALUES (null, 'Oranjemund, Namibia ', 'OMD');
INSERT INTO `airport_codes` VALUES (null, 'Orebro, Sweeden - Obrebro-Bofors ', 'ORB');
INSERT INTO `airport_codes` VALUES (null, 'Orenburg, Russia ', 'REN');
INSERT INTO `airport_codes` VALUES (null, 'Orlando, FL - Herndon ', 'ORL');
INSERT INTO `airport_codes` VALUES (null, 'Orlando, FL - International ', 'MCO');
INSERT INTO `airport_codes` VALUES (null, 'Ormara, Pakistan ', 'ORW');
INSERT INTO `airport_codes` VALUES (null, 'Ornskoldsvik, Sweden ', 'OER');
INSERT INTO `airport_codes` VALUES (null, 'Orsk, Russia ', 'OSW');
INSERT INTO `airport_codes` VALUES (null, 'Orsta-Volda, Norway ', 'HOV');
INSERT INTO `airport_codes` VALUES (null, 'Osaka, Japan - all airports ', 'OSA');
INSERT INTO `airport_codes` VALUES (null, 'Osaka, Japan - Itami ', 'ITM');
INSERT INTO `airport_codes` VALUES (null, 'Osaka, Japan - Kansai Intl ', 'KIX');
INSERT INTO `airport_codes` VALUES (null, 'Oshawa, ON ', 'YOO');
INSERT INTO `airport_codes` VALUES (null, 'Oshima, Japan ', 'OIM');
INSERT INTO `airport_codes` VALUES (null, 'Oshkosh, WI ', 'OSH');
INSERT INTO `airport_codes` VALUES (null, 'Osijek, Croatia ', 'OSI');
INSERT INTO `airport_codes` VALUES (null, 'Oskarshamn, Sweden ', 'OSK');
INSERT INTO `airport_codes` VALUES (null, 'Oslo, Norway ', 'OSL');
INSERT INTO `airport_codes` VALUES (null, 'Ostersund, Sweden ', 'OSD');
INSERT INTO `airport_codes` VALUES (null, 'Ostrava, Czech Republic ', 'OSR');
INSERT INTO `airport_codes` VALUES (null, 'Ottawa, ON - International ', 'YOW');
INSERT INTO `airport_codes` VALUES (null, 'Ottawa, ON - Rail service ', 'XDS');
INSERT INTO `airport_codes` VALUES (null, 'Ottumwa, IA ', 'OTM');
INSERT INTO `airport_codes` VALUES (null, 'Otu, Colombia ', 'OTU');
INSERT INTO `airport_codes` VALUES (null, 'Ouagadougou, Burkina Faso ', 'OUA');
INSERT INTO `airport_codes` VALUES (null, 'Ouargla, Algeria ', 'OGX');
INSERT INTO `airport_codes` VALUES (null, 'Ouarzazate, Morocco ', 'OZZ');
INSERT INTO `airport_codes` VALUES (null, 'Oudomxay, Laos ', 'ODY');
INSERT INTO `airport_codes` VALUES (null, 'Oujda, Morocco ', 'OUD');
INSERT INTO `airport_codes` VALUES (null, 'Oulu, Finland ', 'OUL');
INSERT INTO `airport_codes` VALUES (null, 'Ouvea, New Caledonia ', 'UVE');
INSERT INTO `airport_codes` VALUES (null, 'Ovda, Israel ', 'VDA');
INSERT INTO `airport_codes` VALUES (null, 'Owensboro, KY ', 'OWB');
INSERT INTO `airport_codes` VALUES (null, 'Oxford House, MB ', 'YOH');
INSERT INTO `airport_codes` VALUES (null, 'Oxnard/Ventura, CA ', 'OXR');
INSERT INTO `airport_codes` VALUES (null, 'Oyem, Gabon ', 'OYE');
INSERT INTO `airport_codes` VALUES (null, 'Paama, Vanuatu ', 'PBJ');
INSERT INTO `airport_codes` VALUES (null, 'Paamiut, Greenland ', 'JFR');
INSERT INTO `airport_codes` VALUES (null, 'Padang, Indonesia ', 'PDG');
INSERT INTO `airport_codes` VALUES (null, 'Paderborn, Germany ', 'PAD');
INSERT INTO `airport_codes` VALUES (null, 'Paducah, KY ', 'PAH');
INSERT INTO `airport_codes` VALUES (null, 'Page, AZ ', 'PGA');
INSERT INTO `airport_codes` VALUES (null, 'Pago Pago, American Samoa ', 'PPG');
INSERT INTO `airport_codes` VALUES (null, 'Pakse, Laos ', 'PKZ');
INSERT INTO `airport_codes` VALUES (null, 'Pakuashipi, QC ', 'YIF');
INSERT INTO `airport_codes` VALUES (null, 'Pakuba, Uganda ', 'PAF');
INSERT INTO `airport_codes` VALUES (null, 'Palacios, Honduras ', 'PCH');
INSERT INTO `airport_codes` VALUES (null, 'Palang Karaya, Indonesia ', 'PKY');
INSERT INTO `airport_codes` VALUES (null, 'Palanga, Lithuania ', 'PLQ');
INSERT INTO `airport_codes` VALUES (null, 'Palembang, Indonesia ', 'PLM');
INSERT INTO `airport_codes` VALUES (null, 'Palenque, Mexico ', 'PQM');
INSERT INTO `airport_codes` VALUES (null, 'Palermo, Sicily, Italy ', 'PMO');
INSERT INTO `airport_codes` VALUES (null, 'Palm Springs, CA ', 'PSP');
INSERT INTO `airport_codes` VALUES (null, 'Palma Mallorca, Spain and Canary Islands ', 'PMI');
INSERT INTO `airport_codes` VALUES (null, 'Palmar, Costa Rica ', 'PMZ');
INSERT INTO `airport_codes` VALUES (null, 'Palmas, TO, Brazil ', 'PMW');
INSERT INTO `airport_codes` VALUES (null, 'Palmerston North, New Zealand ', 'PMR');
INSERT INTO `airport_codes` VALUES (null, 'Palu, Indonesia ', 'PLW');
INSERT INTO `airport_codes` VALUES (null, 'Pamplona, Spain ', 'PNA');
INSERT INTO `airport_codes` VALUES (null, 'Panama City, FL ', 'PFN');
INSERT INTO `airport_codes` VALUES (null, 'Panama City, Panama - Paitilla ', 'PAC');
INSERT INTO `airport_codes` VALUES (null, 'Panama City, Panama - Tocumen Intl ', 'PTY');
INSERT INTO `airport_codes` VALUES (null, 'Pangkalanboun, Indonesia ', 'PKN');
INSERT INTO `airport_codes` VALUES (null, 'Pangkalpinang, Indonesia ', 'PGK');
INSERT INTO `airport_codes` VALUES (null, 'Pangnirtung, NU ', 'YXP');
INSERT INTO `airport_codes` VALUES (null, 'Panjger, Pakistan ', 'PJG');
INSERT INTO `airport_codes` VALUES (null, 'Pantelleria, Italy ', 'PNL');
INSERT INTO `airport_codes` VALUES (null, 'Papa Westray, United Kingdom ', 'PPW');
INSERT INTO `airport_codes` VALUES (null, 'Papeete, French Polynesia ', 'PPT');
INSERT INTO `airport_codes` VALUES (null, 'Paphos, Cyprus ', 'PFO');
INSERT INTO `airport_codes` VALUES (null, 'Para Chinar, Pakistan ', 'PAJ');
INSERT INTO `airport_codes` VALUES (null, 'Paraburdoo, WA, Australia ', 'PBO');
INSERT INTO `airport_codes` VALUES (null, 'Paradise Island, Bahamas ', 'PID');
INSERT INTO `airport_codes` VALUES (null, 'Paramaribo, Suriname - Zanderij Intl ', 'PBM');
INSERT INTO `airport_codes` VALUES (null, 'Paramaribo, Suriname - Zorg En Hoop ', 'ORG');
INSERT INTO `airport_codes` VALUES (null, 'Parana, ER, Argentina ', 'PRA');
INSERT INTO `airport_codes` VALUES (null, 'Parasi, Solomon Islands ', 'PRS');
INSERT INTO `airport_codes` VALUES (null, 'Parent, QC - Rail service ', 'XFE');
INSERT INTO `airport_codes` VALUES (null, 'Paris, France - All airports ', 'PAR');
INSERT INTO `airport_codes` VALUES (null, 'Paris, France - Beauvais-Tille ', 'BVA');
INSERT INTO `airport_codes` VALUES (null, 'Paris, France - Charles Degaulle ', 'CDG');
INSERT INTO `airport_codes` VALUES (null, 'Paris, France - Orly ', 'ORY');
INSERT INTO `airport_codes` VALUES (null, 'Parkersburg, WV/Marietta, OH ', 'PKB');
INSERT INTO `airport_codes` VALUES (null, 'Parksville, BC - Rail service ', 'XPB');
INSERT INTO `airport_codes` VALUES (null, 'Parma/Milan, Italy ', 'PMF');
INSERT INTO `airport_codes` VALUES (null, 'Parnaiba, PI, Brazil ', 'PHB');
INSERT INTO `airport_codes` VALUES (null, 'Paro, Bhutan ', 'PBH');
INSERT INTO `airport_codes` VALUES (null, 'Pasco, WA ', 'PSC');
INSERT INTO `airport_codes` VALUES (null, 'Pasni, Pakistan ', 'PSI');
INSERT INTO `airport_codes` VALUES (null, 'Paso de Los Libres, Argentina ', 'AOL');
INSERT INTO `airport_codes` VALUES (null, 'Passo Fundo, RS, Brazil ', 'PFB');
INSERT INTO `airport_codes` VALUES (null, 'Pasto, Colombia ', 'PSO');
INSERT INTO `airport_codes` VALUES (null, 'Patna, India ', 'PAT');
INSERT INTO `airport_codes` VALUES (null, 'Patras, Greece ', 'GPA');
INSERT INTO `airport_codes` VALUES (null, 'Pau, France ', 'PUF');
INSERT INTO `airport_codes` VALUES (null, 'Paulatuk, NT ', 'YPC');
INSERT INTO `airport_codes` VALUES (null, 'Pavlodar, Kazakhstan ', 'PWQ');
INSERT INTO `airport_codes` VALUES (null, 'Peace River, AB ', 'YPE');
INSERT INTO `airport_codes` VALUES (null, 'Peawanuck, ON ', 'YPO');
INSERT INTO `airport_codes` VALUES (null, 'Pechora, Russia ', 'PEX');
INSERT INTO `airport_codes` VALUES (null, 'Pedro Bay, AK ', 'PDB');
INSERT INTO `airport_codes` VALUES (null, 'Pekanbaru, Indonesia ', 'PKU');
INSERT INTO `airport_codes` VALUES (null, 'Pelican, AK ', 'PEC');
INSERT INTO `airport_codes` VALUES (null, 'Pellston, MI ', 'PLN');
INSERT INTO `airport_codes` VALUES (null, 'Pelotas, RS, Brazil ', 'PET');
INSERT INTO `airport_codes` VALUES (null, 'Pemba, Mozambique ', 'POL');
INSERT INTO `airport_codes` VALUES (null, 'Pemba, Tanzania - Wawi ', 'PMA');
INSERT INTO `airport_codes` VALUES (null, 'Pembroke, ON ', 'YTA');
INSERT INTO `airport_codes` VALUES (null, 'Penang, Malaysia ', 'PEN');
INSERT INTO `airport_codes` VALUES (null, 'Pendleton, OR ', 'PDT');
INSERT INTO `airport_codes` VALUES (null, 'Penrhyn Island, Cook Islands ', 'PYE');
INSERT INTO `airport_codes` VALUES (null, 'Pensacola, FL ', 'PNS');
INSERT INTO `airport_codes` VALUES (null, 'Penticton, BC ', 'YYF');
INSERT INTO `airport_codes` VALUES (null, 'Penzance, United Kingdom ', 'PZE');
INSERT INTO `airport_codes` VALUES (null, 'Peoria, IL ', 'PIA');
INSERT INTO `airport_codes` VALUES (null, 'Perce, QC - Rail service ', 'XFG');
INSERT INTO `airport_codes` VALUES (null, 'Pereira, Colombia ', 'PEI');
INSERT INTO `airport_codes` VALUES (null, 'Perigueux, France ', 'PGX');
INSERT INTO `airport_codes` VALUES (null, 'Perito Moreno, SC, Argentina ', 'PMQ');
INSERT INTO `airport_codes` VALUES (null, 'Perm, Russia ', 'PEE');
INSERT INTO `airport_codes` VALUES (null, 'Perpignan, France ', 'PGF');
INSERT INTO `airport_codes` VALUES (null, 'Perryville, AK ', 'KPV');
INSERT INTO `airport_codes` VALUES (null, 'Perth, Western Australia, Australia ', 'PER');
INSERT INTO `airport_codes` VALUES (null, 'Perugia, Italy ', 'PEG');
INSERT INTO `airport_codes` VALUES (null, 'Pescara, Italy ', 'PSR');
INSERT INTO `airport_codes` VALUES (null, 'Peshawar, Pakistan ', 'PEW');
INSERT INTO `airport_codes` VALUES (null, 'Petersburg, AK ', 'PSG');
INSERT INTO `airport_codes` VALUES (null, 'Petrolina, PE, Brazil ', 'PNZ');
INSERT INTO `airport_codes` VALUES (null, 'Petropaulousk-Kamchats, Russia ', 'PKC');
INSERT INTO `airport_codes` VALUES (null, 'Petrozavodsk, Russia ', 'PES');
INSERT INTO `airport_codes` VALUES (null, 'Phalaborwa, South Africa ', 'PHW');
INSERT INTO `airport_codes` VALUES (null, 'Philadelphia, PA - International ', 'PHL');
INSERT INTO `airport_codes` VALUES (null, 'Philadelphia, PA - Trenton/Mercer NJ ', 'TTN');
INSERT INTO `airport_codes` VALUES (null, 'Phitsanulok, Thailand ', 'PHS');
INSERT INTO `airport_codes` VALUES (null, 'Phnom Penh, Cambodia ', 'PNH');
INSERT INTO `airport_codes` VALUES (null, 'Phoenix, AZ ', 'PHX');
INSERT INTO `airport_codes` VALUES (null, 'Phrae, Thailand ', 'PRH');
INSERT INTO `airport_codes` VALUES (null, 'Phu Quoc, Viet Nam - Duong Dang ', 'PQC');
INSERT INTO `airport_codes` VALUES (null, 'Phuket, Thailand ', 'HKT');
INSERT INTO `airport_codes` VALUES (null, 'Pickle Lake, ON ', 'YPL');
INSERT INTO `airport_codes` VALUES (null, 'Pico Island, Portugal ', 'PIX');
INSERT INTO `airport_codes` VALUES (null, 'Piedras Negras, Mexico ', 'PDS');
INSERT INTO `airport_codes` VALUES (null, 'Pierre, SD ', 'PIR');
INSERT INTO `airport_codes` VALUES (null, 'Pietermaritzburg, South Africa ', 'PZB');
INSERT INTO `airport_codes` VALUES (null, 'Pietersburb, South Africa ', 'PTG');
INSERT INTO `airport_codes` VALUES (null, 'Pikangikum, ON ', 'YPM');
INSERT INTO `airport_codes` VALUES (null, 'Pilot Point, AK ', 'PIP');
INSERT INTO `airport_codes` VALUES (null, 'Pilot Point, AK - Ugashnik Bay ', 'UGB');
INSERT INTO `airport_codes` VALUES (null, 'Pilot Station, AK ', 'PQS');
INSERT INTO `airport_codes` VALUES (null, 'Pingtung, Taiwan ', 'PIF');
INSERT INTO `airport_codes` VALUES (null, 'Pisa, Italy - Gal Galilei ', 'PSA');
INSERT INTO `airport_codes` VALUES (null, 'Pittsburgh, PA ', 'PIT');
INSERT INTO `airport_codes` VALUES (null, 'Pituffik, Greenland ', 'THU');
INSERT INTO `airport_codes` VALUES (null, 'Piura, Peru ', 'PIU');
INSERT INTO `airport_codes` VALUES (null, 'Placencia, Belize ', 'PLJ');
INSERT INTO `airport_codes` VALUES (null, 'Platinum, AK ', 'PTU');
INSERT INTO `airport_codes` VALUES (null, 'Plattsburgh, NY ', 'PLB');
INSERT INTO `airport_codes` VALUES (null, 'Pleiku, Viet Nam ', 'PXU');
INSERT INTO `airport_codes` VALUES (null, 'Plettenburg Bay, South Africa ', 'PBZ');
INSERT INTO `airport_codes` VALUES (null, 'Plymouth, United Kingdom ', 'PLH');
INSERT INTO `airport_codes` VALUES (null, 'Pocatello, ID ', 'PIH');
INSERT INTO `airport_codes` VALUES (null, 'Podgoriea, Serbia and Montenegro - Golubovci ', 'TGD');
INSERT INTO `airport_codes` VALUES (null, 'Pohnpei, Micronesia ', 'PNI');
INSERT INTO `airport_codes` VALUES (null, 'Point Baker, AK ', 'KPB');
INSERT INTO `airport_codes` VALUES (null, 'Point Hope, AK ', 'PHO');
INSERT INTO `airport_codes` VALUES (null, 'Point Lay, AK ', 'PIZ');
INSERT INTO `airport_codes` VALUES (null, 'Pointe Noire, Congo ', 'PNR');
INSERT INTO `airport_codes` VALUES (null, 'Pointe-a-Pitre, Guadeloupe ', 'PTP');
INSERT INTO `airport_codes` VALUES (null, 'Pointe-aux-Trembles, QC - Rail service ', 'XPX');
INSERT INTO `airport_codes` VALUES (null, 'Points North Landing, SK ', 'YNL');
INSERT INTO `airport_codes` VALUES (null, 'Poitiers, France - Biard ', 'PIS');
INSERT INTO `airport_codes` VALUES (null, 'Poitiers, France - Rail service ', 'XOP');
INSERT INTO `airport_codes` VALUES (null, 'Pokhara, Nepal ', 'PKR');
INSERT INTO `airport_codes` VALUES (null, 'Poltava, Ukraine ', 'PLV');
INSERT INTO `airport_codes` VALUES (null, 'Polyarnyj, Russia ', 'PYJ');
INSERT INTO `airport_codes` VALUES (null, 'Ponca City, OK ', 'PNC');
INSERT INTO `airport_codes` VALUES (null, 'Ponce, Puerto Rico ', 'PSE');
INSERT INTO `airport_codes` VALUES (null, 'Ponce, Puerto Rico ', 'PSE');
INSERT INTO `airport_codes` VALUES (null, 'Pond Inlet, NU ', 'YIO');
INSERT INTO `airport_codes` VALUES (null, 'Ponta Delgada, Portugal ', 'PDL');
INSERT INTO `airport_codes` VALUES (null, 'Ponta Pora, MS, Brazil ', 'PMG');
INSERT INTO `airport_codes` VALUES (null, 'Pontianak, Indonesia ', 'PNK');
INSERT INTO `airport_codes` VALUES (null, 'Poplar Hill, ON ', 'YHP');
INSERT INTO `airport_codes` VALUES (null, 'Popondetta, Papua New Guinea ', 'PNP');
INSERT INTO `airport_codes` VALUES (null, 'Popraol/Tatry, Slovakia ', 'TAT');
INSERT INTO `airport_codes` VALUES (null, 'Porbandar, India ', 'PBD');
INSERT INTO `airport_codes` VALUES (null, 'Pori, Finland ', 'POR');
INSERT INTO `airport_codes` VALUES (null, 'Porlamar, Venezuela ', 'PMV');
INSERT INTO `airport_codes` VALUES (null, 'Port Alberni, BC ', 'YPB');
INSERT INTO `airport_codes` VALUES (null, 'Port Alsworth, AK ', 'PTA');
INSERT INTO `airport_codes` VALUES (null, 'Port Angeles, WA ', 'CLM');
INSERT INTO `airport_codes` VALUES (null, 'Port Antonio, Jamaica ', 'POT');
INSERT INTO `airport_codes` VALUES (null, 'Port Arthur/Beaumont, TX ', 'BPT');
INSERT INTO `airport_codes` VALUES (null, 'Port Au Prince, Haiti ', 'PAP');
INSERT INTO `airport_codes` VALUES (null, 'Port Augusta, SA, Australia ', 'PUG');
INSERT INTO `airport_codes` VALUES (null, 'Port Berge, Madagascar ', 'WPB');
INSERT INTO `airport_codes` VALUES (null, 'Port Blair, India ', 'IXZ');
INSERT INTO `airport_codes` VALUES (null, 'Port Clarence, AK ', 'KPC');
INSERT INTO `airport_codes` VALUES (null, 'Port Elizabeth, South Africa ', 'PLZ');
INSERT INTO `airport_codes` VALUES (null, 'Port Gentil, Gabon ', 'POG');
INSERT INTO `airport_codes` VALUES (null, 'Port Harcourt, Nigeria ', 'PHC');
INSERT INTO `airport_codes` VALUES (null, 'Port Hardy, BC ', 'YZT');
INSERT INTO `airport_codes` VALUES (null, 'Port Headland, WA, Australia ', 'PHE');
INSERT INTO `airport_codes` VALUES (null, 'Port Heiden, AK ', 'PTH');
INSERT INTO `airport_codes` VALUES (null, 'Port Hope Simpson, NL ', 'YHA');
INSERT INTO `airport_codes` VALUES (null, 'Port Lincoln, SA, Australia ', 'PLO');
INSERT INTO `airport_codes` VALUES (null, 'Port Macquarie, NS, Australia ', 'PQQ');
INSERT INTO `airport_codes` VALUES (null, 'Port Meiner, QC ', 'YPN');
INSERT INTO `airport_codes` VALUES (null, 'Port Moller, AK ', 'PML');
INSERT INTO `airport_codes` VALUES (null, 'Port Moresby, Papua New Guinea ', 'POM');
INSERT INTO `airport_codes` VALUES (null, 'Port of Spain, Trinidad ', 'POS');
INSERT INTO `airport_codes` VALUES (null, 'Port Protection, AK ', 'PPV');
INSERT INTO `airport_codes` VALUES (null, 'Port Stanley, Falkland Islands ', 'PSY');
INSERT INTO `airport_codes` VALUES (null, 'Port Sudan, Sudan ', 'PZU');
INSERT INTO `airport_codes` VALUES (null, 'Port Vila, Vanuatu ', 'VLI');
INSERT INTO `airport_codes` VALUES (null, 'Portage Creek, AK ', 'PCA');
INSERT INTO `airport_codes` VALUES (null, 'Portland, ME ', 'PWM');
INSERT INTO `airport_codes` VALUES (null, 'Portland, OR ', 'PDX');
INSERT INTO `airport_codes` VALUES (null, 'Portland, VI, Australia ', 'PTJ');
INSERT INTO `airport_codes` VALUES (null, 'Porto Alegre, RS, Brazil ', 'POA');
INSERT INTO `airport_codes` VALUES (null, 'Porto Santo, Portugal ', 'PXO');
INSERT INTO `airport_codes` VALUES (null, 'Porto Seguro, Brazil ', 'BPS');
INSERT INTO `airport_codes` VALUES (null, 'Porto Velho, RO, Brazil ', 'PVH');
INSERT INTO `airport_codes` VALUES (null, 'Porto, Portugal ', 'OPO');
INSERT INTO `airport_codes` VALUES (null, 'Portoviejo, Ecuador ', 'PVO');
INSERT INTO `airport_codes` VALUES (null, 'Portsmouth, NH ', 'PSM');
INSERT INTO `airport_codes` VALUES (null, 'Posadas, MI, Argentina ', 'PSS');
INSERT INTO `airport_codes` VALUES (null, 'Postville, NL ', 'YSO');
INSERT INTO `airport_codes` VALUES (null, 'Poughkeepsie, NY ', 'POU');
INSERT INTO `airport_codes` VALUES (null, 'Povungnituk, QC ', 'YPX');
INSERT INTO `airport_codes` VALUES (null, 'Powell River, BC ', 'YPW');
INSERT INTO `airport_codes` VALUES (null, 'Poza Rico, Mexico ', 'PAZ');
INSERT INTO `airport_codes` VALUES (null, 'Poznan, Poland ', 'POZ');
INSERT INTO `airport_codes` VALUES (null, 'Prague, Czech Republic ', 'PRG');
INSERT INTO `airport_codes` VALUES (null, 'Praia, Cape Verde ', 'RAI');
INSERT INTO `airport_codes` VALUES (null, 'Pres. Roque Saenz Pena, CH, Argentina ', 'PRQ');
INSERT INTO `airport_codes` VALUES (null, 'Prescott, AZ ', 'PRC');
INSERT INTO `airport_codes` VALUES (null, 'Prescott, ON - Rail service ', 'XII');
INSERT INTO `airport_codes` VALUES (null, 'Presidente Prudente, SP, Brazil ', 'PPB');
INSERT INTO `airport_codes` VALUES (null, 'Presque Isle, ME ', 'PQI');
INSERT INTO `airport_codes` VALUES (null, 'Preveza/Lefkas, Greece ', 'PVK');
INSERT INTO `airport_codes` VALUES (null, 'Prince Albert, SK ', 'YPA');
INSERT INTO `airport_codes` VALUES (null, 'Prince George, BC ', 'YXS');
INSERT INTO `airport_codes` VALUES (null, 'Prince George, BC - Rail service ', 'XDV');
INSERT INTO `airport_codes` VALUES (null, 'Prince Rupert, BC - Digby Island Airport ', 'YPR');
INSERT INTO `airport_codes` VALUES (null, 'Prince Rupert, BC - Rail service ', 'XDW');
INSERT INTO `airport_codes` VALUES (null, 'Princeton, WV ', 'BLF');
INSERT INTO `airport_codes` VALUES (null, 'Pristina, Serbia and Montenegro ', 'PRN');
INSERT INTO `airport_codes` VALUES (null, 'Proserpine, QL, Australia ', 'PPP');
INSERT INTO `airport_codes` VALUES (null, 'Providence, RI ', 'PVD');
INSERT INTO `airport_codes` VALUES (null, 'Providenciales, Turks and Caicos Islands ', 'PLS');
INSERT INTO `airport_codes` VALUES (null, 'Provincetown, MA ', 'PVC');
INSERT INTO `airport_codes` VALUES (null, 'Prudhoe Bay/Deadhorse, AK ', 'SCC');
INSERT INTO `airport_codes` VALUES (null, 'Pucallpa, Peru ', 'PCL');
INSERT INTO `airport_codes` VALUES (null, 'Puebla, Mexico ', 'PBC');
INSERT INTO `airport_codes` VALUES (null, 'Pueblo, CO ', 'PUB');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Ayacucha, Venezuela ', 'PYH');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Berria, Colombia ', 'PBE');
INSERT INTO `airport_codes` VALUES (null, 'Puerto del Rosario, Spain ', 'FUE');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Deseado, SC, Argentina ', 'PUD');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Escondido, Mexico ', 'PXM');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Jimenez, Costa Rica ', 'PJM');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Lempira, Honduras ', 'PEU');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Madryn, CB, Argentina ', 'PMY');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Maldonado, Peru ', 'PEM');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Montt, Chile ', 'PMC');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Ordaz, Venezuela ', 'PZO');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Plata, Dominican Republic ', 'POP');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Princesa, Philippines ', 'PPS');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Suarez, Bolivia ', 'PSZ');
INSERT INTO `airport_codes` VALUES (null, 'Puerto Vallarta, Mexico ', 'PVR');
INSERT INTO `airport_codes` VALUES (null, 'Pukatawagan, MB - ', 'XPK');
INSERT INTO `airport_codes` VALUES (null, 'Pula, Croatia ', 'PUY');
INSERT INTO `airport_codes` VALUES (null, 'Pullman, WA ', 'PUW');
INSERT INTO `airport_codes` VALUES (null, 'Pune, India ', 'PNQ');
INSERT INTO `airport_codes` VALUES (null, 'Punta Arenas, Chile ', 'PUQ');
INSERT INTO `airport_codes` VALUES (null, 'Punta Cana, Dominican Republic ', 'PUJ');
INSERT INTO `airport_codes` VALUES (null, 'Punta Del Este, Uruguay ', 'PDP');
INSERT INTO `airport_codes` VALUES (null, 'Punta Gorda, Belize ', 'PND');
INSERT INTO `airport_codes` VALUES (null, 'Punta Islita, Costa Rica ', 'PBP');
INSERT INTO `airport_codes` VALUES (null, 'Puttaparthi, India ', 'PUT');
INSERT INTO `airport_codes` VALUES (null, 'Putussibau, Indonesia ', 'PSU');
INSERT INTO `airport_codes` VALUES (null, 'Pyongyang, North Korea ', 'FNJ');
INSERT INTO `airport_codes` VALUES (null, 'Qaisumah, Saudi Arabia ', 'AQI');
INSERT INTO `airport_codes` VALUES (null, 'Qaqortoq, Greenland ', 'JJU');
INSERT INTO `airport_codes` VALUES (null, 'Qiemo, China ', 'IQM');
INSERT INTO `airport_codes` VALUES (null, 'Qikiqtarjuaq, NU ', 'YVM');
INSERT INTO `airport_codes` VALUES (null, 'Qingdao, China ', 'TAO');
INSERT INTO `airport_codes` VALUES (null, 'Qiqihar, China ', 'NDG');
INSERT INTO `airport_codes` VALUES (null, 'Qualicum, BC ', 'XQU');
INSERT INTO `airport_codes` VALUES (null, 'Quaqtaq, QC ', 'YQC');
INSERT INTO `airport_codes` VALUES (null, 'Quebec, QC - Charny Rail service ', 'YFZ');
INSERT INTO `airport_codes` VALUES (null, 'Quebec, QC - International Airport ', 'YQB');
INSERT INTO `airport_codes` VALUES (null, 'Quebec, QC - Levis Rail service ', 'XLK');
INSERT INTO `airport_codes` VALUES (null, 'Quebec, QC - Quebec Station Rail service ', 'XLJ');
INSERT INTO `airport_codes` VALUES (null, 'Quebec, QC - Sainte-Foy Rail service ', 'XFY');
INSERT INTO `airport_codes` VALUES (null, 'Queenstown, New Zealand ', 'ZQN');
INSERT INTO `airport_codes` VALUES (null, 'Quelimane, Mozambique ', 'UEL');
INSERT INTO `airport_codes` VALUES (null, 'Quepos, Costa Rica ', 'XQP');
INSERT INTO `airport_codes` VALUES (null, 'Queretaro, Mexico ', 'QRO');
INSERT INTO `airport_codes` VALUES (null, 'Quesnel, BC ', 'YQZ');
INSERT INTO `airport_codes` VALUES (null, 'Quetta, Pakistan ', 'UET');
INSERT INTO `airport_codes` VALUES (null, 'Qui Nhon, Viet Nam ', 'UIH');
INSERT INTO `airport_codes` VALUES (null, 'Quibdo, Colombia ', 'UIB');
INSERT INTO `airport_codes` VALUES (null, 'Quimper, France ', 'UIP');
INSERT INTO `airport_codes` VALUES (null, 'Quincy, IL ', 'UIN');
INSERT INTO `airport_codes` VALUES (null, 'Quinhagak, AK ', 'KWN');
INSERT INTO `airport_codes` VALUES (null, 'Quipi, QL, Australia ', 'ULP');
INSERT INTO `airport_codes` VALUES (null, 'Quito, Ecuador ', 'UIO');
INSERT INTO `airport_codes` VALUES (null, 'Rabaraba, Papua New Guinea ', 'RBP');
INSERT INTO `airport_codes` VALUES (null, 'Rabat, Morocco ', 'RBA');
INSERT INTO `airport_codes` VALUES (null, 'Rabaul, Papua New Guinea ', 'RAB');
INSERT INTO `airport_codes` VALUES (null, 'Rach Gia, Viet Nam ', 'VKG');
INSERT INTO `airport_codes` VALUES (null, 'Raduzhnyi, Russia ', 'RAT');
INSERT INTO `airport_codes` VALUES (null, 'Rae Lakes, NT ', 'YRA');
INSERT INTO `airport_codes` VALUES (null, 'Rafha, Saudi Arabia ', 'RAH');
INSERT INTO `airport_codes` VALUES (null, 'Rafsanjan, Iran ', 'RJN');
INSERT INTO `airport_codes` VALUES (null, 'Raiatea, French Polynesia ', 'RFP');
INSERT INTO `airport_codes` VALUES (null, 'Rainbow Lake, AB ', 'YOP');
INSERT INTO `airport_codes` VALUES (null, 'Rajkot, India ', 'RAJ');
INSERT INTO `airport_codes` VALUES (null, 'Rajshahi, Bangladesh ', 'RJH');
INSERT INTO `airport_codes` VALUES (null, 'Raleigh/Durham, NC ', 'RDU');
INSERT INTO `airport_codes` VALUES (null, 'Ramato, Solomon Islands ', 'RBV');
INSERT INTO `airport_codes` VALUES (null, 'Ramingining, NT, Australia ', 'RAM');
INSERT INTO `airport_codes` VALUES (null, 'Rampart, AK ', 'RMP');
INSERT INTO `airport_codes` VALUES (null, 'Ranchi, India ', 'IXR');
INSERT INTO `airport_codes` VALUES (null, 'Rankin Inlet, NU ', 'YRT');
INSERT INTO `airport_codes` VALUES (null, 'Ranong, Thailand ', 'UNN');
INSERT INTO `airport_codes` VALUES (null, 'Rapid City, SD ', 'RAP');
INSERT INTO `airport_codes` VALUES (null, 'Rarotonga, Cook Islands ', 'RAR');
INSERT INTO `airport_codes` VALUES (null, 'Ras Al Khaimah, United Arab Emirates ', 'RKT');
INSERT INTO `airport_codes` VALUES (null, 'Rasht, Iran ', 'RAS');
INSERT INTO `airport_codes` VALUES (null, 'Ratanakiri, Cambodia ', 'RBE');
INSERT INTO `airport_codes` VALUES (null, 'Rawala Kot, Pakistan ', 'RAZ');
INSERT INTO `airport_codes` VALUES (null, 'Reading, PA ', 'RDG');
INSERT INTO `airport_codes` VALUES (null, 'Rebun, Japan ', 'RBJ');
INSERT INTO `airport_codes` VALUES (null, 'Recife, PE, Brazil ', 'REC');
INSERT INTO `airport_codes` VALUES (null, 'Reconquista, SF, Argentina ', 'RCQ');
INSERT INTO `airport_codes` VALUES (null, 'Red Devil, AK ', 'RDV');
INSERT INTO `airport_codes` VALUES (null, 'Red Lake, ON ', 'YRL');
INSERT INTO `airport_codes` VALUES (null, 'Red Sucker Lake, MB ', 'YRS');
INSERT INTO `airport_codes` VALUES (null, 'Redding, CA ', 'RDD');
INSERT INTO `airport_codes` VALUES (null, 'Redmond, OR ', 'RDM');
INSERT INTO `airport_codes` VALUES (null, 'Reggio Calabria, Italy ', 'REG');
INSERT INTO `airport_codes` VALUES (null, 'Regina, SK ', 'YQR');
INSERT INTO `airport_codes` VALUES (null, 'Rennell, Solomon Islands ', 'RNL');
INSERT INTO `airport_codes` VALUES (null, 'Rennes, France ', 'RNS');
INSERT INTO `airport_codes` VALUES (null, 'Reno, NV ', 'RNO');
INSERT INTO `airport_codes` VALUES (null, 'Repulse Bay, NU ', 'YUT');
INSERT INTO `airport_codes` VALUES (null, 'Resistencia, CW, Argentina ', 'RES');
INSERT INTO `airport_codes` VALUES (null, 'Resolute, NU ', 'YRB');
INSERT INTO `airport_codes` VALUES (null, 'Reus, Spain and Canary Islands ', 'REU');
INSERT INTO `airport_codes` VALUES (null, 'Reykjavik, Iceland ', 'KEF');
INSERT INTO `airport_codes` VALUES (null, 'Reynossa, Mexico ', 'REX');
INSERT INTO `airport_codes` VALUES (null, 'Rhinelander, WI, ', 'RHI');
INSERT INTO `airport_codes` VALUES (null, 'Rhodes, Gabon ', 'RHO');
INSERT INTO `airport_codes` VALUES (null, 'Ribeirao Preto, SP, Brazil ', 'RAO');
INSERT INTO `airport_codes` VALUES (null, 'Riberalta, Bolivia ', 'RIB');
INSERT INTO `airport_codes` VALUES (null, 'Richards Bay, South Africa ', 'RCB');
INSERT INTO `airport_codes` VALUES (null, 'Richmond, QL, Australia ', 'RCM');
INSERT INTO `airport_codes` VALUES (null, 'Richmond, VA ', 'RIC');
INSERT INTO `airport_codes` VALUES (null, 'Riga, Latvia ', 'RIX');
INSERT INTO `airport_codes` VALUES (null, 'Rigolet, NL ', 'YRG');
INSERT INTO `airport_codes` VALUES (null, 'Rijeka, Croatia ', 'RJK');
INSERT INTO `airport_codes` VALUES (null, 'Rimini, Italy ', 'RMI');
INSERT INTO `airport_codes` VALUES (null, 'Rimouski, QC ', 'YXK');
INSERT INTO `airport_codes` VALUES (null, 'Rio Branco, AC, Brazil ', 'RBR');
INSERT INTO `airport_codes` VALUES (null, 'Rio Cuarto, CD, Argentina ', 'RCU');
INSERT INTO `airport_codes` VALUES (null, 'Rio De Janeiro, RJ, Brazil ', 'GIG');
INSERT INTO `airport_codes` VALUES (null, 'Rio Gallegos, Argentina - Internacional ', 'RGL');
INSERT INTO `airport_codes` VALUES (null, 'Rio Grande, RS, Brazil ', 'RIG');
INSERT INTO `airport_codes` VALUES (null, 'Rio Grande, TF, Argentina ', 'RGA');
INSERT INTO `airport_codes` VALUES (null, 'Rio Mayo, CB, Argentina ', 'ROY');
INSERT INTO `airport_codes` VALUES (null, 'Rio Verde, GO, Brazil ', 'RVD');
INSERT INTO `airport_codes` VALUES (null, 'Riohacha, Colombia ', 'RCH');
INSERT INTO `airport_codes` VALUES (null, 'Rishiri, Japan ', 'RIS');
INSERT INTO `airport_codes` VALUES (null, 'Riverton, WY ', 'RIW');
INSERT INTO `airport_codes` VALUES (null, 'Riviere-a-Pierre, QC - Rail service ', 'XRP');
INSERT INTO `airport_codes` VALUES (null, 'Riyadh, Saudi Arabia ', 'RUH');
INSERT INTO `airport_codes` VALUES (null, 'Riyan Mukalla, Yemen ', 'RIY');
INSERT INTO `airport_codes` VALUES (null, 'Roane, France ', 'RNE');
INSERT INTO `airport_codes` VALUES (null, 'Roanoke, VA ', 'ROA');
INSERT INTO `airport_codes` VALUES (null, 'Roatan, Honduras ', 'RTB');
INSERT INTO `airport_codes` VALUES (null, 'Roberval, QC ', 'YRJ');
INSERT INTO `airport_codes` VALUES (null, 'Roch Gia, Viet Nam ', 'VKG');
INSERT INTO `airport_codes` VALUES (null, 'Roche Harbor, WA ', 'RCE');
INSERT INTO `airport_codes` VALUES (null, 'Rochester, MN ', 'RST');
INSERT INTO `airport_codes` VALUES (null, 'Rochester, NY ', 'ROC');
INSERT INTO `airport_codes` VALUES (null, 'Rock Sound, Bahamas ', 'RSD');
INSERT INTO `airport_codes` VALUES (null, 'Rock Springs, WY ', 'RKS');
INSERT INTO `airport_codes` VALUES (null, 'Rockford, IL - Park&Ride Bus ', 'ZRF');
INSERT INTO `airport_codes` VALUES (null, 'Rockford, IL - Van Galder Bus ', 'ZRK');
INSERT INTO `airport_codes` VALUES (null, 'Rockhampton, QL, Australia ', 'ROK');
INSERT INTO `airport_codes` VALUES (null, 'Rockland, ME ', 'RKD');
INSERT INTO `airport_codes` VALUES (null, 'Rodez, France ', 'RDZ');
INSERT INTO `airport_codes` VALUES (null, 'Rodrigues Island, Mauritius ', 'RRG');
INSERT INTO `airport_codes` VALUES (null, 'Roervik, Norway ', 'RVK');
INSERT INTO `airport_codes` VALUES (null, 'Rognan, Norway ', 'ZXM');
INSERT INTO `airport_codes` VALUES (null, 'Roma, QL, Australia ', 'RMA');
INSERT INTO `airport_codes` VALUES (null, 'Rome, Italy - All airports ', 'ROM');
INSERT INTO `airport_codes` VALUES (null, 'Rome, Italy - Ciampino ', 'CIA');
INSERT INTO `airport_codes` VALUES (null, 'Rome, Italy - Leonardo Da Vinci/Fiumicino ', 'FCO');
INSERT INTO `airport_codes` VALUES (null, 'Rongelap Island, Marshall Islands ', 'RNP');
INSERT INTO `airport_codes` VALUES (null, 'Ronneby, Sweden ', 'RNB');
INSERT INTO `airport_codes` VALUES (null, 'Roros, Norway ', 'RRS');
INSERT INTO `airport_codes` VALUES (null, 'Rorutu, French Polynesia ', 'RUR');
INSERT INTO `airport_codes` VALUES (null, 'Rosario, SF, Argentina ', 'ROS');
INSERT INTO `airport_codes` VALUES (null, 'Rosario, WA ', 'RSJ');
INSERT INTO `airport_codes` VALUES (null, 'Rosh Pina, Iceland ', 'RPN');
INSERT INTO `airport_codes` VALUES (null, 'Rost, Norway ', 'RET');
INSERT INTO `airport_codes` VALUES (null, 'Rostock-Laage, Germany ', 'RLG');
INSERT INTO `airport_codes` VALUES (null, 'Rostov, Russia ', 'ROV');
INSERT INTO `airport_codes` VALUES (null, 'Roswell, NM ', 'ROW');
INSERT INTO `airport_codes` VALUES (null, 'Rota, Northern Mariana Islands ', 'ROP');
INSERT INTO `airport_codes` VALUES (null, 'Rotorua, New Zealand ', 'ROT');
INSERT INTO `airport_codes` VALUES (null, 'Rotterdam, Netherlands ', 'RTM');
INSERT INTO `airport_codes` VALUES (null, 'Rouen, France ', 'URO');
INSERT INTO `airport_codes` VALUES (null, 'Round Lake, ON ', 'ZRJ');
INSERT INTO `airport_codes` VALUES (null, 'Rouyn/Noranda, QC ', 'YUY');
INSERT INTO `airport_codes` VALUES (null, 'Rovaniemi, Finland ', 'RVN');
INSERT INTO `airport_codes` VALUES (null, 'Ruby, AK ', 'RBY');
INSERT INTO `airport_codes` VALUES (null, 'Russian Mission, AK ', 'RSH');
INSERT INTO `airport_codes` VALUES (null, 'Rutland, VT ', 'RUT');
INSERT INTO `airport_codes` VALUES (null, 'S. Cristobal del Casas, Mexico ', 'SZT');
INSERT INTO `airport_codes` VALUES (null, 'Saarbruecken, Germany ', 'QFZ');
INSERT INTO `airport_codes` VALUES (null, 'Sachigo Lake, ON ', 'ZPB');
INSERT INTO `airport_codes` VALUES (null, 'Sachs Harbour, NT ', 'YSY');
INSERT INTO `airport_codes` VALUES (null, 'Sackville, NB - Rail service ', 'XKV');
INSERT INTO `airport_codes` VALUES (null, 'Sacramento, CA ', 'SMF');
INSERT INTO `airport_codes` VALUES (null, 'Saginaw, MI ', 'MBS');
INSERT INTO `airport_codes` VALUES (null, 'Saint Cloud, MN ', 'STC');
INSERT INTO `airport_codes` VALUES (null, 'Saint Croix, U.S. Virgin Islands ', 'STX');
INSERT INTO `airport_codes` VALUES (null, 'Saint George Island, AK ', 'STG');
INSERT INTO `airport_codes` VALUES (null, 'Saint George, UT ', 'SGU');
INSERT INTO `airport_codes` VALUES (null, 'Saint Hyacinthe, QC - Rail service ', 'XIM');
INSERT INTO `airport_codes` VALUES (null, 'Saint John, NB ', 'YSJ');
INSERT INTO `airport_codes` VALUES (null, 'Saint Johns, NL ', 'YYT');
INSERT INTO `airport_codes` VALUES (null, 'Saint Leonard, NB ', 'YSL');
INSERT INTO `airport_codes` VALUES (null, 'Saint Louis, MO ', 'STL');
INSERT INTO `airport_codes` VALUES (null, 'Saint Lucia, ST. LUCIA ', 'SLU');
INSERT INTO `airport_codes` VALUES (null, 'Saint Maarten, Netherlands Antilles ', 'SXM');
INSERT INTO `airport_codes` VALUES (null, 'Saint Mary\'s, AK ', 'KSM');
INSERT INTO `airport_codes` VALUES (null, 'Saint Michael, AK ', 'SMK');
INSERT INTO `airport_codes` VALUES (null, 'Saint Paul Island, AK ', 'SNP');
INSERT INTO `airport_codes` VALUES (null, 'Saint Petersburg, Russia - Pulkovo ', 'LED');
INSERT INTO `airport_codes` VALUES (null, 'Saint Thomas, U.S. Virgin Islands ', 'STT');
INSERT INTO `airport_codes` VALUES (null, 'Saint Tropez, France ', 'XPZ');
INSERT INTO `airport_codes` VALUES (null, 'Saint Tropez, France - La Mole ', 'LTT');
INSERT INTO `airport_codes` VALUES (null, 'Saipan, Northern Mariana Islands ', 'SPN');
INSERT INTO `airport_codes` VALUES (null, 'Sakon Nakhon, Thailand ', 'SNO');
INSERT INTO `airport_codes` VALUES (null, 'Salehard, Russia ', 'SLY');
INSERT INTO `airport_codes` VALUES (null, 'Salem, OR ', 'SLE');
INSERT INTO `airport_codes` VALUES (null, 'Salina, KS ', 'SLN');
INSERT INTO `airport_codes` VALUES (null, 'Salisbury-Ocean City, MD ', 'SBY');
INSERT INTO `airport_codes` VALUES (null, 'Salluit, QC ', 'YZG');
INSERT INTO `airport_codes` VALUES (null, 'Salt Cay, Turks and Caicos Islands ', 'SLX');
INSERT INTO `airport_codes` VALUES (null, 'Salt Lake City, UT ', 'SLC');
INSERT INTO `airport_codes` VALUES (null, 'Saltillo, Mexico ', 'SLW');
INSERT INTO `airport_codes` VALUES (null, 'Salvadore, BA, Brazil ', 'SSA');
INSERT INTO `airport_codes` VALUES (null, 'Salzburg, Austria ', 'SZG');
INSERT INTO `airport_codes` VALUES (null, 'Samara, Russia ', 'KUF');
INSERT INTO `airport_codes` VALUES (null, 'Sambaua, Madagascar ', 'SVB');
INSERT INTO `airport_codes` VALUES (null, 'Samburu, Kenya ', 'UAS');
INSERT INTO `airport_codes` VALUES (null, 'Samos, Greece ', 'SMI');
INSERT INTO `airport_codes` VALUES (null, 'San Andres Island, Colombia ', 'ADZ');
INSERT INTO `airport_codes` VALUES (null, 'San Angelo, TX ', 'SJT');
INSERT INTO `airport_codes` VALUES (null, 'San Antonio Oesta, RN, Argentina ', 'OES');
INSERT INTO `airport_codes` VALUES (null, 'San Antonio, TX ', 'SAT');
INSERT INTO `airport_codes` VALUES (null, 'San Antonio, Venezuela ', 'SVZ');
INSERT INTO `airport_codes` VALUES (null, 'San Carlos, Argentina ', 'BRC');
INSERT INTO `airport_codes` VALUES (null, 'San Diego, CA ', 'SAN');
INSERT INTO `airport_codes` VALUES (null, 'San Francisco, CA ', 'SFO');
INSERT INTO `airport_codes` VALUES (null, 'San Jose, CA ', 'SJC');
INSERT INTO `airport_codes` VALUES (null, 'San Jose, Costa Rica - Juan Santa Maria ', 'SJO');
INSERT INTO `airport_codes` VALUES (null, 'San Jose, Costa Rica - Tobias Bolanos Int\'l ', 'SYQ');
INSERT INTO `airport_codes` VALUES (null, 'San Juan, Puerto Rico ', 'SJU');
INSERT INTO `airport_codes` VALUES (null, 'San Juan, Puerto Rico ', 'SJU');
INSERT INTO `airport_codes` VALUES (null, 'San Juan, SJ, Argentina ', 'UAQ');
INSERT INTO `airport_codes` VALUES (null, 'San Julian, SC, Argentina ', 'ULA');
INSERT INTO `airport_codes` VALUES (null, 'San Luis Obispo, CA ', 'SBP');
INSERT INTO `airport_codes` VALUES (null, 'San Luis Potosi, Mexico ', 'SLP');
INSERT INTO `airport_codes` VALUES (null, 'San Luis, SL, Argentina ', 'LUQ');
INSERT INTO `airport_codes` VALUES (null, 'San Marino, San Marino ', 'SAI');
INSERT INTO `airport_codes` VALUES (null, 'San Martin De Los Andes, Argentina ', 'CPC');
INSERT INTO `airport_codes` VALUES (null, 'San Miguel, Panama ', 'NMG');
INSERT INTO `airport_codes` VALUES (null, 'San Pedro Sula, Honduras ', 'SAP');
INSERT INTO `airport_codes` VALUES (null, 'San Rafael, Argentina ', 'AFA');
INSERT INTO `airport_codes` VALUES (null, 'San Salvador, Bahamas ', 'ZSA');
INSERT INTO `airport_codes` VALUES (null, 'San Salvador, El Salvador ', 'SAL');
INSERT INTO `airport_codes` VALUES (null, 'San Sebastian, Spain ', 'EAS');
INSERT INTO `airport_codes` VALUES (null, 'Sana\'a, Yemen ', 'SAH');
INSERT INTO `airport_codes` VALUES (null, 'Sand Point, AK ', 'SDP');
INSERT INTO `airport_codes` VALUES (null, 'Sanday, United Kingdom ', 'NDY');
INSERT INTO `airport_codes` VALUES (null, 'Sandy Lake, ON ', 'ZSJ');
INSERT INTO `airport_codes` VALUES (null, 'Sanford, FL ', 'SFB');
INSERT INTO `airport_codes` VALUES (null, 'Sanikiluaq, NU ', 'YSK');
INSERT INTO `airport_codes` VALUES (null, 'Santa Ana, CA ', 'SNA');
INSERT INTO `airport_codes` VALUES (null, 'Santa Ana, Solomon Islands ', 'NNB');
INSERT INTO `airport_codes` VALUES (null, 'Santa Barbara, CA ', 'SBA');
INSERT INTO `airport_codes` VALUES (null, 'Santa Barbara, Ed, Venezuela ', 'STB');
INSERT INTO `airport_codes` VALUES (null, 'Santa Cruz De La Palma, Spain and Canary Islands - La Palma ', 'SPC');
INSERT INTO `airport_codes` VALUES (null, 'Santa Cruz, Bolivia ', 'VVI');
INSERT INTO `airport_codes` VALUES (null, 'Santa Fe, NM ', 'SAF');
INSERT INTO `airport_codes` VALUES (null, 'Santa Maria, Brazil ', 'RIA');
INSERT INTO `airport_codes` VALUES (null, 'Santa Maria, CA ', 'SMX');
INSERT INTO `airport_codes` VALUES (null, 'Santa Maria, Portugal ', 'SMA');
INSERT INTO `airport_codes` VALUES (null, 'Santa Marta, Colombia ', 'SMR');
INSERT INTO `airport_codes` VALUES (null, 'Santa Rosa, CA ', 'STS');
INSERT INTO `airport_codes` VALUES (null, 'Santa Rosa, LP, Argentina ', 'RSA');
INSERT INTO `airport_codes` VALUES (null, 'Santarem, PA, Brazil ', 'STM');
INSERT INTO `airport_codes` VALUES (null, 'Sante Marie, Madagascar ', 'SMS');
INSERT INTO `airport_codes` VALUES (null, 'Santiago, Chile ', 'SCL');
INSERT INTO `airport_codes` VALUES (null, 'Santiago, Dominican Republic ', 'STI');
INSERT INTO `airport_codes` VALUES (null, 'Santo Angelo, Brazil ', 'GEL');
INSERT INTO `airport_codes` VALUES (null, 'Santo Antao, Cape Verde ', 'NTO');
INSERT INTO `airport_codes` VALUES (null, 'Santo Domingo, Dominican Republic - Herrera ', 'HEX');
INSERT INTO `airport_codes` VALUES (null, 'Santo Domingo, Dominican Republic - Las Americas ', 'SDQ');
INSERT INTO `airport_codes` VALUES (null, 'Santo Domingo, Venezuela ', 'STD');
INSERT INTO `airport_codes` VALUES (null, 'Sanya, China ', 'SYX');
INSERT INTO `airport_codes` VALUES (null, 'Sao Nicolau, Cape Verde ', 'SNE');
INSERT INTO `airport_codes` VALUES (null, 'Sao Paulo, Brazil - Congonhas ', 'CGH');
INSERT INTO `airport_codes` VALUES (null, 'Sao Paulo, Brazil - Guarulhos Intl ', 'GRU');
INSERT INTO `airport_codes` VALUES (null, 'Sao Paulo, Brazil - Viracopos ', 'VCP');
INSERT INTO `airport_codes` VALUES (null, 'Sao Tome Is., Sao Tome and Principe ', 'TMS');
INSERT INTO `airport_codes` VALUES (null, 'Sao Vicente, Cape Verde ', 'VXE');
INSERT INTO `airport_codes` VALUES (null, 'Sapporo, Japan - Chitose ', 'CTS');
INSERT INTO `airport_codes` VALUES (null, 'Sapporo, Japan - Okadama ', 'OKD');
INSERT INTO `airport_codes` VALUES (null, 'Sara, Vanuatu ', 'SSR');
INSERT INTO `airport_codes` VALUES (null, 'Saranac Lake, NY ', 'SLK');
INSERT INTO `airport_codes` VALUES (null, 'Sarasota, FL ', 'SRQ');
INSERT INTO `airport_codes` VALUES (null, 'Saratov, Russia ', 'RTW');
INSERT INTO `airport_codes` VALUES (null, 'Sarmi, Indonesia ', 'ZRM');
INSERT INTO `airport_codes` VALUES (null, 'Sarnia, ON ', 'YZR');
INSERT INTO `airport_codes` VALUES (null, 'Sarnia, ON - Rail service ', 'XDX');
INSERT INTO `airport_codes` VALUES (null, 'Saskatoon, SK ', 'YXE');
INSERT INTO `airport_codes` VALUES (null, 'Satu Mare, Romania ', 'SUJ');
INSERT INTO `airport_codes` VALUES (null, 'Satwag, Papua New Guinea ', 'SWG');
INSERT INTO `airport_codes` VALUES (null, 'Sau Luiz, MA, Brazil ', 'SLZ');
INSERT INTO `airport_codes` VALUES (null, 'Sault Ste Marie, MI, ', 'CIU');
INSERT INTO `airport_codes` VALUES (null, 'Sault Ste-Marie, ON ', 'YAM');
INSERT INTO `airport_codes` VALUES (null, 'Saumlaki, Indonesia ', 'SXK');
INSERT INTO `airport_codes` VALUES (null, 'Savannah, GA ', 'SAV');
INSERT INTO `airport_codes` VALUES (null, 'Savannakhet, Laos ', 'ZVK');
INSERT INTO `airport_codes` VALUES (null, 'Savonlinna, Finland ', 'SVL');
INSERT INTO `airport_codes` VALUES (null, 'Savoonga, AK ', 'SVA');
INSERT INTO `airport_codes` VALUES (null, 'Savusavu, Fiji ', 'SVU');
INSERT INTO `airport_codes` VALUES (null, 'Sayaboury, Laos ', 'ZBY');
INSERT INTO `airport_codes` VALUES (null, 'Scammon Bay, AK ', 'SCM');
INSERT INTO `airport_codes` VALUES (null, 'Schefferville, QC ', 'YKL');
INSERT INTO `airport_codes` VALUES (null, 'Scottsbluff, NE ', 'BFF');
INSERT INTO `airport_codes` VALUES (null, 'Scranton, PA ', 'AVP');
INSERT INTO `airport_codes` VALUES (null, 'Seattle, WA - Lake Union SPB ', 'LKE');
INSERT INTO `airport_codes` VALUES (null, 'Seattle, WA - Seattle/Tacoma International ', 'SEA');
INSERT INTO `airport_codes` VALUES (null, 'Sege, Solomon Islands ', 'EGM');
INSERT INTO `airport_codes` VALUES (null, 'Seiyun, Yemen ', 'GXF');
INSERT INTO `airport_codes` VALUES (null, 'Selawik, AK ', 'WLK');
INSERT INTO `airport_codes` VALUES (null, 'Selje, Norway ', 'QFK');
INSERT INTO `airport_codes` VALUES (null, 'Semarang, Indonesia ', 'SRG');
INSERT INTO `airport_codes` VALUES (null, 'Senggo, Indonesia ', 'ZEG');
INSERT INTO `airport_codes` VALUES (null, 'Senneterre, QC - Rail service ', 'XFK');
INSERT INTO `airport_codes` VALUES (null, 'Seoul, South Korea - All Airports ', 'SEL');
INSERT INTO `airport_codes` VALUES (null, 'Seoul, South Korea - Gimpo International ', 'GMP');
INSERT INTO `airport_codes` VALUES (null, 'Seoul, South Korea - Incheon International ', 'ICN');
INSERT INTO `airport_codes` VALUES (null, 'Sept-Iles, QC ', 'YZV');
INSERT INTO `airport_codes` VALUES (null, 'Servi, Indonesia ', 'ZRI');
INSERT INTO `airport_codes` VALUES (null, 'Sesriem, Namibia ', 'SZM');
INSERT INTO `airport_codes` VALUES (null, 'Sevilla, Spain and Canary Islands ', 'SVQ');
INSERT INTO `airport_codes` VALUES (null, 'Seward, AK ', 'SWD');
INSERT INTO `airport_codes` VALUES (null, 'Shageluk, AK ', 'SHX');
INSERT INTO `airport_codes` VALUES (null, 'Shaktoolik, AK ', 'SKK');
INSERT INTO `airport_codes` VALUES (null, 'Shamattawa, MB ', 'ZTM');
INSERT INTO `airport_codes` VALUES (null, 'Shanghai, China ', 'PVG');
INSERT INTO `airport_codes` VALUES (null, 'Shannon, Ireland ', 'SNN');
INSERT INTO `airport_codes` VALUES (null, 'Shantou, China ', 'SWA');
INSERT INTO `airport_codes` VALUES (null, 'Sharm El Sheikh, Egypt ', 'SSH');
INSERT INTO `airport_codes` VALUES (null, 'Shawinigan, QC - Rail service ', 'XFL');
INSERT INTO `airport_codes` VALUES (null, 'Shawnigan, BC - Rail service ', 'XFM');
INSERT INTO `airport_codes` VALUES (null, 'Sheffield, United Kingdom ', 'SZD');
INSERT INTO `airport_codes` VALUES (null, 'Sheffield/Florence/Muscle Shoals, AL ', 'MSL');
INSERT INTO `airport_codes` VALUES (null, 'Sheldon Point, AK ', 'SXP');
INSERT INTO `airport_codes` VALUES (null, 'Shenzhen, China ', 'SZX');
INSERT INTO `airport_codes` VALUES (null, 'Sheridan, WY ', 'SHR');
INSERT INTO `airport_codes` VALUES (null, 'Shetland Islands, United Kingdom - Lerwick/Tingwall ', 'LWK');
INSERT INTO `airport_codes` VALUES (null, 'Shetland Islands, United Kingdom - Sumburgh ', 'LSI');
INSERT INTO `airport_codes` VALUES (null, 'Shillavo, Ethiopia ', 'HIL');
INSERT INTO `airport_codes` VALUES (null, 'Shimkent, Kazakhstan ', 'CIT');
INSERT INTO `airport_codes` VALUES (null, 'Shiraz, Iran ', 'SYZ');
INSERT INTO `airport_codes` VALUES (null, 'Shishmaref, AK ', 'SHH');
INSERT INTO `airport_codes` VALUES (null, 'Shonai, Japan ', 'SYO');
INSERT INTO `airport_codes` VALUES (null, 'Shreveport, LA ', 'SHV');
INSERT INTO `airport_codes` VALUES (null, 'Shungnak, AK ', 'SHG');
INSERT INTO `airport_codes` VALUES (null, 'Shute Harbor, Australia ', 'JHQ');
INSERT INTO `airport_codes` VALUES (null, 'Siem Reap, Cambodia ', 'REP');
INSERT INTO `airport_codes` VALUES (null, 'Silchar, India ', 'IXS');
INSERT INTO `airport_codes` VALUES (null, 'Silver City, NM ', 'SVC');
INSERT INTO `airport_codes` VALUES (null, 'Simao, China ', 'SYM');
INSERT INTO `airport_codes` VALUES (null, 'Sinak, Indonesia ', 'NKD');
INSERT INTO `airport_codes` VALUES (null, 'Singapore, Singapore - Changi ', 'SIN');
INSERT INTO `airport_codes` VALUES (null, 'Singapore, Singapore - Seletar ', 'XSP');
INSERT INTO `airport_codes` VALUES (null, 'Sintang, Indonesia ', 'SQG');
INSERT INTO `airport_codes` VALUES (null, 'Sioux City, IA ', 'SUX');
INSERT INTO `airport_codes` VALUES (null, 'Sioux Falls, SD ', 'FSD');
INSERT INTO `airport_codes` VALUES (null, 'Sioux Lookout, ON ', 'YXL');
INSERT INTO `airport_codes` VALUES (null, 'Sisimiut, Greenland ', 'JHS');
INSERT INTO `airport_codes` VALUES (null, 'Sitka, AK ', 'SIT');
INSERT INTO `airport_codes` VALUES (null, 'Sittwe, Myanmar ', 'AKY');
INSERT INTO `airport_codes` VALUES (null, 'Sivas, Turkey ', 'VAS');
INSERT INTO `airport_codes` VALUES (null, 'Skagway, AK ', 'SGY');
INSERT INTO `airport_codes` VALUES (null, 'Skiathos, Greece ', 'JSI');
INSERT INTO `airport_codes` VALUES (null, 'Skopie, Macedonia ', 'FYRO');
INSERT INTO `airport_codes` VALUES (null, 'Skovde, Sweden ', 'KVB');
INSERT INTO `airport_codes` VALUES (null, 'Skukuza, South Africa ', 'SZK');
INSERT INTO `airport_codes` VALUES (null, 'Sleetmore, AK ', 'SLQ');
INSERT INTO `airport_codes` VALUES (null, 'Sligo, Ireland ', 'SXL');
INSERT INTO `airport_codes` VALUES (null, 'Smith Falls, ON ', 'YSH');
INSERT INTO `airport_codes` VALUES (null, 'Smithers, BC ', 'YYD');
INSERT INTO `airport_codes` VALUES (null, 'Snare Lake, NT ', 'YFJ');
INSERT INTO `airport_codes` VALUES (null, 'Soalala, Madagascar ', 'DWB');
INSERT INTO `airport_codes` VALUES (null, 'Soderham, Sweden ', 'SOO');
INSERT INTO `airport_codes` VALUES (null, 'Sofia, Bulgaria ', 'SOF');
INSERT INTO `airport_codes` VALUES (null, 'Sognolal, Norway ', 'SOG');
INSERT INTO `airport_codes` VALUES (null, 'Solo City, Indonesia ', 'SOC');
INSERT INTO `airport_codes` VALUES (null, 'Son-La, Viet Nam - Na-San ', 'SQH');
INSERT INTO `airport_codes` VALUES (null, 'Sorkjosen, Norway ', 'SOJ');
INSERT INTO `airport_codes` VALUES (null, 'Sorocaba, Brazil ', 'SOD');
INSERT INTO `airport_codes` VALUES (null, 'South Andros, Bahamas ', 'TZN');
INSERT INTO `airport_codes` VALUES (null, 'South Bend, IN ', 'SBN');
INSERT INTO `airport_codes` VALUES (null, 'South Caicos, Turks and Caicos Islands ', 'XSC');
INSERT INTO `airport_codes` VALUES (null, 'South Hampton, United Kingdom ', 'SOU');
INSERT INTO `airport_codes` VALUES (null, 'South Indian Lake, MB ', 'XSI');
INSERT INTO `airport_codes` VALUES (null, 'South Molle Island, QL, Australia ', 'SOI');
INSERT INTO `airport_codes` VALUES (null, 'South Naknek, AK ', 'WSN');
INSERT INTO `airport_codes` VALUES (null, 'Southern Pines, NC ', 'SOP');
INSERT INTO `airport_codes` VALUES (null, 'Spartanburg/Greenville, SC ', 'GSP');
INSERT INTO `airport_codes` VALUES (null, 'Split, Croatia ', 'SPU');
INSERT INTO `airport_codes` VALUES (null, 'Spokane, WA ', 'GEG');
INSERT INTO `airport_codes` VALUES (null, 'Spring Point, Bahamas ', 'AXP');
INSERT INTO `airport_codes` VALUES (null, 'Springfield, IL ', 'SPI');
INSERT INTO `airport_codes` VALUES (null, 'Springfield, MO ', 'SGF');
INSERT INTO `airport_codes` VALUES (null, 'Srinagar, India ', 'SXR');
INSERT INTO `airport_codes` VALUES (null, 'St Anthony, NL ', 'YAY');
INSERT INTO `airport_codes` VALUES (null, 'St Catharines, ON ', 'YCM');
INSERT INTO `airport_codes` VALUES (null, 'St Denis de la Reunion, Reunion ', 'RUN');
INSERT INTO `airport_codes` VALUES (null, 'St Kitts, St Kitts and Nevis ', 'SKB');
INSERT INTO `airport_codes` VALUES (null, 'St Marys, ON - Rail service ', 'XIO');
INSERT INTO `airport_codes` VALUES (null, 'St Petersburg/Clearwater, FL ', 'PIE');
INSERT INTO `airport_codes` VALUES (null, 'St Pierre, St Pierre and Miquelon ', 'FSP');
INSERT INTO `airport_codes` VALUES (null, 'St Vincent, Saint Vincent and the Grenadines ', 'SVD');
INSERT INTO `airport_codes` VALUES (null, 'St. Croix Island, U.S. Virgin Islands ', 'STX');
INSERT INTO `airport_codes` VALUES (null, 'St. Etienne, France ', 'EBU');
INSERT INTO `airport_codes` VALUES (null, 'St. Eustatius, Netherlands Antilles ', 'EUX');
INSERT INTO `airport_codes` VALUES (null, 'St. Lucia, St. Lucia ', 'UVF');
INSERT INTO `airport_codes` VALUES (null, 'St. Lucia, St. Lucia - Hawnorra ', 'UVF');
INSERT INTO `airport_codes` VALUES (null, 'St. Petersburg, Russia ', 'LED');
INSERT INTO `airport_codes` VALUES (null, 'St. Pierre de la Reunion, Reunion ', 'ZSE');
INSERT INTO `airport_codes` VALUES (null, 'St. Thomas Island, U.S. Virgin Islands ', 'STT');
INSERT INTO `airport_codes` VALUES (null, 'State College/University Park, PA ', 'SCE');
INSERT INTO `airport_codes` VALUES (null, 'Staunton, VA ', 'SHD');
INSERT INTO `airport_codes` VALUES (null, 'Stavanger, Norway ', 'SVG');
INSERT INTO `airport_codes` VALUES (null, 'Stavropol, Russia ', 'STW');
INSERT INTO `airport_codes` VALUES (null, 'Ste Therese Point, MB ', 'YST');
INSERT INTO `airport_codes` VALUES (null, 'Steamboat Springs, CO ', 'SBS');
INSERT INTO `airport_codes` VALUES (null, 'Stebbins, AK ', 'WBB');
INSERT INTO `airport_codes` VALUES (null, 'Stella Maris, Bahamas ', 'SML');
INSERT INTO `airport_codes` VALUES (null, 'Stephenville, NL ', 'YJT');
INSERT INTO `airport_codes` VALUES (null, 'Stevens Point/Wausau, WI ', 'CWA');
INSERT INTO `airport_codes` VALUES (null, 'Stevens Village, AK ', 'SVS');
INSERT INTO `airport_codes` VALUES (null, 'Stewart Field/Newburgh, NY ', 'SWF');
INSERT INTO `airport_codes` VALUES (null, 'Stockholm, Sweden - All airports ', 'STO');
INSERT INTO `airport_codes` VALUES (null, 'Stockholm, Sweden - Arlanda ', 'ARN');
INSERT INTO `airport_codes` VALUES (null, 'Stockholm, Sweden - Bromma ', 'BMA');
INSERT INTO `airport_codes` VALUES (null, 'Stockton, CA ', 'SCK');
INSERT INTO `airport_codes` VALUES (null, 'Stony Rapids, SK ', 'YSF');
INSERT INTO `airport_codes` VALUES (null, 'Stony River, AK ', 'SRV');
INSERT INTO `airport_codes` VALUES (null, 'Stornoway, United Kingdom ', 'SYY');
INSERT INTO `airport_codes` VALUES (null, 'Storuman, Sweden ', 'SQO');
INSERT INTO `airport_codes` VALUES (null, 'Strasbourg, France - Bus service ', 'XER');
INSERT INTO `airport_codes` VALUES (null, 'Strasbourg, France - Entzheim ', 'SXB');
INSERT INTO `airport_codes` VALUES (null, 'Strathroy, ON - Rail service ', 'XTY');
INSERT INTO `airport_codes` VALUES (null, 'Stronsay, United Kingdom ', 'SOY');
INSERT INTO `airport_codes` VALUES (null, 'Stung Treng, Cambodia ', 'TNX');
INSERT INTO `airport_codes` VALUES (null, 'Stuttgart, Germany - Echterdingen ', 'STR');
INSERT INTO `airport_codes` VALUES (null, 'Stuttgart, Germany - Rail service ', 'ZWS');
INSERT INTO `airport_codes` VALUES (null, 'Suavanao, Solomon Islands ', 'VAO');
INSERT INTO `airport_codes` VALUES (null, 'Sucre, Bolivia ', 'SRE');
INSERT INTO `airport_codes` VALUES (null, 'Sudbury, ON ', 'YSB');
INSERT INTO `airport_codes` VALUES (null, 'Sudbury, ON - Rail service ', 'XDY');
INSERT INTO `airport_codes` VALUES (null, 'Sue Island, QL, Australia ', 'SYU');
INSERT INTO `airport_codes` VALUES (null, 'Sui, Pakistan ', 'SUL');
INSERT INTO `airport_codes` VALUES (null, 'Sukhotthai, Thailand ', 'THS');
INSERT INTO `airport_codes` VALUES (null, 'Summer Beaver, ON ', 'SUR');
INSERT INTO `airport_codes` VALUES (null, 'Sun City, South Africa ', 'NTY');
INSERT INTO `airport_codes` VALUES (null, 'Sun Valley, ID ', 'SUN');
INSERT INTO `airport_codes` VALUES (null, 'Sunshine Coast, QL, Australia ', 'MCY');
INSERT INTO `airport_codes` VALUES (null, 'Surabaya, Indonesia ', 'SUB');
INSERT INTO `airport_codes` VALUES (null, 'Surat Thani, Thailand ', 'URT');
INSERT INTO `airport_codes` VALUES (null, 'Suva, Fiji ', 'SUV');
INSERT INTO `airport_codes` VALUES (null, 'Sveg, Sweden ', 'EVG');
INSERT INTO `airport_codes` VALUES (null, 'Svolvaer, Norway ', 'SVJ');
INSERT INTO `airport_codes` VALUES (null, 'Swan River, MB ', 'ZJN');
INSERT INTO `airport_codes` VALUES (null, 'Sydney, New South Wales, Australia ', 'SYD');
INSERT INTO `airport_codes` VALUES (null, 'Sydney, NS ', 'YQY');
INSERT INTO `airport_codes` VALUES (null, 'Sylhet, Bangladesh ', 'ZYL');
INSERT INTO `airport_codes` VALUES (null, 'Syracuse, NY ', 'SYR');
INSERT INTO `airport_codes` VALUES (null, 'Szczecin, Poland ', 'SZZ');
INSERT INTO `airport_codes` VALUES (null, 'Taba, Egypt ', 'TCP');
INSERT INTO `airport_codes` VALUES (null, 'Tabarka, Tunisia ', 'TBJ');
INSERT INTO `airport_codes` VALUES (null, 'Tabatinga, AM, Brazil ', 'TBT');
INSERT INTO `airport_codes` VALUES (null, 'Tabora, Tanzania ', 'TBO');
INSERT INTO `airport_codes` VALUES (null, 'Tabriz, Iran ', 'TBZ');
INSERT INTO `airport_codes` VALUES (null, 'Tabubil, Papua New Guinea ', 'TBG');
INSERT INTO `airport_codes` VALUES (null, 'Tabuk, Saudi Arabia ', 'TUU');
INSERT INTO `airport_codes` VALUES (null, 'Tacheng, China ', 'TCG');
INSERT INTO `airport_codes` VALUES (null, 'Tachilek, Myanmar ', 'THL');
INSERT INTO `airport_codes` VALUES (null, 'Tacloban, Philippines ', 'TAC');
INSERT INTO `airport_codes` VALUES (null, 'Tacna, Peru ', 'TCQ');
INSERT INTO `airport_codes` VALUES (null, 'Tadoule Lake, MB ', 'XTL');
INSERT INTO `airport_codes` VALUES (null, 'Taichung, Taiwan ', 'TXG');
INSERT INTO `airport_codes` VALUES (null, 'Taif, Saudi Arabia ', 'TIF');
INSERT INTO `airport_codes` VALUES (null, 'Tainan, Taiwan ', 'TNN');
INSERT INTO `airport_codes` VALUES (null, 'Taipei, Taiwan - Chiang Kai Shek ', 'TPE');
INSERT INTO `airport_codes` VALUES (null, 'Taipei, Taiwan - Sung Shan ', 'TSA');
INSERT INTO `airport_codes` VALUES (null, 'Taitung, Taiwan ', 'TTT');
INSERT INTO `airport_codes` VALUES (null, 'Taiyuan, China ', 'TYN');
INSERT INTO `airport_codes` VALUES (null, 'Taiz, Yemen ', 'TAI');
INSERT INTO `airport_codes` VALUES (null, 'Takotna, AK ', 'TCT');
INSERT INTO `airport_codes` VALUES (null, 'Talkeetna, AK ', 'TKA');
INSERT INTO `airport_codes` VALUES (null, 'Tallahassee, FL ', 'TLH');
INSERT INTO `airport_codes` VALUES (null, 'Tallinn, Estonia ', 'TLL');
INSERT INTO `airport_codes` VALUES (null, 'Taloyoak, NU ', 'YYH');
INSERT INTO `airport_codes` VALUES (null, 'Tamanrasset, Algeria ', 'TMR');
INSERT INTO `airport_codes` VALUES (null, 'Tamarindo, Costa Rica ', 'TNO');
INSERT INTO `airport_codes` VALUES (null, 'Tamatave, Madagascar ', 'TMM');
INSERT INTO `airport_codes` VALUES (null, 'Tambohorano, Madagascar', 'WTA');
INSERT INTO `airport_codes` VALUES (null, 'Tambolaka, Indonesia ', 'TMC');
INSERT INTO `airport_codes` VALUES (null, 'Tambor, Costa Rica ', 'TMU');
INSERT INTO `airport_codes` VALUES (null, 'Tampa, FL ', 'TPA');
INSERT INTO `airport_codes` VALUES (null, 'Tampere, Finland ', 'TMP');
INSERT INTO `airport_codes` VALUES (null, 'Tampico, Mexico ', 'TAM');
INSERT INTO `airport_codes` VALUES (null, 'Tamworth, NS, Australia ', 'TMW');
INSERT INTO `airport_codes` VALUES (null, 'Tanahmerah, Indonesia ', 'TMH');
INSERT INTO `airport_codes` VALUES (null, 'Tanana, AK ', 'TAL');
INSERT INTO `airport_codes` VALUES (null, 'Tangier, Morocco ', 'TNG');
INSERT INTO `airport_codes` VALUES (null, 'Tanjung Pandan, Indonesia ', 'TJQ');
INSERT INTO `airport_codes` VALUES (null, 'Tanjung Selor, Indonesia ', 'TJS');
INSERT INTO `airport_codes` VALUES (null, 'Tanna, Vanuatu ', 'TAH');
INSERT INTO `airport_codes` VALUES (null, 'Taos, NM ', 'TSM');
INSERT INTO `airport_codes` VALUES (null, 'Tapachula, Mexico ', 'TAP');
INSERT INTO `airport_codes` VALUES (null, 'Tarakan, Indonesia ', 'TRK');
INSERT INTO `airport_codes` VALUES (null, 'Taramajma, Japan ', 'TRA');
INSERT INTO `airport_codes` VALUES (null, 'Taranto, Italy ', 'TAR');
INSERT INTO `airport_codes` VALUES (null, 'Tarapoto, Peru ', 'TPP');
INSERT INTO `airport_codes` VALUES (null, 'Tarawa, Kiribati ', 'TRW');
INSERT INTO `airport_codes` VALUES (null, 'Taree, NS, Australia ', 'TRO');
INSERT INTO `airport_codes` VALUES (null, 'Tari, Papua New Guinea ', 'TIZ');
INSERT INTO `airport_codes` VALUES (null, 'Tarija, Bolivia ', 'TJA');
INSERT INTO `airport_codes` VALUES (null, 'Tashkent, Uzbekistan ', 'TAS');
INSERT INTO `airport_codes` VALUES (null, 'Tasiujuaq, QC ', 'YTQ');
INSERT INTO `airport_codes` VALUES (null, 'Tatitlek, AK ', 'TEK');
INSERT INTO `airport_codes` VALUES (null, 'Taupo, New Zealand ', 'TUO');
INSERT INTO `airport_codes` VALUES (null, 'Tauranga, New Zealand ', 'TRG');
INSERT INTO `airport_codes` VALUES (null, 'Taveuni, Fiji ', 'TVU');
INSERT INTO `airport_codes` VALUES (null, 'Tawau, Malaysia ', 'TWU');
INSERT INTO `airport_codes` VALUES (null, 'Tbessa, Algeria ', 'TEE');
INSERT INTO `airport_codes` VALUES (null, 'Tbilisi, Georgia ', 'TBS');
INSERT INTO `airport_codes` VALUES (null, 'Tchibanga, Gabon ', 'TCH');
INSERT INTO `airport_codes` VALUES (null, 'Te Anau, New Zealand ', 'TEU');
INSERT INTO `airport_codes` VALUES (null, 'Teesside, United Kingdom ', 'MME');
INSERT INTO `airport_codes` VALUES (null, 'Tefe, AM, Brazil ', 'TFF');
INSERT INTO `airport_codes` VALUES (null, 'Tegucigalpa, Honduras ', 'TGU');
INSERT INTO `airport_codes` VALUES (null, 'Tehran, Iran - Mehrabad ', 'THR');
INSERT INTO `airport_codes` VALUES (null, 'Tekadu, Papua New Guinea ', 'TKB');
INSERT INTO `airport_codes` VALUES (null, 'Tel Aviv, Israel ', 'TLV');
INSERT INTO `airport_codes` VALUES (null, 'Teller Mission, AK ', 'KTS');
INSERT INTO `airport_codes` VALUES (null, 'Telluride, CO ', 'TEX');
INSERT INTO `airport_codes` VALUES (null, 'Tembagapura, Indonesia ', 'TIM');
INSERT INTO `airport_codes` VALUES (null, 'Teminabuan, Indonesia ', 'TXM');
INSERT INTO `airport_codes` VALUES (null, 'Temuco, Chile ', 'ZCO');
INSERT INTO `airport_codes` VALUES (null, 'Tenakee Springs, AK ', 'TKE');
INSERT INTO `airport_codes` VALUES (null, 'Tenerife, Spain and Canary Islands - Norte Los Rodeos ', 'TFN');
INSERT INTO `airport_codes` VALUES (null, 'Tenerife, Spain and the Canary Islands - Sur Reina Sofia ', 'TFS');
INSERT INTO `airport_codes` VALUES (null, 'Tennant Creek, NT, Australia ', 'TCA');
INSERT INTO `airport_codes` VALUES (null, 'Tepic, Mexico ', 'TPQ');
INSERT INTO `airport_codes` VALUES (null, 'Terceira Island, Portugal ', 'TER');
INSERT INTO `airport_codes` VALUES (null, 'Teresina, PI, Brazil ', 'THE');
INSERT INTO `airport_codes` VALUES (null, 'Termez, Uzbekistan ', 'TMJ');
INSERT INTO `airport_codes` VALUES (null, 'Ternate, Indonesia ', 'TTE');
INSERT INTO `airport_codes` VALUES (null, 'Terrace, BC ', 'YXT');
INSERT INTO `airport_codes` VALUES (null, 'Terre Haute, IN ', 'HUF');
INSERT INTO `airport_codes` VALUES (null, 'Tetabedi, Papua New Guinea ', 'TDB');
INSERT INTO `airport_codes` VALUES (null, 'Tete, Mozambique ', 'TET');
INSERT INTO `airport_codes` VALUES (null, 'Tete-a-La Baleine, QC ', 'ZTB');
INSERT INTO `airport_codes` VALUES (null, 'Tetlin, AK ', 'TEH');
INSERT INTO `airport_codes` VALUES (null, 'Tetuan, Morocco ', 'TTU');
INSERT INTO `airport_codes` VALUES (null, 'Texarkana, AR ', 'TXK');
INSERT INTO `airport_codes` VALUES (null, 'Tezpur, India ', 'TEZ');
INSERT INTO `airport_codes` VALUES (null, 'Thandwe, Myanmar ', 'SNW');
INSERT INTO `airport_codes` VALUES (null, 'Thangool, QL, Australia ', 'THG');
INSERT INTO `airport_codes` VALUES (null, 'Thargomindah, QL, Australia ', 'XTG');
INSERT INTO `airport_codes` VALUES (null, 'The Bight, Bahamas ', 'TBI');
INSERT INTO `airport_codes` VALUES (null, 'The Pas, MB ', 'YQD');
INSERT INTO `airport_codes` VALUES (null, 'The Pas, MB - Rail service ', 'XDZ');
INSERT INTO `airport_codes` VALUES (null, 'Thessaloniki, Greece ', 'SKG');
INSERT INTO `airport_codes` VALUES (null, 'Thicket Portage, MB ', 'YTD');
INSERT INTO `airport_codes` VALUES (null, 'Thief River Falls, MN ', 'TVF');
INSERT INTO `airport_codes` VALUES (null, 'Thira, Greece ', 'JTR');
INSERT INTO `airport_codes` VALUES (null, 'Thiruvananthapuram, India ', 'TRV');
INSERT INTO `airport_codes` VALUES (null, 'Thompson, MB ', 'YTH');
INSERT INTO `airport_codes` VALUES (null, 'Thorne Bay, AK ', 'KTB');
INSERT INTO `airport_codes` VALUES (null, 'Thorshofn, Iceland ', 'THO');
INSERT INTO `airport_codes` VALUES (null, 'Thunder Bay, ON ', 'YQT');
INSERT INTO `airport_codes` VALUES (null, 'Thursday Island, QL, Australia ', 'TIS');
INSERT INTO `airport_codes` VALUES (null, 'Tianjn, China ', 'TSN');
INSERT INTO `airport_codes` VALUES (null, 'Tiaret, Algeria ', 'TID');
INSERT INTO `airport_codes` VALUES (null, 'Tiga, New Caledonia ', 'TGJ');
INSERT INTO `airport_codes` VALUES (null, 'Tijuana, Mexico ', 'TIJ');
INSERT INTO `airport_codes` VALUES (null, 'Tikehau Atoll, French Polynesia ', 'TIH');
INSERT INTO `airport_codes` VALUES (null, 'Tiksi, Russia ', 'IKS');
INSERT INTO `airport_codes` VALUES (null, 'Timaru, New Zealand ', 'TIU');
INSERT INTO `airport_codes` VALUES (null, 'Timimoun, Algeria ', 'TMX');
INSERT INTO `airport_codes` VALUES (null, 'Timmins, ON ', 'YTS');
INSERT INTO `airport_codes` VALUES (null, 'Timosoara, Romania ', 'TSR');
INSERT INTO `airport_codes` VALUES (null, 'Tin City, AK ', 'TNC');
INSERT INTO `airport_codes` VALUES (null, 'Tindouf, Algeria ', 'TIN');
INSERT INTO `airport_codes` VALUES (null, 'Tinian, Northern Mariana Islands ', 'TIQ');
INSERT INTO `airport_codes` VALUES (null, 'Tioljikja, Mauritania ', 'TIY');
INSERT INTO `airport_codes` VALUES (null, 'Tioman, Malaysia ', 'TOD');
INSERT INTO `airport_codes` VALUES (null, 'Tippi, Ethiopia ', 'TIE');
INSERT INTO `airport_codes` VALUES (null, 'Tirana, Albania ', 'TIA');
INSERT INTO `airport_codes` VALUES (null, 'Tiree, United Kingdom ', 'TRE');
INSERT INTO `airport_codes` VALUES (null, 'Tirgu Mures, Romania ', 'TGM');
INSERT INTO `airport_codes` VALUES (null, 'Tiruchirapally, India ', 'TRZ');
INSERT INTO `airport_codes` VALUES (null, 'Tirupati, India ', 'TIR');
INSERT INTO `airport_codes` VALUES (null, 'Tivat, Serbia and Montenegro ', 'TIV');
INSERT INTO `airport_codes` VALUES (null, 'Tlemcen, Algeria ', 'TLM');
INSERT INTO `airport_codes` VALUES (null, 'Tobago, Trinidad and Tobago ', 'TAB');
INSERT INTO `airport_codes` VALUES (null, 'Tobruk, Libya ', 'TOB');
INSERT INTO `airport_codes` VALUES (null, 'Tofino, BC, ', 'YAZ');
INSERT INTO `airport_codes` VALUES (null, 'Togiak Village, AK ', 'TOG');
INSERT INTO `airport_codes` VALUES (null, 'Tok, AK ', 'TKJ');
INSERT INTO `airport_codes` VALUES (null, 'Toksook Bay, AK ', 'OOK');
INSERT INTO `airport_codes` VALUES (null, 'Tokunoshima, Japan ', 'TKN');
INSERT INTO `airport_codes` VALUES (null, 'Tokushima, Japan ', 'TKS');
INSERT INTO `airport_codes` VALUES (null, 'Tokyo, Japan - All airports ', 'TYO');
INSERT INTO `airport_codes` VALUES (null, 'Tokyo, Japan - Haneda ', 'HND');
INSERT INTO `airport_codes` VALUES (null, 'Tokyo, Japan - Narita ', 'NRT');
INSERT INTO `airport_codes` VALUES (null, 'Toledo, OH ', 'TOL');
INSERT INTO `airport_codes` VALUES (null, 'Toledo, PR, Brazil ', 'TOW');
INSERT INTO `airport_codes` VALUES (null, 'Toluco, Mexico ', 'TLC');
INSERT INTO `airport_codes` VALUES (null, 'Tom Price, WA, Australia ', 'TPR');
INSERT INTO `airport_codes` VALUES (null, 'Tomanggong, Malaysia ', 'TMG');
INSERT INTO `airport_codes` VALUES (null, 'Tombouctou, Mali ', 'TOM');
INSERT INTO `airport_codes` VALUES (null, 'Tomsk, Russia ', 'TOF');
INSERT INTO `airport_codes` VALUES (null, 'Tongliao, China ', 'TGO');
INSERT INTO `airport_codes` VALUES (null, 'Tongoa, Vanuatu ', 'TGH');
INSERT INTO `airport_codes` VALUES (null, 'Toowoomba, QL, Australia ', 'TWB');
INSERT INTO `airport_codes` VALUES (null, 'Topeka, KS ', 'FOE');
INSERT INTO `airport_codes` VALUES (null, 'Toronto, ON - Downtown Rail service ', 'YBZ');
INSERT INTO `airport_codes` VALUES (null, 'Toronto, ON - Guildwood Rail service ', 'XLQ');
INSERT INTO `airport_codes` VALUES (null, 'Toronto, ON - International ', 'YYZ');
INSERT INTO `airport_codes` VALUES (null, 'Toronto, ON - Toronto Island Airport ', 'YTZ');
INSERT INTO `airport_codes` VALUES (null, 'Torp Airport Oslo, Norway - Sandefjord ', 'TRF');
INSERT INTO `airport_codes` VALUES (null, 'Torreon, Mexico ', 'TRC');
INSERT INTO `airport_codes` VALUES (null, 'Torres, Vanuatu ', 'TOH');
INSERT INTO `airport_codes` VALUES (null, 'Torsby, Sweden ', 'TYF');
INSERT INTO `airport_codes` VALUES (null, 'Tortola, British Virgin Islands ', 'TOV');
INSERT INTO `airport_codes` VALUES (null, 'Tortoli, Italy ', 'TTB');
INSERT INTO `airport_codes` VALUES (null, 'Tortuquero, Costa Rica ', 'TTQ');
INSERT INTO `airport_codes` VALUES (null, 'Tottori, Japan ', 'TTJ');
INSERT INTO `airport_codes` VALUES (null, 'Touho, New Caledonia ', 'TOU');
INSERT INTO `airport_codes` VALUES (null, 'Toulon, France ', 'TLN');
INSERT INTO `airport_codes` VALUES (null, 'Toulouse, France ', 'TLS');
INSERT INTO `airport_codes` VALUES (null, 'Tours, France ', 'TUF');
INSERT INTO `airport_codes` VALUES (null, 'Tours, France - Rail service ', 'XSH');
INSERT INTO `airport_codes` VALUES (null, 'Townsville, QL, Australia ', 'TSV');
INSERT INTO `airport_codes` VALUES (null, 'Toyama, Japan ', 'TOY');
INSERT INTO `airport_codes` VALUES (null, 'Tozeur, Tunisia ', 'TOE');
INSERT INTO `airport_codes` VALUES (null, 'Trabzon, Turkey ', 'TZX');
INSERT INTO `airport_codes` VALUES (null, 'Trang, Thailand ', 'TST');
INSERT INTO `airport_codes` VALUES (null, 'Trapani, Italy ', 'TPS');
INSERT INTO `airport_codes` VALUES (null, 'Traralgon, VI, Australia ', 'TGN');
INSERT INTO `airport_codes` VALUES (null, 'Traverse City, MI ', 'TVC');
INSERT INTO `airport_codes` VALUES (null, 'Treasure Cay, Bahamas ', 'TCB');
INSERT INTO `airport_codes` VALUES (null, 'Trelew, CB, Argentina ', 'REL');
INSERT INTO `airport_codes` VALUES (null, 'Trenton/Mercer, NJ ', 'TTN');
INSERT INTO `airport_codes` VALUES (null, 'Trieste, Italy ', 'TRS');
INSERT INTO `airport_codes` VALUES (null, 'Trinidad, Bolivia ', 'TDD');
INSERT INTO `airport_codes` VALUES (null, 'Trinidad, Trinidad and Tobago ', 'POS');
INSERT INTO `airport_codes` VALUES (null, 'Tripoli, Libya ', 'TIP');
INSERT INTO `airport_codes` VALUES (null, 'Trollhattan, Sweden ', 'THN');
INSERT INTO `airport_codes` VALUES (null, 'Trombetas, PA, Brazil ', 'TMT');
INSERT INTO `airport_codes` VALUES (null, 'Tromso, Norway ', 'TOS');
INSERT INTO `airport_codes` VALUES (null, 'Trondheim, Norway ', 'TRD');
INSERT INTO `airport_codes` VALUES (null, 'Trujillo, Honduras ', 'TJI');
INSERT INTO `airport_codes` VALUES (null, 'Trujillo, Peru ', 'TRU');
INSERT INTO `airport_codes` VALUES (null, 'Truk, Micronesia ', 'TKK');
INSERT INTO `airport_codes` VALUES (null, 'Truro, NS - Rail service ', 'XLZ');
INSERT INTO `airport_codes` VALUES (null, 'Tsaratanana, Madagascar ', 'TTS');
INSERT INTO `airport_codes` VALUES (null, 'Tsiroanomandidy, Madagascar ', 'WTS');
INSERT INTO `airport_codes` VALUES (null, 'Tsumeb, Namibia ', 'TSB');
INSERT INTO `airport_codes` VALUES (null, 'Tsushima, Japan ', 'TSJ');
INSERT INTO `airport_codes` VALUES (null, 'Tubuai, French Polynesia ', 'TUB');
INSERT INTO `airport_codes` VALUES (null, 'Tucson, AZ ', 'TUS');
INSERT INTO `airport_codes` VALUES (null, 'Tucuman, TU, Argentina ', 'TUC');
INSERT INTO `airport_codes` VALUES (null, 'Tucupita, Venezuela ', 'TUV');
INSERT INTO `airport_codes` VALUES (null, 'Tucurui, PA, Brazil ', 'TUR');
INSERT INTO `airport_codes` VALUES (null, 'Tufi, Papua New Guinea ', 'TFI');
INSERT INTO `airport_codes` VALUES (null, 'Tuguegarao, Philippines ', 'TUG');
INSERT INTO `airport_codes` VALUES (null, 'Tuktoyaktuk, NT ', 'YUB');
INSERT INTO `airport_codes` VALUES (null, 'Tulcan, Ecuador ', 'TUA');
INSERT INTO `airport_codes` VALUES (null, 'Tulear, Madagascar ', 'TLE');
INSERT INTO `airport_codes` VALUES (null, 'Tulita/Fort Norman, NT ', 'ZFN');
INSERT INTO `airport_codes` VALUES (null, 'Tulsa, OK ', 'TUL');
INSERT INTO `airport_codes` VALUES (null, 'Tuluksak, AK ', 'TLT');
INSERT INTO `airport_codes` VALUES (null, 'Tum, Ethiopia ', 'TUJ');
INSERT INTO `airport_codes` VALUES (null, 'Tumaco, Colombia ', 'TCO');
INSERT INTO `airport_codes` VALUES (null, 'Tumbes, Peru ', 'TBP');
INSERT INTO `airport_codes` VALUES (null, 'Tunis, Tunisia ', 'TUN');
INSERT INTO `airport_codes` VALUES (null, 'Tuntutuliak, AK ', 'WTL');
INSERT INTO `airport_codes` VALUES (null, 'Tununak, AK ', 'TNK');
INSERT INTO `airport_codes` VALUES (null, 'Tunxi, China ', 'TXN');
INSERT INTO `airport_codes` VALUES (null, 'Tupelo, MS ', 'TUP');
INSERT INTO `airport_codes` VALUES (null, 'Turaif, Saudi Arabia ', 'TUI');
INSERT INTO `airport_codes` VALUES (null, 'Turbat, Pakistan ', 'TUK');
INSERT INTO `airport_codes` VALUES (null, 'Turin, Italy ', 'TRN');
INSERT INTO `airport_codes` VALUES (null, 'Turku, Finland ', 'TKU');
INSERT INTO `airport_codes` VALUES (null, 'Tuscaloosa, AL ', 'TCL');
INSERT INTO `airport_codes` VALUES (null, 'Tuxtla Gutierrez, Mexico ', 'TGZ');
INSERT INTO `airport_codes` VALUES (null, 'Twin Falls, ID ', 'TWF');
INSERT INTO `airport_codes` VALUES (null, 'Twin Hills, AK ', 'TWA');
INSERT INTO `airport_codes` VALUES (null, 'Tyler, TX ', 'TYR');
INSERT INTO `airport_codes` VALUES (null, 'Tyumen, Russia ', 'TJM');
INSERT INTO `airport_codes` VALUES (null, 'Ube, Japan ', 'UBJ');
INSERT INTO `airport_codes` VALUES (null, 'Uberaba, MG, Brazil ', 'UBA');
INSERT INTO `airport_codes` VALUES (null, 'Uberlandia, MG, Brazil ', 'UDI');
INSERT INTO `airport_codes` VALUES (null, 'Ubon Ratchathani, Thailand ', 'UBP');
INSERT INTO `airport_codes` VALUES (null, 'Udaipur, India ', 'UDR');
INSERT INTO `airport_codes` VALUES (null, 'Udon Thani, Thailand ', 'UTH');
INSERT INTO `airport_codes` VALUES (null, 'Ufa, Russia ', 'UFA');
INSERT INTO `airport_codes` VALUES (null, 'Ujae Island, Marshall Islands ', 'UJE');
INSERT INTO `airport_codes` VALUES (null, 'Ujung Pandang, Indonesia ', 'UPG');
INSERT INTO `airport_codes` VALUES (null, 'Ukhta, Russia ', 'UCT');
INSERT INTO `airport_codes` VALUES (null, 'Ulaanbaatar, Mongolia ', 'ULN');
INSERT INTO `airport_codes` VALUES (null, 'Ulanhot, China ', 'HLH');
INSERT INTO `airport_codes` VALUES (null, 'Ulan-Ude, Russia ', 'UUD');
INSERT INTO `airport_codes` VALUES (null, 'Ulei, Vanuatu ', 'ULB');
INSERT INTO `airport_codes` VALUES (null, 'Uliastai, Mongolia ', 'ULY');
INSERT INTO `airport_codes` VALUES (null, 'Ulithi, Micronesia ', 'ULI');
INSERT INTO `airport_codes` VALUES (null, 'Ulsan, South Korea ', 'USN');
INSERT INTO `airport_codes` VALUES (null, 'Ulundi, South Africa ', 'ULD');
INSERT INTO `airport_codes` VALUES (null, 'Umea, Sweden ', 'UME');
INSERT INTO `airport_codes` VALUES (null, 'Umiujag, QC ', 'YUD');
INSERT INTO `airport_codes` VALUES (null, 'Umtata, South Africa ', 'UTT');
INSERT INTO `airport_codes` VALUES (null, 'Unalakleet, AK ', 'UNK');
INSERT INTO `airport_codes` VALUES (null, 'Upernavik, Greenland ', 'JUV');
INSERT INTO `airport_codes` VALUES (null, 'Upington, South Africa ', 'UTN');
INSERT INTO `airport_codes` VALUES (null, 'Uraj, Russia ', 'URJ');
INSERT INTO `airport_codes` VALUES (null, 'Uralsk, Kazakhstan ', 'URA');
INSERT INTO `airport_codes` VALUES (null, 'Uranium City, SK ', 'YBE');
INSERT INTO `airport_codes` VALUES (null, 'Urbana/Champaign, IL ', 'CMI');
INSERT INTO `airport_codes` VALUES (null, 'Urgench, Uzbekistan ', 'UGC');
INSERT INTO `airport_codes` VALUES (null, 'Urmieh, Iran ', 'OMH');
INSERT INTO `airport_codes` VALUES (null, 'Uroubi, Papua New Guinea ', 'URU');
INSERT INTO `airport_codes` VALUES (null, 'Uruapan, Mexico ', 'UPN');
INSERT INTO `airport_codes` VALUES (null, 'Uruguaiana, RS, Brazil ', 'URG');
INSERT INTO `airport_codes` VALUES (null, 'Urumqi, China ', 'URC');
INSERT INTO `airport_codes` VALUES (null, 'Useless Loop, WA, Australia ', 'USL');
INSERT INTO `airport_codes` VALUES (null, 'Ushuaia, TF, Argentina ', 'USH');
INSERT INTO `airport_codes` VALUES (null, 'Usinsk, Russia ', 'USK');
INSERT INTO `airport_codes` VALUES (null, 'Ust-Ilimsk, Russia ', 'UIK');
INSERT INTO `airport_codes` VALUES (null, 'Ust-Kamenogorsk, Kazakhstan ', 'UKK');
INSERT INTO `airport_codes` VALUES (null, 'Utapao, Thailand ', 'UTP');
INSERT INTO `airport_codes` VALUES (null, 'Utica, NY ', 'UCA');
INSERT INTO `airport_codes` VALUES (null, 'Utila, Honduras ', 'UII');
INSERT INTO `airport_codes` VALUES (null, 'Utirik Island, Marshall Islands ', 'UTK');
INSERT INTO `airport_codes` VALUES (null, 'Utopia Creek, AK ', 'UTO');
INSERT INTO `airport_codes` VALUES (null, 'Uummannaq, Greeland ', 'UMD');
INSERT INTO `airport_codes` VALUES (null, 'Uzhgorod, Ukraine ', 'UDJ');
INSERT INTO `airport_codes` VALUES (null, 'V.C. Bird International, Antigua & Barbuda ', 'ANU');
INSERT INTO `airport_codes` VALUES (null, 'Vaasa, Finland ', 'VAA');
INSERT INTO `airport_codes` VALUES (null, 'Vadodara, India ', 'BDQ');
INSERT INTO `airport_codes` VALUES (null, 'Vadso, Norway ', 'VDS');
INSERT INTO `airport_codes` VALUES (null, 'Vail, CO - Eagle County Airport ', 'EGE');
INSERT INTO `airport_codes` VALUES (null, 'Vail, CO - Van service ', 'QBF');
INSERT INTO `airport_codes` VALUES (null, 'Valdez, AK ', 'VDZ');
INSERT INTO `airport_codes` VALUES (null, 'Valdivia, Chile ', 'ZAL');
INSERT INTO `airport_codes` VALUES (null, 'Val-d\'Or, QC ', 'YVO');
INSERT INTO `airport_codes` VALUES (null, 'Valdosta, GA ', 'VLD');
INSERT INTO `airport_codes` VALUES (null, 'Valencia, Spain ', 'VLC');
INSERT INTO `airport_codes` VALUES (null, 'Valencia, Venezuela ', 'VLN');
INSERT INTO `airport_codes` VALUES (null, 'Valenciennes, France ', 'XVS');
INSERT INTO `airport_codes` VALUES (null, 'Valera, Venezuela ', 'VLV');
INSERT INTO `airport_codes` VALUES (null, 'Valesdir, Vanuatu ', 'VLS');
INSERT INTO `airport_codes` VALUES (null, 'Valladolid, Spain and Canary Islands ', 'VLL');
INSERT INTO `airport_codes` VALUES (null, 'Valledupar, Colombia ', 'VUP');
INSERT INTO `airport_codes` VALUES (null, 'Valparaiso, FL ', 'VPS');
INSERT INTO `airport_codes` VALUES (null, 'Valverde, Spain and Canary Islands - Hierro ', 'VDE');
INSERT INTO `airport_codes` VALUES (null, 'Van, Turkey ', 'VAN');
INSERT INTO `airport_codes` VALUES (null, 'Vancouver, BC ', 'YVR');
INSERT INTO `airport_codes` VALUES (null, 'Vancouver, BC - Coal Harbour ', 'CXH');
INSERT INTO `airport_codes` VALUES (null, 'Vancouver, BC - International ', 'YVR');
INSERT INTO `airport_codes` VALUES (null, 'Vancouver, BC - Rail service ', 'XEA');
INSERT INTO `airport_codes` VALUES (null, 'Vanimo, Papua New Guinea ', 'VAI');
INSERT INTO `airport_codes` VALUES (null, 'Vanuabalavu, Fiji ', 'VBV');
INSERT INTO `airport_codes` VALUES (null, 'Varadero, Cuba ', 'VRA');
INSERT INTO `airport_codes` VALUES (null, 'Varanasi, India ', 'VNS');
INSERT INTO `airport_codes` VALUES (null, 'Vardoe, Norway ', 'VAW');
INSERT INTO `airport_codes` VALUES (null, 'Varginha, MG, Brazil ', 'VAG');
INSERT INTO `airport_codes` VALUES (null, 'Varkaus, Finland ', 'VRK');
INSERT INTO `airport_codes` VALUES (null, 'Varna, Bulgaria ', 'VAR');
INSERT INTO `airport_codes` VALUES (null, 'Vasteras, Sweden ', 'VST');
INSERT INTO `airport_codes` VALUES (null, 'Vatomatry, Madagascar ', 'VAT');
INSERT INTO `airport_codes` VALUES (null, 'Vava\'u, Tonga ', 'VAV');
INSERT INTO `airport_codes` VALUES (null, 'Vaxjo, Sweden ', 'VXO');
INSERT INTO `airport_codes` VALUES (null, 'Venetie, AK ', 'VEE');
INSERT INTO `airport_codes` VALUES (null, 'Venice, Italy - Marco Polo ', 'VCE');
INSERT INTO `airport_codes` VALUES (null, 'Venice, Italy - Treviso ', 'TSF');
INSERT INTO `airport_codes` VALUES (null, 'Ventura/Oxnard, CA ', 'OXR');
INSERT INTO `airport_codes` VALUES (null, 'Veracruz, Mexico ', 'VER');
INSERT INTO `airport_codes` VALUES (null, 'Vernal, UT ', 'VEL');
INSERT INTO `airport_codes` VALUES (null, 'Verona, Italy ', 'VRN');
INSERT INTO `airport_codes` VALUES (null, 'Vestmannaeyjar, Iceland ', 'VEY');
INSERT INTO `airport_codes` VALUES (null, 'Victoria Falls, Zimbabwe ', 'VFA');
INSERT INTO `airport_codes` VALUES (null, 'Victoria River Downs, NT, Australia ', 'VCD');
INSERT INTO `airport_codes` VALUES (null, 'Victoria, BC - Inner Harbor ', 'YWH');
INSERT INTO `airport_codes` VALUES (null, 'Victoria, BC - International ', 'YYJ');
INSERT INTO `airport_codes` VALUES (null, 'Victoria, TX ', 'VCT');
INSERT INTO `airport_codes` VALUES (null, 'Viedma, RN, Argentina ', 'VDM');
INSERT INTO `airport_codes` VALUES (null, 'Vienna, Austria ', 'VIE');
INSERT INTO `airport_codes` VALUES (null, 'Vientiane, Laos - Wattay ', 'VTE');
INSERT INTO `airport_codes` VALUES (null, 'Vieques, Puerto Rico ', 'VQS');
INSERT INTO `airport_codes` VALUES (null, 'Vigo, Spain ', 'VGO');
INSERT INTO `airport_codes` VALUES (null, 'Vilanculos, Mozambique ', 'VNX');
INSERT INTO `airport_codes` VALUES (null, 'Vilhelmina, Sweden ', 'VHM');
INSERT INTO `airport_codes` VALUES (null, 'Vilhena, Brazil ', 'BVH');
INSERT INTO `airport_codes` VALUES (null, 'Villa Gesell, BA, Argentina ', 'VLG');
INSERT INTO `airport_codes` VALUES (null, 'Villa Mercedes, SL, Argentina ', 'VME');
INSERT INTO `airport_codes` VALUES (null, 'Villahermosa, Mexico ', 'VSA');
INSERT INTO `airport_codes` VALUES (null, 'Vilnius, Lithuania ', 'VNO');
INSERT INTO `airport_codes` VALUES (null, 'Vinh City, Viet Nam ', 'VII');
INSERT INTO `airport_codes` VALUES (null, 'Virgin Gorda, British Virgin Islands ', 'VIJ');
INSERT INTO `airport_codes` VALUES (null, 'Visalia, CA ', 'VIS');
INSERT INTO `airport_codes` VALUES (null, 'Visby, Sweden ', 'VBY');
INSERT INTO `airport_codes` VALUES (null, 'Vishakhapatnam, India ', 'VTZ');
INSERT INTO `airport_codes` VALUES (null, 'Vitebsk, Belarus ', 'VTB');
INSERT INTO `airport_codes` VALUES (null, 'Vitoria da Conquista, BA, Brazil ', 'VDC');
INSERT INTO `airport_codes` VALUES (null, 'Vitoria, Spain and Canary Islands ', 'VIT');
INSERT INTO `airport_codes` VALUES (null, 'Vivigani, Papua New Guinea ', 'VIV');
INSERT INTO `airport_codes` VALUES (null, 'Vladikavkaz, Russia ', 'OGZ');
INSERT INTO `airport_codes` VALUES (null, 'Vladivostok, Russia ', 'VVO');
INSERT INTO `airport_codes` VALUES (null, 'Vohemar, Madagascar ', 'VOH');
INSERT INTO `airport_codes` VALUES (null, 'Volgodonsk, Russia ', 'VLK');
INSERT INTO `airport_codes` VALUES (null, 'Volgograd, Russia ', 'VOG');
INSERT INTO `airport_codes` VALUES (null, 'Vopnafjordur, Iceland ', 'VPN');
INSERT INTO `airport_codes` VALUES (null, 'Vorkuta, Russia ', 'VKT');
INSERT INTO `airport_codes` VALUES (null, 'Voronezh, Russia ', 'VOZ');
INSERT INTO `airport_codes` VALUES (null, 'Wabush, NL ', 'YWK');
INSERT INTO `airport_codes` VALUES (null, 'Waco, TX ', 'ACT');
INSERT INTO `airport_codes` VALUES (null, 'Wadi Ad Dawasir, Saudi Arabia ', 'WAE');
INSERT INTO `airport_codes` VALUES (null, 'Wadi Halfa, Sudan ', 'WHF');
INSERT INTO `airport_codes` VALUES (null, 'Wagethe, Indonesia ', 'WET');
INSERT INTO `airport_codes` VALUES (null, 'Wagga Wagga, NS, Australia ', 'WGA');
INSERT INTO `airport_codes` VALUES (null, 'Wahai, Indonesia ', 'WBA');
INSERT INTO `airport_codes` VALUES (null, 'Waingapo, Indonesia ', 'WGP');
INSERT INTO `airport_codes` VALUES (null, 'Wainwright, AK ', 'AIN');
INSERT INTO `airport_codes` VALUES (null, 'Wakkanai, Japan ', 'WKJ');
INSERT INTO `airport_codes` VALUES (null, 'Walaha, Vanuatu ', 'WLH');
INSERT INTO `airport_codes` VALUES (null, 'Wales, AK ', 'WAA');
INSERT INTO `airport_codes` VALUES (null, 'Walgett, NS, Australia ', 'WGE');
INSERT INTO `airport_codes` VALUES (null, 'Walla Walla, WA ', 'ALW');
INSERT INTO `airport_codes` VALUES (null, 'Wallis Island, Wallis and Futuna Islands ', 'WLS');
INSERT INTO `airport_codes` VALUES (null, 'Walvis Bay, Namibia ', 'WVB');
INSERT INTO `airport_codes` VALUES (null, 'Wamena, Indonesia ', 'WMX');
INSERT INTO `airport_codes` VALUES (null, 'Wanaka, New Zealand ', 'WKA');
INSERT INTO `airport_codes` VALUES (null, 'Wanganui, New Zealand ', 'WAG');
INSERT INTO `airport_codes` VALUES (null, 'Wangerooge, Germany ', 'AGE');
INSERT INTO `airport_codes` VALUES (null, 'Wanigela, Papua New Guinea ', 'AGL');
INSERT INTO `airport_codes` VALUES (null, 'Wanxian, China ', 'WXN');
INSERT INTO `airport_codes` VALUES (null, 'Warsaw, Poland ', 'WAW');
INSERT INTO `airport_codes` VALUES (null, 'Washington DC - All airports ', 'WAS');
INSERT INTO `airport_codes` VALUES (null, 'Washington DC - Dulles ', 'IAD');
INSERT INTO `airport_codes` VALUES (null, 'Washington DC - National ', 'DCA');
INSERT INTO `airport_codes` VALUES (null, 'Wasior, Indonesia ', 'WSR');
INSERT INTO `airport_codes` VALUES (null, 'Waskaganish, QC ', 'YKQ');
INSERT INTO `airport_codes` VALUES (null, 'Wasu, Papua New Guinea ', 'WSU');
INSERT INTO `airport_codes` VALUES (null, 'Waterfall, AK ', 'KWF');
INSERT INTO `airport_codes` VALUES (null, 'Waterford, Ireland ', 'WAT');
INSERT INTO `airport_codes` VALUES (null, 'Waterloo, IA ', 'ALO');
INSERT INTO `airport_codes` VALUES (null, 'Watertown, NY ', 'ART');
INSERT INTO `airport_codes` VALUES (null, 'Watertown, SD ', 'ATY');
INSERT INTO `airport_codes` VALUES (null, 'Watford, ON - Rail service ', 'XWA');
INSERT INTO `airport_codes` VALUES (null, 'Wau, Papua New Guinea ', 'WUG');
INSERT INTO `airport_codes` VALUES (null, 'Wau, Sudan ', 'WUU');
INSERT INTO `airport_codes` VALUES (null, 'Wausau/Stevens Point, WI ', 'CWA');
INSERT INTO `airport_codes` VALUES (null, 'Webequie, ON ', 'YWP');
INSERT INTO `airport_codes` VALUES (null, 'Wedau, Papua New Guinea ', 'WED');
INSERT INTO `airport_codes` VALUES (null, 'Wedjh, Saudi Arabia ', 'EJH');
INSERT INTO `airport_codes` VALUES (null, 'Weihai, China ', 'WEH');
INSERT INTO `airport_codes` VALUES (null, 'Weipa, QL, Australia ', 'WEI');
INSERT INTO `airport_codes` VALUES (null, 'Wellington, New Zealand ', 'WLG');
INSERT INTO `airport_codes` VALUES (null, 'Wemindji, QC ', 'YNC');
INSERT INTO `airport_codes` VALUES (null, 'Wenatchee, WA ', 'EAT');
INSERT INTO `airport_codes` VALUES (null, 'Wenzhou, China ', 'WNZ');
INSERT INTO `airport_codes` VALUES (null, 'West Palm Beach, FL ', 'PBI');
INSERT INTO `airport_codes` VALUES (null, 'West Yellowstone, MT ', 'WYS');
INSERT INTO `airport_codes` VALUES (null, 'Westchester County, NY ', 'HPN');
INSERT INTO `airport_codes` VALUES (null, 'Westerland, Germany ', 'GWT');
INSERT INTO `airport_codes` VALUES (null, 'Westerly, RI ', 'WST');
INSERT INTO `airport_codes` VALUES (null, 'Westport, New Zealand ', 'WSZ');
INSERT INTO `airport_codes` VALUES (null, 'Westray, United Kingdom ', 'WRY');
INSERT INTO `airport_codes` VALUES (null, 'Westsound, WA ', 'WSX');
INSERT INTO `airport_codes` VALUES (null, 'Wewak, Papua New Guinea ', 'WWK');
INSERT INTO `airport_codes` VALUES (null, 'Weymont, QC - Rail service ', 'XFQ');
INSERT INTO `airport_codes` VALUES (null, 'Wha Ti/Lac La Martre, NT ', 'YLE');
INSERT INTO `airport_codes` VALUES (null, 'Whakatane, New Zealand ', 'WHK');
INSERT INTO `airport_codes` VALUES (null, 'Whale Cove, NU ', 'YXN');
INSERT INTO `airport_codes` VALUES (null, 'Whale Pass, AK ', 'WWP');
INSERT INTO `airport_codes` VALUES (null, 'Whangarei, New Zealand ', 'WRE');
INSERT INTO `airport_codes` VALUES (null, 'White Mountain, AK ', 'WMO');
INSERT INTO `airport_codes` VALUES (null, 'White River, ON ', 'YWR');
INSERT INTO `airport_codes` VALUES (null, 'White River, VT ', 'LEB');
INSERT INTO `airport_codes` VALUES (null, 'Whitehorse, YT ', 'YXY');
INSERT INTO `airport_codes` VALUES (null, 'Whyalla, SA, Australia ', 'WYA');
INSERT INTO `airport_codes` VALUES (null, 'Wichita Falls, TX ', 'SPS');
INSERT INTO `airport_codes` VALUES (null, 'Wichita, KS ', 'ICT');
INSERT INTO `airport_codes` VALUES (null, 'Wick, United Kingdom ', 'WIC');
INSERT INTO `airport_codes` VALUES (null, 'Wilhelmshaven, Germany ', 'WVN');
INSERT INTO `airport_codes` VALUES (null, 'Wilkes Barre, PA ', 'AVP');
INSERT INTO `airport_codes` VALUES (null, 'Williams Harbour, NL ', 'YWM');
INSERT INTO `airport_codes` VALUES (null, 'Williams Lake, BC ', 'YWL');
INSERT INTO `airport_codes` VALUES (null, 'Williamsburg, VA ', 'PHF');
INSERT INTO `airport_codes` VALUES (null, 'Williamsport, PA ', 'IPT');
INSERT INTO `airport_codes` VALUES (null, 'Williston, ND ', 'ISN');
INSERT INTO `airport_codes` VALUES (null, 'Wilmington, NC ', 'ILM');
INSERT INTO `airport_codes` VALUES (null, 'Wiluna, WA, Australia ', 'WUN');
INSERT INTO `airport_codes` VALUES (null, 'Windarra, QL, Australia ', 'WNR');
INSERT INTO `airport_codes` VALUES (null, 'Windsor Locks, CT ', 'BDL');
INSERT INTO `airport_codes` VALUES (null, 'Windsor, ON ', 'YQG');
INSERT INTO `airport_codes` VALUES (null, 'Windsor, ON - Rail service ', 'XEC');
INSERT INTO `airport_codes` VALUES (null, 'Winnipeg, MB - International ', 'YWG');
INSERT INTO `airport_codes` VALUES (null, 'Winnipeg, MB - Rail service ', 'XEF');
INSERT INTO `airport_codes` VALUES (null, 'Winton, QL, Australia ', 'WIN');
INSERT INTO `airport_codes` VALUES (null, 'Woja, Marshall Islands ', 'WJA');
INSERT INTO `airport_codes` VALUES (null, 'Wollaston Lake, SK ', 'ZWL');
INSERT INTO `airport_codes` VALUES (null, 'Wonan, Taiwan ', 'WOT');
INSERT INTO `airport_codes` VALUES (null, 'WonJu, South Korea ', 'WJU');
INSERT INTO `airport_codes` VALUES (null, 'Woodstock, ON - Rail service ', 'XIP');
INSERT INTO `airport_codes` VALUES (null, 'Worcester, MA ', 'ORH');
INSERT INTO `airport_codes` VALUES (null, 'Worland, WY ', 'WRL');
INSERT INTO `airport_codes` VALUES (null, 'Wotho Island, Marshall Islands ', 'WTO');
INSERT INTO `airport_codes` VALUES (null, 'Wotje Island, Marshall Islands ', 'WTE');
INSERT INTO `airport_codes` VALUES (null, 'Wrangell, AK ', 'WRG');
INSERT INTO `airport_codes` VALUES (null, 'Wroclaw, Poland ', 'WRO');
INSERT INTO `airport_codes` VALUES (null, 'Wudinna, SA, Australia ', 'WUD');
INSERT INTO `airport_codes` VALUES (null, 'Wuhan, China ', 'WUH');
INSERT INTO `airport_codes` VALUES (null, 'Wunnummin Lake, ON ', 'WNN');
INSERT INTO `airport_codes` VALUES (null, 'Wuyishan, China ', 'WUS');
INSERT INTO `airport_codes` VALUES (null, 'Wyndham, WA, Australia ', 'WYN');
INSERT INTO `airport_codes` VALUES (null, 'Wyoming, ON - Rail service ', 'XWY');
INSERT INTO `airport_codes` VALUES (null, 'Xi An, China - Xianyang ', 'XIY');
INSERT INTO `airport_codes` VALUES (null, 'Xiamen, China ', 'XMN');
INSERT INTO `airport_codes` VALUES (null, 'Xiangfan, China ', 'XFN');
INSERT INTO `airport_codes` VALUES (null, 'Xichang, China ', 'XIC');
INSERT INTO `airport_codes` VALUES (null, 'Xieng Khouang, Laos ', 'XKH');
INSERT INTO `airport_codes` VALUES (null, 'Xilinhot, China ', 'XIL');
INSERT INTO `airport_codes` VALUES (null, 'Xining, China ', 'XNN');
INSERT INTO `airport_codes` VALUES (null, 'Xuzhou, China ', 'XUZ');
INSERT INTO `airport_codes` VALUES (null, 'Yakima, WA ', 'YKM');
INSERT INTO `airport_codes` VALUES (null, 'Yakutat, AK ', 'YAK');
INSERT INTO `airport_codes` VALUES (null, 'Yakutsk, Russia ', 'YKS');
INSERT INTO `airport_codes` VALUES (null, 'Yalumet, Papua New Guinea ', 'KYX');
INSERT INTO `airport_codes` VALUES (null, 'Yam Island, QL, Australia ', 'XMY');
INSERT INTO `airport_codes` VALUES (null, 'Yamagata, Japan ', 'GAJ');
INSERT INTO `airport_codes` VALUES (null, 'Yan\'an, China ', 'ENY');
INSERT INTO `airport_codes` VALUES (null, 'Yanbu, Saudi Arabia ', 'YNB');
INSERT INTO `airport_codes` VALUES (null, 'Yancheng, China ', 'YNZ');
INSERT INTO `airport_codes` VALUES (null, 'Yandina, Solomon Islands ', 'XYA');
INSERT INTO `airport_codes` VALUES (null, 'Yangon, Myanmar ', 'RGN');
INSERT INTO `airport_codes` VALUES (null, 'Yanji, China ', 'YNJ');
INSERT INTO `airport_codes` VALUES (null, 'Yantai, China ', 'YNT');
INSERT INTO `airport_codes` VALUES (null, 'Yaounde, Cameroon ', 'YAO');
INSERT INTO `airport_codes` VALUES (null, 'Yap, Micronesia ', 'YAP');
INSERT INTO `airport_codes` VALUES (null, 'Yarmouth, NS ', 'YQI');
INSERT INTO `airport_codes` VALUES (null, 'Yaroslavl, Russia ', 'IAR');
INSERT INTO `airport_codes` VALUES (null, 'Yazd, Iran ', 'AZD');
INSERT INTO `airport_codes` VALUES (null, 'Yelimane, Mali ', 'EYL');
INSERT INTO `airport_codes` VALUES (null, 'Yellowknife, NT ', 'YZF');
INSERT INTO `airport_codes` VALUES (null, 'Yellowstone/Cody, WY ', 'COD');
INSERT INTO `airport_codes` VALUES (null, 'Yeosu, South Korea ', 'RSU');
INSERT INTO `airport_codes` VALUES (null, 'Yerevan, Armenia ', 'EVN');
INSERT INTO `airport_codes` VALUES (null, 'Yibin, China ', 'YBP');
INSERT INTO `airport_codes` VALUES (null, 'Yichang, China ', 'YIH');
INSERT INTO `airport_codes` VALUES (null, 'Yinchuan, China ', 'INC');
INSERT INTO `airport_codes` VALUES (null, 'Yining, China ', 'YIN');
INSERT INTO `airport_codes` VALUES (null, 'Yiwu, China ', 'YIW');
INSERT INTO `airport_codes` VALUES (null, 'Yogyakarta, Indonesia ', 'JOG');
INSERT INTO `airport_codes` VALUES (null, 'Yonago, Japan ', 'YGJ');
INSERT INTO `airport_codes` VALUES (null, 'Yonaguni Jima, Japan ', 'OGN');
INSERT INTO `airport_codes` VALUES (null, 'York Landing, MB ', 'ZAC');
INSERT INTO `airport_codes` VALUES (null, 'Yorke Island, QL, Australia ', 'OKR');
INSERT INTO `airport_codes` VALUES (null, 'Yoronjima, Japan ', 'RNJ');
INSERT INTO `airport_codes` VALUES (null, 'Youngstown, OH ', 'YNG');
INSERT INTO `airport_codes` VALUES (null, 'Yulin, China ', 'UYN');
INSERT INTO `airport_codes` VALUES (null, 'Yuma, AZ ', 'YUM');
INSERT INTO `airport_codes` VALUES (null, 'Yuzhno-Sakhalinsk, Russia ', 'UUS');
INSERT INTO `airport_codes` VALUES (null, 'Zadar, Croatia ', 'ZAD');
INSERT INTO `airport_codes` VALUES (null, 'Zagreb, Croatia ', 'ZAG');
INSERT INTO `airport_codes` VALUES (null, 'Zahedan, Iran ', 'ZAH');
INSERT INTO `airport_codes` VALUES (null, 'Zakinthos Island, Greece ', 'ZTH');
INSERT INTO `airport_codes` VALUES (null, 'Zamboanga, Philippines ', 'ZAM');
INSERT INTO `airport_codes` VALUES (null, 'Zanzibar, Tanzania - Kisauni ', 'ZNZ');
INSERT INTO `airport_codes` VALUES (null, 'Zaporozhye, Ukraine ', 'OZH');
INSERT INTO `airport_codes` VALUES (null, 'Zaragoza, Spain and Canary Islands ', 'ZAZ');
INSERT INTO `airport_codes` VALUES (null, 'Zhanjiang, China ', 'ZHA');
INSERT INTO `airport_codes` VALUES (null, 'Zhaotong, China ', 'ZAT');
INSERT INTO `airport_codes` VALUES (null, 'Zhengzha, China ', 'CGO');
INSERT INTO `airport_codes` VALUES (null, 'Zhob, Pakistan ', 'PZH');
INSERT INTO `airport_codes` VALUES (null, 'Zhoushan, China ', 'HSN');
INSERT INTO `airport_codes` VALUES (null, 'Zhuhai, China ', 'ZUH');
INSERT INTO `airport_codes` VALUES (null, 'Zielana, Poland ', 'IEG');
INSERT INTO `airport_codes` VALUES (null, 'Zihuatanejo/Ixtapa, Mexico ', 'ZIH');
INSERT INTO `airport_codes` VALUES (null, 'Zouerate, Mauritania ', 'OUZ');
INSERT INTO `airport_codes` VALUES (null, 'Zugapa, Indonesia ', 'UGU');
INSERT INTO `airport_codes` VALUES (null, 'Zurich, Switzerland ', 'ZRH');
INSERT INTO `airport_codes` VALUES (null, 'Marrakesh Menara Airport, Morocco', 'RAK');

-- ----------------------------
-- Table structure for `announcements`
-- ----------------------------
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of announcements
-- ----------------------------

-- ----------------------------
-- Table structure for `applicant_ids`
-- ----------------------------
DROP TABLE IF EXISTS `applicant_ids`;
CREATE TABLE `applicant_ids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applicant_ids
-- ----------------------------
INSERT INTO `applicant_ids` VALUES ('1', '2014', '110');

-- ----------------------------
-- Table structure for `applicant_status`
-- ----------------------------
DROP TABLE IF EXISTS `applicant_status`;
CREATE TABLE `applicant_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `applicant_submitted` tinyint(4) DEFAULT NULL,
  `client_approved` tinyint(4) DEFAULT NULL,
  `assigned` tinyint(4) DEFAULT '0',
  `client_ref_id` varchar(30) DEFAULT NULL,
  `rejection_reason` varchar(200) DEFAULT NULL,
  `hiring_status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of applicant_status
-- ----------------------------
INSERT INTO `applicant_status` VALUES ('3', '851', '1', null, '1', null, null, '1', '2014-05-08 03:10:37', '2014-05-16 08:00:34', '1', '0');
INSERT INTO `applicant_status` VALUES ('4', '851', '1', null, '1', null, null, '1', '2014-05-08 03:14:17', '2014-05-08 03:14:17', '1', '0');
INSERT INTO `applicant_status` VALUES ('5', '851', '1', null, '1', null, null, '1', '2014-05-08 03:14:35', '2014-05-08 03:14:35', '6', '0');
INSERT INTO `applicant_status` VALUES ('6', '863', '1', null, '1', null, null, '0', '2014-05-09 04:20:05', '2014-05-09 04:20:05', '1', '0');
INSERT INTO `applicant_status` VALUES ('7', '874', '1', null, '1', null, null, '1', '2014-05-09 04:38:05', '2014-05-09 04:38:05', '1', '0');
INSERT INTO `applicant_status` VALUES ('8', '874', '1', null, '1', null, null, '5', '2014-05-09 04:38:42', '2014-05-09 04:38:42', '1', '0');
INSERT INTO `applicant_status` VALUES ('9', '874', '1', null, '1', null, null, '1', '2014-05-09 04:39:01', '2014-05-09 04:39:01', '1', '0');
INSERT INTO `applicant_status` VALUES ('10', '874', '1', null, '1', null, null, '1', '2014-05-09 04:39:21', '2014-05-09 04:39:21', '2', '0');
INSERT INTO `applicant_status` VALUES ('11', '874', '1', null, '1', null, null, '1', '2014-05-09 04:39:46', '2014-05-09 04:39:46', '6', '0');
INSERT INTO `applicant_status` VALUES ('12', '874', '1', null, '1', null, null, '5', '2014-05-09 04:40:59', '2014-05-09 04:40:59', '2', '0');
INSERT INTO `applicant_status` VALUES ('13', '872', '1', null, '1', null, null, '1', '2014-05-09 05:54:20', '2014-05-09 05:54:20', '1', '0');
INSERT INTO `applicant_status` VALUES ('14', '872', '1', null, '1', null, null, '1', '2014-05-09 05:54:25', '2014-05-09 05:54:25', '1', '0');
INSERT INTO `applicant_status` VALUES ('15', '863', '1', null, '1', null, null, '1', '2014-05-09 05:58:59', '2014-05-09 05:58:59', '1', '0');
INSERT INTO `applicant_status` VALUES ('16', '863', '1', null, '1', null, null, '1', '2014-05-09 05:59:44', '2014-05-09 05:59:44', '1', '0');
INSERT INTO `applicant_status` VALUES ('17', '863', '1', null, '1', null, null, '1', '2014-05-09 05:59:51', '2014-05-09 05:59:51', '1', '0');
INSERT INTO `applicant_status` VALUES ('18', '872', '1', null, '1', null, null, '1', '2014-05-09 06:00:58', '2014-05-09 06:00:58', '1', '0');
INSERT INTO `applicant_status` VALUES ('19', '872', '1', null, '1', null, null, '1', '2014-05-09 06:12:33', '2014-05-09 06:12:33', '2', '0');
INSERT INTO `applicant_status` VALUES ('20', '854', '1', null, '1', null, null, '1', '2014-05-09 06:15:39', '2014-05-09 06:15:39', '2', '0');
INSERT INTO `applicant_status` VALUES ('21', '854', '1', null, '1', null, null, '5', '2014-05-09 06:15:48', '2014-05-09 06:15:48', '2', '0');
INSERT INTO `applicant_status` VALUES ('22', '854', '1', null, '1', null, null, '1', '2014-05-09 06:16:09', '2014-05-09 06:16:09', '1', '0');
INSERT INTO `applicant_status` VALUES ('23', '854', '1', null, '1', null, null, '1', '2014-05-09 06:16:14', '2014-05-09 06:16:14', '1', '0');
INSERT INTO `applicant_status` VALUES ('24', '854', '1', null, '1', null, null, '5', '2014-05-09 06:21:33', '2014-05-09 06:21:33', '1', '0');
INSERT INTO `applicant_status` VALUES ('25', '854', '1', null, '1', null, null, '1', '2014-05-09 06:21:45', '2014-05-09 06:21:45', '1', '0');
INSERT INTO `applicant_status` VALUES ('26', '854', '1', null, '1', null, null, '1', '2014-05-09 06:23:53', '2014-05-09 06:23:53', '1', '0');
INSERT INTO `applicant_status` VALUES ('27', '867', '1', null, '1', null, null, '5', '2014-05-09 06:32:18', '2014-05-09 06:32:18', '1', '0');
INSERT INTO `applicant_status` VALUES ('28', '851', '1', null, '1', null, null, '1', '2014-05-09 10:08:45', '2014-05-09 10:08:45', '1', '0');
INSERT INTO `applicant_status` VALUES ('29', '851', '1', null, '1', null, null, '1', '2014-05-09 10:08:58', '2014-05-09 10:08:58', '1', '0');
INSERT INTO `applicant_status` VALUES ('30', '851', '1', null, '1', null, null, '1', '2014-05-09 10:09:22', '2014-05-09 10:09:22', '6', '0');
INSERT INTO `applicant_status` VALUES ('31', '851', '1', null, '1', null, null, '5', '2014-05-09 10:12:15', '2014-05-09 10:12:15', '6', '0');
INSERT INTO `applicant_status` VALUES ('32', '851', '1', null, '1', null, null, '1', '2014-05-09 10:16:24', '2014-05-09 10:16:24', '1', '0');
INSERT INTO `applicant_status` VALUES ('33', '851', '1', null, '1', null, null, '1', '2014-05-09 10:17:03', '2014-05-09 10:17:03', '1', '0');
INSERT INTO `applicant_status` VALUES ('34', '851', '1', null, '1', null, null, '5', '2014-05-09 10:17:09', '2014-05-09 10:17:09', '1', '0');
INSERT INTO `applicant_status` VALUES ('35', '851', '1', null, '1', null, null, '1', '2014-05-09 10:19:41', '2014-05-09 10:19:41', '1', '0');
INSERT INTO `applicant_status` VALUES ('36', '851', '1', null, '1', null, null, '1', '2014-05-09 10:46:04', '2014-05-09 10:46:04', '1', '0');
INSERT INTO `applicant_status` VALUES ('37', '851', '1', null, '1', null, null, '1', '2014-05-09 10:46:11', '2014-05-09 10:46:11', '1', '0');
INSERT INTO `applicant_status` VALUES ('38', '851', '1', null, '1', null, null, '0', '2014-05-09 10:46:52', '2014-05-09 10:46:52', '2', '0');
INSERT INTO `applicant_status` VALUES ('39', '877', '1', null, '1', null, null, '1', '2014-05-09 10:51:43', '2014-05-09 10:51:43', '1', '0');
INSERT INTO `applicant_status` VALUES ('40', '866', '1', null, '1', null, null, '0', '2014-05-09 11:03:00', '2014-05-09 11:03:00', '1', '0');
INSERT INTO `applicant_status` VALUES ('41', '866', '1', null, '1', null, null, '1', '2014-05-09 11:03:31', '2014-05-09 11:03:31', '1', '0');
INSERT INTO `applicant_status` VALUES ('42', '866', '1', null, '1', null, null, '5', '2014-05-09 11:03:48', '2014-05-09 11:03:48', '1', '0');
INSERT INTO `applicant_status` VALUES ('43', '873', '1', null, '1', null, null, '1', '2014-05-09 02:48:37', '2014-05-09 02:48:37', '1', '0');
INSERT INTO `applicant_status` VALUES ('44', '876', '1', null, '1', null, null, '1', '2014-05-09 02:52:38', '2014-05-09 02:52:38', '4', '0');
INSERT INTO `applicant_status` VALUES ('45', '851', '1', null, '1', null, null, '1', '2014-05-09 03:14:36', '2014-05-09 03:14:36', '1', '0');
INSERT INTO `applicant_status` VALUES ('46', '876', '1', null, '0', null, 'Application deleted by admin.', '6', '2014-05-10 04:55:34', '2014-05-10 04:56:04', '3', '26');
INSERT INTO `applicant_status` VALUES ('47', '876', '1', null, '1', null, null, '0', '2014-05-10 05:51:17', '2014-05-10 05:51:17', '1', '54');
INSERT INTO `applicant_status` VALUES ('48', '851', '1', null, '0', null, 'Application deleted by admin.', '6', '2014-05-10 10:12:12', '2014-05-10 10:12:34', '1', '57');
INSERT INTO `applicant_status` VALUES ('49', '851', '1', null, '0', null, 'Application deleted by admin.', '6', '2014-05-10 10:30:37', '2014-05-10 12:45:59', '1', '59');
INSERT INTO `applicant_status` VALUES ('50', '872', '1', null, '1', null, null, '0', '2014-05-10 12:32:21', '2014-05-10 12:32:21', '1', '13');
INSERT INTO `applicant_status` VALUES ('51', '872', '1', null, '1', null, null, '0', '2014-05-10 12:33:05', '2014-05-10 12:33:05', '1', '13');
INSERT INTO `applicant_status` VALUES ('52', '872', '1', null, '1', null, null, '0', '2014-05-10 12:33:15', '2014-05-10 12:33:15', '1', '15');
INSERT INTO `applicant_status` VALUES ('53', '851', '1', null, '0', null, 'Application deleted by admin.', '6', '2014-05-10 12:42:39', '2014-05-10 13:00:32', '6', '60');
INSERT INTO `applicant_status` VALUES ('54', '866', '1', null, '1', null, null, '0', '2014-05-10 12:47:08', '2014-05-10 12:47:08', '3', '41');
INSERT INTO `applicant_status` VALUES ('55', '851', '1', null, '1', null, null, '1', '2014-05-10 12:47:24', '2014-05-10 12:47:24', '6', '60');
INSERT INTO `applicant_status` VALUES ('56', '851', '1', null, '0', null, 'Application closed by admin.', '6', '2014-05-10 01:10:49', '2014-05-10 13:12:46', '1', '68');
INSERT INTO `applicant_status` VALUES ('57', '873', '1', null, '1', null, null, '0', '2014-05-12 07:29:36', '2014-05-12 07:29:36', '3', '95');
INSERT INTO `applicant_status` VALUES ('58', '855', '1', '1', '1', null, null, '0', '2014-05-12 04:36:42', '2014-05-12 04:36:42', '8', '85');
INSERT INTO `applicant_status` VALUES ('59', '874', '1', null, '0', null, null, '1', '2014-05-13 04:46:34', '2014-05-13 04:47:42', '3', '134');
INSERT INTO `applicant_status` VALUES ('60', '874', '1', null, '1', null, null, '0', '2014-05-13 04:56:13', '2014-05-13 04:56:13', '1', '10');
INSERT INTO `applicant_status` VALUES ('61', '874', '1', null, '1', null, null, '1', '2014-05-13 04:56:18', '2014-05-13 04:56:18', '1', '10');
INSERT INTO `applicant_status` VALUES ('62', '874', '1', null, '1', null, null, '0', '2014-05-13 05:14:14', '2014-05-13 05:14:14', '6', '12');
INSERT INTO `applicant_status` VALUES ('63', '874', '1', null, '1', null, null, '0', '2014-05-13 05:14:29', '2014-05-13 05:14:29', '2', '11');
INSERT INTO `applicant_status` VALUES ('64', '855', '1', null, '0', null, null, '1', '2014-05-13 06:19:05', '2014-05-13 06:19:15', '3', '76');
INSERT INTO `applicant_status` VALUES ('65', '856', '1', null, '0', null, null, '1', '2014-05-13 06:34:29', '2014-05-13 06:35:04', '1', '86');
INSERT INTO `applicant_status` VALUES ('66', '901', '1', '1', '1', null, null, '0', '2014-05-13 06:43:51', '2014-05-13 06:43:51', '1', '139');
INSERT INTO `applicant_status` VALUES ('67', '901', '1', '1', '1', null, null, '0', '2014-05-13 06:44:12', '2014-05-13 06:44:12', '1', '138');
INSERT INTO `applicant_status` VALUES ('68', '901', '1', '1', '1', null, null, '0', '2014-05-13 06:55:42', '2014-05-13 06:55:42', '1', '107');
INSERT INTO `applicant_status` VALUES ('69', '868', '1', null, '1', null, null, '0', '2014-05-13 06:59:05', '2014-05-13 06:59:05', '1', '4');
INSERT INTO `applicant_status` VALUES ('70', '868', '1', null, '1', null, null, '0', '2014-05-13 07:18:06', '2014-05-13 07:18:06', '1', '3');
INSERT INTO `applicant_status` VALUES ('71', '868', '1', null, '1', null, null, '5', '2014-05-13 07:18:13', '2014-05-13 07:18:13', '1', '3');
INSERT INTO `applicant_status` VALUES ('72', '877', '1', null, '1', null, null, '1', '2014-05-13 11:35:54', '2014-05-13 11:35:54', '1', '0');

-- ----------------------------
-- Table structure for `application_notes`
-- ----------------------------
DROP TABLE IF EXISTS `application_notes`;
CREATE TABLE `application_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application_id` int(11) DEFAULT NULL,
  `note` text,
  `submitted_by` varchar(255) DEFAULT NULL,
  `recruiter` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of application_notes
-- ----------------------------
INSERT INTO `application_notes` VALUES ('2', '86', 'poopop\r\n', 'Luong Duc', null, '2014-05-12 07:01:25', '2014-05-12 07:01:25');
INSERT INTO `application_notes` VALUES ('4', '76', ':)', 'Luong Duc', null, '2014-05-12 12:20:32', '2014-05-12 12:20:32');
INSERT INTO `application_notes` VALUES ('5', '133', 'ayayayyay', 'Luong Duc', null, '2014-05-12 16:33:09', '2014-05-12 16:33:09');
INSERT INTO `application_notes` VALUES ('6', '76', 'heheeee', 'Luong Duc', null, '2014-05-12 16:34:47', '2014-05-12 16:34:47');
INSERT INTO `application_notes` VALUES ('7', '76', 'note', 'Luong Duc', null, '2014-05-12 16:35:16', '2014-05-12 16:35:16');
INSERT INTO `application_notes` VALUES ('8', '86', 'Mai di lam ở SFR', 'Luong Duc', null, '2014-05-13 06:32:02', '2014-05-13 06:32:02');
INSERT INTO `application_notes` VALUES ('9', '86', 'lam viec cham chi', 'Luong Duc', null, '2014-05-13 06:32:18', '2014-05-13 06:32:18');
INSERT INTO `application_notes` VALUES ('10', '4', ':(', 'Luong Duc', null, '2014-05-13 06:59:53', '2014-05-13 06:59:53');
INSERT INTO `application_notes` VALUES ('11', '130', 'rrrrr', 'Luong Duc', null, '2014-05-13 09:51:43', '2014-05-13 09:51:43');
INSERT INTO `application_notes` VALUES ('12', '76', 'asad', 'Luong Duc', null, '2014-05-17 14:18:13', '2014-05-17 14:18:13');
INSERT INTO `application_notes` VALUES ('13', '76', '<script>alert(\'a\'); </script> ', 'Luong Duc', null, '2014-05-17 14:20:30', '2014-05-17 14:20:30');
INSERT INTO `application_notes` VALUES ('14', '76', '<iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/zSWdZVtXT7E\" frameborder=\"0\" allowfullscreen></iframe>', 'Luong Duc', null, '2014-05-17 14:22:04', '2014-05-17 14:22:04');
INSERT INTO `application_notes` VALUES ('15', '76', '  <iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/GEFZD6lJqK4\" frameborder=\"0\" allowfullscreen></iframe> ', 'Luong Duc', null, '2014-05-17 14:22:43', '2014-05-17 14:22:43');
INSERT INTO `application_notes` VALUES ('16', '81', '  <iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/GEFZD6lJqK4\" frameborder=\"0\" allowfullscreen></iframe> ', 'Luong Duc', null, '2014-05-17 14:22:59', '2014-05-17 14:22:59');

-- ----------------------------
-- Table structure for `client_logos`
-- ----------------------------
DROP TABLE IF EXISTS `client_logos`;
CREATE TABLE `client_logos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `file_location` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client_logos
-- ----------------------------
INSERT INTO `client_logos` VALUES ('12', '1', null, '/uploads/logos/clients/CLNT14000001/150x150/Logo4.jpg', '2014-05-08 14:55:21', '2014-05-08 14:55:21');
INSERT INTO `client_logos` VALUES ('2', '2', null, '/uploads/logos/clients/CLNT14000002/150x150/logo7.jpg', '2014-05-08 12:57:03', '2014-05-08 12:57:03');
INSERT INTO `client_logos` VALUES ('11', '3', null, '/uploads/logos/clients/CLNT14000003/150x150/Logo5.jpg', '2014-05-08 14:52:29', '2014-05-08 14:52:29');
INSERT INTO `client_logos` VALUES ('4', '4', null, '/uploads/logos/clients/CLNT14000004/150x150/images.jpg', '2014-05-08 13:05:57', '2014-05-08 13:05:57');
INSERT INTO `client_logos` VALUES ('13', '5', null, '/uploads/logos/clients/CLNT14000005/150x150/logo6.jpg', '2014-05-08 14:57:16', '2014-05-08 14:57:16');
INSERT INTO `client_logos` VALUES ('6', '6', null, '/uploads/logos/clients/CLNT14000006/150x150/logo3.jpg', '2014-05-08 13:10:34', '2014-05-08 13:10:34');
INSERT INTO `client_logos` VALUES ('7', '7', null, '/uploads/logos/clients/CLNT14000007/150x150/logo9.jpg', '2014-05-08 13:13:16', '2014-05-08 13:13:16');
INSERT INTO `client_logos` VALUES ('8', '8', null, '/uploads/logos/clients/CLNT14000008/150x150/logo2.jpg', '2014-05-08 13:15:14', '2014-05-08 13:15:14');
INSERT INTO `client_logos` VALUES ('9', '9', null, '/uploads/logos/clients/CLNT14000009/150x150/logo8.jpg', '2014-05-08 13:17:25', '2014-05-08 13:17:25');
INSERT INTO `client_logos` VALUES ('10', '10', null, '/uploads/logos/clients/CLNT14000010/150x150/log_FPT.jpg', '2014-05-08 13:21:43', '2014-05-10 06:49:27');
INSERT INTO `client_logos` VALUES ('15', null, '1', '/documents/recruiters/logos/REC140000027/logo5.jpg', '2014-05-09 13:02:33', '2014-05-09 13:02:44');
INSERT INTO `client_logos` VALUES ('16', null, '2', '/documents/recruiters/logos/REC140000028/logo3.jpg', '2014-05-10 06:17:13', '2014-05-10 06:17:13');
INSERT INTO `client_logos` VALUES ('17', null, '3', '/documents/recruiters/logos/REC140000029/logo_traphco.jpg', '2014-05-10 06:41:11', '2014-05-10 06:41:11');
INSERT INTO `client_logos` VALUES ('18', '11', null, '/uploads/logos/clients/CLNT14000011/150x150/Logo_thang-long-1.jpg', '2014-05-10 06:45:05', '2014-05-10 06:45:05');
INSERT INTO `client_logos` VALUES ('19', null, '4', '/documents/recruiters/logos/REC140000030/kim_phung.jpg', '2014-05-10 07:02:25', '2014-05-10 07:02:25');
INSERT INTO `client_logos` VALUES ('20', null, '5', '/documents/recruiters/logos/REC140000031/anh-duc_logo_1318318276.jpg', '2014-05-10 07:05:14', '2014-05-10 07:05:14');
INSERT INTO `client_logos` VALUES ('21', null, '6', '/documents/recruiters/logos/REC140000032/logo_nam-long_1301592463.jpg', '2014-05-10 07:09:05', '2014-05-10 07:09:05');
INSERT INTO `client_logos` VALUES ('22', null, '8', '/documents/recruiters/logos/REC140000034/lo_go_cty.jpg', '2014-05-10 07:15:01', '2014-05-10 07:15:01');
INSERT INTO `client_logos` VALUES ('31', '19', null, '/uploads/logos/clients/CLNT14000022/150x150/logo.png', '2014-05-15 04:28:07', '2014-05-15 04:28:07');

-- ----------------------------
-- Table structure for `client_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `client_statistics`;
CREATE TABLE `client_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `number_clients` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of client_statistics
-- ----------------------------
INSERT INTO `client_statistics` VALUES ('1', '2014', '23');

-- ----------------------------
-- Table structure for `clients`
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `client_ref_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sector_id` int(11) NOT NULL,
  `client_website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `contact_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_office` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_extention` int(8) DEFAULT '0',
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_position` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('1', 'SRM', 'CLNT14000001', 'Nguyen Duc Sam', 'desgin, contruction, training about construction', '1', 'www.buy.com', '56 ngo quyen Da Nang', 'Truong Dinh Toan', '091234567', '091234567', '0', 'tdtoan@gmail.com', 'Staff ', null, '2014-05-08 12:54:32', '2014-05-09 05:51:14');
INSERT INTO `clients` VALUES ('2', 'KOTA', 'CLNT14000002', 'nguyen ngoc mai anh', 'you can teacher english class 1, 2 3 . you can said englist preject', '2', 'study_English.com', '89 Dien Bien Phu', 'nguyen ngoc nhu mai', '0995289662', '0995289662', '8', 'mai@gmail..com', 'managerment', null, '2014-05-08 12:57:03', '2014-05-08 14:56:01');
INSERT INTO `clients` VALUES ('3', 'XARAKE', 'CLNT14000003', 'luong', 'can training about finace, count very good', '3', 'www.finace.com', '65 Ngo quuyen Da Nang', 'Luong', '0988858049', '0988858049', '8', 'luong@email.com', 'Managerment ', null, '2014-05-08 13:03:26', '2014-05-10 09:19:50');
INSERT INTO `clients` VALUES ('4', 'SAHARA', 'CLNT14000004', 'trong', 'one person hard working and kind , love work in here, ', '4', 'healrthcare.com', '90 Tran Thanh Tong Da Nang', 'trong dinh', '0988775271', '0988775271', '1', 'trantrong@gmail.com', 'doctor', null, '2014-05-08 13:05:57', '2014-05-08 14:57:43');
INSERT INTO `clients` VALUES ('5', 'HUMMER', 'CLNT14000005', 'hai', 'can design web, can install php, sql, window server', '5', 'thietkeweb.com', 'Ho Chi Minh City', 'Hai', '0912345667', '0912345667', '82', 'ntthai@gmail.com', 'manager it', null, '2014-05-08 13:07:54', '2014-05-15 12:36:46');
INSERT INTO `clients` VALUES ('6', 'ITP', 'CLNT14000006', 'Mai', 'others capture the psychological', '6', 'logistics.com', 'Ha Noi', 'Nguyen Van Mai', '01224417402', '01224417402', '8', 'nvmai@gmail.com', 'logistisc', null, '2014-05-08 13:10:34', '2014-05-08 14:54:19');
INSERT INTO `clients` VALUES ('7', 'NBC', 'CLNT14000007', 'Luan', 'can buy drugs very good, Your health is our fun', '7', 'Pharmaceuticals', 'Tran Thanh Mai, Tp Da Nang', 'Nguyen Thanh Luan', '09123567889', '09123567889', '11', 'luan@gmail.com', 'stafff', null, '2014-05-08 13:13:16', '2014-05-08 14:56:13');
INSERT INTO `clients` VALUES ('8', 'TEXACO', 'CLNT14000008', 'Nhan', 'can housing design,', '1', 'www.desgin_build.com', 'Ho hai , Tp Ho Chi Minh', 'Ho Van Nhan', '09234551234', '111', '11', 'hvnhan@gmail.com', 'Staff design', null, '2014-05-08 13:15:14', '2014-05-08 14:54:39');
INSERT INTO `clients` VALUES ('9', 'OVELIN', 'CLNT14000009', 'Binh', 'Can  introducte about contruction', '1', 'www.contruction.com', 'Mai Hac De, Thanh Xuan,Ha Noi', 'Tam Ho Binh', '082344444555', '082344444555', '11', 'Thbinh@email.com', 'staff contruction', null, '2014-05-08 13:17:25', '2014-05-08 14:55:51');
INSERT INTO `clients` VALUES ('10', 'FPT', 'CLNT14000010', 'Tam', 'Can contruction about any thing1', '2', 'www.cotructionPFT.com', 'Tang 6 Mai Van Tan, Tp Ho Chi Minh', 'Vo Van Tan', '0991344', '111', '111', 'tan@email.com', 'Director', null, '2014-05-08 13:21:42', '2014-05-13 10:36:10');
INSERT INTO `clients` VALUES ('11', 'Thang Long', 'CLNT14000011', 'Thang long', 'Client Description: Is company desgin web', '2', 'www.thanglong.com', 'Ho Hoang Kiem, Ha Noi', 'Nguyen Hoang Tuan Anh', '0125678899', '0125678899', '11', 'ntthai@gmail.com', 'Staff', null, '2014-05-10 06:45:04', '2014-05-10 06:45:04');
INSERT INTO `clients` VALUES ('18', 'testclient', 'CLNT14000018', '1', ' truong hop :change client giữ project  ở advert khi da add application', '1', 'www', '1', '', '', '', '0', '', '', null, '2014-05-12 10:35:18', '2014-05-12 10:35:50');
INSERT INTO `clients` VALUES ('19', 'MICROSOFT', 'CLNT14000022', 'MICROSOFT', 'MICROSOFT', '5', 'MICROSOFT.COM', 'Ho chi minh , viet nam', 'MICROSOFT', '234234', '4234234', '0', 'MICROSOFT@gmail.com', 'my', null, '2014-05-15 04:17:34', '2014-05-15 04:28:07');
INSERT INTO `clients` VALUES ('20', 'NƯỚC KHOẢNG REVICE', 'CLNT14000023', 'REVICE', 'NƯỚC KHOẢNG REVICE', '4', 'ABC.COM', 'DA NANG', 'S', '234234234', '3', '3', 'SDDD', '3', null, '2014-05-15 12:38:19', '2014-05-15 12:38:19');

-- ----------------------------
-- Table structure for `contract_documents`
-- ----------------------------
DROP TABLE IF EXISTS `contract_documents`;
CREATE TABLE `contract_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `folder_ref` varchar(100) DEFAULT NULL,
  `contract` tinyint(1) DEFAULT NULL,
  `proposal` tinyint(1) DEFAULT NULL,
  `file_location` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract_documents
-- ----------------------------
INSERT INTO `contract_documents` VALUES ('1', '2', null, null, 'CLNT14000002_PROPOSAL', null, '1', 'CLNT14000002_PROPOSAL/1.docx', '2014-05-08 12:57:21', '2014-05-08 12:57:21', null);
INSERT INTO `contract_documents` VALUES ('2', null, null, null, 'CLNT14000002_CONTRACT', '1', null, 'CLNT14000002_CONTRACT/1.docx', '2014-05-08 12:57:50', '2014-05-08 12:57:50', '1');
INSERT INTO `contract_documents` VALUES ('3', '2', null, null, 'CLNT14000002_PROPOSAL', null, '1', 'CLNT14000002_PROPOSAL/kinh_nghiem.docx', '2014-05-08 12:59:15', '2014-05-08 12:59:15', null);
INSERT INTO `contract_documents` VALUES ('4', null, null, '1', 'HOA_DON_1_INVOICE', null, null, 'HOA_DON_1_INVOICE/invoice1.docx', '2014-05-08 13:00:25', '2014-05-08 13:00:25', null);
INSERT INTO `contract_documents` VALUES ('5', null, null, '2', 'INVOICE2_INVOICE', null, null, 'INVOICE2_INVOICE/invoice1.docx', '2014-05-08 13:00:42', '2014-05-08 13:00:42', null);
INSERT INTO `contract_documents` VALUES ('9', null, null, '3', '1_INVOICE', null, null, '1_INVOICE/bug_frond_end__anh_luan.doc', '2014-05-10 05:27:52', '2014-05-10 05:27:52', null);
INSERT INTO `contract_documents` VALUES ('10', null, null, '3', '11_INVOICE', null, null, '11_INVOICE/bug_frond_end__anh_luan.doc', '2014-05-10 05:28:25', '2014-05-10 05:28:25', null);
INSERT INTO `contract_documents` VALUES ('13', null, null, null, 'REC140000027_CONTRACT', '1', null, 'REC140000027_CONTRACT/1_0.docx', '2014-05-10 05:35:10', '2014-05-10 05:35:10', '2');
INSERT INTO `contract_documents` VALUES ('14', null, null, null, 'REC140000027_CONTRACT', '1', null, 'REC140000027_CONTRACT/1_1.docx', '2014-05-10 05:35:21', '2014-05-10 05:35:21', '2');
INSERT INTO `contract_documents` VALUES ('15', null, null, null, 'REC140000027_CONTRACT', '1', null, 'REC140000027_CONTRACT/pass_cc_dang_ky.docx', '2014-05-10 05:35:32', '2014-05-10 05:35:32', '2');
INSERT INTO `contract_documents` VALUES ('16', null, null, null, 'REC140000027_CONTRACT', '1', null, 'REC140000027_CONTRACT/pass_cc_dang_ky_0.docx', '2014-05-10 05:35:42', '2014-05-10 05:35:42', '2');
INSERT INTO `contract_documents` VALUES ('20', null, null, '4', '1_INVOICE', null, null, '1_INVOICE/tu_nhac_minh_try.docx', '2014-05-10 05:58:26', '2014-05-10 05:58:26', null);
INSERT INTO `contract_documents` VALUES ('21', null, null, '4', '1_INVOICE', null, null, '1_INVOICE/invoice1.docx', '2014-05-10 05:59:09', '2014-05-10 05:59:09', null);
INSERT INTO `contract_documents` VALUES ('23', null, null, null, 'CLNT14000011_CONTRACT', '1', null, 'CLNT14000011_CONTRACT/contract.doc', '2014-05-10 06:45:04', '2014-05-10 06:45:04', '5');
INSERT INTO `contract_documents` VALUES ('24', '11', null, null, 'CLNT14000011_PROPOSAL', null, '1', 'CLNT14000011_PROPOSAL/proppsal.doc', '2014-05-10 06:45:54', '2014-05-10 06:45:54', null);
INSERT INTO `contract_documents` VALUES ('25', '11', null, null, 'CLNT14000011_PROPOSAL', null, '1', 'CLNT14000011_PROPOSAL/proppsal1.doc', '2014-05-10 06:46:07', '2014-05-10 06:46:07', null);
INSERT INTO `contract_documents` VALUES ('26', null, null, null, 'CLNT14000011_CONTRACT', '1', null, 'CLNT14000011_CONTRACT/contract_0.doc', '2014-05-10 06:47:00', '2014-05-10 06:47:00', '6');
INSERT INTO `contract_documents` VALUES ('27', null, null, '5', 'INVOICE_INVOICE', null, null, 'INVOICE_INVOICE/invoice.doc', '2014-05-10 06:50:17', '2014-05-10 06:50:17', null);
INSERT INTO `contract_documents` VALUES ('28', null, null, '6', 'INVOICE_1_INVOICE', null, null, 'INVOICE_1_INVOICE/invoice.doc', '2014-05-10 06:50:46', '2014-05-10 06:50:46', null);
INSERT INTO `contract_documents` VALUES ('29', null, null, '5', 'INVOICE_INVOICE', null, null, 'INVOICE_INVOICE/invoice_0.doc', '2014-05-10 06:51:10', '2014-05-10 06:51:10', null);
INSERT INTO `contract_documents` VALUES ('30', null, null, '5', 'INVOICE_INVOICE', null, null, 'INVOICE_INVOICE/invoice_1.doc', '2014-05-10 06:51:20', '2014-05-10 06:51:20', null);
INSERT INTO `contract_documents` VALUES ('31', null, null, null, 'REC140000030_CONTRACT', '1', null, 'REC140000030_CONTRACT/contract.doc', '2014-05-10 07:02:25', '2014-05-10 07:02:25', '7');
INSERT INTO `contract_documents` VALUES ('32', null, null, null, 'REC140000034_CONTRACT', '1', null, 'REC140000034_CONTRACT/contract.doc', '2014-05-10 07:15:01', '2014-05-10 07:15:01', '10');
INSERT INTO `contract_documents` VALUES ('38', null, null, null, 'REC140000029_CONTRACT', '1', null, 'REC140000029_CONTRACT/1.docx', '2014-05-10 09:36:28', '2014-05-10 09:36:28', '16');
INSERT INTO `contract_documents` VALUES ('41', null, null, '7', '1_INVOICE', null, null, '1_INVOICE/invoice.doc', '2014-05-10 09:59:41', '2014-05-10 09:59:41', null);
INSERT INTO `contract_documents` VALUES ('42', null, null, '8', '2_INVOICE', null, null, '2_INVOICE/contract.doc', '2014-05-10 10:00:01', '2014-05-10 10:00:01', null);
INSERT INTO `contract_documents` VALUES ('43', null, null, '9', '3_INVOICE', null, null, '3_INVOICE/invoice.doc', '2014-05-10 10:00:19', '2014-05-10 10:00:19', null);
INSERT INTO `contract_documents` VALUES ('44', null, null, '10', '3_INVOICE', null, null, '3_INVOICE/invoice_0.doc', '2014-05-10 10:02:46', '2014-05-10 10:02:46', null);
INSERT INTO `contract_documents` VALUES ('45', null, null, '11', 'INVOICE_INVOICE', null, null, 'INVOICE_INVOICE/invoice.doc', '2014-05-10 10:31:17', '2014-05-10 10:31:17', null);
INSERT INTO `contract_documents` VALUES ('46', null, null, '12', 'INVOICE_INVOICE', null, null, 'INVOICE_INVOICE/invoice_0.doc', '2014-05-10 10:31:39', '2014-05-10 10:31:39', null);
INSERT INTO `contract_documents` VALUES ('47', null, null, '13', '1_INVOICE', null, null, '1_INVOICE/invoice.doc', '2014-05-10 10:34:27', '2014-05-10 10:34:27', null);
INSERT INTO `contract_documents` VALUES ('48', null, null, '14', 'INVOICE1_INVOICE', null, null, 'INVOICE1_INVOICE/invoice.doc', '2014-05-10 10:34:43', '2014-05-10 10:34:43', null);
INSERT INTO `contract_documents` VALUES ('49', null, null, '15', '1_INVOICE', null, null, '1_INVOICE/invoice.doc', '2014-05-10 11:24:02', '2014-05-10 11:24:02', null);
INSERT INTO `contract_documents` VALUES ('50', null, null, '16', '1_INVOICE', null, null, '1_INVOICE/bug_frond_end__anh_luan_0.doc', '2014-05-12 13:59:43', '2014-05-12 13:59:43', null);
INSERT INTO `contract_documents` VALUES ('51', '10', null, null, 'CLNT14000010_PROPOSAL', null, '1', 'CLNT14000010_PROPOSAL/bug_frond_end__anh_luan.doc', '2014-05-13 06:47:47', '2014-05-13 06:47:47', null);
INSERT INTO `contract_documents` VALUES ('52', '10', null, null, 'CLNT14000010_PROPOSAL', null, '1', 'CLNT14000010_PROPOSAL/invoice.doc', '2014-05-13 06:48:23', '2014-05-13 06:48:23', null);
INSERT INTO `contract_documents` VALUES ('53', '10', null, null, 'CLNT14000010_PROPOSAL', null, '1', 'CLNT14000010_PROPOSAL/contract.doc', '2014-05-13 06:48:30', '2014-05-13 06:48:30', null);
INSERT INTO `contract_documents` VALUES ('54', null, null, null, 'CLNT14000010_CONTRACT', '1', null, 'CLNT14000010_CONTRACT/contract.doc', '2014-05-13 06:49:26', '2014-05-13 06:49:26', '19');
INSERT INTO `contract_documents` VALUES ('55', null, null, '17', '1_INVOICE', null, null, '1_INVOICE/invoice.doc', '2014-05-13 07:36:08', '2014-05-13 07:36:08', null);
INSERT INTO `contract_documents` VALUES ('56', null, null, '18', '11_INVOICE', null, null, '11_INVOICE/invoice.doc', '2014-05-13 07:37:03', '2014-05-13 07:37:03', null);
INSERT INTO `contract_documents` VALUES ('57', null, null, '19', '1_INVOICE', null, null, '1_INVOICE/invoice_0.doc', '2014-05-13 07:40:20', '2014-05-13 07:40:20', null);
INSERT INTO `contract_documents` VALUES ('58', null, null, '19', '1_INVOICE', null, null, '1_INVOICE/bug_frond_end__anh_luan.doc', '2014-05-13 07:46:47', '2014-05-13 07:46:47', null);
INSERT INTO `contract_documents` VALUES ('59', null, null, '20', '1_INVOICE', null, null, '1_INVOICE/bug_frond_end__anh_luan_1.doc', '2014-05-13 07:47:23', '2014-05-13 07:47:23', null);
INSERT INTO `contract_documents` VALUES ('60', null, null, '21', 'IB_INVOICE', null, null, 'IB_INVOICE/bug_frond_end__anh_luan.doc', '2014-05-13 07:47:49', '2014-05-13 07:47:49', null);
INSERT INTO `contract_documents` VALUES ('62', '10', null, null, 'CLNT14000010_PROPOSAL', null, '1', 'CLNT14000010_PROPOSAL/bug_frond_end__anh_luan_1.doc', '2014-05-13 09:15:42', '2014-05-13 09:15:42', null);
INSERT INTO `contract_documents` VALUES ('63', '8', null, null, 'CLNT14000008_PROPOSAL', null, '1', 'CLNT14000008_PROPOSAL/proppsal1.doc', '2014-05-13 09:26:41', '2014-05-13 09:26:41', null);
INSERT INTO `contract_documents` VALUES ('64', null, null, null, 'CLNT14000008_CONTRACT', '1', null, 'CLNT14000008_CONTRACT/contract.doc', '2014-05-13 09:29:14', '2014-05-13 09:29:14', '20');

-- ----------------------------
-- Table structure for `contracts`
-- ----------------------------
DROP TABLE IF EXISTS `contracts`;
CREATE TABLE `contracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_ref` varchar(30) NOT NULL,
  `contract_value` float NOT NULL,
  `contract_start` date NOT NULL,
  `contract_end` date NOT NULL,
  `employee_fee` float NOT NULL,
  `employees_required` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contract_owner_type` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contracts
-- ----------------------------
INSERT INTO `contracts` VALUES ('1', '1', '1', '2014-05-02', '2014-12-31', '1', '1', '2014-05-08 12:57:50', '2014-05-08 12:57:50', 'clientcontract', '2');
INSERT INTO `contracts` VALUES ('2', '1', '1', '2014-05-01', '2014-05-22', '1', '1', '2014-05-09 13:03:07', '2014-05-10 05:35:42', 'recruitercontract', '1');
INSERT INTO `contracts` VALUES ('5', 'Contact company', '1', '2014-05-01', '2014-05-31', '1', '1', '2014-05-10 06:45:04', '2014-05-10 06:45:04', 'clientcontract', '11');
INSERT INTO `contracts` VALUES ('6', 'Contract 1', '1', '2014-05-09', '2014-12-31', '1', '1', '2014-05-10 06:46:59', '2014-05-10 06:46:59', 'clientcontract', '11');
INSERT INTO `contracts` VALUES ('7', 'Contract 2', '1', '2014-05-01', '2014-05-31', '1', '1', '2014-05-10 07:02:25', '2014-05-10 07:02:25', 'recruitercontract', '4');
INSERT INTO `contracts` VALUES ('8', '1', '1', '2014-05-11', '2014-05-31', '1', '1', '2014-05-10 07:04:57', '2014-05-10 07:04:57', 'recruitercontract', '5');
INSERT INTO `contracts` VALUES ('9', ' Contract', '1', '2014-05-02', '2014-05-30', '1', '1', '2014-05-10 07:12:19', '2014-05-10 07:12:19', 'recruitercontract', '7');
INSERT INTO `contracts` VALUES ('10', 'Contact company', '1', '2014-05-11', '2014-05-30', '1', '1', '2014-05-10 07:15:01', '2014-05-10 07:15:01', 'recruitercontract', '8');
INSERT INTO `contracts` VALUES ('15', '1', '1', '2014-05-28', '2014-05-31', '1', '1', '2014-05-10 09:35:30', '2014-05-10 09:35:30', 'recruitercontract', '3');
INSERT INTO `contracts` VALUES ('16', '1', '1', '2014-05-30', '2014-05-31', '1', '1', '2014-05-10 09:36:27', '2014-05-10 09:36:27', 'recruitercontract', '3');
INSERT INTO `contracts` VALUES ('17', '11', '1', '2014-05-26', '2014-05-31', '1', '1', '2014-05-10 09:36:48', '2014-05-10 09:36:48', 'recruitercontract', '3');
INSERT INTO `contracts` VALUES ('18', '1', '1', '2014-05-01', '2014-05-31', '1', '1', '2014-05-10 09:56:27', '2014-05-10 09:56:27', 'recruitercontract', '3');
INSERT INTO `contracts` VALUES ('19', 'nguyen thi my kim', '1', '2014-05-01', '2014-05-31', '1', '1', '2014-05-13 06:49:26', '2014-05-13 06:49:26', 'clientcontract', '10');
INSERT INTO `contracts` VALUES ('20', 'Contract 1', '5', '2014-05-01', '2014-05-31', '1', '1', '2014-05-13 09:29:14', '2014-05-13 09:29:14', 'clientcontract', '8');

-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'Afghanistan', 'Afghan');
INSERT INTO `countries` VALUES ('2', 'Albania', 'Albanian');
INSERT INTO `countries` VALUES ('3', 'Algeria', 'Algerian');
INSERT INTO `countries` VALUES ('4', 'Andorra', 'Andorran');
INSERT INTO `countries` VALUES ('5', 'Angola', 'Angolan');
INSERT INTO `countries` VALUES ('6', 'Antigua and Barbuda', 'Antiguans, Barbudans');
INSERT INTO `countries` VALUES ('7', 'Argentina', 'Argentinean');
INSERT INTO `countries` VALUES ('8', 'Armenia', 'Armenian');
INSERT INTO `countries` VALUES ('9', 'Australia', 'Australian');
INSERT INTO `countries` VALUES ('10', 'Austria', 'Austrian');
INSERT INTO `countries` VALUES ('11', 'Azerbaijan', 'Azerbaijani');
INSERT INTO `countries` VALUES ('12', 'The Bahamas', 'Bahamian');
INSERT INTO `countries` VALUES ('13', 'Bahrain', 'Bahraini');
INSERT INTO `countries` VALUES ('14', 'Bangladesh', 'Bangladeshi');
INSERT INTO `countries` VALUES ('15', 'Barbados', 'Barbadian');
INSERT INTO `countries` VALUES ('16', 'Belarus', 'Belarusian');
INSERT INTO `countries` VALUES ('17', 'Belgium', 'Belgian');
INSERT INTO `countries` VALUES ('18', 'Belize', 'Belizean');
INSERT INTO `countries` VALUES ('19', 'Benin', 'Beninese');
INSERT INTO `countries` VALUES ('20', 'Bhutan', 'Bhutanese');
INSERT INTO `countries` VALUES ('21', 'Bolivia', 'Bolivian');
INSERT INTO `countries` VALUES ('22', 'Bosnia', 'Bosnian');
INSERT INTO `countries` VALUES ('23', 'Botswana', 'Motswana (singular), Batswana (plural)');
INSERT INTO `countries` VALUES ('24', 'Brazil', 'Brazilian');
INSERT INTO `countries` VALUES ('25', 'Brunei', 'Bruneian');
INSERT INTO `countries` VALUES ('26', 'Bulgaria', 'Bulgarian');
INSERT INTO `countries` VALUES ('27', 'Burkina Faso', 'Burkinabe');
INSERT INTO `countries` VALUES ('28', 'Burundi', 'Burundian');
INSERT INTO `countries` VALUES ('29', 'Cambodia', 'Cambodian');
INSERT INTO `countries` VALUES ('30', 'Cameroon', 'Cameroonian');
INSERT INTO `countries` VALUES ('31', 'Canada', 'Canadian');
INSERT INTO `countries` VALUES ('32', 'Cape Verde', 'Cape Verdian');
INSERT INTO `countries` VALUES ('33', 'Central African Republic', 'Central African');
INSERT INTO `countries` VALUES ('34', 'Chad', 'Chadian');
INSERT INTO `countries` VALUES ('35', 'Chile', 'Chilean');
INSERT INTO `countries` VALUES ('36', 'China', 'Chinese');
INSERT INTO `countries` VALUES ('37', 'Colombia', 'Colombian');
INSERT INTO `countries` VALUES ('38', 'Comoros', 'Comoran');
INSERT INTO `countries` VALUES ('39', 'Congo, Republic of the', 'Congolese');
INSERT INTO `countries` VALUES ('40', 'Congo, Democratic Republic of the', 'Congolese');
INSERT INTO `countries` VALUES ('41', 'Costa Rica', 'Costa Rican');
INSERT INTO `countries` VALUES ('42', 'Cote d\'Ivoire', 'Ivorian');
INSERT INTO `countries` VALUES ('43', 'Croatia', 'Croatian');
INSERT INTO `countries` VALUES ('44', 'Cuba', 'Cuban');
INSERT INTO `countries` VALUES ('45', 'Cyprus', 'Cypriot');
INSERT INTO `countries` VALUES ('46', 'Czech Republic', 'Czech');
INSERT INTO `countries` VALUES ('47', 'Denmark', 'Danish');
INSERT INTO `countries` VALUES ('48', 'Djibouti', 'Djibouti');
INSERT INTO `countries` VALUES ('49', 'Dominica', 'Dominican');
INSERT INTO `countries` VALUES ('50', 'Dominican Republic', 'Dominican');
INSERT INTO `countries` VALUES ('51', 'East Timor', 'East Timorese');
INSERT INTO `countries` VALUES ('52', 'Ecuador', 'Ecuadorean');
INSERT INTO `countries` VALUES ('53', 'Egypt', 'Egyptian');
INSERT INTO `countries` VALUES ('54', 'El Salvador', 'Salvadoran');
INSERT INTO `countries` VALUES ('55', 'Equatorial Guinea', 'Equatorial Guinean');
INSERT INTO `countries` VALUES ('56', 'Eritrea', 'Eritrean');
INSERT INTO `countries` VALUES ('57', 'Estonia', 'Estonian');
INSERT INTO `countries` VALUES ('58', 'Ethiopia', 'Ethiopian');
INSERT INTO `countries` VALUES ('59', 'Fiji', 'Fijian');
INSERT INTO `countries` VALUES ('60', 'Finland', 'Finnish');
INSERT INTO `countries` VALUES ('61', 'France', 'French');
INSERT INTO `countries` VALUES ('62', 'Gabon', 'Gabonese');
INSERT INTO `countries` VALUES ('63', 'The Gambia', 'Gambian');
INSERT INTO `countries` VALUES ('64', 'Georgia', 'Georgian');
INSERT INTO `countries` VALUES ('65', 'Germany', 'German');
INSERT INTO `countries` VALUES ('66', 'Ghana', 'Ghanaian');
INSERT INTO `countries` VALUES ('67', 'Greece', 'Greek');
INSERT INTO `countries` VALUES ('68', 'Grenada', 'Grenadian');
INSERT INTO `countries` VALUES ('69', 'Guatemala', 'Guatemalan');
INSERT INTO `countries` VALUES ('70', 'Guinea', 'Guinean');
INSERT INTO `countries` VALUES ('71', 'Guinea-Bissau', 'Guinea-Bissauan');
INSERT INTO `countries` VALUES ('72', 'Guyana', 'Guyanese');
INSERT INTO `countries` VALUES ('73', 'Haiti', 'Haitian');
INSERT INTO `countries` VALUES ('74', 'Honduras', 'Honduran');
INSERT INTO `countries` VALUES ('75', 'Hungary', 'Hungarian');
INSERT INTO `countries` VALUES ('76', 'Iceland', 'Icelander');
INSERT INTO `countries` VALUES ('77', 'India', 'Indian');
INSERT INTO `countries` VALUES ('78', 'Indonesia', 'Indonesian');
INSERT INTO `countries` VALUES ('79', 'Iran', 'Iranian');
INSERT INTO `countries` VALUES ('80', 'Iraq', 'Iraqi');
INSERT INTO `countries` VALUES ('81', 'Ireland', 'Irish');
INSERT INTO `countries` VALUES ('82', 'Israel', 'Israeli');
INSERT INTO `countries` VALUES ('83', 'Italy', 'Italian');
INSERT INTO `countries` VALUES ('84', 'Jamaica', 'Jamaican');
INSERT INTO `countries` VALUES ('85', 'Japan', 'Japanese');
INSERT INTO `countries` VALUES ('86', 'Jordan', 'Jordanian');
INSERT INTO `countries` VALUES ('87', 'Kazakhstan', 'Kazakhstani');
INSERT INTO `countries` VALUES ('88', 'Kenya', 'Kenyan');
INSERT INTO `countries` VALUES ('89', 'Kiribati', 'I-Kiribati');
INSERT INTO `countries` VALUES ('90', 'Korea, North', 'North Korean');
INSERT INTO `countries` VALUES ('91', 'Korea, South', 'South Korean');
INSERT INTO `countries` VALUES ('92', 'Kuwait', 'Kuwaiti');
INSERT INTO `countries` VALUES ('93', 'Kyrgyz Republic', 'Kirghiz');
INSERT INTO `countries` VALUES ('94', 'Laos', 'Laotian');
INSERT INTO `countries` VALUES ('95', 'Latvia', 'Latvian');
INSERT INTO `countries` VALUES ('96', 'Lebanon', 'Lebanese');
INSERT INTO `countries` VALUES ('97', 'Lesotho', 'Mosotho');
INSERT INTO `countries` VALUES ('98', 'Liberia', 'Liberian');
INSERT INTO `countries` VALUES ('99', 'Libya', 'Libyan');
INSERT INTO `countries` VALUES ('100', 'Liechtenstein', 'Liechtensteiner');
INSERT INTO `countries` VALUES ('101', 'Lithuania', 'Lithuanian');
INSERT INTO `countries` VALUES ('102', 'Luxembourg', 'Luxembourger');
INSERT INTO `countries` VALUES ('103', 'Macedonia', 'Macedonian');
INSERT INTO `countries` VALUES ('104', 'Madagascar', 'Malagasy');
INSERT INTO `countries` VALUES ('105', 'Malawi', 'Malawian');
INSERT INTO `countries` VALUES ('106', 'Malaysia', 'Malaysian');
INSERT INTO `countries` VALUES ('107', 'Maldives', 'Maldivan');
INSERT INTO `countries` VALUES ('108', 'Mali', 'Malian');
INSERT INTO `countries` VALUES ('109', 'Malta', 'Maltese');
INSERT INTO `countries` VALUES ('110', 'Marshall Islands', 'Marshallese');
INSERT INTO `countries` VALUES ('111', 'Mauritania', 'Mauritanian');
INSERT INTO `countries` VALUES ('112', 'Mauritius', 'Mauritian');
INSERT INTO `countries` VALUES ('113', 'Mexico', 'Mexican');
INSERT INTO `countries` VALUES ('114', 'Federated States of Micronesia', 'Micronesian');
INSERT INTO `countries` VALUES ('115', 'Moldova', 'Moldovan');
INSERT INTO `countries` VALUES ('116', 'Monaco', 'Monegasque');
INSERT INTO `countries` VALUES ('117', 'Mongolia', 'Mongolian');
INSERT INTO `countries` VALUES ('118', 'Morocco', 'Moroccan');
INSERT INTO `countries` VALUES ('119', 'Mozambique', 'Mozambican');
INSERT INTO `countries` VALUES ('120', 'Myanmar (Burma)', 'Burmese');
INSERT INTO `countries` VALUES ('121', 'Namibia', 'Namibian');
INSERT INTO `countries` VALUES ('122', 'Nauru', 'Nauruan');
INSERT INTO `countries` VALUES ('123', 'Nepal', 'Nepalese');
INSERT INTO `countries` VALUES ('124', 'Netherlands', 'Dutch');
INSERT INTO `countries` VALUES ('125', 'New Zealand', 'New Zealander');
INSERT INTO `countries` VALUES ('126', 'Nicaragua', 'Nicaraguan');
INSERT INTO `countries` VALUES ('127', 'Niger', 'Nigerien');
INSERT INTO `countries` VALUES ('128', 'Nigeria', 'Nigerian');
INSERT INTO `countries` VALUES ('129', 'Norway', 'Norwegian');
INSERT INTO `countries` VALUES ('130', 'Oman', 'Omani');
INSERT INTO `countries` VALUES ('131', 'Pakistan', 'Pakistani');
INSERT INTO `countries` VALUES ('132', 'Palau', 'Palauan');
INSERT INTO `countries` VALUES ('133', 'Panama', 'Panamanian');
INSERT INTO `countries` VALUES ('134', 'Papua New Guinea', 'Papua New Guinean');
INSERT INTO `countries` VALUES ('135', 'Paraguay', 'Paraguayan');
INSERT INTO `countries` VALUES ('136', 'Peru', 'Peruvian');
INSERT INTO `countries` VALUES ('137', 'Philippines', 'Filipino');
INSERT INTO `countries` VALUES ('138', 'Poland', 'Polish');
INSERT INTO `countries` VALUES ('139', 'Portugal', 'Portuguese');
INSERT INTO `countries` VALUES ('140', 'Qatar', 'Qatari');
INSERT INTO `countries` VALUES ('141', 'Romania', 'Romanian');
INSERT INTO `countries` VALUES ('142', 'Russia', 'Russian');
INSERT INTO `countries` VALUES ('143', 'Rwanda', 'Rwandan');
INSERT INTO `countries` VALUES ('144', 'Saint Kitts and Nevis', 'Kittian and Nevisian');
INSERT INTO `countries` VALUES ('145', 'Saint Lucia', 'Saint Lucian');
INSERT INTO `countries` VALUES ('146', 'Samoa', 'Samoan');
INSERT INTO `countries` VALUES ('147', 'San Marino', 'Sammarinese');
INSERT INTO `countries` VALUES ('148', 'Sao Tome and Principe', 'Sao Tomean');
INSERT INTO `countries` VALUES ('149', 'Saudi Arabia', 'Saudi Arabian');
INSERT INTO `countries` VALUES ('150', 'Senegal', 'Senegalese');
INSERT INTO `countries` VALUES ('151', 'Serbia and Montenegro', 'Serbian');
INSERT INTO `countries` VALUES ('152', 'Seychelles', 'Seychellois');
INSERT INTO `countries` VALUES ('153', 'Sierra Leone', 'Sierra Leonean');
INSERT INTO `countries` VALUES ('154', 'Singapore', 'Singaporean');
INSERT INTO `countries` VALUES ('155', 'Slovakia', 'Slovak');
INSERT INTO `countries` VALUES ('156', 'Slovenia', 'Slovene');
INSERT INTO `countries` VALUES ('157', 'Solomon Islands', 'Solomon Islander');
INSERT INTO `countries` VALUES ('158', 'Somalia', 'Somali');
INSERT INTO `countries` VALUES ('159', 'South Africa', 'South African');
INSERT INTO `countries` VALUES ('160', 'Spain', 'Spanish');
INSERT INTO `countries` VALUES ('161', 'Sri Lanka', 'Sri Lankan');
INSERT INTO `countries` VALUES ('162', 'Sudan', 'Sudanese');
INSERT INTO `countries` VALUES ('163', 'Suriname', 'Surinamer');
INSERT INTO `countries` VALUES ('164', 'Swaziland', 'Swazi');
INSERT INTO `countries` VALUES ('165', 'Sweden', 'Swedish');
INSERT INTO `countries` VALUES ('166', 'Switzerland', 'Swiss');
INSERT INTO `countries` VALUES ('167', 'Syria', 'Syrian');
INSERT INTO `countries` VALUES ('168', 'Taiwan', 'Taiwanese');
INSERT INTO `countries` VALUES ('169', 'Tajikistan', 'Tadzhik');
INSERT INTO `countries` VALUES ('170', 'Tanzania', 'Tanzanian');
INSERT INTO `countries` VALUES ('171', 'Thailand', 'Thai');
INSERT INTO `countries` VALUES ('172', 'Togo', 'Togolese');
INSERT INTO `countries` VALUES ('173', 'Tonga', 'Tongan');
INSERT INTO `countries` VALUES ('174', 'Trinidad and Tobago', 'Trinidadian');
INSERT INTO `countries` VALUES ('175', 'Tunisia', 'Tunisian');
INSERT INTO `countries` VALUES ('176', 'Turkey', 'Turkish');
INSERT INTO `countries` VALUES ('177', 'Turkmenistan', 'Turkmen');
INSERT INTO `countries` VALUES ('178', 'Tuvalu', 'Tuvaluan');
INSERT INTO `countries` VALUES ('179', 'Uganda', 'Ugandan');
INSERT INTO `countries` VALUES ('180', 'Ukraine', 'Ukrainian');
INSERT INTO `countries` VALUES ('181', 'United Arab Emirates', 'Emirian');
INSERT INTO `countries` VALUES ('182', 'United Kingdom', 'British');
INSERT INTO `countries` VALUES ('183', 'United States', 'American');
INSERT INTO `countries` VALUES ('184', 'Uruguay', 'Uruguayan');
INSERT INTO `countries` VALUES ('185', 'Uzbekistan', 'Uzbekistani');
INSERT INTO `countries` VALUES ('186', 'Vanuatu', 'Ni-Vanuatu');
INSERT INTO `countries` VALUES ('187', 'Vatican City (Holy See)', 'none');
INSERT INTO `countries` VALUES ('188', 'Venezuela', 'Venezuelan');
INSERT INTO `countries` VALUES ('189', 'Vietnam', 'Vietnamese');
INSERT INTO `countries` VALUES ('190', 'Yemen', 'Yemeni');
INSERT INTO `countries` VALUES ('191', 'Zambia', 'Zambian');
INSERT INTO `countries` VALUES ('192', 'Zimbabwe', 'Zimbabwean');
INSERT INTO `countries` VALUES ('193', 'Palestine', 'Palestinian');
INSERT INTO `countries` VALUES ('194', 'Herzegovina', 'Herzegovinian');

-- ----------------------------
-- Table structure for `delegated_tasks`
-- ----------------------------
DROP TABLE IF EXISTS `delegated_tasks`;
CREATE TABLE `delegated_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delegated_by` int(11) DEFAULT NULL,
  `delegated_to` int(11) DEFAULT NULL,
  `task_title` varchar(200) DEFAULT NULL,
  `task_description` text,
  `task_status` tinyint(4) DEFAULT NULL,
  `complete_by` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `date_cancelled` datetime DEFAULT NULL,
  `feedback` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delegated_tasks
-- ----------------------------
INSERT INTO `delegated_tasks` VALUES ('2', '227', '227', null, 'Contact all applicants going to Jubail and see if they would like to transfer to Damam Project', '2', '2014-01-27 13:35:00', '2014-03-05 05:09:37', null, null, '2014-01-23 19:01:01', '2014-01-23 19:01:01');
INSERT INTO `delegated_tasks` VALUES ('3', '227', '714', 'Complete Profile', 'Contact all applicants going to Jubail and see if they would like to transfer to Damam Project', '2', '2014-01-27 13:35:00', null, null, null, '2014-01-23 19:01:01', '2014-01-23 19:01:01');
INSERT INTO `delegated_tasks` VALUES ('10', '227', '723', null, 'test', '2', '2014-01-27 13:35:00', null, null, null, '2014-03-05 22:17:21', '2014-03-05 22:17:21');
INSERT INTO `delegated_tasks` VALUES ('11', '227', '723', null, 'Please login to to account and update your visa information', '2', '2014-01-27 13:35:00', null, null, null, '2014-03-05 22:19:28', '2014-03-05 22:19:28');
INSERT INTO `delegated_tasks` VALUES ('18', '227', '724', 'Complete application', 'ewrtwerwe', '2', '2014-01-27 13:35:00', null, null, null, '2014-03-08 17:09:00', '2014-03-08 17:09:00');
INSERT INTO `delegated_tasks` VALUES ('22', '227', '723', 'test task', 'do something please', '1', '2014-01-27 13:35:00', null, null, null, '2014-03-13 16:42:48', '2014-03-13 16:42:48');
INSERT INTO `delegated_tasks` VALUES ('33', '725', '227', '1', '1', '1', '2014-04-01 00:00:00', null, null, null, '2014-04-28 11:48:55', '2014-04-28 11:48:55');
INSERT INTO `delegated_tasks` VALUES ('34', '725', '227', '1', '1', '1', '2014-04-01 00:00:00', null, null, null, '2014-04-28 11:49:04', '2014-04-28 11:49:04');
INSERT INTO `delegated_tasks` VALUES ('35', '725', '723', '', '', '1', null, null, null, null, '2014-04-28 11:51:17', '2014-04-28 11:51:17');
INSERT INTO `delegated_tasks` VALUES ('36', '725', '723', '', '', '1', null, null, null, null, '2014-04-28 11:51:40', '2014-04-28 11:51:40');
INSERT INTO `delegated_tasks` VALUES ('37', '725', '723', '', '', '1', null, null, null, null, '2014-04-28 11:52:17', '2014-04-28 11:52:17');
INSERT INTO `delegated_tasks` VALUES ('38', '725', '723', '                ', '                         ', '1', null, null, null, null, '2014-04-28 11:56:43', '2014-04-28 11:56:43');
INSERT INTO `delegated_tasks` VALUES ('39', '725', '859', 'đ', 'dxd', '3', '2014-05-12 13:24:42', null, null, null, '2014-04-29 13:54:01', '2014-05-12 13:24:42');
INSERT INTO `delegated_tasks` VALUES ('40', '725', '725', 'g', 'g', '3', '2014-04-01 00:00:00', null, null, null, '2014-04-29 13:55:53', '2014-05-06 12:27:59');
INSERT INTO `delegated_tasks` VALUES ('41', '725', '725', 'na', 'dd', '3', '2014-10-29 00:00:00', null, null, null, '2014-04-29 13:56:17', '2014-05-06 12:27:03');
INSERT INTO `delegated_tasks` VALUES ('42', null, '799', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-04-29 14:53:55', '2014-04-29 14:53:55');
INSERT INTO `delegated_tasks` VALUES ('43', null, '800', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-04-29 15:03:13', '2014-04-29 15:03:13');
INSERT INTO `delegated_tasks` VALUES ('44', null, '801', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-04-30 13:46:45', '2014-04-30 13:46:45');
INSERT INTO `delegated_tasks` VALUES ('45', null, '802', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-04-30 13:50:59', '2014-04-30 13:50:59');
INSERT INTO `delegated_tasks` VALUES ('46', null, '803', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-05 04:16:47', '2014-05-05 04:16:47');
INSERT INTO `delegated_tasks` VALUES ('47', null, '804', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-05 04:36:30', '2014-05-05 04:36:30');
INSERT INTO `delegated_tasks` VALUES ('48', null, '806', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-05 04:42:03', '2014-05-05 04:42:03');
INSERT INTO `delegated_tasks` VALUES ('49', null, '807', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '2', null, null, null, null, '2014-05-05 04:44:25', '2014-05-05 04:44:25');
INSERT INTO `delegated_tasks` VALUES ('50', '725', '227', 'smile21', 'dfgghhg11', '1', '2014-05-29 00:00:00', null, null, null, '2014-05-05 04:53:02', '2014-05-05 04:53:41');
INSERT INTO `delegated_tasks` VALUES ('51', null, '809', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-05 07:19:17', '2014-05-05 07:19:17');
INSERT INTO `delegated_tasks` VALUES ('52', null, '810', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-05 07:37:57', '2014-05-05 07:37:57');
INSERT INTO `delegated_tasks` VALUES ('53', null, '811', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '2', null, null, null, null, '2014-05-05 07:40:24', '2014-05-05 07:40:24');
INSERT INTO `delegated_tasks` VALUES ('54', null, '812', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-05 09:22:45', '2014-05-05 09:22:45');
INSERT INTO `delegated_tasks` VALUES ('55', null, '813', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-05 09:38:43', '2014-05-05 09:38:43');
INSERT INTO `delegated_tasks` VALUES ('56', null, '814', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '2', null, null, null, null, '2014-05-05 11:47:43', '2014-05-05 11:47:43');
INSERT INTO `delegated_tasks` VALUES ('57', '725', '227', 'ha', '123', '3', '2014-05-30 00:00:00', null, null, null, '2014-05-05 14:22:41', '2014-05-08 06:01:24');
INSERT INTO `delegated_tasks` VALUES ('58', '725', '777', 'phong van', 'phong van', '1', '2014-05-26 00:00:00', null, null, null, '2014-05-05 14:53:50', '2014-05-06 04:50:04');
INSERT INTO `delegated_tasks` VALUES ('59', '725', '786', 'ha', 'ha', '1', null, null, null, null, '2014-05-05 15:00:21', '2014-05-05 15:00:21');
INSERT INTO `delegated_tasks` VALUES ('60', '725', '227', 'phong van1', 'phong van1', '3', '2014-05-01 00:00:00', null, null, null, '2014-05-06 04:49:34', '2014-05-06 04:50:18');
INSERT INTO `delegated_tasks` VALUES ('61', '725', '227', '1', '1', '3', '2014-05-01 00:00:00', null, null, null, '2014-05-06 05:45:37', '2014-05-06 05:45:37');
INSERT INTO `delegated_tasks` VALUES ('62', '725', '767', '', '', '3', null, null, null, null, '2014-05-06 06:39:56', '2014-05-06 06:39:56');
INSERT INTO `delegated_tasks` VALUES ('63', '725', '767', '', '', '1', null, null, null, null, '2014-05-06 10:27:56', '2014-05-06 10:27:56');
INSERT INTO `delegated_tasks` VALUES ('64', '725', '779', 'hai yen', 'hai yen', '1', '2014-05-01 00:00:00', null, null, null, '2014-05-06 11:10:31', '2014-05-06 11:10:31');
INSERT INTO `delegated_tasks` VALUES ('65', '725', '779', '1', '1', '1', '2014-05-01 00:00:00', null, null, null, '2014-05-06 11:16:24', '2014-05-06 11:16:24');
INSERT INTO `delegated_tasks` VALUES ('66', '725', '787', '', '', '1', null, null, null, null, '2014-05-06 13:03:29', '2014-05-06 13:03:29');
INSERT INTO `delegated_tasks` VALUES ('67', '725', '227', 'hoc ', 'hoc tieng anh', '3', '2014-05-07 08:25:00', null, null, null, '2014-05-07 04:24:28', '2014-05-08 05:21:31');
INSERT INTO `delegated_tasks` VALUES ('68', null, '829', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-07 06:01:06', '2014-05-07 06:01:06');
INSERT INTO `delegated_tasks` VALUES ('69', null, '831', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-07 06:09:29', '2014-05-07 06:09:29');
INSERT INTO `delegated_tasks` VALUES ('70', null, '833', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-07 06:28:06', '2014-05-07 06:28:06');
INSERT INTO `delegated_tasks` VALUES ('71', null, '834', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-07 06:34:59', '2014-05-07 06:34:59');
INSERT INTO `delegated_tasks` VALUES ('72', null, '835', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-07 06:36:52', '2014-05-07 06:36:52');
INSERT INTO `delegated_tasks` VALUES ('73', null, '840', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-07 07:47:15', '2014-05-07 07:47:15');
INSERT INTO `delegated_tasks` VALUES ('74', null, '841', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-07 07:49:46', '2014-05-07 07:49:46');
INSERT INTO `delegated_tasks` VALUES ('75', '725', '797', '', '', '1', null, null, null, null, '2014-05-07 12:44:04', '2014-05-07 12:44:04');
INSERT INTO `delegated_tasks` VALUES ('76', '725', '227', 'ha', 'ha', '2', '2014-05-01 00:00:00', null, null, null, '2014-05-07 13:09:11', '2014-05-08 05:21:22');
INSERT INTO `delegated_tasks` VALUES ('77', '725', '770', '', '', '1', null, null, null, null, '2014-05-07 13:14:30', '2014-05-07 13:14:30');
INSERT INTO `delegated_tasks` VALUES ('78', '725', '770', '', '', '1', null, null, null, null, '2014-05-07 13:17:04', '2014-05-07 13:17:04');
INSERT INTO `delegated_tasks` VALUES ('79', '725', '770', '', '', '1', null, null, null, null, '2014-05-07 13:17:33', '2014-05-07 13:17:33');
INSERT INTO `delegated_tasks` VALUES ('80', '725', '770', 'Test', 'eewe', '1', null, null, null, null, '2014-05-07 13:54:07', '2014-05-07 13:54:07');
INSERT INTO `delegated_tasks` VALUES ('81', '725', '770', 'New', 'Taskkkkk', '1', null, null, null, null, '2014-05-07 13:54:41', '2014-05-07 13:54:41');
INSERT INTO `delegated_tasks` VALUES ('82', '725', '770', 'New', 'Taskkkkk', '1', null, null, null, null, '2014-05-07 13:54:55', '2014-05-07 13:54:55');
INSERT INTO `delegated_tasks` VALUES ('83', '725', '770', 'asdasd', 'aaaaa', '1', null, null, null, null, '2014-05-07 13:57:59', '2014-05-07 13:57:59');
INSERT INTO `delegated_tasks` VALUES ('84', '725', '774', 'trttrtrtr', 'rtrtrtrt', '3', null, null, null, null, '2014-05-07 14:43:32', '2014-05-07 14:43:32');
INSERT INTO `delegated_tasks` VALUES ('85', '227', '779', '11', '11', '1', '2014-05-01 00:00:00', null, null, null, '2014-05-08 05:29:18', '2014-05-08 05:29:55');
INSERT INTO `delegated_tasks` VALUES ('86', null, '870', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-08 14:43:02', '2014-05-08 14:43:02');
INSERT INTO `delegated_tasks` VALUES ('87', null, '876', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `delegated_tasks` VALUES ('88', null, '877', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '1', null, null, null, null, '2014-05-09 05:22:04', '2014-05-09 05:22:04');
INSERT INTO `delegated_tasks` VALUES ('89', '725', '876', '1', '1', '1', null, null, null, null, '2014-05-10 05:05:46', '2014-05-10 05:05:46');
INSERT INTO `delegated_tasks` VALUES ('90', '725', '876', '1', '1', '1', null, null, null, null, '2014-05-10 05:06:06', '2014-05-10 05:06:06');
INSERT INTO `delegated_tasks` VALUES ('91', '725', '860', 'learn english', 'learn english', '1', '2014-05-01 00:00:00', null, null, null, '2014-05-10 11:28:15', '2014-05-10 11:28:15');
INSERT INTO `delegated_tasks` VALUES ('92', '725', '725', 'TEST', 'TEST', '3', '2014-05-01 00:00:00', null, null, null, '2014-05-12 05:58:52', '2014-05-12 05:59:05');
INSERT INTO `delegated_tasks` VALUES ('93', '725', '725', '1', '1', '2', '2014-05-01 00:00:00', null, null, null, '2014-05-12 05:59:39', '2014-05-12 05:59:50');
INSERT INTO `delegated_tasks` VALUES ('94', '725', '900', '11', '11', '1', '2014-05-01 00:00:00', null, null, null, '2014-05-12 06:23:49', '2014-05-12 06:23:49');
INSERT INTO `delegated_tasks` VALUES ('95', '725', '893', 'k', 'k', '1', '2014-05-12 00:00:00', null, null, null, '2014-05-12 13:23:05', '2014-05-12 13:23:05');
INSERT INTO `delegated_tasks` VALUES ('96', '725', '874', '1', '1', '1', null, null, null, null, '2014-05-13 05:14:52', '2014-05-13 05:14:52');
INSERT INTO `delegated_tasks` VALUES ('97', '725', '874', 'hjsss', 'ss', '1', null, null, null, null, '2014-05-13 05:15:42', '2014-05-13 05:15:42');
INSERT INTO `delegated_tasks` VALUES ('98', '725', '874', 'tessyt', 'ewssđ', '3', null, null, null, null, '2014-05-13 05:16:18', '2014-05-13 05:16:18');
INSERT INTO `delegated_tasks` VALUES ('99', null, '924', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '2', null, null, null, null, '2014-05-14 04:18:35', '2014-05-14 04:18:35');
INSERT INTO `delegated_tasks` VALUES ('100', null, '925', 'Complete Profile', 'Congratulations you are half way there...please complete your profile', '2', null, null, null, null, '2014-05-15 04:13:54', '2014-05-15 04:13:54');

-- ----------------------------
-- Table structure for `deletefiles`
-- ----------------------------
DROP TABLE IF EXISTS `deletefiles`;
CREATE TABLE `deletefiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `zip_file_location` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deletefiles
-- ----------------------------
INSERT INTO `deletefiles` VALUES ('79', '861', 'C:\\Sites\\RMP\\app/documents/applicants/870.zip', '2014-05-10 06:21:32', '2014-05-10 06:21:32');

-- ----------------------------
-- Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `responsibilities` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department` (`department`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('26', 'Recruitment', 'recruiting applicants for the company', '2014-01-06 20:12:37', '2014-05-12 10:02:51');
INSERT INTO `departments` VALUES ('27', 'Administration', 'duties detailed below', '2014-02-02 13:35:05', '2014-02-02 13:35:05');
INSERT INTO `departments` VALUES ('28', 'Logistics', 'Details below', '2014-02-02 13:35:31', '2014-02-02 13:35:31');
INSERT INTO `departments` VALUES ('29', 'Management', 'details below', '2014-02-02 13:38:00', '2014-02-02 13:38:00');
INSERT INTO `departments` VALUES ('30', 'teacher', 'teacher', '2014-05-06 13:40:11', '2014-05-06 13:40:11');
INSERT INTO `departments` VALUES ('31', 'doctor', 'doctor', '2014-05-06 13:40:42', '2014-05-06 13:40:42');
INSERT INTO `departments` VALUES ('32', 'doctor1', 'doctor1', '2014-05-06 14:16:20', '2014-05-06 14:16:20');
INSERT INTO `departments` VALUES ('33', 'deparment1', 'deparment1', '2014-05-07 11:05:43', '2014-05-07 11:05:43');
INSERT INTO `departments` VALUES ('34', 'deparment2', 'deparment2', '2014-05-07 11:05:57', '2014-05-07 11:05:57');
INSERT INTO `departments` VALUES ('35', 'deparment3', 'deparment3', '2014-05-07 11:06:12', '2014-05-07 11:06:12');
INSERT INTO `departments` VALUES ('36', 'duties detailed below1', 'duties detailed below	duties detailed below	duties detailed below	', '2014-05-08 09:35:09', '2014-05-08 09:35:21');
INSERT INTO `departments` VALUES ('40', 'Sales', 'Responsible for all activities consume the company\'s products. \n- Research, market analysis, market expansion, building branding,\n building strategies and sales plans.', '2014-05-10 05:19:45', '2014-05-10 05:20:10');
INSERT INTO `departments` VALUES ('41', 'Finance - Accounting ', ' Perform work in finance - accountant of the Company; \nanalyze and evaluate financial results of the Company business.', '2014-05-10 05:21:20', '2014-05-10 05:21:33');
INSERT INTO `departments` VALUES ('42', 'Technical Planning Department: ', ' Responsible for project evaluation, planning, production and trading liabilities\n - long-term investment plan, \ncomplete the procedures for investment, management and project development, \norganization and implementation implementation of investment projects.', '2014-05-10 05:22:09', '2014-05-10 05:22:46');
INSERT INTO `departments` VALUES ('43', 'Labor Organization ', 'To monitor the implementation of social insurance policies,\n health care for the company\'s employees, monthly payroll \nand implementing HR policies, other labor.', '2014-05-10 05:23:52', '2014-05-10 05:24:38');
INSERT INTO `departments` VALUES ('48', 'Organization - Administration', 'Construction employment plan; planned annual salary', '2014-05-12 12:38:42', '2014-05-12 12:38:42');
INSERT INTO `departments` VALUES ('49', 'Quality Management , Food Hygiene Safety', 'Management, inspection and control of the general situation of food safety\n and hygiene at the market, ', '2014-05-12 12:40:57', '2014-05-12 12:41:58');
INSERT INTO `departments` VALUES ('50', 'Security Office - Fire Protection', 'Executive management and work order and security, fire protection company;', '2014-05-12 12:43:33', '2014-05-12 12:43:33');

-- ----------------------------
-- Table structure for `document_types`
-- ----------------------------
DROP TABLE IF EXISTS `document_types`;
CREATE TABLE `document_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of document_types
-- ----------------------------
INSERT INTO `document_types` VALUES ('1', 'Passport', '2013-08-31 15:44:15', '2013-08-31 16:08:48');
INSERT INTO `document_types` VALUES ('2', 'Masters Certificate', '2013-08-31 16:04:53', '2013-08-31 16:04:53');
INSERT INTO `document_types` VALUES ('3', 'Bachelors Certificate', '2013-08-31 16:05:14', '2013-08-31 16:05:14');
INSERT INTO `document_types` VALUES ('4', 'Doctorate Certificate', '2013-08-31 16:05:40', '2013-08-31 16:05:40');
INSERT INTO `document_types` VALUES ('5', 'Photograph', '2013-08-31 16:06:06', '2013-08-31 16:06:06');
INSERT INTO `document_types` VALUES ('6', 'CV', '2013-08-31 16:06:19', '2013-08-31 16:06:19');
INSERT INTO `document_types` VALUES ('7', 'CELTA Certificate', '2013-08-31 16:33:58', '2013-08-31 16:33:58');
INSERT INTO `document_types` VALUES ('8', 'TEFL Certificate', '2013-08-31 16:34:15', '2013-08-31 16:34:15');

-- ----------------------------
-- Table structure for `employee_documents`
-- ----------------------------
DROP TABLE IF EXISTS `employee_documents`;
CREATE TABLE `employee_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `document` varchar(20) DEFAULT NULL,
  `folder_ref` varchar(100) DEFAULT NULL,
  `file_location` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_documents
-- ----------------------------
INSERT INTO `employee_documents` VALUES ('38', '701', 'CV', '701', '701/micah_angus_cv.docx', '2014-01-20 17:02:49', '2014-01-20 17:02:49');
INSERT INTO `employee_documents` VALUES ('39', '701', 'Photo', '701', '701/micah.jpg', '2014-01-20 17:02:49', '2014-01-20 17:02:49');
INSERT INTO `employee_documents` VALUES ('40', '702', 'CV', '702', '702/micah_angus_cv.docx', '2014-01-20 17:03:58', '2014-01-20 17:03:58');
INSERT INTO `employee_documents` VALUES ('41', '702', 'Photo', '702', '702/micah.jpg', '2014-01-20 17:03:58', '2014-01-20 17:03:58');
INSERT INTO `employee_documents` VALUES ('42', '703', 'CV', '703', '703/micah_angus_cv.docx', '2014-01-20 17:05:12', '2014-01-20 17:05:12');
INSERT INTO `employee_documents` VALUES ('43', '703', 'Photo', '703', '703/micah.jpg', '2014-01-20 17:05:12', '2014-01-20 17:05:12');
INSERT INTO `employee_documents` VALUES ('44', '704', 'CV', '704', '704/micah_angus_cv.docx', '2014-01-20 18:38:49', '2014-01-20 18:38:49');
INSERT INTO `employee_documents` VALUES ('45', '704', 'Photo', '704', '704/micah.jpg', '2014-01-20 18:38:49', '2014-01-20 18:38:49');
INSERT INTO `employee_documents` VALUES ('46', '705', 'CV', '705', '705/micah_angus_cv.docx', '2014-01-20 18:41:55', '2014-01-20 18:41:55');
INSERT INTO `employee_documents` VALUES ('47', '705', 'Photo', '705', '705/micah.jpg', '2014-01-20 18:41:55', '2014-01-20 18:41:55');
INSERT INTO `employee_documents` VALUES ('48', '706', 'CV', '706', '706/micah_angus_cv.docx', '2014-01-20 18:42:30', '2014-01-20 18:42:30');
INSERT INTO `employee_documents` VALUES ('49', '706', 'Photo', '706', '706/micah.jpg', '2014-01-20 18:42:30', '2014-01-20 18:42:30');
INSERT INTO `employee_documents` VALUES ('50', '707', 'CV', '707', '707/micah_angus_cv.docx', '2014-01-20 18:45:11', '2014-01-20 18:45:11');
INSERT INTO `employee_documents` VALUES ('51', '707', 'Photo', '707', '707/micah.jpg', '2014-01-20 18:45:11', '2014-01-20 18:45:11');
INSERT INTO `employee_documents` VALUES ('52', '708', 'CV', '708', '708/micah_angus_cv.docx', '2014-01-20 18:47:39', '2014-01-20 18:47:39');
INSERT INTO `employee_documents` VALUES ('92', '720', 'CV', '720', '720/micah_angus_cv.docx', '2014-03-03 23:40:53', '2014-03-03 23:40:53');
INSERT INTO `employee_documents` VALUES ('93', '728', 'CV', '728', '728/micah_angus_cv.docx', '2014-03-31 20:55:46', '2014-03-31 20:55:46');
INSERT INTO `employee_documents` VALUES ('94', '729', 'CV', '729', '729/micah_angus_cv.docx', '2014-03-31 20:57:15', '2014-03-31 20:57:15');
INSERT INTO `employee_documents` VALUES ('95', '730', 'CV', '730', '730/micah_angus_cv.docx', '2014-03-31 21:24:28', '2014-03-31 21:24:28');
INSERT INTO `employee_documents` VALUES ('96', '760', 'CV', '760', '760/curriculum_vitae_lht.docx', '2014-04-08 11:42:19', '2014-04-08 11:42:19');
INSERT INTO `employee_documents` VALUES ('97', '760', 'Passport', '760', '760/desert.jpg', '2014-04-08 11:42:20', '2014-04-08 11:42:20');
INSERT INTO `employee_documents` VALUES ('98', '760', 'Bachelors', '760', '760/koala.jpg', '2014-04-08 11:42:20', '2014-04-08 11:42:20');
INSERT INTO `employee_documents` VALUES ('99', '760', 'Masters', '760', '760/tulips.jpg', '2014-04-08 11:42:20', '2014-04-08 11:42:20');
INSERT INTO `employee_documents` VALUES ('100', '760', 'Doctorate', '760', '760/tulips_0.jpg', '2014-04-08 11:42:20', '2014-04-08 11:42:20');
INSERT INTO `employee_documents` VALUES ('101', '760', 'TEFL', '760', '760/desert_0.jpg', '2014-04-08 11:42:20', '2014-04-08 11:42:20');
INSERT INTO `employee_documents` VALUES ('102', '760', 'OTHER', '760', '760/chrysanthemum.jpg', '2014-04-08 11:42:21', '2014-04-08 11:42:21');
INSERT INTO `employee_documents` VALUES ('103', '761', 'CV', '761', '761/curriculum_vitae_lht.docx', '2014-04-08 11:54:58', '2014-04-08 11:54:58');
INSERT INTO `employee_documents` VALUES ('104', '762', 'CV', '762', '762/chuc_nang_website_truonghoc.docx', '2014-04-08 12:24:07', '2014-04-08 12:24:07');
INSERT INTO `employee_documents` VALUES ('105', '762', 'Passport', '762', '10002826_1487154574840488_843576346_n.jpgukbbeuy776kf.jpg', '2014-04-08 13:11:09', '2014-04-08 13:11:09');
INSERT INTO `employee_documents` VALUES ('106', '763', 'CV', '763', '763/chuc_nang_website_truonghoc.docx', '2014-04-08 13:57:48', '2014-04-08 13:57:48');
INSERT INTO `employee_documents` VALUES ('107', '764', 'CV', '764', '764/chuc_nang_website_truonghoc.docx', '2014-04-11 12:55:35', '2014-04-11 12:55:35');
INSERT INTO `employee_documents` VALUES ('108', '765', 'CV', '765', '765/1.docx', '2014-04-28 06:45:59', '2014-04-28 06:45:59');
INSERT INTO `employee_documents` VALUES ('111', '768', 'CV', '768', '768/1.docx', '2014-04-28 06:53:17', '2014-04-28 06:53:17');
INSERT INTO `employee_documents` VALUES ('112', '769', 'CV', '769', '769/1.docx', '2014-04-28 06:56:49', '2014-04-28 06:56:49');
INSERT INTO `employee_documents` VALUES ('114', '771', 'CV', '771', '771/1_0.docx', '2014-04-28 06:59:51', '2014-04-28 06:59:51');
INSERT INTO `employee_documents` VALUES ('115', '772', 'CV', '772', '772/1_0.docx', '2014-04-28 07:00:40', '2014-04-28 07:00:40');
INSERT INTO `employee_documents` VALUES ('123', '774', 'CV', '774', '774/1_0.docx', '2014-04-28 07:04:23', '2014-04-28 07:04:23');
INSERT INTO `employee_documents` VALUES ('124', '774', 'Passport', '774', '774/1_1.docx', '2014-04-28 07:04:23', '2014-04-28 07:04:23');
INSERT INTO `employee_documents` VALUES ('125', '774', 'Bachelors', '774', '774/1_2.docx', '2014-04-28 07:04:23', '2014-04-28 07:04:23');
INSERT INTO `employee_documents` VALUES ('126', '774', 'Masters', '774', '774/1_3.docx', '2014-04-28 07:04:23', '2014-04-28 07:04:23');
INSERT INTO `employee_documents` VALUES ('127', '774', 'Doctorate', '774', '774/1_4.docx', '2014-04-28 07:04:23', '2014-04-28 07:04:23');
INSERT INTO `employee_documents` VALUES ('128', '774', 'TEFL', '774', '774/1_5.docx', '2014-04-28 07:04:23', '2014-04-28 07:04:23');
INSERT INTO `employee_documents` VALUES ('129', '774', 'OTHER', '774', '774/1_6.docx', '2014-04-28 07:04:23', '2014-04-28 07:04:23');
INSERT INTO `employee_documents` VALUES ('130', '775', 'CV', '775', '775/1.docx', '2014-04-28 07:05:43', '2014-04-28 07:05:43');
INSERT INTO `employee_documents` VALUES ('133', '723', 'Passport', '723', 'hinh-nen-may-tinh6.jpg', '2014-04-28 07:14:17', '2014-04-28 07:14:17');
INSERT INTO `employee_documents` VALUES ('138', '723', 'OTHER', '723', 'images(4)_3.jpg', '2014-04-28 07:14:17', '2014-04-28 07:14:17');
INSERT INTO `employee_documents` VALUES ('140', '723', 'OTHER', '723', 'hinh-nen-may-tinh6hinh-nen-may-tinh6hinh-nen-may-tinh6hinh-nen-may-tinh6hinh-nen-may-tinh6hinh-nen-may-tinh6.jpg', '2014-04-28 07:15:14', '2014-04-28 07:15:14');
INSERT INTO `employee_documents` VALUES ('141', '784', 'CV', '784', '784/nguyen_truong_thuat_cv.pdf', '2014-04-28 19:45:33', '2014-04-28 19:45:33');
INSERT INTO `employee_documents` VALUES ('144', '787', 'CV', '787', '787/nguyen_truong_thuat_cv.pdf', '2014-04-29 04:39:27', '2014-04-29 04:39:27');
INSERT INTO `employee_documents` VALUES ('152', '792', 'CV', '792', '792/1.docx', '2014-04-29 06:51:08', '2014-04-29 06:51:08');
INSERT INTO `employee_documents` VALUES ('162', '767', 'Passport', '767', 'cv_nguyentruongthuat.pdf', '2014-04-29 07:59:21', '2014-04-29 07:59:21');
INSERT INTO `employee_documents` VALUES ('164', '767', 'Masters', '767', 'tranducluong_cv_1.pdf', '2014-04-29 07:59:21', '2014-04-29 07:59:21');
INSERT INTO `employee_documents` VALUES ('165', '767', 'Doctorate', '767', 'practicerequirements_1.pdf', '2014-04-29 07:59:21', '2014-04-29 07:59:21');
INSERT INTO `employee_documents` VALUES ('167', '767', 'OTHER', '767', 'abc_1.pdf', '2014-04-29 07:59:21', '2014-04-29 07:59:21');
INSERT INTO `employee_documents` VALUES ('170', '767', 'Contract', '767', 'nguyentruongthuatcv.pdf', '2014-04-29 07:59:21', '2014-04-29 07:59:21');
INSERT INTO `employee_documents` VALUES ('171', '794', 'CV', '794', '794/1.docx', '2014-04-29 09:15:47', '2014-04-29 09:15:47');
INSERT INTO `employee_documents` VALUES ('172', '769', 'Passport', '769', 'anhluan.png', '2014-04-29 10:14:02', '2014-04-29 10:14:02');
INSERT INTO `employee_documents` VALUES ('173', '769', 'Bachelors', '769', 'anhluan_1.png', '2014-04-29 10:14:03', '2014-04-29 10:14:03');
INSERT INTO `employee_documents` VALUES ('174', '769', 'Masters', '769', 'edit..png', '2014-04-29 10:14:03', '2014-04-29 10:14:03');
INSERT INTO `employee_documents` VALUES ('175', '769', 'Doctorate', '769', 'edit._1.png', '2014-04-29 10:14:03', '2014-04-29 10:14:03');
INSERT INTO `employee_documents` VALUES ('176', '769', 'TEFL', '769', 'anhluan_2.png', '2014-04-29 10:14:03', '2014-04-29 10:14:03');
INSERT INTO `employee_documents` VALUES ('177', '769', 'OTHER', '769', 'edit._2.png', '2014-04-29 10:14:03', '2014-04-29 10:14:03');
INSERT INTO `employee_documents` VALUES ('178', '769', 'Contract', '769', 'anhluan_3.png', '2014-04-29 10:14:03', '2014-04-29 10:14:03');
INSERT INTO `employee_documents` VALUES ('180', '796', 'CV', '796', '796/1.docx', '2014-04-29 10:51:07', '2014-04-29 10:51:07');
INSERT INTO `employee_documents` VALUES ('181', '797', 'CV', '797', '797/1.docx', '2014-04-29 11:02:19', '2014-04-29 11:02:19');
INSERT INTO `employee_documents` VALUES ('182', '798', 'CV', '798', '798/nguyen_truong_thuat_cv.pdf', '2014-04-29 11:35:05', '2014-04-29 11:35:05');
INSERT INTO `employee_documents` VALUES ('183', '773', 'CV', '773', 'cv_nguyentruongthuat_1.pdf', '2014-04-29 11:55:54', '2014-04-29 11:55:54');
INSERT INTO `employee_documents` VALUES ('184', '799', 'CV', '799', '799/daily_report_29_04_2014_luanht.xlsx', '2014-04-29 14:53:53', '2014-04-29 14:53:53');
INSERT INTO `employee_documents` VALUES ('185', '799', 'Passport', '799', '799/conventions.docx', '2014-04-29 14:53:53', '2014-04-29 14:53:53');
INSERT INTO `employee_documents` VALUES ('186', '800', 'CV', '800', '800/google_calendar_research.docx', '2014-04-29 15:03:11', '2014-04-29 15:03:11');
INSERT INTO `employee_documents` VALUES ('187', '801', 'CV', '801', '801/txodds_xml_runningball_soccer_latest.pdf', '2014-04-30 13:46:43', '2014-04-30 13:46:43');
INSERT INTO `employee_documents` VALUES ('188', '801', 'OTHER', '801', '801/_rec140000018_contract1.docx', '2014-04-30 13:46:44', '2014-04-30 13:46:44');
INSERT INTO `employee_documents` VALUES ('189', '801', 'OTHER', '801', '801/183_cv.sample.hrtech.doc', '2014-04-30 13:46:44', '2014-04-30 13:46:44');
INSERT INTO `employee_documents` VALUES ('190', '802', 'CV', '802', '802/txodds_xml_runningball_soccer_latest.pdf', '2014-04-30 13:50:59', '2014-04-30 13:50:59');
INSERT INTO `employee_documents` VALUES ('191', '803', 'CV', '803', '803/txodds_xml_runningball_soccer_latest.pdf', '2014-05-05 04:16:47', '2014-05-05 04:16:47');
INSERT INTO `employee_documents` VALUES ('192', '804', 'CV', '804', '804/1.docx', '2014-05-05 04:36:30', '2014-05-05 04:36:30');
INSERT INTO `employee_documents` VALUES ('193', '805', 'CV', '805', '805/implementing_a_simple_web_service_java.pdf', '2014-05-05 04:38:33', '2014-05-05 04:38:33');
INSERT INTO `employee_documents` VALUES ('194', '806', 'CV', '806', '806/1.docx', '2014-05-05 04:42:03', '2014-05-05 04:42:03');
INSERT INTO `employee_documents` VALUES ('196', '809', 'CV', '809', '809/1.docx', '2014-05-05 07:19:17', '2014-05-05 07:19:17');
INSERT INTO `employee_documents` VALUES ('197', '810', 'CV', '810', '810/edit..png', '2014-05-05 07:37:57', '2014-05-05 07:37:57');
INSERT INTO `employee_documents` VALUES ('198', '811', 'CV', '811', '811/edit..png', '2014-05-05 07:40:24', '2014-05-05 07:40:24');
INSERT INTO `employee_documents` VALUES ('199', '812', 'CV', '812', '812/1.docx', '2014-05-05 09:22:45', '2014-05-05 09:22:45');
INSERT INTO `employee_documents` VALUES ('200', '813', 'CV', '813', '813/1.docx', '2014-05-05 09:38:42', '2014-05-05 09:38:42');
INSERT INTO `employee_documents` VALUES ('201', '814', 'CV', '814', '814/1.docx', '2014-05-05 11:47:43', '2014-05-05 11:47:43');
INSERT INTO `employee_documents` VALUES ('202', '767', 'CV', '767', '1_1.docx', '2014-05-05 14:21:35', '2014-05-05 14:21:35');
INSERT INTO `employee_documents` VALUES ('203', '774', 'OTHER', '774', 'edit..png', '2014-05-05 14:35:38', '2014-05-05 14:35:38');
INSERT INTO `employee_documents` VALUES ('204', '786', 'CV', '786', '1.docx', '2014-05-06 04:47:00', '2014-05-06 04:47:00');
INSERT INTO `employee_documents` VALUES ('205', '817', 'CV', '817', '817/1.docx', '2014-05-06 07:00:47', '2014-05-06 07:00:47');
INSERT INTO `employee_documents` VALUES ('206', '820', 'CV', '820', '820/images_(5).jpg', '2014-05-06 10:55:58', '2014-05-06 10:55:58');
INSERT INTO `employee_documents` VALUES ('207', '825', 'CV', '825', '825/1.docx', '2014-05-07 04:43:42', '2014-05-07 04:43:42');
INSERT INTO `employee_documents` VALUES ('210', '826', 'CV', '826', '1_1.docx', '2014-05-07 05:46:57', '2014-05-07 05:46:57');
INSERT INTO `employee_documents` VALUES ('211', '793', 'Passport', '793', 'txodds_xml_runningball_soccer_latest.pdf', '2014-05-07 05:47:04', '2014-05-07 05:47:04');
INSERT INTO `employee_documents` VALUES ('214', '828', 'CV', '828', '828/1.docx', '2014-05-07 05:51:33', '2014-05-07 05:51:33');
INSERT INTO `employee_documents` VALUES ('215', '828', 'Passport', '828', '828/images_(5).jpg', '2014-05-07 05:51:33', '2014-05-07 05:51:33');
INSERT INTO `employee_documents` VALUES ('216', '828', 'Bachelors', '828', '828/hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6.jpg', '2014-05-07 05:51:33', '2014-05-07 05:51:33');
INSERT INTO `employee_documents` VALUES ('217', '828', 'Masters', '828', '828/hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6_0.jpg', '2014-05-07 05:51:33', '2014-05-07 05:51:33');
INSERT INTO `employee_documents` VALUES ('218', '828', 'Doctorate', '828', '828/hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6_1.jpg', '2014-05-07 05:51:33', '2014-05-07 05:51:33');
INSERT INTO `employee_documents` VALUES ('219', '828', 'TEFL', '828', '828/hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6hinh-nen-_may-_tinh6_2.jpg', '2014-05-07 05:51:33', '2014-05-07 05:51:33');
INSERT INTO `employee_documents` VALUES ('220', '828', 'OTHER', '828', '828/images_(4).jpg', '2014-05-07 05:51:33', '2014-05-07 05:51:33');
INSERT INTO `employee_documents` VALUES ('221', '826', 'Passport', '826', 'images(4).jpg', '2014-05-07 05:54:52', '2014-05-07 05:54:52');
INSERT INTO `employee_documents` VALUES ('222', '829', 'CV', '829', '829/1.docx', '2014-05-07 06:01:04', '2014-05-07 06:01:04');
INSERT INTO `employee_documents` VALUES ('223', '829', 'Passport', '829', '829/images_(5).jpg', '2014-05-07 06:01:04', '2014-05-07 06:01:04');
INSERT INTO `employee_documents` VALUES ('225', '829', 'Masters', '829', '829/images_(5)_1.jpg', '2014-05-07 06:01:05', '2014-05-07 06:01:05');
INSERT INTO `employee_documents` VALUES ('228', '829', 'OTHER', '829', '829/images_(4).jpg', '2014-05-07 06:01:05', '2014-05-07 06:01:05');
INSERT INTO `employee_documents` VALUES ('230', '830', 'CV', '830', 'practice_requirements.pdf', '2014-05-07 06:09:23', '2014-05-07 06:09:23');
INSERT INTO `employee_documents` VALUES ('231', '831', 'CV', '831', '831/1.docx', '2014-05-07 06:09:29', '2014-05-07 06:09:29');
INSERT INTO `employee_documents` VALUES ('232', '830', 'Bachelors', '830', 'nguyentruongthuatcv.pdf', '2014-05-07 06:19:58', '2014-05-07 06:19:58');
INSERT INTO `employee_documents` VALUES ('236', '833', 'CV', '833', 'avatar3.jpg', '2014-05-07 06:28:05', '2014-05-07 06:28:05');
INSERT INTO `employee_documents` VALUES ('237', '834', 'CV', '834', 'test_cv.doc', '2014-05-07 06:34:58', '2014-05-07 06:34:58');
INSERT INTO `employee_documents` VALUES ('238', '835', 'CV', '835', '1.docx', '2014-05-07 06:36:51', '2014-05-07 06:36:51');
INSERT INTO `employee_documents` VALUES ('239', '836', 'CV', '836', 'avatar3.jpg', '2014-05-07 06:41:57', '2014-05-07 06:41:57');
INSERT INTO `employee_documents` VALUES ('240', '829', 'Bachelors', '829', 'images(5).jpg', '2014-05-07 06:57:05', '2014-05-07 06:57:05');
INSERT INTO `employee_documents` VALUES ('241', '829', 'Doctorate', '829', 'images(5)_1.jpg', '2014-05-07 06:57:05', '2014-05-07 06:57:05');
INSERT INTO `employee_documents` VALUES ('242', '829', 'TEFL', '829', 'images(5)_2.jpg', '2014-05-07 06:57:05', '2014-05-07 06:57:05');
INSERT INTO `employee_documents` VALUES ('243', '837', 'CV', '837', '1.docx', '2014-05-07 07:02:26', '2014-05-07 07:02:26');
INSERT INTO `employee_documents` VALUES ('245', '837', 'Passport', '837', 'passportno().jpg', '2014-05-07 07:03:25', '2014-05-07 07:03:25');
INSERT INTO `employee_documents` VALUES ('246', '838', 'CV', '838', '1.docx', '2014-05-07 07:05:18', '2014-05-07 07:05:18');
INSERT INTO `employee_documents` VALUES ('249', '838', 'Bachelors', '838', 'edit..png', '2014-05-07 07:07:07', '2014-05-07 07:07:07');
INSERT INTO `employee_documents` VALUES ('250', '838', 'Doctorate', '838', 'edit._1.png', '2014-05-07 07:07:07', '2014-05-07 07:07:07');
INSERT INTO `employee_documents` VALUES ('261', '839', 'Passport', '839', 'edit..png', '2014-05-07 07:17:21', '2014-05-07 07:17:21');
INSERT INTO `employee_documents` VALUES ('262', '840', 'CV', '840', 'curriculum_vitae_lht.docx', '2014-05-07 07:47:15', '2014-05-07 07:47:15');
INSERT INTO `employee_documents` VALUES ('264', '807', 'CV', '807', '1_1.docx', '2014-05-07 10:32:22', '2014-05-07 10:32:22');
INSERT INTO `employee_documents` VALUES ('265', '807', 'Passport', '807', 'edit..png', '2014-05-07 10:32:22', '2014-05-07 10:32:22');
INSERT INTO `employee_documents` VALUES ('266', '844', 'CV', '844', '1.docx', '2014-05-07 10:33:35', '2014-05-07 10:33:35');
INSERT INTO `employee_documents` VALUES ('267', '844', 'Passport', '844', 'edit..png', '2014-05-07 10:33:35', '2014-05-07 10:33:35');
INSERT INTO `employee_documents` VALUES ('268', '844', 'Bachelors', '844', 'edit._0.png', '2014-05-07 10:33:35', '2014-05-07 10:33:35');
INSERT INTO `employee_documents` VALUES ('269', '844', 'Masters', '844', 'edit._1.png', '2014-05-07 10:33:35', '2014-05-07 10:33:35');
INSERT INTO `employee_documents` VALUES ('270', '844', 'Doctorate', '844', 'edit._2.png', '2014-05-07 10:33:36', '2014-05-07 10:33:36');
INSERT INTO `employee_documents` VALUES ('271', '844', 'TEFL', '844', 'edit._3.png', '2014-05-07 10:33:36', '2014-05-07 10:33:36');
INSERT INTO `employee_documents` VALUES ('272', '844', 'OTHER', '844', 'edit._4.png', '2014-05-07 10:33:36', '2014-05-07 10:33:36');
INSERT INTO `employee_documents` VALUES ('274', '770', 'CV', '770', 'layoutprocessofregistration.pdf', '2014-05-08 05:35:08', '2014-05-08 05:35:08');
INSERT INTO `employee_documents` VALUES ('275', '846', 'CV', '846', 'pop_up_tipster_offer.docx', '2014-05-08 05:36:13', '2014-05-08 05:36:13');
INSERT INTO `employee_documents` VALUES ('276', '847', 'CV', '847', '11_11_popuptipster_offer.docx', '2014-05-08 07:14:25', '2014-05-08 07:14:25');
INSERT INTO `employee_documents` VALUES ('277', '848', 'CV', '848', '11_11_popuptipster_offer.docx', '2014-05-08 07:52:11', '2014-05-08 07:52:11');
INSERT INTO `employee_documents` VALUES ('278', '846', 'Passport', '846', 'edit..png', '2014-05-08 09:48:24', '2014-05-08 09:48:24');
INSERT INTO `employee_documents` VALUES ('279', '846', 'Bachelors', '846', 'edit._1.png', '2014-05-08 09:48:24', '2014-05-08 09:48:24');
INSERT INTO `employee_documents` VALUES ('280', '846', 'Masters', '846', 'edit._2.png', '2014-05-08 09:48:24', '2014-05-08 09:48:24');
INSERT INTO `employee_documents` VALUES ('281', '846', 'Doctorate', '846', 'edit._3.png', '2014-05-08 09:48:24', '2014-05-08 09:48:24');
INSERT INTO `employee_documents` VALUES ('282', '846', 'TEFL', '846', 'edit._4.png', '2014-05-08 09:48:24', '2014-05-08 09:48:24');
INSERT INTO `employee_documents` VALUES ('283', '846', 'OTHER', '846', 'edit._5.png', '2014-05-08 09:48:25', '2014-05-08 09:48:25');
INSERT INTO `employee_documents` VALUES ('284', '846', 'Contract', '846', 'edit._6.png', '2014-05-08 09:48:25', '2014-05-08 09:48:25');
INSERT INTO `employee_documents` VALUES ('287', '795', 'Passport', '795', 'edit..png', '2014-05-08 10:16:57', '2014-05-08 10:16:57');
INSERT INTO `employee_documents` VALUES ('288', '850', 'CV', '850', '1.docx', '2014-05-08 10:56:58', '2014-05-08 10:56:58');
INSERT INTO `employee_documents` VALUES ('289', '851', 'CV', '851', 'test_cv.doc', '2014-05-08 12:54:14', '2014-05-08 12:54:14');
INSERT INTO `employee_documents` VALUES ('290', '851', 'Passport', '851', 'abc.pdf', '2014-05-08 12:57:24', '2014-05-08 12:57:24');
INSERT INTO `employee_documents` VALUES ('291', '854', 'CV', '854', 'my_cv.doc', '2014-05-08 13:01:59', '2014-05-08 13:01:59');
INSERT INTO `employee_documents` VALUES ('292', '855', 'CV', '855', 'alba_cv.pdf', '2014-05-08 13:03:38', '2014-05-08 13:03:38');
INSERT INTO `employee_documents` VALUES ('293', '856', 'CV', '856', 'quang_cv.pdf', '2014-05-08 13:45:07', '2014-05-08 13:45:07');
INSERT INTO `employee_documents` VALUES ('294', '856', 'Contract', '856', 'qwee.qwe.pdf', '2014-05-08 13:47:04', '2014-05-08 13:47:04');
INSERT INTO `employee_documents` VALUES ('295', '862', 'CV', '862', '1.docx', '2014-05-08 14:04:30', '2014-05-08 14:04:30');
INSERT INTO `employee_documents` VALUES ('296', '862', 'Passport', '862', 'edit..png', '2014-05-08 14:04:30', '2014-05-08 14:04:30');
INSERT INTO `employee_documents` VALUES ('297', '862', 'Bachelors', '862', 'edit._0.png', '2014-05-08 14:04:30', '2014-05-08 14:04:30');
INSERT INTO `employee_documents` VALUES ('298', '862', 'Masters', '862', 'edit._1.png', '2014-05-08 14:04:30', '2014-05-08 14:04:30');
INSERT INTO `employee_documents` VALUES ('299', '862', 'Doctorate', '862', 'edit._2.png', '2014-05-08 14:04:30', '2014-05-08 14:04:30');
INSERT INTO `employee_documents` VALUES ('300', '862', 'TEFL', '862', 'edit._3.png', '2014-05-08 14:04:30', '2014-05-08 14:04:30');
INSERT INTO `employee_documents` VALUES ('301', '862', 'OTHER', '862', 'edit._4.png', '2014-05-08 14:04:30', '2014-05-08 14:04:30');
INSERT INTO `employee_documents` VALUES ('302', '863', 'CV', '863', '1.docx', '2014-05-08 14:06:42', '2014-05-08 14:06:42');
INSERT INTO `employee_documents` VALUES ('303', '864', 'CV', '864', 'kinh_nghiem.docx', '2014-05-08 14:08:10', '2014-05-08 14:08:10');
INSERT INTO `employee_documents` VALUES ('304', '864', 'Bachelors', '864', 'edit..png', '2014-05-08 14:08:11', '2014-05-08 14:08:11');
INSERT INTO `employee_documents` VALUES ('305', '864', 'Masters', '864', 'edit._0.png', '2014-05-08 14:08:11', '2014-05-08 14:08:11');
INSERT INTO `employee_documents` VALUES ('306', '864', 'Doctorate', '864', 'edit._1.png', '2014-05-08 14:08:11', '2014-05-08 14:08:11');
INSERT INTO `employee_documents` VALUES ('307', '864', 'TEFL', '864', 'edit._2.png', '2014-05-08 14:08:11', '2014-05-08 14:08:11');
INSERT INTO `employee_documents` VALUES ('308', '864', 'OTHER', '864', 'edit._3.png', '2014-05-08 14:08:11', '2014-05-08 14:08:11');
INSERT INTO `employee_documents` VALUES ('309', '865', 'CV', '865', '1.docx', '2014-05-08 14:09:40', '2014-05-08 14:09:40');
INSERT INTO `employee_documents` VALUES ('310', '866', 'CV', '866', '1.docx', '2014-05-08 14:13:33', '2014-05-08 14:13:33');
INSERT INTO `employee_documents` VALUES ('311', '867', 'CV', '867', '1.docx', '2014-05-08 14:15:36', '2014-05-08 14:15:36');
INSERT INTO `employee_documents` VALUES ('312', '868', 'CV', '868', '1.docx', '2014-05-08 14:17:22', '2014-05-08 14:17:22');
INSERT INTO `employee_documents` VALUES ('313', '863', 'Passport', '863', '3_4_1.jpg', '2014-05-08 14:18:20', '2014-05-08 14:18:20');
INSERT INTO `employee_documents` VALUES ('314', '863', 'Bachelors', '863', '3_4_1_1.jpg', '2014-05-08 14:18:20', '2014-05-08 14:18:20');
INSERT INTO `employee_documents` VALUES ('315', '863', 'Masters', '863', '3_4_1_2.jpg', '2014-05-08 14:18:20', '2014-05-08 14:18:20');
INSERT INTO `employee_documents` VALUES ('316', '863', 'Doctorate', '863', '3_4_1_3.jpg', '2014-05-08 14:18:20', '2014-05-08 14:18:20');
INSERT INTO `employee_documents` VALUES ('317', '863', 'TEFL', '863', '3_4_1_4.jpg', '2014-05-08 14:18:20', '2014-05-08 14:18:20');
INSERT INTO `employee_documents` VALUES ('318', '863', 'OTHER', '863', '3_4_1_5.jpg', '2014-05-08 14:18:20', '2014-05-08 14:18:20');
INSERT INTO `employee_documents` VALUES ('319', '863', 'Contract', '863', '3_4_1_6.jpg', '2014-05-08 14:18:20', '2014-05-08 14:18:20');
INSERT INTO `employee_documents` VALUES ('320', '870', 'CV', '870', 'quang_cv.pdf', '2014-05-08 14:43:02', '2014-05-08 14:43:02');
INSERT INTO `employee_documents` VALUES ('321', '871', 'CV', '871', '1.docx', '2014-05-08 14:43:37', '2014-05-08 14:43:37');
INSERT INTO `employee_documents` VALUES ('322', '872', 'CV', '872', '1.docx', '2014-05-08 14:48:41', '2014-05-08 14:48:41');
INSERT INTO `employee_documents` VALUES ('323', '872', 'Passport', '872', '3_4_3.jpg', '2014-05-08 14:48:41', '2014-05-08 14:48:41');
INSERT INTO `employee_documents` VALUES ('324', '872', 'Bachelors', '872', '3_4_7.jpg', '2014-05-08 14:48:41', '2014-05-08 14:48:41');
INSERT INTO `employee_documents` VALUES ('325', '872', 'Masters', '872', '3_4_7_0.jpg', '2014-05-08 14:48:41', '2014-05-08 14:48:41');
INSERT INTO `employee_documents` VALUES ('326', '872', 'Doctorate', '872', '3_4_7_1.jpg', '2014-05-08 14:48:41', '2014-05-08 14:48:41');
INSERT INTO `employee_documents` VALUES ('327', '872', 'TEFL', '872', '3_4_7_2.jpg', '2014-05-08 14:48:41', '2014-05-08 14:48:41');
INSERT INTO `employee_documents` VALUES ('328', '872', 'OTHER', '872', '3_4_7_3.jpg', '2014-05-08 14:48:41', '2014-05-08 14:48:41');
INSERT INTO `employee_documents` VALUES ('329', '873', 'CV', '873', 'test_cv.doc', '2014-05-09 04:16:09', '2014-05-09 04:16:09');
INSERT INTO `employee_documents` VALUES ('330', '874', 'CV', '874', '1.docx', '2014-05-09 04:16:31', '2014-05-09 04:16:31');
INSERT INTO `employee_documents` VALUES ('331', '875', 'CV', '875', '1.docx', '2014-05-09 04:21:16', '2014-05-09 04:21:16');
INSERT INTO `employee_documents` VALUES ('332', '876', 'CV', '876', '1.docx', '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `employee_documents` VALUES ('333', '876', 'Passport', '876', 'edit..png', '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `employee_documents` VALUES ('334', '876', 'Bachelors', '876', 'edit._0.png', '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `employee_documents` VALUES ('335', '876', 'Masters', '876', 'edit._1.png', '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `employee_documents` VALUES ('336', '876', 'Doctorate', '876', 'edit._2.png', '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `employee_documents` VALUES ('337', '876', 'TEFL', '876', 'edit._3.png', '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `employee_documents` VALUES ('338', '876', 'OTHER', '876', 'edit._4.png', '2014-05-09 04:58:58', '2014-05-09 04:58:58');
INSERT INTO `employee_documents` VALUES ('339', '877', 'CV', '877', '1.docx', '2014-05-09 05:22:03', '2014-05-09 05:22:03');
INSERT INTO `employee_documents` VALUES ('340', '877', 'Passport', '877', 'edit..png', '2014-05-09 05:22:03', '2014-05-09 05:22:03');
INSERT INTO `employee_documents` VALUES ('341', '877', 'Bachelors', '877', 'edit._0.png', '2014-05-09 05:22:03', '2014-05-09 05:22:03');
INSERT INTO `employee_documents` VALUES ('342', '877', 'Masters', '877', 'edit._1.png', '2014-05-09 05:22:03', '2014-05-09 05:22:03');
INSERT INTO `employee_documents` VALUES ('343', '877', 'Doctorate', '877', 'edit._2.png', '2014-05-09 05:22:03', '2014-05-09 05:22:03');
INSERT INTO `employee_documents` VALUES ('345', '872', 'OTHER', '872', 'edit..png', '2014-05-09 06:25:56', '2014-05-09 06:25:56');
INSERT INTO `employee_documents` VALUES ('346', '872', 'Contract', '872', '1_1.docx', '2014-05-09 06:25:57', '2014-05-09 06:25:57');
INSERT INTO `employee_documents` VALUES ('348', '871', 'Passport', '871', 'edit..png', '2014-05-10 05:45:30', '2014-05-10 05:45:30');
INSERT INTO `employee_documents` VALUES ('349', '871', 'Bachelors', '871', 'edit._1.png', '2014-05-10 05:45:30', '2014-05-10 05:45:30');
INSERT INTO `employee_documents` VALUES ('350', '871', 'Masters', '871', 'edit._2.png', '2014-05-10 05:45:30', '2014-05-10 05:45:30');
INSERT INTO `employee_documents` VALUES ('351', '871', 'Doctorate', '871', 'edit._3.png', '2014-05-10 05:45:30', '2014-05-10 05:45:30');
INSERT INTO `employee_documents` VALUES ('352', '871', 'TEFL', '871', 'edit._4.png', '2014-05-10 05:45:30', '2014-05-10 05:45:30');
INSERT INTO `employee_documents` VALUES ('353', '871', 'OTHER', '871', 'edit._5.png', '2014-05-10 05:45:30', '2014-05-10 05:45:30');
INSERT INTO `employee_documents` VALUES ('354', '871', 'Contract', '871', '1_1.docx', '2014-05-10 05:45:30', '2014-05-10 05:45:30');
INSERT INTO `employee_documents` VALUES ('355', '865', 'Passport', '865', '3_4_10.jpg', '2014-05-10 07:50:26', '2014-05-10 07:50:26');
INSERT INTO `employee_documents` VALUES ('356', '865', 'Bachelors', '865', '3_4_10_1.jpg', '2014-05-10 07:50:26', '2014-05-10 07:50:26');
INSERT INTO `employee_documents` VALUES ('357', '864', 'Passport', '864', 'tranducluong_cv.pdf', '2014-05-10 14:08:35', '2014-05-10 14:08:35');
INSERT INTO `employee_documents` VALUES ('358', '896', 'CV', '896', 'bug_frond_end__anh_luan.doc', '2014-05-12 04:37:21', '2014-05-12 04:37:21');
INSERT INTO `employee_documents` VALUES ('359', '897', 'CV', '897', 'bug_frond_end__anh_luan.doc', '2014-05-12 04:37:40', '2014-05-12 04:37:40');
INSERT INTO `employee_documents` VALUES ('360', '898', 'CV', '898', 'bug_frond_end__anh_luan.doc', '2014-05-12 04:53:18', '2014-05-12 04:53:18');
INSERT INTO `employee_documents` VALUES ('361', '899', 'CV', '899', 'bug_frond_end__anh_luan.doc', '2014-05-12 04:55:25', '2014-05-12 04:55:25');
INSERT INTO `employee_documents` VALUES ('362', '901', 'CV', '901', 'bug_frond_end__anh_luan.doc', '2014-05-12 09:45:39', '2014-05-12 09:45:39');
INSERT INTO `employee_documents` VALUES ('363', '902', 'CV', '902', 'bug_frond_end__anh_luan.doc', '2014-05-12 09:51:37', '2014-05-12 09:51:37');
INSERT INTO `employee_documents` VALUES ('364', '903', 'CV', '903', 'bug_frond_end__anh_luan.doc', '2014-05-12 13:00:18', '2014-05-12 13:00:18');
INSERT INTO `employee_documents` VALUES ('365', '906', 'CV', '906', 'bug_frond_end__anh_luan.doc', '2014-05-13 06:25:44', '2014-05-13 06:25:44');
INSERT INTO `employee_documents` VALUES ('366', '908', 'CV', '908', 'bug_frond_end__anh_luan.doc', '2014-05-13 07:28:07', '2014-05-13 07:28:07');
INSERT INTO `employee_documents` VALUES ('367', '923', 'CV', '923', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-13 12:45:17', '2014-05-13 12:45:17');
INSERT INTO `employee_documents` VALUES ('368', '924', 'CV', '924', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-14 04:18:34', '2014-05-14 04:18:34');
INSERT INTO `employee_documents` VALUES ('369', '925', 'CV', '925', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-15 04:13:54', '2014-05-15 04:13:54');
INSERT INTO `employee_documents` VALUES ('370', '926', 'CV', '926', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-16 04:50:22', '2014-05-16 04:50:22');
INSERT INTO `employee_documents` VALUES ('371', '927', 'CV', '927', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-16 04:50:50', '2014-05-16 04:50:50');
INSERT INTO `employee_documents` VALUES ('372', '928', 'CV', '928', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-16 04:55:38', '2014-05-16 04:55:38');
INSERT INTO `employee_documents` VALUES ('373', '929', 'CV', '929', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-16 05:02:04', '2014-05-16 05:02:04');
INSERT INTO `employee_documents` VALUES ('374', '930', 'CV', '930', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-16 05:09:44', '2014-05-16 05:09:44');
INSERT INTO `employee_documents` VALUES ('375', '931', 'CV', '931', 'gi_tt_mi_ngy_-_invoice_519227.pdf', '2014-05-16 05:18:32', '2014-05-16 05:18:32');

-- ----------------------------
-- Table structure for `evenement`
-- ----------------------------
DROP TABLE IF EXISTS `evenement`;
CREATE TABLE `evenement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_applicant` int(11) NOT NULL,
  `advert_id` int(11) NOT NULL,
  `user_interviewer` int(11) NOT NULL,
  `event_by` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `allDay` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'false',
  `color` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `event_status` tinyint(4) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evenement
-- ----------------------------
INSERT INTO `evenement` VALUES ('1', '867', '1', '725', '725', 'Appointment with To Tien', '', '2014-05-04 09:52:00', '2014-05-04 10:45:00', '', 'false', '#587ca3', '3', '2014-05-10 14:26:55', '2014-05-08 13:14:42');
INSERT INTO `evenement` VALUES ('2', '874', '1', '859', '725', 'Appointment with ha HA', 'ha', '2014-05-01 10:30:00', '2014-05-01 11:15:00', '', 'false', '#587ca3', '3', '2014-05-13 04:37:23', '2014-05-08 14:33:48');
INSERT INTO `evenement` VALUES ('3', '876', '1', '880', '725', 'Appointment with Luong Tien', '', '2014-05-01 09:00:00', '2014-05-01 09:45:00', null, 'false', '#587ca3', '3', '2014-05-10 04:54:48', '2014-05-09 10:01:15');
INSERT INTO `evenement` VALUES ('4', '876', '2', '725', '725', 'Appointment with Tran11 Lam11', 'hhhhhhhhhhh', '2014-05-30 15:30:00', '2014-05-30 15:35:00', '', 'false', '#AAAAAA', '1', '2014-05-12 12:58:32', '2014-05-09 10:52:20');
INSERT INTO `evenement` VALUES ('5', '877', '3', '725', '725', 'Appointment with Tran11 Lam11', 'hhhhhhhhhhh', '1970-01-01 10:30:00', '1970-01-01 11:15:00', '', 'false', '#587ca3', '2', '2014-05-09 14:31:43', '2014-05-09 14:27:56');
INSERT INTO `evenement` VALUES ('6', '879', '1', '884', '725', 'Appointment with test set', '', '2014-05-01 09:00:00', '2014-05-01 09:45:00', null, 'false', '#587ca3', '3', '2014-05-12 14:20:34', '2014-05-09 14:38:56');
INSERT INTO `evenement` VALUES ('7', '868', '3', '859', '859', 'Appointment with Tran Mai', 'bug ', '2014-05-16 16:00:00', '2014-05-16 16:45:00', '', 'false', '#587ca3', '3', '2014-05-10 15:05:19', '2014-05-10 06:54:29');
INSERT INTO `evenement` VALUES ('8', '851', '1', '725', '725', 'Appointment with Tran Mai', '', '2014-05-24 14:09:00', '2014-05-24 14:27:00', null, 'false', '#AAAAAA', '1', '2014-05-12 12:58:13', '2014-05-10 10:15:06');
INSERT INTO `evenement` VALUES ('10', '864', '1', '725', '725', 'Appointment with Tran Tien', 'ha', '2014-05-01 09:00:00', '2014-05-01 09:52:00', '', 'false', '#587ca3', '3', '2014-05-12 14:23:04', '2014-05-10 14:14:26');
INSERT INTO `evenement` VALUES ('12', '855', '12', '881', '725', 'Appointment with Jessica Alba', '', '2014-05-08 09:00:00', '2014-05-08 09:45:00', '', 'false', '#587ca3', '1', '2014-05-17 14:08:38', '2014-05-10 14:38:54');
INSERT INTO `evenement` VALUES ('13', '864', '10', '725', '725', 'Appointment with Tran Tien', '', '2014-05-01 09:52:00', '2014-05-01 10:45:00', null, 'false', '#587ca3', '3', '2014-05-10 15:03:06', '2014-05-10 15:00:43');
INSERT INTO `evenement` VALUES ('14', '864', '15', '725', '725', 'Appointment with Tran Tien', '', '2014-05-02 09:52:00', '2014-05-02 10:45:00', null, 'false', '#587ca3', '3', '2014-05-10 15:06:35', '2014-05-10 15:06:09');
INSERT INTO `evenement` VALUES ('15', '864', '12', '725', '725', 'Appointment with Tran Tien', '', '2014-05-02 10:45:00', '2014-05-02 11:37:00', null, 'false', '#587ca3', '3', '2014-05-10 15:10:37', '2014-05-10 15:07:07');
INSERT INTO `evenement` VALUES ('16', '855', '1', '885', '725', 'Appointment with Jessica Alba', '', '2014-05-08 14:30:00', '2014-05-08 15:15:00', null, 'false', '#587ca3', '3', '2014-05-12 06:32:29', '2014-05-12 06:19:01');
INSERT INTO `evenement` VALUES ('17', '856', '1', '859', '725', 'Appointment with Nguyen Quang', '', '2014-05-01 16:00:00', '2014-05-01 16:45:00', null, 'false', '#587ca3', '3', '2014-05-13 06:35:04', '2014-05-12 07:24:16');
INSERT INTO `evenement` VALUES ('18', '873', '11', '859', '725', 'Appointment with Tam Anh', '', '2014-05-02 11:15:00', '2014-05-02 10:30:00', null, 'false', '#587ca3', '3', '2014-05-13 06:30:51', '2014-05-12 09:09:40');
INSERT INTO `evenement` VALUES ('19', '873', '12', '859', '725', 'Appointment with Tam Anh', '', '2014-05-02 11:15:00', '2014-05-02 12:00:00', null, 'false', '#587ca3', '3', '2014-05-12 09:27:51', '2014-05-12 09:27:35');
INSERT INTO `evenement` VALUES ('20', '856', '2', '859', '725', 'Appointment with Nguyen Quang', '', '2014-05-01 15:15:00', '2014-05-01 16:00:00', null, 'false', '#587ca3', '3', '2014-05-12 10:06:12', '2014-05-12 10:06:12');
INSERT INTO `evenement` VALUES ('21', '879', '10', '884', '725', 'Appointment with test set', '', '2014-05-01 10:30:00', '2014-05-01 11:15:00', null, 'false', '#587ca3', '3', '2014-05-12 14:21:49', '2014-05-12 14:21:49');
INSERT INTO `evenement` VALUES ('22', '903', '1', '895', '725', 'Appointment with delete delete', '', '2014-05-01 09:00:00', '2014-05-01 09:45:00', null, 'false', '#587ca3', '3', '2014-05-12 14:29:28', '2014-05-12 14:29:28');
INSERT INTO `evenement` VALUES ('23', '874', '2', '881', '725', 'Appointment with ha HA', 'ha', '2014-05-27 13:00:00', '2014-05-27 13:45:00', null, 'false', '#587ca3', '1', '2014-05-13 07:24:54', '2014-05-13 04:55:06');
INSERT INTO `evenement` VALUES ('24', '874', '12', '884', '725', 'Appointment with ha HA', 'ha', '2014-05-01 11:15:00', '2014-05-01 12:00:00', null, 'false', '#587ca3', '1', '2014-05-13 05:13:13', '2014-05-13 05:07:17');
INSERT INTO `evenement` VALUES ('25', '875', '12', '725', '725', 'Appointment with ha hien', '', '2014-05-01 07:45:00', '2014-05-01 08:56:00', null, 'false', '#587ca3', '3', '2014-05-13 06:57:29', '2014-05-13 05:44:58');
INSERT INTO `evenement` VALUES ('26', '877', '2', '725', '725', 'Appointment with Tran11 Lam11', 'hhhhhhhhhhh', '2014-05-09 15:19:00', '2014-05-09 16:04:00', null, 'false', '#587ca3', '1', '2014-05-13 12:35:55', '2014-05-13 12:35:55');

-- ----------------------------
-- Table structure for `interview_booking`
-- ----------------------------
DROP TABLE IF EXISTS `interview_booking`;
CREATE TABLE `interview_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_applicant` int(11) NOT NULL,
  `id_interviewers` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interview_booking
-- ----------------------------

-- ----------------------------
-- Table structure for `invoices`
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(20) DEFAULT NULL,
  `client` tinyint(1) DEFAULT NULL,
  `recruiter` tinyint(1) DEFAULT NULL,
  `invoice_value` int(11) DEFAULT NULL,
  `date_submitted` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `invoice_paid_date` date DEFAULT NULL,
  `invoice_status` tinyint(1) DEFAULT NULL,
  `invoice_copy` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES ('1', '2', null, 'Hoa don 1', '1', null, '1', '2014-05-01', '2014-05-01', null, '2', 'HOA DON 1_INVOICE', '2014-05-08 13:00:25', '2014-05-08 13:00:25');
INSERT INTO `invoices` VALUES ('2', '2', null, 'invoice2', '1', null, '2', '2014-05-01', '2014-05-31', null, '1', 'INVOICE2_INVOICE', '2014-05-08 13:00:42', '2014-05-08 13:00:42');
INSERT INTO `invoices` VALUES ('3', '10', null, '11', '1', null, '11', '2014-05-25', '2014-05-26', null, '2', '11_INVOICE', '2014-05-10 05:27:52', '2014-05-10 09:10:31');
INSERT INTO `invoices` VALUES ('4', '3', null, '1', '1', null, '1', '2014-05-01', '2014-05-27', '2014-05-02', '1', '1_INVOICE', '2014-05-10 05:57:17', '2014-05-10 05:59:10');
INSERT INTO `invoices` VALUES ('5', '10', null, 'Invoice', '1', null, '1', '2014-05-01', '2014-05-31', '2014-05-01', '1', 'INVOICE_INVOICE', '2014-05-10 06:50:16', '2014-05-10 06:51:20');
INSERT INTO `invoices` VALUES ('6', '10', null, 'invoice 1', '1', null, '2', '2014-07-01', '2014-05-31', null, '1', 'INVOICE 1_INVOICE', '2014-05-10 06:50:46', '2014-05-10 06:50:46');
INSERT INTO `invoices` VALUES ('7', null, '3', '1', null, '1', '1', '2014-05-01', '2014-05-31', null, '2', '1_INVOICE', '2014-05-10 09:59:41', '2014-05-10 09:59:41');
INSERT INTO `invoices` VALUES ('8', null, '3', '2', null, '1', '2', '2014-05-01', '2014-05-31', null, '2', '2_INVOICE', '2014-05-10 10:00:01', '2014-05-10 10:00:01');
INSERT INTO `invoices` VALUES ('9', null, '3', '3', null, '1', '1', '2014-05-01', '2014-05-26', null, '2', '3_INVOICE', '2014-05-10 10:00:19', '2014-05-10 10:00:19');
INSERT INTO `invoices` VALUES ('10', null, '3', '3', null, '1', '3', '2014-05-04', '2014-05-30', null, '1', '3_INVOICE', '2014-05-10 10:02:46', '2014-05-10 10:02:46');
INSERT INTO `invoices` VALUES ('11', '2', null, 'invoice', '1', null, '1', '2014-05-04', '2014-05-31', null, '2', 'INVOICE_INVOICE', '2014-05-10 10:31:17', '2014-05-10 10:31:17');
INSERT INTO `invoices` VALUES ('12', '2', null, 'invoice', '1', null, '1', '2014-05-18', '2014-05-29', null, '2', 'INVOICE_INVOICE', '2014-05-10 10:31:39', '2014-05-10 10:31:39');
INSERT INTO `invoices` VALUES ('13', null, '1', '1', null, '1', '1', '2014-05-04', '2014-05-30', null, '1', '1_INVOICE', '2014-05-10 10:34:27', '2014-05-10 10:34:27');
INSERT INTO `invoices` VALUES ('14', null, '1', 'invoice1', null, '1', '1', '2014-05-01', '2014-05-02', null, '1', 'INVOICE1_INVOICE', '2014-05-10 10:34:43', '2014-05-10 10:34:43');
INSERT INTO `invoices` VALUES ('15', '10', null, '1', '1', null, '1', '2014-05-02', '2014-05-31', null, '1', '1_INVOICE', '2014-05-10 11:24:02', '2014-05-10 11:24:02');
INSERT INTO `invoices` VALUES ('16', '10', null, '1', '1', null, '1', '2014-05-01', '2014-05-03', null, '2', '1_INVOICE', '2014-05-12 13:59:42', '2014-05-12 13:59:42');
INSERT INTO `invoices` VALUES ('18', '5', null, '11', '1', null, '1', '2014-05-31', '2014-05-31', null, '2', '11_INVOICE', '2014-05-13 07:37:03', '2014-05-13 07:37:03');
INSERT INTO `invoices` VALUES ('19', '5', null, '1', '1', null, '1', '2014-05-01', '2014-05-01', null, '2', '1_INVOICE', '2014-05-13 07:40:19', '2014-05-13 07:46:47');
INSERT INTO `invoices` VALUES ('20', '10', null, '1', '1', null, '1', '2014-05-01', '2014-05-31', null, '2', '1_INVOICE', '2014-05-13 07:47:23', '2014-05-13 07:47:23');
INSERT INTO `invoices` VALUES ('21', '10', null, 'IB', '1', null, '5', '2014-05-02', '2014-05-30', null, '1', 'IB_INVOICE', '2014-05-13 07:47:49', '2014-05-13 07:47:49');

-- ----------------------------
-- Table structure for `job_adverts`
-- ----------------------------
DROP TABLE IF EXISTS `job_adverts`;
CREATE TABLE `job_adverts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `advert_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `advert_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `show_client` tinyint(1) NOT NULL,
  `package` text COLLATE utf8_unicode_ci NOT NULL,
  `essential_requirements` text COLLATE utf8_unicode_ci NOT NULL,
  `desired_requirements` text COLLATE utf8_unicode_ci NOT NULL,
  `required_start_date` date NOT NULL,
  `advertised_date` datetime NOT NULL,
  `restrict_applicants` tinyint(1) DEFAULT NULL,
  `native` tinyint(1) DEFAULT NULL,
  `edu_eng_degree` tinyint(1) DEFAULT NULL,
  `online_tefl` tinyint(1) DEFAULT NULL,
  `online_degrees` tinyint(1) DEFAULT NULL,
  `ba` tinyint(1) DEFAULT NULL,
  `ma` tinyint(1) DEFAULT NULL,
  `phd` tinyint(1) DEFAULT NULL,
  `experience` tinyint(4) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `page_views` int(11) DEFAULT '0',
  `added_by` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of job_adverts
-- ----------------------------
INSERT INTO `job_adverts` VALUES ('1', 'Quang Binh', 'Staff for RMP', 'AID14', '<p>.. this is&nbsp;job desciption&nbsp;</p>\r\n', '<p>.. this is&nbsp;advert summary</p>\r\n', '1', '1', '2', '<p>.. this is&nbsp;advert package</p>\r\n', '<p>.. this is&nbsp;advert e<span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 14.44444465637207px; line-height: 22.22222328186035px; text-align: right;\">ssential requirements</span></p>\r\n', '<p>.. this is&nbsp;advert d<span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 14.44444465637207px; line-height: 22.22222328186035px; text-align: right;\">esired&nbsp;requirements</span></p>\r\n', '2014-05-01', '2014-05-15 01:00:00', null, '1', '2', '1', '1', '1', '1', null, '3', '3', '1', '0', 'Luong Duc', 'Luong Duc', '2014-05-08 13:08:33', '2014-05-13 07:25:45');
INSERT INTO `job_adverts` VALUES ('2', 'Da Nang', 'advert company struction', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '1', '1', '1', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-01', '2014-05-01 00:00:00', null, '2', '2', '2', '2', '1', '1', null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-08 13:35:51', '2014-05-08 13:35:51');
INSERT INTO `job_adverts` VALUES ('3', 'Ho Chi Minh', 'Advert1', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2', '2', '2', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-02', '2014-05-01 00:00:00', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', 'Luong Duc', 'Luong Duc', '2014-05-08 13:36:45', '2014-05-09 06:13:54');
INSERT INTO `job_adverts` VALUES ('4', 'Ha Noi', 'Advert 2', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '3', '10', '1', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-27', '2014-05-19 00:00:00', null, '2', '1', '2', '1', '1', null, null, '3', '2', '1', '0', 'Luong Duc', null, '2014-05-08 13:37:42', '2014-05-08 13:37:42');
INSERT INTO `job_adverts` VALUES ('5', 'Quang Nam', 'Advert 3', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '4', '4', '2', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-18', '2014-05-27 00:00:00', null, '1', '1', '2', '2', '1', '1', null, '4', '2', '2', '0', 'Luong Duc', null, '2014-05-08 13:38:30', '2014-05-08 13:38:30');
INSERT INTO `job_adverts` VALUES ('6', 'Quang Ngai', 'Advert 5', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '10', '9', '2', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-19', '2014-09-22 00:00:00', null, '2', '2', '1', '1', '1', null, '1', '6', '2', '1', '0', 'Luong Duc', null, '2014-05-08 13:39:26', '2014-05-08 13:39:26');
INSERT INTO `job_adverts` VALUES ('7', 'Quang Binh', 'Advert 7', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '8', '7', '1', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-18', '2014-05-25 00:00:00', '1', '1', '1', '1', '1', null, '1', null, '7', '3', '1', '0', 'Luong Duc', 'Luong Duc', '2014-05-08 13:40:27', '2014-05-13 07:23:43');
INSERT INTO `job_adverts` VALUES ('8', 'Hue', 'Advert 9', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '6', '6', '1', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-11', '2014-05-27 00:00:00', null, '1', '2', '1', '2', null, '1', '1', '8', '1', '2', '0', 'Luong Duc', null, '2014-05-08 13:41:32', '2014-05-08 13:41:32');
INSERT INTO `job_adverts` VALUES ('9', 'Ho Chi Minh', 'Advert 10', 'AID14', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '7', '8', '2', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '<p><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I teach a class of phony principles of mathematics</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">In a fine Northeastern school.</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">I&#39;ve read the great philosophies of Plato, Christ and Socrates</span><br style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px;\" />\r\n<span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 12px; line-height: 20px; background-color: rgb(245, 245, 245);\">And I live by most their rules,&nbsp;</span></p>\r\n', '2014-05-18', '2014-06-16 00:00:00', null, '2', '2', '2', '2', null, '1', null, '1', '3', '2', '0', 'Luong Duc', null, '2014-05-08 13:42:18', '2014-05-08 13:42:18');
INSERT INTO `job_adverts` VALUES ('10', 'Da Nang', 'Advert  10', 'AID14', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '1', '2', '1', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '2014-05-09', '2014-05-01 00:00:00', '2', '2', '2', '2', '2', '1', '1', null, '1', '3', '1', '0', 'Luong Duc', 'Luong Duc', '2014-05-09 13:00:55', '2014-05-12 07:04:24');
INSERT INTO `job_adverts` VALUES ('11', 'Da Nang', 'Advert  10', 'AID14', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '1', '2', '1', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '<p><span style=\"color: rgb(0, 0, 0); font-family: \'Open Sans\', sans-serif; font-size: 13.63636302947998px; line-height: 18.18181800842285px; text-align: right;\">Advert&nbsp;</span></p>\r\n', '2014-05-09', '2014-05-01 00:00:00', null, '2', '2', '2', '2', '1', '1', null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-09 13:00:57', '2014-05-09 13:00:57');
INSERT INTO `job_adverts` VALUES ('12', 'Ha Noi', 'tran thanh tong', 'AID14', '<p>To monitor the implementation of social insurance policies - health care for the company&#39;s employees, monthly payroll and implementing HR policies, other labor.</p>\r\n', '<p>To monitor the implementation of social insurance policies - health care for the company&#39;s employees, monthly payroll and implementing HR policies, other labor.</p>\r\n', '3', '1', '1', '<p>To monitor the implementation of social insurance policies - health care for the company&#39;s employees, monthly payroll and implementing HR policies, other labor.</p>\r\n', '<p>To monitor the implementation of social insurance policies - health care for the company&#39;s employees, monthly payroll and implementing HR policies, other labor.</p>\r\n', '<p>To monitor the implementation of social insurance policies - health care for the company&#39;s employees, monthly payroll and implementing HR policies, other labor.</p>\r\n', '2014-05-03', '2014-05-10 00:00:00', null, '2', '2', '2', '2', null, '1', '1', '1', '3', '1', '0', 'Luong Duc', null, '2014-05-10 05:29:53', '2014-05-10 05:29:53');
INSERT INTO `job_adverts` VALUES ('15', 'Da nang', 'Da nang', 'AID14', '<p>Da nang</p>\r\n', '<p>Da nang</p>\r\n', '1', '9', '1', '<p>Da nang</p>\r\n', '<p>Da nang</p>\r\n', '<p>Da nang</p>\r\n', '2014-05-01', '2014-05-01 00:00:00', null, '2', '2', '2', '2', null, null, null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-10 07:59:34', '2014-05-10 07:59:34');
INSERT INTO `job_adverts` VALUES ('22', 'test', 'test', 'AID14', '<p>test</p>\r\n', '<p>test</p>\r\n', '1', '1', '1', '<p>test</p>\r\n', '<p>test</p>\r\n', '<p>test</p>\r\n', '2014-05-01', '2014-05-12 00:00:00', null, '2', '2', '2', '2', '1', null, null, '1', '1', '1', '0', 'Luong Duc', null, '2014-05-12 07:09:10', '2014-05-12 07:09:10');
INSERT INTO `job_adverts` VALUES ('23', '1', 'Test khi change client ,  project khi add advert thanh cong', 'AID14', '<p>11</p>\r\n', '<p>11</p>\r\n', '17', '11', '1', '<p>11</p>\r\n', '<p>11</p>\r\n', '<p>11</p>\r\n', '2014-05-01', '2014-05-01 00:00:00', null, '2', '2', '2', '2', null, null, null, '1', '1', '1', '0', 'Test Test', 'Test Test', '2014-05-12 10:26:52', '2014-05-12 10:44:31');
INSERT INTO `job_adverts` VALUES ('24', 'Ha Noi', 'Ha Noi', 'AID14', '<p>11</p>\r\n', '<p>11111</p>\r\n', '1', '1', '1', '<p>11</p>\r\n', '<p>11</p>\r\n', '<p>11</p>\r\n', '2014-05-01', '2014-05-29 00:00:00', null, '2', '2', '2', '2', '1', '1', null, '1', '3', '1', '0', 'Luong Duc', 'Luong Duc', '2014-05-13 06:39:56', '2014-05-13 06:41:00');
INSERT INTO `job_adverts` VALUES ('25', 'Quang Nam', '1', 'AID14', '<p>11</p>\r\n', '<p>11</p>\r\n', '1', '1', '1', '<p>11</p>\r\n', '<p>11</p>\r\n', '<p>11</p>\r\n', '2014-05-01', '2014-05-15 00:00:00', null, '2', '2', '2', '2', '1', '1', null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-13 06:43:10', '2014-05-13 06:43:10');
INSERT INTO `job_adverts` VALUES ('26', 'Đà nẵng', 'Cần tuyển lập trình php', 'AID141', '<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Design, develop and test web application.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Coordinate with Project Manager and TA/TL to resolve issues, report.</p>\r\n', '<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style=\"margin: 0px 0px 0px 0.25in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">Must have:</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; At least 1 year PHP experience (The experiences of coding PHP is highly appreciated).</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with at least 2 PHP &ndash; MCV framework (Symfony, Yii or Zend&hellip;)</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; English: Must read / write English documents and communication.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.25in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.25in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">&nbsp;</p>\r\n</div>\r\n', '10', '1', '1', '<p style=\"margin: 0px 0px 0px 0.25in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">Nice to have:</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Having experience working with PHPUnit.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with PHPDoc, ORM (Propel, Doctrine&hellip;), OOP methodology.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with Javascript/HTML/CSS, Jquery, Ajax.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with YAML, XML.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have experience working with Linux system (Centos, Ubuntu).</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have basic knowledge about software testing.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have experience working with version control system such as SVN.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\"><strong style=\"margin: 0px; padding: 0px;\">IV.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong style=\"margin: 0px; padding: 0px;\">&nbsp;Contact</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\"><strong style=\"margin: 0px; padding: 0px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong style=\"margin: 0px; padding: 0px;\">Trung T&acirc;m Đảm Bảo Nguồn Lực FPT Software</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Địa chỉ</strong>: Tầng 11, t&ograve;a nh&agrave; FPT, phố Duy T&acirc;n, Cầu Giấy, HN</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Điện thoại</strong>: 0437689046/573 gặp&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Ms. Hồng Nhung</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Th&ocirc;ng tin dự tuyển gửi về email:</p>\r\n', '<p style=\"margin: 0px 0px 0px 0.25in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">Nice to have:</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Having experience working with PHPUnit.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with PHPDoc, ORM (Propel, Doctrine&hellip;), OOP methodology.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with Javascript/HTML/CSS, Jquery, Ajax.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with YAML, XML.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have experience working with Linux system (Centos, Ubuntu).</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have basic knowledge about software testing.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have experience working with version control system such as SVN.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\"><strong style=\"margin: 0px; padding: 0px;\">IV.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong style=\"margin: 0px; padding: 0px;\">&nbsp;Contact</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\"><strong style=\"margin: 0px; padding: 0px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong style=\"margin: 0px; padding: 0px;\">Trung T&acirc;m Đảm Bảo Nguồn Lực FPT Software</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Địa chỉ</strong>: Tầng 11, t&ograve;a nh&agrave; FPT, phố Duy T&acirc;n, Cầu Giấy, HN</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Điện thoại</strong>: 0437689046/573 gặp&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Ms. Hồng Nhung</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Th&ocirc;ng tin dự tuyển gửi về email:</p>\r\n', '<p style=\"margin: 0px 0px 0px 0.25in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">Nice to have:</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Having experience working with PHPUnit.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with PHPDoc, ORM (Propel, Doctrine&hellip;), OOP methodology.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with Javascript/HTML/CSS, Jquery, Ajax.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience with YAML, XML.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have experience working with Linux system (Centos, Ubuntu).</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have basic knowledge about software testing.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Have experience working with version control system such as SVN.</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\"><strong style=\"margin: 0px; padding: 0px;\">IV.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong style=\"margin: 0px; padding: 0px;\">&nbsp;Contact</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\"><strong style=\"margin: 0px; padding: 0px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong style=\"margin: 0px; padding: 0px;\">Trung T&acirc;m Đảm Bảo Nguồn Lực FPT Software</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Địa chỉ</strong>: Tầng 11, t&ograve;a nh&agrave; FPT, phố Duy T&acirc;n, Cầu Giấy, HN</p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Điện thoại</strong>: 0437689046/573 gặp&nbsp;<strong style=\"margin: 0px; padding: 0px;\">Ms. Hồng Nhung</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 0px 0.75in; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 12px; line-height: 18px;\">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Th&ocirc;ng tin dự tuyển gửi về email:</p>\r\n', '2014-05-31', '2014-05-23 00:00:00', null, '2', '1', '2', '2', null, null, null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-14 04:37:09', '2014-05-14 04:37:09');
INSERT INTO `job_adverts` VALUES ('27', 'sssssssss', 'sssss', 'AID142', '<p>sssssss</p>\r\n', '<p>sssssss</p>\r\n', '2', '2', '1', '<p>sssssss</p>\r\n', '<p>sssssss</p>\r\n', '<p>sssssss</p>\r\n', '2014-05-23', '2014-05-30 00:00:00', null, '2', '2', '2', '2', null, null, null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-14 05:14:32', '2014-05-14 05:14:32');
INSERT INTO `job_adverts` VALUES ('28', 'DA NAHN', 'QC1', 'AID1428', '<p>SSSSSSS</p>\r\n', '<p>SSSSSSS</p>\r\n', '2', '2', '1', '<p>SSSSSSS</p>\r\n', '<p>SSSSSSS</p>\r\n', '<p>SSSSSSS</p>\r\n', '2014-05-17', '2014-05-16 00:00:00', null, '2', '2', '2', '2', null, null, null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-14 05:50:47', '2014-05-14 05:50:47');
INSERT INTO `job_adverts` VALUES ('29', 'Hồ chí minh', 'Tuyển lập trình viên c#', 'AID1429', '<p>2 năm kinh nghiệm</p>\r\n', '<p>Ch&uacute;ng t&ocirc;i cần tuyển lập tr&igrave;nh vi&ecirc;n chuy&ecirc;n về c# desktop</p>\r\n', '19', '22', '1', '<p>2 năm kinh nghiệm</p>\r\n', '<p>2 năm kinh nghiệm</p>\r\n', '<p>2 năm kinh nghiệm</p>\r\n', '2014-05-31', '2014-05-22 00:00:00', '2', '2', '1', '2', '2', null, null, '1', '1', '3', '1', '0', 'Luong Duc', 'Luong Duc', '2014-05-15 04:19:59', '2014-05-15 04:25:48');
INSERT INTO `job_adverts` VALUES ('30', 'Đà nẵng', 'Tuyển nhân viên Bán nước sạch 100% từ thiên nhiêu', 'AID1430', '<p>Tuyển nh&acirc;n vi&ecirc;n B&aacute;n nước sạch 100% từ thi&ecirc;n nhi&ecirc;u ko cần kinh nghiệm</p>\r\n', '<p>Tuyển nh&acirc;n vi&ecirc;n B&aacute;n nước sạch 100% từ thi&ecirc;n nhi&ecirc;u ko cần kinh nghiệm</p>\r\n', '20', '12', '1', '<p>Tuyển nh&acirc;n vi&ecirc;n B&aacute;n nước sạch 100% từ thi&ecirc;n nhi&ecirc;u ko cần kinh nghiệm</p>\r\n', '<p>Tuyển nh&acirc;n vi&ecirc;n B&aacute;n nước sạch 100% từ thi&ecirc;n nhi&ecirc;u ko cần kinh nghiệm</p>\r\n', '<p>Tuyển nh&acirc;n vi&ecirc;n B&aacute;n nước sạch 100% từ thi&ecirc;n nhi&ecirc;u ko cần kinh nghiệm</p>\r\n', '2014-05-22', '2014-05-29 00:00:00', null, '2', '2', '2', '2', null, null, null, '1', '3', '1', '0', 'Luong Duc', null, '2014-05-15 12:41:30', '2014-05-15 12:41:30');

-- ----------------------------
-- Table structure for `job_fairs`
-- ----------------------------
DROP TABLE IF EXISTS `job_fairs`;
CREATE TABLE `job_fairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `venue` varchar(200) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `address` text,
  `summary` text,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_fairs
-- ----------------------------
INSERT INTO `job_fairs` VALUES ('2', 'Job fair in Quang Tri', '2014-05-03 00:00:00', '2014-05-07 00:00:00', 'Quang Tri', 'Afghanistan', 'Quang Tri', '<p>Job fair student with Information Technology</p>\r\n', '<p>Job fair student with Information Technology</p>\r\n', '1', '2014-05-06 14:06:39', '2014-05-12 12:47:21');
INSERT INTO `job_fairs` VALUES ('6', 'American jobs', '2014-05-08 17:00:00', '2014-05-29 17:00:00', 'ha noi 111', 'Afghanistan', 'Ha Noi123', '<p>.co the quan ly benh nhan, tham benh nhan11</p>\r\n', '<p>.co the quan ly benh nhan, tham benh nhan111</p>\r\n', '2', '2014-05-07 10:57:51', '2014-05-08 13:25:27');
INSERT INTO `job_fairs` VALUES ('8', 'Hoi cho viec lam CNTT 04/2014', '2014-05-12 00:00:00', '2014-05-26 00:00:00', 'ho chi minh', 'Afghanistan', 'Da Lat', '<p>I want to smile, i want to change in your mind, but the first is smile and smile, i can accept, i can&nbsp;</p>\r\n\r\n<table class=\"gt-baf-table\" style=\"font-size: 13px; border-spacing: 0px; color: rgb(119, 119, 119); font-family: arial, sans-serif; line-height: normal;\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"padding: 0px;\">\r\n			<div class=\"gt-baf-cell gt-baf-word-clickable\" style=\"height: 18px; margin: 1px 0px 0px 4px; color: rgb(0, 0, 0); cursor: pointer; overflow: hidden; vertical-align: top; white-space: nowrap; unicode-bidi: embed;\">let down</div>\r\n			</td>\r\n			<td style=\"padding: 0px; width: 527px;\">&nbsp;I am not alone, i feel life of my is good, i will try to work, i will &nbsp;hard working, i will have a lot of thing&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;, I wish you also as me</p>\r\n', '<p>I want to smile, i want to change in your mind, but the first is smile and smile, i can accept, i can&nbsp;</p>\r\n\r\n<table class=\"gt-baf-table\" style=\"border-spacing: 0px; color: rgb(119, 119, 119); font-family: arial, sans-serif; font-size: 13px; line-height: normal;\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"padding: 0px;\">\r\n			<div class=\"gt-baf-cell gt-baf-word-clickable\" style=\"height: 18px; margin: 1px 0px 0px 4px; color: rgb(0, 0, 0); cursor: pointer; overflow: hidden; vertical-align: top; white-space: nowrap; unicode-bidi: embed;\">let down</div>\r\n			</td>\r\n			<td style=\"padding: 0px; width: 527px;\">&nbsp;I am not alone, i feel life of my is good, i will try to work, i will &nbsp;hard working, i will have a lot of thing&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;, I wish you also as me</p>\r\n', '1', '2014-05-08 10:01:01', '2014-05-08 13:22:06');
INSERT INTO `job_fairs` VALUES ('10', 'Job fair in Nha Trang', '2014-05-12 00:00:00', '2014-05-26 00:00:00', 'ho chi minh', 'Vietnam', 'Nha Trang', '<p>I want to smile, i want to change in your mind, but the first is smile and smile, i can accept, i can&nbsp;</p>\r\n', '<p>I want to smile, i want to change in your mind, but the first is smile and smile, i can accept, i can&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1', '2014-05-08 10:01:37', '2014-05-12 12:44:55');
INSERT INTO `job_fairs` VALUES ('11', 'Job fair Da Nang', '2014-05-01 00:00:00', '2014-05-31 00:00:00', 'Da Nang', 'Vietnam', 'Da Nang', '<p>In here you can share a lot of work, you can&nbsp;joined company,you find the job that suits you</p>\r\n', '<p>In here you can share a lot of work, you can&nbsp;joined company,you find the job that suits you</p>\r\n', '1', '2014-05-09 05:44:26', '2014-05-12 12:47:55');
INSERT INTO `job_fairs` VALUES ('12', 'Hoi cho Ha Noi', '2014-07-01 00:00:00', '2014-08-30 00:00:00', 'Thanh Xuan, Ha Noi', 'Vietnam', 'Ha Noi', '<p>In here you can share a lot of work, you can joined company,you find the job that suits you</p>\r\n', '<p>In here you can share a lot of work, you can joined company,you find the job that suits you</p>\r\n', '1', '2014-05-09 05:47:43', '2014-05-09 12:49:19');
INSERT INTO `job_fairs` VALUES ('13', 'Fair in Ho Chi Minh', '2005-05-31 00:00:00', '2014-05-30 00:00:00', 'Ho Chi Minh', 'Vietnam', 'Ho Chi Minh', '<p>In here you can share a lot of work, you can&nbsp;joined company,you find the job that suits you</p>\r\n', '<p>In here you can share a lot of work, you can&nbsp;joined company,you find the job that suits you</p>\r\n', '2', '2014-05-09 05:49:21', '2014-05-09 05:49:21');
INSERT INTO `job_fairs` VALUES ('14', 'Job fair in Hue', '2014-05-09 00:00:00', '2014-05-09 00:00:00', 'Hue', 'Vietnam', 'Hue', '<p>TEST</p>\r\n', '<p>TEST</p>\r\n', '1', '2014-05-09 12:46:11', '2014-05-12 12:46:31');
INSERT INTO `job_fairs` VALUES ('15', 'Jair in Can Tho', '2014-05-09 00:00:00', '2014-05-17 00:00:00', 'Ho Chi Minh', 'Vietnam', 'Ho Chi Minh', '<p>TEST</p>\r\n', '<p>TEST</p>\r\n', '1', '2014-05-09 12:46:21', '2014-05-10 07:18:02');
INSERT INTO `job_fairs` VALUES ('16', 'Job fair in Quang Nam', '2014-05-11 00:00:00', '2014-05-31 00:00:00', 'Quang Nam', 'Vietnam', 'Quang Nam', '<p>TEST</p>\r\n', '<p>TEST</p>\r\n', '1', '2014-05-09 12:46:22', '2014-05-12 12:45:53');
INSERT INTO `job_fairs` VALUES ('17', 'Fair in Ho Chi Minh', '2014-05-01 00:00:00', '2014-05-27 00:00:00', 'Ho Chi Minh', 'Vietnam', 'Da Nang', '<p>120 ng&ocirc; quyền</p>\r\n', '<p>Ho chi minh is big city, in here &nbsp;have lot of &nbsp;scenic is verybeatufull,&nbsp;</p>\r\n', '1', '2014-05-10 06:00:58', '2014-05-10 07:16:45');

-- ----------------------------
-- Table structure for `laravel_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `laravel_migrations`;
CREATE TABLE `laravel_migrations` (
  `bundle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`bundle`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of laravel_migrations
-- ----------------------------
INSERT INTO `laravel_migrations` VALUES ('application', '2012_12_05_125000_create_session_table', '2');
INSERT INTO `laravel_migrations` VALUES ('authority', '2012_01_24_205457_add_authority_tables', '3');
INSERT INTO `laravel_migrations` VALUES ('sentry', '2012_08_03_162320_install', '1');
INSERT INTO `laravel_migrations` VALUES ('sentry', '2012_08_15_001334_database_rules', '1');
INSERT INTO `laravel_migrations` VALUES ('sentry', '2012_10_08_000000_users_nullable', '1');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_01_25_120739_create_password_reminders_table', '1');
INSERT INTO `migrations` VALUES ('2014_04_03_120945_create_sectors_table', '2');
INSERT INTO `migrations` VALUES ('2014_04_17_100047_edit_marital_column_size_in_profiles_table', '3');
INSERT INTO `migrations` VALUES ('2014_04_17_124412_add_columns_to_profiles', '3');
INSERT INTO `migrations` VALUES ('2014_04_17_180800_add_applicant_hired_to_profile', '4');
INSERT INTO `migrations` VALUES ('2014_04_18_070121_add_recruiter_for_contract', '4');
INSERT INTO `migrations` VALUES ('2014_04_18_071805_migrate_fields_in_recruiters', '4');
INSERT INTO `migrations` VALUES ('2014_04_18_135003_create_table_recruiter_statistics', '4');
INSERT INTO `migrations` VALUES ('2014_04_19_070401_create_table_service_locations', '4');
INSERT INTO `migrations` VALUES ('2014_04_19_120821_merge_field_in_contract', '4');
INSERT INTO `migrations` VALUES ('2014_04_20_065317_add_added_by_recruitment_requirements', '4');
INSERT INTO `migrations` VALUES ('2014_04_20_065450_add_added_by_recruitment_projects', '4');
INSERT INTO `migrations` VALUES ('2014_04_21_124856_update_user_number_column_to_nullable', '4');
INSERT INTO `migrations` VALUES ('2014_04_21_130507_update_user_ip_column_to_nullable', '4');
INSERT INTO `migrations` VALUES ('2014_04_21_130601_update_user_last_login_column_to_nullable', '4');
INSERT INTO `migrations` VALUES ('2014_04_22_045218_update_datetime_recruitmentprojects', '4');
INSERT INTO `migrations` VALUES ('2014_04_24_045950_change_user_gender_to_nullable', '4');
INSERT INTO `migrations` VALUES ('2014_04_24_100614_change_updated_by_from_recruitment_requirements_to_nullable', '4');
INSERT INTO `migrations` VALUES ('2014_04_26_044513_add_good_candidate_to_recuitment_applications', '4');
INSERT INTO `migrations` VALUES ('2014_04_26_055446_add_meets_requirements_to_recuitment_applications', '4');
INSERT INTO `migrations` VALUES ('2014_04_27_042001_move_good_candicate_to_profile', '4');
INSERT INTO `migrations` VALUES ('2014_04_27_043051_move_approved_by_to_recruitment_application_table', '4');
INSERT INTO `migrations` VALUES ('2014_04_28_062153_change_name_for_client_statistics_table', '4');
INSERT INTO `migrations` VALUES ('2014_04_28_105108_change_contract_id_in_contract_documents_table_to_nullable', '5');
INSERT INTO `migrations` VALUES ('2014_04_27_067443_add_sent_to_client', '6');
INSERT INTO `migrations` VALUES ('2014_04_28_123219_change_avert_id_to_job_adverts_table_to_nullable', '7');
INSERT INTO `migrations` VALUES ('2014_04_28_123447_modify_column_size_for_experience_column_in_job_adverts_table', '8');
INSERT INTO `migrations` VALUES ('2014_04_28_145148_add_table_evenement_interview_booking', '9');
INSERT INTO `migrations` VALUES ('2014_04_28_145529_add_table_interview_booking', '9');
INSERT INTO `migrations` VALUES ('2014_04_29_110433_add_updated_by_to_recruitment_projects', '10');
INSERT INTO `migrations` VALUES ('2014_04_29_130449_make_update_by_column_to_nullable_in_recruitmentprojects', '11');
INSERT INTO `migrations` VALUES ('2014_05_02_483048_add_client_id_to_applicant_status', '12');
INSERT INTO `migrations` VALUES ('2014_05_05_104622_Update_table_evenement', '13');
INSERT INTO `migrations` VALUES ('2014_05_05_150314_add_rememer_token_to_users', '14');
INSERT INTO `migrations` VALUES ('2014_05_05_153920_add_table_working_hours', '15');
INSERT INTO `migrations` VALUES ('2014_05_06_045053_add_permissions_to_user_permission_table', '16');
INSERT INTO `migrations` VALUES ('2014_05_06_045349_change_remember_token_to_nullable', '16');
INSERT INTO `migrations` VALUES ('2014_05_06_051551_add_permissions_column_to_positions', '17');
INSERT INTO `migrations` VALUES ('2014_05_06_064643_add_table_work_hours', '18');
INSERT INTO `migrations` VALUES ('2014_05_06_065634_drop_table_working_hours', '18');
INSERT INTO `migrations` VALUES ('2014_05_07_145913_remove_table_evenement', '19');
INSERT INTO `migrations` VALUES ('2014_05_07_150041_add_table_evenement_news', '19');
INSERT INTO `migrations` VALUES ('2014_05_08_131309_change_url_in_evenment_to_nullable', '20');
INSERT INTO `migrations` VALUES ('2014_05_08_103852_add_row_date_table_work_hour', '21');
INSERT INTO `migrations` VALUES ('2014_05_09_073953_add_hiring_status_to_job_application', '22');
INSERT INTO `migrations` VALUES ('2014_05_09_248731_add_application_id_to_applicant_status', '23');
INSERT INTO `migrations` VALUES ('2014_05_10_013491_add_agents_table', '24');
INSERT INTO `migrations` VALUES ('2014_05_10_024561_add_agent_id_to_recruitment_application', '24');
INSERT INTO `migrations` VALUES ('2014_05_12_044208_change_agent_id_to_nullable', '25');
INSERT INTO `migrations` VALUES ('2014_05_14_144306_add_position_id_to_users', '26');
INSERT INTO `migrations` VALUES ('2014_05_15_044704_add_personal_permission_to_users', '26');

-- ----------------------------
-- Table structure for `passports`
-- ----------------------------
DROP TABLE IF EXISTS `passports`;
CREATE TABLE `passports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `passport_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passport_issue_date` date NOT NULL,
  `passport_expiry_date` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of passports
-- ----------------------------
INSERT INTO `passports` VALUES ('1', '227', '', '1970-01-01', '0000-00-00', '2013-08-30', '2014-04-02');
INSERT INTO `passports` VALUES ('29', '723', '801283839343', '2014-01-01', '2019-01-01', '2014-03-05', '2014-03-05');
INSERT INTO `passports` VALUES ('33', '727', '324234234234', '2014-03-20', '2014-03-28', '2014-03-17', '2014-03-17');
INSERT INTO `passports` VALUES ('37', '730', '8343434343', '2014-03-01', '2019-03-01', '2014-03-31', '2014-03-31');
INSERT INTO `passports` VALUES ('38', '760', '34534535', '2006-02-09', '2016-04-13', '2014-04-08', '2014-04-08');
INSERT INTO `passports` VALUES ('39', '761', '345899999', '2009-04-01', '2019-04-01', '2014-04-08', '2014-04-08');
INSERT INTO `passports` VALUES ('40', '762', '57657677', '2007-04-18', '2017-04-13', '2014-04-08', '2014-04-08');
INSERT INTO `passports` VALUES ('41', '763', '657657', '2012-04-16', '2022-04-20', '2014-04-08', '2014-04-08');
INSERT INTO `passports` VALUES ('42', '764', '4453453', '2012-04-19', '2022-04-06', '2014-04-11', '2014-04-11');
INSERT INTO `passports` VALUES ('43', '765', '1dffgf', '2014-04-14', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('44', '766', '111', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('45', '767', 'ddcvc', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('46', '768', 'vvvbf', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('47', '769', 'haiha', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('48', '770', 'haiha11', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('49', '771', 'gghhh', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('50', '772', 'e', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('51', '773', '111vfh', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('52', '774', 'quyet gggr', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('53', '775', 'ffghg', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('54', '776', '11', '2014-04-30', '2014-04-30', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('55', '784', '123123', '2014-04-09', '2014-04-26', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('56', '785', '3423432432', '2014-04-08', '2014-04-15', '2014-04-28', '2014-04-28');
INSERT INTO `passports` VALUES ('57', '786', '80128383sdsd', '2014-04-28', '2014-04-28', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('58', '787', '234wqd23ewdwd', '2014-04-18', '2014-04-18', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('59', '792', 'hjkjkj', '2014-04-01', '2014-04-30', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('60', '793', '11111', '2014-04-30', '2014-04-30', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('61', '794', 'cvv', '2014-04-29', '2014-04-30', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('62', '795', 'fv ', '2014-04-01', '2014-04-30', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('63', '796', 'gvghg', '2014-04-30', '2014-04-30', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('64', '797', 'FDBH', '2014-04-01', '2014-04-30', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('65', '798', '123asdasd342', '2014-04-13', '2014-04-25', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('66', '799', '801283839343ss', '2014-04-25', '2014-04-25', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('67', '800', 'AVCX34244234', '2014-04-07', '2014-04-17', '2014-04-29', '2014-04-29');
INSERT INTO `passports` VALUES ('68', '801', 'Q231asdasd', '2014-04-21', '2014-04-30', '2014-04-30', '2014-04-30');
INSERT INTO `passports` VALUES ('69', '802', '21asdad21dd', '2014-04-21', '2014-04-25', '2014-04-30', '2014-04-30');
INSERT INTO `passports` VALUES ('70', '803', 'Re343433', '2014-05-13', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('71', '804', 'fgfhgh', '2014-05-01', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('72', '805', 'QWERR2323', '2014-05-18', '2014-05-30', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('73', '806', 'ghkkk', '2014-05-31', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('74', '807', 'dgvhjj', '2014-05-01', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('75', '809', 'gh,vbbn', '2014-05-30', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('76', '810', '111kkk', '2014-05-01', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('77', '811', 'khh  ', '2014-05-01', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('78', '812', 'HHHHHHHHHH          ', '2014-05-30', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('79', '813', 'cvhhhj', '2014-05-01', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('80', '814', 'ghyll', '2014-05-01', '2014-05-31', '2014-05-05', '2014-05-05');
INSERT INTO `passports` VALUES ('81', '817', 'hhhfcg', '2014-05-01', '2014-05-01', '2014-05-06', '2014-05-06');
INSERT INTO `passports` VALUES ('82', '820', 'hciu', '2014-05-01', '2014-05-31', '2014-05-06', '2014-05-06');
INSERT INTO `passports` VALUES ('83', '825', 'vnnmm', '2014-05-01', '2014-05-03', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('84', '826', 'fgj', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('85', '827', 'Qwe3wqwq', '2014-05-12', '2014-05-30', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('86', '828', 'thnhhad', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('87', '829', 'ghhhmmmn', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('88', '830', 'QvCS123123', '2014-05-02', '2014-05-17', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('89', '831', '1111', '2014-05-31', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('90', '832', 'qqqqqqqqqqqqqqq222222', '2014-05-05', '2014-05-24', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('91', '833', '12a31231aaa', '2014-05-05', '2014-05-24', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('92', '834', 'aaaaaaa222ww', '2014-05-26', '2014-05-30', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('93', '835', 'vgjj', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('94', '836', '801283839343ssasdasd', '2014-05-15', '2014-05-24', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('95', '837', 'vghjjgjk', '2014-05-01', '2014-05-01', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('96', '838', 'gnjkk', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('97', '839', 'gdh,', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('98', '840', 'aaaaaaaaa', '2014-05-11', '2014-05-20', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('99', '841', 'ghhnjhj', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('100', '844', 'hhhjj', '2014-05-01', '2014-05-31', '2014-05-07', '2014-05-07');
INSERT INTO `passports` VALUES ('101', '846', 'vjnm,m', '2014-05-01', '2014-05-01', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('102', '847', 'll;nnj', '2014-05-01', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('103', '848', 'fvg212', '2014-05-11', '2014-05-30', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('104', '850', 'dhhh', '2014-05-01', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('105', '851', 'QERYUIU123456', '2014-05-04', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('106', '854', 'ZXXVB123567', '2014-05-04', '2014-05-29', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('107', '855', 'HJLHJAAA087611', '2014-01-06', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('108', '856', 'QUANGXZY', '2013-05-07', '2014-05-06', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('109', '862', 'ghhgh', '2011-05-31', '2017-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('110', '863', 'gfhhh', '2007-05-24', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('111', '864', 'ghgh', '2005-05-01', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('112', '865', 'ABCGH', '2014-05-01', '2014-05-29', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('113', '866', 'GKHLM', '2014-05-01', '2014-11-30', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('114', '867', 'GHKLT', '2014-05-27', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('115', '868', 'DFGHJ', '2007-01-01', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('116', '870', 'AFG801283839343333', '2014-05-04', '2014-05-24', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('117', '871', 'DJKKR', '2014-05-01', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('118', '872', 'GHKLL', '2014-05-01', '2014-05-31', '2014-05-08', '2014-05-08');
INSERT INTO `passports` VALUES ('119', '873', 'Qwewewee213', '2014-05-12', '2014-05-30', '2014-05-09', '2014-05-09');
INSERT INTO `passports` VALUES ('120', '874', 'GHJKL', '2014-05-01', '2014-05-31', '2014-05-09', '2014-05-09');
INSERT INTO `passports` VALUES ('121', '875', 'GLLKK', '2014-05-01', '2014-05-31', '2014-05-09', '2014-05-09');
INSERT INTO `passports` VALUES ('122', '876', 'FGHJJ', '2014-05-01', '2014-05-31', '2014-05-09', '2014-05-09');
INSERT INTO `passports` VALUES ('123', '877', 'KLGFD', '2014-05-01', '2014-05-31', '2014-05-09', '2014-05-09');
INSERT INTO `passports` VALUES ('124', '879', 'Qerrwer234', '2014-05-06', '2014-05-22', '2014-05-09', '2014-05-09');
INSERT INTO `passports` VALUES ('125', '898', '11effg', '2014-05-01', '2014-05-01', '2014-05-12', '2014-05-12');
INSERT INTO `passports` VALUES ('126', '899', 'hjkjk', '2004-05-01', '2014-05-01', '2014-05-12', '2014-05-12');
INSERT INTO `passports` VALUES ('127', '901', 'bhnnn', '2014-05-01', '2014-05-31', '2014-05-12', '2014-05-12');
INSERT INTO `passports` VALUES ('128', '902', 'fghg', '2014-05-01', '2014-05-02', '2014-05-12', '2014-05-12');
INSERT INTO `passports` VALUES ('129', '903', 'DFGHJ1', '2014-05-02', '2014-05-02', '2014-05-12', '2014-05-12');
INSERT INTO `passports` VALUES ('130', '906', 'tghjjj', '2014-05-01', '2014-05-31', '2014-05-13', '2014-05-13');
INSERT INTO `passports` VALUES ('131', '908', 'KLMNL', '2014-05-01', '2014-05-31', '2014-05-13', '2014-05-13');
INSERT INTO `passports` VALUES ('132', '923', '3333333333333', '2005-05-09', '2015-05-06', '2014-05-13', '2014-05-13');
INSERT INTO `passports` VALUES ('133', '924', 'cv39084234', '2007-05-16', '2015-05-21', '2014-05-14', '2014-05-14');
INSERT INTO `passports` VALUES ('134', '925', '3dc23r53', '2006-05-24', '2013-05-14', '2014-05-15', '2014-05-15');
INSERT INTO `passports` VALUES ('135', '930', 'ssssss', '2005-05-25', '2014-05-22', '2014-05-16', '2014-05-16');
INSERT INTO `passports` VALUES ('136', '931', 'sssssssssssssssss', '2009-05-14', '2020-05-14', '2014-05-16', '2014-05-16');

-- ----------------------------
-- Table structure for `password_reminders`
-- ----------------------------
DROP TABLE IF EXISTS `password_reminders`;
CREATE TABLE `password_reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of password_reminders
-- ----------------------------
INSERT INTO `password_reminders` VALUES ('1', 'm@kedstudio.com', 'e1c1a1671d72288ffe4f229f183632cd021cd316', '2014-01-25 12:23:47');
INSERT INTO `password_reminders` VALUES ('2', 'm@kedstudio.com', '2c5626705b56e9e6ff8367e7f065cab82b46a1d9', '2014-01-25 12:27:52');
INSERT INTO `password_reminders` VALUES ('3', 'm@kedstudio.com', 'ebe3762661cefe1c0d6927e29ea3cc7ffa637e2a', '2014-01-25 12:57:53');
INSERT INTO `password_reminders` VALUES ('4', 'm@kedstudio.com', '084f4450606c6c4a48c43cde5a68f38786c9a490', '2014-01-25 13:00:10');
INSERT INTO `password_reminders` VALUES ('5', 'm@kedstudio.com', '43b680a9ba651bba79f90dae5c713e12ab44fc5e', '2014-01-25 13:00:38');
INSERT INTO `password_reminders` VALUES ('6', 'm@kedstudio.com', '17e1d48917999c9135f28392f6ce223b9b0d6c39', '2014-01-25 13:00:45');
INSERT INTO `password_reminders` VALUES ('7', 'm@kedstudio.com', 'd0e51d7a4d7ced43ef06cbb01d5aac5955616a0e', '2014-01-25 13:01:46');
INSERT INTO `password_reminders` VALUES ('8', 'm@kedstudio.com', 'dc464ed9232680e44791f3171e30cfdf55b9773b', '2014-01-25 13:02:44');
INSERT INTO `password_reminders` VALUES ('9', 'm@kedstudio.com', '54208dc4fd6375c66b961d1327ec11c516bf08ca', '2014-01-25 13:04:11');
INSERT INTO `password_reminders` VALUES ('10', 'm@kedstudio.com', '7b7664481ebe257aae25e19a55e25da767213aa1', '2014-01-25 13:04:53');
INSERT INTO `password_reminders` VALUES ('11', 'm@kedstudio.com', 'f207e1add0a23172b8e0283b442164ef0c71dbaf', '2014-01-25 13:05:39');
INSERT INTO `password_reminders` VALUES ('12', 'nttha.dsna@gmail.com', 'dc52559e4f6ba07c31387f0354beafadbd035e6b', '2014-05-05 11:43:03');

-- ----------------------------
-- Table structure for `position_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `position_permissions`;
CREATE TABLE `position_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) DEFAULT NULL,
  `view_staff_list` tinyint(4) DEFAULT NULL,
  `view_pending_staff_list` tinyint(4) DEFAULT NULL,
  `view_inactive_staff_list` tinyint(4) DEFAULT NULL,
  `view_declined_staff_list` tinyint(4) DEFAULT NULL,
  `view_dismissed_staff_list` tinyint(4) DEFAULT NULL,
  `view_warnings` tinyint(4) DEFAULT NULL,
  `edit_warnings` tinyint(4) DEFAULT NULL,
  `delete_warnings` tinyint(4) DEFAULT NULL,
  `view_grievances` tinyint(4) DEFAULT NULL,
  `edit_grievances` tinyint(4) DEFAULT NULL,
  `delete_grievances` tinyint(4) DEFAULT NULL,
  `review_requests` tinyint(4) DEFAULT NULL,
  `approved_requests` tinyint(4) DEFAULT NULL,
  `pending_requests` tinyint(4) DEFAULT NULL,
  `edit_requests` tinyint(4) DEFAULT NULL,
  `delete_requests` tinyint(4) DEFAULT NULL,
  `view_workshops` tinyint(4) DEFAULT NULL,
  `edit_workshops` tinyint(4) DEFAULT NULL,
  `delete_workshops` tinyint(4) DEFAULT NULL,
  `view_permissions` tinyint(4) DEFAULT NULL,
  `edit_permissions` tinyint(4) DEFAULT NULL,
  `view_statistics` tinyint(4) DEFAULT NULL,
  `view_finances` tinyint(4) DEFAULT NULL,
  `view_profiles` tinyint(4) DEFAULT NULL,
  `edit_profiles` tinyint(4) DEFAULT NULL,
  `delete_profiles` tinyint(4) DEFAULT NULL,
  `view_profile_overview` tinyint(4) DEFAULT NULL,
  `view_profile_contact_info` tinyint(4) DEFAULT NULL,
  `view_profile_medical_info` tinyint(4) DEFAULT NULL,
  `view_profile_salary_info` tinyint(4) DEFAULT NULL,
  `view_profile_imigration_info` tinyint(4) DEFAULT NULL,
  `view_profile_grievance_info` tinyint(4) DEFAULT NULL,
  `view_profile_note_info` tinyint(4) DEFAULT NULL,
  `view_profile_cv_info` tinyint(4) DEFAULT NULL,
  `view_imigration_list` tinyint(4) DEFAULT NULL,
  `edit_imigration` tinyint(4) DEFAULT NULL,
  `delete_imigration` tinyint(4) DEFAULT NULL,
  `view_locations` int(4) DEFAULT NULL,
  `edit_locations` int(4) DEFAULT NULL,
  `delete_locations` int(4) DEFAULT NULL,
  `view_workflows` tinyint(4) DEFAULT NULL,
  `edit_workflows` tinyint(4) DEFAULT NULL,
  `delete_workflows` tinyint(4) DEFAULT NULL,
  `view_holidays` tinyint(4) DEFAULT NULL,
  `edit_holidays` tinyint(4) DEFAULT NULL,
  `delete_holidays` tinyint(4) DEFAULT NULL,
  `view_contractors` tinyint(4) DEFAULT NULL,
  `edit_contractors` tinyint(4) DEFAULT NULL,
  `delete_contractors` tinyint(4) DEFAULT NULL,
  `view_all_applicants` tinyint(1) DEFAULT '3',
  `view_pending_applicants` tinyint(1) DEFAULT '3',
  `view_approved_applicants` tinyint(1) DEFAULT '3',
  `view_rejected_appllcants` tinyint(1) DEFAULT '3',
  `view_declined_applicants` tinyint(1) DEFAULT '3',
  `view_awaiting_submission` tinyint(1) DEFAULT '3',
  `edit_applicants` tinyint(1) DEFAULT '3',
  `administer_applicant_application` tinyint(1) DEFAULT '3',
  `claim_applicants` tinyint(1) DEFAULT '3',
  `re_assign_applicants` tinyint(1) DEFAULT '3',
  `view_48h_arrivals` tinyint(1) DEFAULT '3',
  `view_all_arrivals` tinyint(1) DEFAULT '3',
  `view_adverts` tinyint(1) DEFAULT '3',
  `edit_adverts` tinyint(1) DEFAULT '3',
  `delete_adverts` tinyint(1) DEFAULT '3',
  `view_clients` tinyint(1) DEFAULT '3',
  `view_client_contract` tinyint(1) DEFAULT '3',
  `view_client_stats` tinyint(1) DEFAULT '3',
  `edit_clients` tinyint(1) DEFAULT '3',
  `delete_clients` tinyint(1) DEFAULT '3',
  `add_client_employee` tinyint(1) DEFAULT '3',
  `view_projects` tinyint(1) DEFAULT '3',
  `edit_projects` tinyint(1) DEFAULT '3',
  `delete_projects` tinyint(1) DEFAULT '3',
  `view_recruiters` tinyint(1) DEFAULT '3',
  `edit_recruiters` tinyint(1) DEFAULT '3',
  `view_recruiter_stats` tinyint(1) DEFAULT '3',
  `add_recruiter_employee` tinyint(1) DEFAULT '3',
  `view_recruiter_contract` tinyint(1) DEFAULT '3',
  `delete_recruiters` tinyint(1) DEFAULT '3',
  `view_departments` tinyint(1) DEFAULT '3',
  `edit_departments` tinyint(1) DEFAULT '3',
  `delete_departments` tinyint(1) DEFAULT '3',
  `view_roles` tinyint(1) DEFAULT '3',
  `edit_roles` tinyint(1) DEFAULT '3',
  `delete_roles` tinyint(1) DEFAULT '3',
  `view_positions` tinyint(1) DEFAULT '3',
  `edit_positions` tinyint(1) DEFAULT '3',
  `delete_positions` tinyint(1) DEFAULT '3',
  `edit_position_perms` tinyint(1) DEFAULT '3',
  `add_jobfairs` tinyint(1) DEFAULT '3',
  `edit_jobfairs` tinyint(1) DEFAULT '3',
  `delete_jobfairs` tinyint(1) DEFAULT '3',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position_permissions
-- ----------------------------
INSERT INTO `position_permissions` VALUES ('38', '21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2014-02-02 13:35:46', '2014-02-02 13:35:46');
INSERT INTO `position_permissions` VALUES ('39', '22', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, '3', '2014-02-02 13:38:10', '2014-02-02 13:38:10');
INSERT INTO `position_permissions` VALUES ('40', '23', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-03-14 09:09:25', '2014-03-14 09:09:25');
INSERT INTO `position_permissions` VALUES ('41', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null);
INSERT INTO `position_permissions` VALUES ('47', '25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '2014-04-28 06:30:49', '2014-05-06 05:21:29');
INSERT INTO `position_permissions` VALUES ('48', '26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-05 05:29:29', '2014-05-05 05:29:29');
INSERT INTO `position_permissions` VALUES ('49', '27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-05 06:50:22', '2014-05-05 06:50:22');
INSERT INTO `position_permissions` VALUES ('50', '28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-06 11:02:07', '2014-05-06 11:02:07');

-- ----------------------------
-- Table structure for `positions`
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of positions
-- ----------------------------
INSERT INTO `positions` VALUES ('15', 'Line Manager', 'Manager', 'Employee\'s Line Manager', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null);
INSERT INTO `positions` VALUES ('16', 'system', 'administrator', 'system administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null);
INSERT INTO `positions` VALUES ('21', 'Administrator', 'Logistics', 'Logistics Administrator', '2014-02-02 13:35:46', '2014-05-06 12:17:24', '{\"view_pending_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_clients\":1,\"add_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"view_projects\":1,\"add_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"view_adverts\":1,\"add_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1,\"view_all_applicants\":0,\"view_approved_applicants\":0,\"view_client_statistics\":0,\"view_recruiter_statistics\":0}');
INSERT INTO `positions` VALUES ('25', 'Driver', 'Administration', 'Management Administrator', '2014-04-28 06:30:49', '2014-05-13 12:52:33', '{\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('26', 'Interviewer', 'Logistics', 'Logistics Interviewer', '2014-05-05 05:29:29', '2014-05-06 11:38:58', '{\"view_all_applicants\":1,\"view_projects\":1,\"add_jobfairs\":1,\"view_pending_applicants\":0,\"view_approved_applicants\":0,\"view_rejected_appllcants\":0,\"view_declined_applicants\":0,\"view_awaiting_submission\":0,\"view_refused_applicants\":0,\"administer_applicants\":0,\"administer_applicant_applications\":0,\"claim_applicants\":0,\"re_assign_applicants\":0,\"view_48h_arrivals\":0,\"view_all_arrivals\":0,\"add_clients\":0,\"view_clients\":0,\"edit_clients\":0,\"delete_clients\":0,\"view_client_statistics\":0,\"administer_client_contracts\":0,\"administer_client_employees\":0,\"administer_client_invoices\":0,\"administer_client_proposals\":0,\"view_recruiters\":0,\"add_recruiters\":0,\"edit_recruiters\":0,\"delete_recruiters\":0,\"view_recruiter_statistics\":0,\"administer_recruiter_contracts\":0,\"administer_recruiter_employees\":0,\"add_projects\":0,\"edit_projects\":0,\"delete_projects\":0,\"add_adverts\":0,\"view_adverts\":0,\"edit_adverts\":0,\"delete_adverts\":0,\"view_jobfairs\":0,\"edit_jobfairs\":0,\"delete_jobfairs\":0}');
INSERT INTO `positions` VALUES ('32', 'Doctor11', 'Logistics', 'Administration Driver', '2014-05-06 11:41:44', '2014-05-12 04:15:57', '{\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('34', 'Interviewer', 'deparment3', 'Recruitment11 Administrator', '2014-05-06 14:15:02', '2014-05-09 12:44:28', '{\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('39', 'Doctor', 'Finance - Accounting', 'Finance - Accounting Doctor', '2014-05-10 05:25:03', '2014-05-10 05:25:03', '{\"view_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('40', 'Interviewer', 'Administration', 'Administration Interviewer', '2014-05-10 06:53:43', '2014-05-10 06:53:43', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('42', 'Interviewer', 'Recruitment11', 'Recruitment11 Interviewer', '2014-05-10 09:42:44', '2014-05-10 09:42:44', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('43', 'Interviewer', 'Administration', 'Administration Interviewer', '2014-05-10 10:06:13', '2014-05-10 10:06:13', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('45', 'Interviewer', 'Recruitment1992', 'Recruitment1992 Interviewer', '2014-05-12 10:02:17', '2014-05-12 10:02:17', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('46', 'Driver', 'Administration', '111111111111 i have a dream,', '2014-05-12 10:03:33', '2014-05-13 04:32:14', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('47', 'Doctor555', 'Recruitment', 'Recruitment Doctor555', '2014-05-12 10:16:06', '2014-05-12 10:16:06', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('48', 'truong hop xóa role  khj da  add  role trong position', 'test', 'test truong hop xóa role  khj da  add  role trong position', '2014-05-12 11:01:15', '2014-05-12 11:01:15', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('50', 'Interviewer', 'Recruitment', 'Recruitment Interviewer', '2014-05-13 04:31:21', '2014-05-13 04:31:21', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('51', 'RMP Administrator', 'Sales', 'Sales RMP Administrator', '2014-05-13 06:01:51', '2014-05-13 06:01:51', '{\"view_recruiment_settings\":1,\"update_recruiment_settings\":1,\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');
INSERT INTO `positions` VALUES ('52', 'teacher07', 'teacher', 'teacher teacher07', '2014-05-13 11:55:46', '2014-05-13 11:55:46', '{\"view_all_applicants\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_appllcants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"administer_applicants\":1,\"administer_applicant_applications\":1,\"claim_applicants\":1,\"re_assign_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_clients\":1,\"view_clients\":1,\"edit_clients\":1,\"delete_clients\":1,\"view_client_statistics\":1,\"administer_client_contracts\":1,\"administer_client_employees\":1,\"administer_client_invoices\":1,\"administer_client_proposals\":1,\"view_recruiters\":1,\"add_recruiters\":1,\"edit_recruiters\":1,\"delete_recruiters\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contracts\":1,\"administer_recruiter_employees\":1,\"add_projects\":1,\"view_projects\":1,\"edit_projects\":1,\"delete_projects\":1,\"add_adverts\":1,\"view_adverts\":1,\"edit_adverts\":1,\"delete_adverts\":1,\"view_jobfairs\":1,\"add_jobfairs\":1,\"edit_jobfairs\":1,\"delete_jobfairs\":1}');

-- ----------------------------
-- Table structure for `profile_notes`
-- ----------------------------
DROP TABLE IF EXISTS `profile_notes`;
CREATE TABLE `profile_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `note` text,
  `submitted_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile_notes
-- ----------------------------
INSERT INTO `profile_notes` VALUES ('4', '227', 'Information Management Lead Teacher', null, 'Was asked to stay in ALZ till he receives further instructions. Went missing, resulting in missing SIS training. Has been spoken to.', 'Mohammed Ahmed', '2013-09-29 11:56:56', '2013-09-29 11:56:56');
INSERT INTO `profile_notes` VALUES ('5', '227', 'Information Management Lead Teacher', null, 'Instructed to stay in the ALZ to complete the induction process. Against instructions, he disappeared and therefore missed SIS training. Another session had to be scheduled for his sake.', 'Mohammed Ahmed', '2013-09-29 14:18:40', '2013-09-29 14:18:40');
INSERT INTO `profile_notes` VALUES ('6', '451', 'Information Management Lead Teacher', null, 'Instructed to stay in the ALZ to complete the induction process. Against instructions, he disappeared and therefore missed SIS training. Another session had to be scheduled for his sake.\r\n\r\nHR called his phone to inform him of this and that he should repo', 'Mohammed Ahmed', '2013-09-29 14:19:49', '2013-09-29 14:19:49');
INSERT INTO `profile_notes` VALUES ('7', '227', 'Information Management Lead Teacher', null, 'Instructed to stay in the ALZ to complete the induction process. Against instructions, he disappeared and therefore missed SIS training. Another session had to be scheduled for his sake.', 'Mohammed Ahmed', '2013-09-29 14:20:15', '2013-09-29 14:20:15');
INSERT INTO `profile_notes` VALUES ('8', '454', 'Information Management Lead Teacher', null, 'Instructed to stay in the ALZ to complete the induction process. Against instructions, he disappeared and therefore missed SIS training. Another session had to be scheduled for his sake.', 'Mohammed Ahmed', '2013-09-29 14:20:33', '2013-09-29 14:20:33');
INSERT INTO `profile_notes` VALUES ('9', '454', 'Information Management Lead Teacher', null, 'Keith was called on his phone he did not answer.\r\n\r\nToday, upon inquiring about yesterday\'s situation, he became very agitated and was becoming angry. I brought him into the office to tell him I will assign him to another session, instead he walked out of', 'Mohammed Ahmed', '2013-09-30 09:39:11', '2013-09-30 09:39:11');
INSERT INTO `profile_notes` VALUES ('10', '227', 'Information Management Lead Teacher', null, '.. the office. He came back few minutes later suggesting I did not tell him to stay in the ALZ yesterday and that apparently I should not be \"giving him c**p\". Once again he was very confrontational and once again walked out of the office', 'Mohammed Ahmed', '2013-09-30 09:41:41', '2013-09-30 09:41:41');
INSERT INTO `profile_notes` VALUES ('11', '469', 'Information Management Lead Teacher', null, 'First day back on campus. Asked to report to HR Office at 1pm just like all other teachers. Arrived 1.30 pm and his excuse was \"Sorry I got held up at lunch. Not acceptable from a returning teacher. He did apologise but I feel this should be noted.', 'Mohammed Ahmed', '2013-10-02 14:31:26', '2013-10-02 14:31:26');
INSERT INTO `profile_notes` VALUES ('12', '411', 'Information Management Lead Teacher', null, 'Was due to attend a MANDATORY Kaplan requested meeting on 7th Oct. Missed this for no good reason. Was seen on campus 15 minutes into the meeting. Upon being questioned about his absence, no clear reason was provided.', 'Mohammed Ahmed', '2013-10-08 11:11:18', '2013-10-08 11:11:18');
INSERT INTO `profile_notes` VALUES ('13', '227', 'Information Management Lead Teacher', null, 'Missed a MANDATORY Kaplan requested meeting on 7th Oct. ', 'Mohammed Ahmed', '2013-10-08 11:11:52', '2013-10-08 11:11:52');
INSERT INTO `profile_notes` VALUES ('14', '466', 'Information Management Lead Teacher', null, 'Missed Line Manager meeting today. He came to see em and I told him the room to go to. He apologized as he apparently heard the wrong number', 'Mohammed Ahmed', '2013-10-08 13:25:19', '2013-10-08 13:25:19');
INSERT INTO `profile_notes` VALUES ('15', '96', 'Information Management Lead Teacher', null, 'Missed Line Manager meeting on 08/10/2013 as he had to pick up his son. He requested I note this down.', 'Mohammed Ahmed', '2013-10-09 15:08:35', '2013-10-09 15:08:35');
INSERT INTO `profile_notes` VALUES ('16', '273', 'Information Management Lead Teacher', null, '\"Ali Amine Cherfa has left the ELSD and his last working day is 09/10/2013\"\r\n\r\nRef Email from Majid Balharith on 24/10/2013 (14.36)', 'Mohammed Ahmed', '2013-10-24 14:40:57', '2013-10-24 14:40:57');
INSERT INTO `profile_notes` VALUES ('17', '227', 'Information Management Lead Teacher', null, 'Test note', 'Micah Angus', '2013-11-01 15:48:25', '2013-11-01 15:48:25');
INSERT INTO `profile_notes` VALUES ('18', '1', 'Information Management Lead Teacher', null, 'Very nice guy', 'Micah Angus', '2013-11-10 07:32:23', '2013-11-10 07:32:23');
INSERT INTO `profile_notes` VALUES ('19', '1', 'Information Management Lead Teacher', null, 'test note', 'Micah Angus', '2013-11-21 11:48:41', '2013-11-21 11:48:41');
INSERT INTO `profile_notes` VALUES ('20', '1', 'Information Management Lead Teacher', null, 'h isodufpiodsufoisdfoieur; oiweriue owiro;iwe roiwerwe', 'Micah Angus', '2013-12-02 11:53:45', '2013-12-02 11:53:45');
INSERT INTO `profile_notes` VALUES ('21', '421', 'Information Management Lead Teacher', 'praise', 'Upon thorough research it appears as though her qualifications were not legitimate and was subsequently relieved of her duties.', 'Micah Angus', '2013-12-01 08:21:48', '2013-12-03 10:21:48');
INSERT INTO `profile_notes` VALUES ('22', '421', 'Information Management Lead Teacher', 'concern', 'Upon thorough research it appears as though her qualifications were not legitimate and was subsequently relieved of her duties.', 'Micah Angus', '2013-12-02 09:28:22', '2013-12-03 10:28:22');
INSERT INTO `profile_notes` VALUES ('23', '421', 'Information Management Lead Teacher', 'concern', 'Upon thorough research it appears as though her qualifications were not legitimate and was subsequently relieved of her duties.', 'Micah Angus', '2013-12-03 10:28:22', '2013-12-03 10:28:22');
INSERT INTO `profile_notes` VALUES ('24', '3', 'Information Management Lead Teacher', 'praise', 'very good employee, helped out quite a bit', 'Micah Angus', '2013-12-03 21:36:43', '2013-12-03 21:36:43');
INSERT INTO `profile_notes` VALUES ('25', '227', 'Information Management Lead Teacher', 'praise', 'Helped out alot with the book sales and was given a small gift', 'Micah Angus', '2013-12-03 21:37:21', '2013-12-03 21:37:21');

-- ----------------------------
-- Table structure for `profiles`
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `office_no` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `client_ref_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landline` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_extention` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `marital_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medical_condition` text COLLATE utf8_unicode_ci,
  `medical_allergies` text COLLATE utf8_unicode_ci,
  `experience` float DEFAULT NULL,
  `cv_reference_name_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_name_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_position_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_position_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_confirmation_1` tinyint(4) DEFAULT '2',
  `cv_confirmation_2` tinyint(4) DEFAULT '2',
  `cv_reference_contact_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_contact_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_email1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_email2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_company_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_reference_company_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_reference_contact_1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_reference_contact_2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meets_requirements` tinyint(4) DEFAULT NULL,
  `hiring_id` int(11) DEFAULT NULL,
  `applicant_submitted` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hiring_status` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  `client_assigned_to` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `arrived_in_country` tinyint(1) DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resignation_reasons` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applicant_hired` int(11) DEFAULT NULL,
  `good_candidate` smallint(6) DEFAULT '0',
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_number` (`user_id`),
  KEY `telephone_number` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO `profiles` VALUES ('2', '686', null, 'TruyenLuong', null, null, '2', '1', 'CLNT140001', 'General Manager', null, '05444806211', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, '2014-01-15 16:14:18', '2014-01-15 16:14:18', null, '', null, '0', '0');
INSERT INTO `profiles` VALUES ('29', '726', null, null, null, null, '2', '1', 'CLNT140001', 'Consultant', null, '08111441684', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', null, null, null, null, null, '2014-01-15 16:14:18', '2014-01-15 16:14:18', null, '', null, '0', '0');
INSERT INTO `profiles` VALUES ('152', '725', null, '/uploads/employees/725/12052014/400x400_crop/3_4_2.jpg', '/uploads/employees/725/12052014/30x30_crop/3_4_2.jpg', null, '2', null, null, null, null, '0987556778', null, null, '0987556778', '09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 16:45:24', '2014-05-12 04:30:35', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('154', '852', null, null, null, null, null, '2', null, 'teacher', null, '0995289662', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 12:58:26', '2014-05-08 12:58:26', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('155', '853', null, null, null, null, '1', null, null, 'Manager study', null, '0986779005', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 12:59:03', '2014-05-08 12:59:03', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('156', '854', null, '/uploads/applicants/854/vstAxbm0/400x400_crop/avatar4.jpg', '/uploads/applicants/854/vstAxbm0/30x30_crop/avatar4.jpg', 'DIR', '3', null, null, null, '', '451248111644', null, '', null, null, 'Australian', '', '1998-05-04', 'Married', '145 Nguyen Luong Bang', 'Da Nang', 'Da Nang', '05111', 'Vietnam', null, 'I gruate in Duy Tan university', 'I gruate in Duy Tan university', '1', '1', '1', 'manager', 'sTAFF', null, null, '012345678888', '', null, null, 'HTO', 'FTO', 'nttai@gmail.com', '', null, null, null, null, '1', '0', 'CLNT14000001', 'Luong  Duc', '725', '2', '2014-05-08 13:01:59', '2014-05-09 09:25:42', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('157', '855', null, '/uploads/applicants/855/1VAT3kjM/400x400_crop/avatar5.jpg', '/uploads/applicants/855/1VAT3kjM/30x30_crop/avatar5.jpg', 'DIR', '4', null, null, null, '', '054448062111', null, '', null, null, 'American', '', '1987-05-12', 'Domestic Partnership', '', '', '', '', null, null, '', '', '2', 'Test', '', 'Test', '', null, null, 'Test', '', null, null, 'Test', '', 'Test@test.com', '', null, null, null, null, '1', '1', null, 'Luong  Duc', '725', '2', '2014-05-08 13:03:38', '2014-05-17 14:08:38', 'Luong Duc', null, null, '1', '0');
INSERT INTO `profiles` VALUES ('158', '856', null, '/uploads/applicants/856/WHnLlPID/400x400_crop/avatar6.jpg', '/uploads/applicants/856/WHnLlPID/30x30_crop/avatar6.jpg', 'DIR', '5', null, null, null, '', '0983457791', null, '', null, null, 'Venezuelan', '', '1988-03-21', 'Domestic Partnership', '', '', '', '', null, null, '', '', '3', 'a', '', 'aaaaaaaaaaaaaaa', '', null, null, 'aaaaaaaa', '', null, null, 'QCX', '', 'aaaaaaa', '', null, null, null, null, '1', '0', null, 'Ho Tuan', '859', '2', '2014-05-08 13:45:07', '2014-05-13 06:35:04', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('159', '857', null, '/uploads/employees/857/09052014/400x400_crop/3_4_9.jpg', '/uploads/employees/857/09052014/30x30_crop/3_4_9.jpg', null, '6', null, null, null, null, '0917234567', null, null, '0917234567', '09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 13:48:27', '2014-05-09 12:57:02', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('160', '858', null, '/uploads/employees/858/08052014/400x400_crop/3_4_4.jpg', '/uploads/employees/858/08052014/30x30_crop/3_4_4.jpg', null, '7', null, null, null, null, '0122447403', null, null, '0122447403', '08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 13:50:29', '2014-05-08 13:54:48', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('161', '859', null, '/uploads/employees/859/08052014/400x400_crop/3_4_7.jpg', '/uploads/employees/859/08052014/30x30_crop/3_4_7.jpg', null, '8', null, null, null, null, '0984567811', null, null, '0984567811', '08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 13:51:49', '2014-05-08 13:51:49', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('162', '860', null, '/uploads/employees/860/08052014/400x400_crop/3_4_10.jpg', '/uploads/employees/860/08052014/30x30_crop/3_4_10.jpg', null, '1', null, null, null, null, '0912345566', null, null, '0912345566', '08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 13:53:25', '2014-05-08 13:53:25', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('163', '861', null, '/uploads/employees/861/08052014/400x400_crop/3_4_6.jpg', '/uploads/employees/861/08052014/30x30_crop/3_4_6.jpg', null, '2', null, null, null, null, '0125678909', null, null, '0125678909', '08', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 13:54:23', '2014-05-08 13:54:23', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('164', '862', null, '/uploads/applicants/862/WjtnGcbI/400x400_crop/3_4_1.jpg', '/uploads/applicants/862/WjtnGcbI/30x30_crop/3_4_1.jpg', 'DIR', '3', null, null, null, '11', '11', null, '11', null, null, 'Albanian', '', '1988-05-03', 'Single', '', '', '', '', null, null, '', '', '2', 'sfr', '', 'sfr', '', null, null, 'sfr', '', null, null, 'sfr', '', 'sfr-team@gmail.com', '', null, null, null, null, '1', '0', null, 'Tran  Duc', '880', '2', '2014-05-08 14:04:30', '2014-05-13 09:11:24', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('165', '863', null, '/uploads/applicants/863/cGsTKnM1/400x400_crop/3_4_7.jpg', '/uploads/applicants/863/cGsTKnM1/30x30_crop/3_4_7.jpg', 'DIR', '4', null, null, null, '11', '11', null, '11', null, null, 'Bangladeshi', '', '1999-05-01', 'Married', '1', 'Da Nang', 'Da Nang', '09123', 'Afghanistan', null, 'i can test, i can test', 'i can test, i can test', '1', '1', '1', '1', '1', null, null, '091234567', '0988551233', null, null, 'SPT company', 'SFR 2014', 'tvthai@gmail.com', 'Luong@email.com', null, null, null, null, '1', '0', 'CLNT14000001', 'Tran Lam', '860', '2', '2014-05-08 14:06:42', '2014-05-09 09:25:41', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('166', '864', null, '/uploads/applicants/864/ZgeeqgQ1/400x400_crop/3_4_8.jpg', '/uploads/applicants/864/ZgeeqgQ1/30x30_crop/3_4_8.jpg', 'DIR', '5', null, null, null, '11', '11', null, '11', null, null, 'Angolan', '', '1996-05-01', 'Divorced', '', '', '', '', null, null, '', '', '3', 'aaaaaaaa', '', 'a', '', null, null, 'aaaaaa', '', null, null, 'aaaa', '', 'aaaaaaa', '', null, null, null, null, '1', '0', null, 'Tran  Duc', '880', '1', '2014-05-08 14:08:11', '2014-05-10 15:10:37', 'Luong Duc', null, '0', '0', '0');
INSERT INTO `profiles` VALUES ('167', '865', null, '/uploads/applicants/865/oiUwBBpq/400x400_crop/3_4_9.jpg', '/uploads/applicants/865/oiUwBBpq/30x30_crop/3_4_9.jpg', 'DIR', '6', null, null, null, '08', '01224478099', null, 'nnguyenmai', '4444441', '1', 'Bahraini', '', '1998-05-01', 'Cohabiting', '1', 'Da Nang', 'Da Nang', '09123', null, null, '', '', '11', '1', '', '1', '', null, null, '1', '', null, null, '111', '', '1', '', null, null, null, null, '1', '0', null, 'Tran Lam', '860', '2', '2014-05-08 14:09:40', '2014-05-10 07:52:48', 'Luong Duc', null, '0', '0', '0');
INSERT INTO `profiles` VALUES ('168', '866', null, '/uploads/applicants/866/SlJ95KUl/400x400_crop/3_4_4.jpg', '/uploads/applicants/866/SlJ95KUl/30x30_crop/3_4_4.jpg', 'DIR', '6', null, null, null, '08', '0912345676', null, 'nguyentam', null, null, 'Austrian', '', '1999-05-01', 'Domestic Partnership', '', '', '', '', null, null, '', '', '3', 'aaaaaaa', '', 'aaaaaaa', '', null, null, 'aaaaa', '', null, null, 'aaaaaaaaaaaaa', '', '', '', null, null, null, null, '1', '1', null, null, null, '2', '2014-05-08 14:13:33', '2014-05-12 11:29:08', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('169', '867', null, '/uploads/applicants/867/lirxM78V/400x400_crop/3_4_4.jpg', '/uploads/applicants/867/lirxM78V/30x30_crop/3_4_4.jpg', 'DIR', '6', null, null, null, '11', '0678822333', null, 'tothitien', null, null, 'Azerbaijani', '', '1994-05-06', 'Married', '', '', '', '', null, null, '', '', '1', '1', '', '1', '', null, null, '1', '', null, null, '111', '', '1', '', null, null, null, null, '1', '0', null, null, null, '2', '2014-05-08 14:15:36', '2014-05-10 14:26:55', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('170', '868', null, '/uploads/applicants/868/XcZFzExn/400x400_crop/3_4_2.jpg', '/uploads/applicants/868/XcZFzExn/30x30_crop/3_4_2.jpg', 'DIR', '4', null, null, null, '08', '01456788567', null, 'vo chi tam', null, null, 'Bahamian', null, '1995-05-01', 'Single', 'Da Nang', 'Da Nang', 'Da Nang', '05111', 'Vietnam', null, 'Da Nang', 'Da Nang', '1', '1', '1', 'manager', 'staff', null, null, '0923456788', '0989994567', null, null, 'HTO', '1', 'nvtai@gmail.com', 'nvtai130992@gmail.com', null, null, null, null, '1', '5', null, 'Phan11 Dung11', '882', '2', '2014-05-08 14:17:22', '2014-05-13 07:18:13', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('171', '869', null, null, null, null, null, '8', null, 'Unkown', null, '123123123123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-08 14:17:39', '2014-05-08 14:17:39', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('172', '870', null, '/uploads/applicants/870/mL4EMIwj/400x400_crop/3_4_8.jpg', '/uploads/applicants/870/mL4EMIwj/30x30_crop/3_4_8.jpg', 'DIR', '6', null, null, null, '65', '1695759995', null, '', null, null, 'Belarusian', 'viet nam', '2014-05-28', 'Divorced', '', '', '', '', null, null, '', '', '1', '1', '', '1', '', null, null, '1', '', null, null, '1', '', '1', '', null, null, null, null, '1', '0', null, null, null, '2', '2014-05-08 14:43:02', '2014-05-10 06:22:23', 'Vo Xuyen', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('173', '871', null, '/uploads/applicants/871/lMYY8N9Z/400x400_crop/3_4_3.jpg', '/uploads/applicants/871/lMYY8N9Z/30x30_crop/3_4_3.jpg', 'DIR', '2', null, null, null, '08', '0988715588', null, 'tran hai', null, null, 'Bangladeshi', '', '1988-05-04', 'Single', '', '', '', '', null, null, '', '', '1', '1', '', '1', '', null, null, '1', '', null, null, '11', '', '1', '', null, null, null, null, '1', '0', null, 'Phan Dung', '882', '2', '2014-05-08 14:43:37', '2014-05-10 05:46:01', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('174', '872', null, '/uploads/applicants/872/TvdsEwfK/400x400_crop/3_4_9.jpg', '/uploads/applicants/872/TvdsEwfK/30x30_crop/3_4_9.jpg', 'DIR', '2', null, null, null, '09', 'haa', null, 'ly van', null, null, 'Azerbaijani', null, '2014-05-01', 'Widowed', '111', '1', '1', '1', 'Barbados', null, '', '', '1', '1', '', '1', '', null, null, '1', '', null, null, '11', '', '1', '', null, null, null, null, '1', '1', 'CLNT14000001', 'Tran Lam', '860', '2', '2014-05-08 14:48:41', '2014-05-10 12:32:30', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('175', '873', null, '/uploads/applicants/873/xRSfAgHz/400x400_crop/3_4_2.jpg', '/uploads/applicants/873/xRSfAgHz/30x30_crop/3_4_2.jpg', 'DIR', '2', null, null, null, '1', '05444806211', null, '', null, null, 'Belizean', 'tieng viet, tieng anh ', '2014-05-01', 'Widowed', '', '', '', '', null, null, '', '', '1', '1', '', '1', '', null, null, '1', '', null, null, '11', '', '1', '', null, null, null, null, '1', '0', null, 'Tran  Duc', '880', '2', '2014-05-09 04:16:09', '2014-05-13 06:30:51', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('176', '874', null, null, null, 'DIR', null, '3', null, null, '08', '0905123456', null, 'tien', null, null, 'Afghan', '', '1992-05-13', 'Single', '', '', '', '', null, null, '', '', '1', '1', '', 'stafff', '', null, null, '0912345667', '', null, null, 'SFT', '', 'tien123@gmail.com', '', null, null, null, null, '1', '1', 'CLNT14000001', 'Nguyen Phuoc', '883', '2', '2014-05-09 04:16:31', '2014-05-13 07:24:54', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('177', '875', null, '/uploads/applicants/875/pvXVrmGW/400x400_crop/3_4_4.jpg', '/uploads/applicants/875/pvXVrmGW/30x30_crop/3_4_4.jpg', 'DIR', '3', null, null, null, '11', '0988756433', null, 'hai tien', null, null, 'Bahraini', 'Viet Nam', '2014-05-01', 'Single', '11', 'Da Nang', 'Da Nang', '05111', 'Vietnam', null, 'Person in here is very good, friendly,  kind', 'Person in here is very good, friendly,  kind', '1', '1', '', 'Manager', '', null, null, '0913456787', '', null, null, 'HTO', '', 'mai@gmail.com', '', null, null, null, null, '1', '0', null, 'Tran Lam', '860', '2', '2014-05-09 04:21:16', '2014-05-13 12:12:40', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('178', '876', null, null, null, 'DIR', '3', null, null, null, '09', '09233456667', null, 'luong tran tien', null, null, 'Algerian', null, '1970-01-01', 'Domestic Partnership', '', '', '', '', null, null, '', '', '1', '1', '1', '1', '1', '2', '2', '1', '1', null, null, '1', '1', '1', '1', null, null, null, null, '1', '5', null, 'Phan11 Dung11', '882', '2', '2014-05-09 04:58:58', '2014-05-10 05:51:26', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('179', '877', null, '/uploads/applicants/877/VUswq1UP/400x400_crop/3_4_10.jpg', '/uploads/applicants/877/VUswq1UP/30x30_crop/3_4_10.jpg', 'DIR', '3', null, null, null, '0811', '0912345671', null, 'tvlam1@gmail.com', null, null, 'Bahamian', null, '2014-05-01', 'Cohabiting', '1', '1', '1', '1', 'Afghanistan', null, '1', '1', '1', '1', '1', '1', '1', '2', '2', '1', '1', null, null, '1', '1', '1', '1', null, null, null, null, '1', '1', 'CLNT14000001', null, null, '2', '2014-05-09 05:22:03', '2014-05-13 12:35:55', null, null, null, '1', '0');
INSERT INTO `profiles` VALUES ('180', '878', null, null, null, null, null, '10', null, 'Employee of client', null, '123456789', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-09 09:43:15', '2014-05-13 06:18:21', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('181', '879', null, null, null, 'DIR', '2', null, null, null, '23', '1695759995', null, '', null, null, 'Belgian', '', '2014-05-07', 'Single', '', '', '', '', null, null, '', '', '2', '1', '1', '1', '1', null, null, '1', '1', null, null, '11', '1', '1', '1', null, null, null, null, '1', '0', null, 'Tran Lam', '860', '2', '2014-05-09 12:47:49', '2014-05-12 14:21:49', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('182', '880', null, '/uploads/employees/880/09052014/400x400_crop/3_4_8.jpg', '/uploads/employees/880/09052014/30x30_crop/3_4_8.jpg', null, '2', null, null, null, null, '054448062111', null, null, '01124594811', '09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-09 14:19:20', '2014-05-09 14:19:20', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('183', '881', null, '/uploads/employees/881/09052014/400x400_crop/3_4_5.jpg', '/uploads/employees/881/09052014/30x30_crop/3_4_5.jpg', null, '2', null, null, null, null, '05444806211', null, null, '0905289662', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-09 14:20:20', '2014-05-09 14:20:20', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('184', '882', null, '/uploads/employees/882/12052014/400x400_crop/3_4_4.jpg', '/uploads/employees/882/12052014/30x30_crop/3_4_4.jpg', null, '2', null, null, null, null, '0123445567', null, null, '0123445567', '0811', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-09 14:21:15', '2014-05-12 05:35:49', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('185', '883', null, '/uploads/employees/883/09052014/400x400_crop/3_4_1.jpg', '/uploads/employees/883/09052014/30x30_crop/3_4_1.jpg', null, '2', null, null, null, null, '0122447403', null, null, '01124594811', '05', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-09 14:22:03', '2014-05-09 14:22:03', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('186', '884', null, '/uploads/employees/884/09052014/400x400_crop/3_4_4.jpg', '/uploads/employees/884/09052014/30x30_crop/3_4_4.jpg', null, '2', null, null, null, null, '0122447403', null, null, '0122447403', '09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-09 14:23:02', '2014-05-09 14:23:02', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('187', '885', null, '/uploads/employees/885/12052014/400x400_crop/3_4_8.jpg', '/uploads/employees/885/12052014/30x30_crop/3_4_8.jpg', null, '2', null, null, null, null, '0912344678', null, null, '0912344678', '09', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-09 14:23:57', '2014-05-12 04:29:49', 'Luong Duc', null, null, '0', '0');
INSERT INTO `profiles` VALUES ('188', '886', null, null, null, null, null, '11', null, 'Sales', null, '0912345678', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-10 06:47:33', '2014-05-10 06:47:33', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('189', '887', null, null, null, null, null, '11', null, 'Director manager it', null, '0989567732', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-10 06:48:33', '2014-05-10 06:48:33', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('190', '888', null, null, null, null, '3', null, null, 'Director', null, '09123456799', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-10 09:26:31', '2014-05-10 09:27:08', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('191', '889', null, null, null, null, '3', null, null, 'Staff', null, '09872345565', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-10 09:27:43', '2014-05-10 09:27:43', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('192', '890', null, null, null, null, '3', null, null, 'Staff', null, '0987345562', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-10 09:28:35', '2014-05-10 09:28:35', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('193', '891', null, null, null, null, '3', null, null, 'Sales', null, '0956782334', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-10 09:57:26', '2014-05-10 09:57:26', null, null, null, '0', '0');
INSERT INTO `profiles` VALUES ('194', '898', null, null, null, 'DIR', null, null, null, null, '11', '11', null, '11', null, null, 'Bangladeshi', '', '2014-05-01', 'Single', 'ddddđ', 'ddddddd', 'ddđ', '54', 'Uzbekistan', null, '', '', '3', 'ssss', 'ssssssssss', 'sss', 'sss', null, null, '2342313414', '234234', null, null, 'dddddddđ', 'sssssssssss', 's@s.com', 's@s.com', null, null, null, null, '1', '0', null, null, null, '1', '2014-05-12 04:53:18', '2014-05-13 12:04:30', 'Luong Duc', null, '1', '0', null);
INSERT INTO `profiles` VALUES ('195', '899', null, null, null, 'DIR', null, null, null, null, '11', '11', null, '11', null, null, 'Belarusian', null, '2014-05-01', 'Married', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, '2', '2014-05-12 04:55:25', '2014-05-12 04:55:25', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('196', '900', null, '/uploads/employees/900/12052014/400x400_crop/3_4_2.jpg', '/uploads/employees/900/12052014/30x30_crop/3_4_2.jpg', null, null, null, null, null, null, '1', null, null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-12 04:56:29', '2014-05-12 04:58:04', 'Luong Duc', null, null, '0', null);
INSERT INTO `profiles` VALUES ('197', '901', null, null, null, 'DIR', '2', null, null, null, '11', '11', null, '11', null, null, 'Barbadian', '', '2005-05-01', 'Single', '', '', '', '', null, null, '', '', '1', '1', '', '1', '', null, null, '1', '', null, null, '111', '', '1', '', null, null, null, null, '1', '1', null, '11 11', '893', '2', '2014-05-12 09:45:39', '2014-05-14 06:05:10', 'Luong Duc', null, null, '0', null);
INSERT INTO `profiles` VALUES ('198', '902', null, '/uploads/applicants/902/BGpH1bPc/400x400_crop/3_4_8.jpg', '/uploads/applicants/902/BGpH1bPc/30x30_crop/3_4_8.jpg', 'DIR', '2', null, null, null, '11', '11', null, '11', null, null, 'Bahraini', null, '2014-05-01', 'Single', '', '', '', '', null, null, '', '', '11', '1', '', '1', '', null, null, '1', '', null, null, '11', '', '1', '', null, null, null, null, '1', '0', null, null, null, '2', '2014-05-12 09:51:37', '2014-05-12 12:11:48', 'Luong Duc', null, null, '0', null);
INSERT INTO `profiles` VALUES ('199', '903', null, null, null, 'DIR', null, null, null, null, '11', '11', null, '11', null, null, 'Argentinean', '', '2014-05-01', 'Single', '', '', '', '', null, null, '', '', '1', '1', '', '1', '', null, null, '1', '', null, null, '1', '', '1', '', null, null, null, null, '1', '0', null, null, null, '2', '2014-05-12 13:00:18', '2014-05-12 14:29:28', 'Luong Duc', null, null, '0', null);
INSERT INTO `profiles` VALUES ('200', '904', null, null, null, null, '2', null, null, null, null, '1', null, null, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-12 13:31:24', '2014-05-12 13:31:24', 'Luong Duc', null, null, '0', null);
INSERT INTO `profiles` VALUES ('201', '905', null, null, null, null, null, '10', null, 'Qwerty', null, '1695759995', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-12 13:43:20', '2014-05-12 13:43:20', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('202', '906', null, null, null, 'DIR', '2', null, null, null, '11', '11', null, '11', null, null, 'Afghan', null, '2014-05-01', 'Single', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, 'Nguyen Phuoc', '883', '2', '2014-05-13 06:25:44', '2014-05-13 06:25:44', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('204', '908', null, null, null, 'DIR', '2', null, null, null, '1', '0912345678', null, 'nguyen ngoc mai', null, null, 'Angolan', null, '2014-05-01', 'Single', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, '2', '2014-05-13 07:28:07', '2014-05-13 07:28:07', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('206', '910', null, null, null, null, null, '10', null, 'staff', null, '0905289662', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-13 07:53:49', '2014-05-13 10:06:31', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('210', '914', null, null, null, null, null, '10', null, 'ha', null, '0905289662', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-13 08:07:30', '2014-05-13 09:12:12', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('211', '915', null, null, null, null, null, '10', null, 'Employee of client', null, '1695759995', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-13 09:28:00', '2014-05-13 09:28:00', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('213', '917', null, null, null, null, null, '10', null, 'q', null, 'qq', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-13 09:55:18', '2014-05-13 09:55:18', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('214', '918', null, null, null, null, null, '10', null, 'gfg11', null, 'gg11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-13 09:55:47', '2014-05-13 09:56:03', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('217', '921', null, null, null, null, '9', null, null, 'cntt', null, '900789090', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-13 11:07:07', '2014-05-13 11:07:07', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('218', '922', null, null, null, null, '1', null, null, 'd', null, '33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2014-05-13 11:31:51', '2014-05-13 11:31:51', null, null, null, '0', null);
INSERT INTO `profiles` VALUES ('219', '923', null, null, null, 'DIR', null, null, null, null, '84', '3423423434', null, '', null, null, 'Austrian', '', '1995-05-02', 'Single', 'sss', 'sssssssssssssss', 'ssssssssssssssss', '343', 'Guinea', null, '', '', null, 'ssssssss', 'sd', 'ssssssssss', 'sds', null, null, '32423432', '3333333', null, null, 'sssssssssss', '33333333333333asđ', 'vidu1@gmail.com', 'vidu1@gmail.com', null, null, null, null, '1', '0', null, 'Tran Lam', '860', '2', '2014-05-13 12:45:17', '2014-05-13 12:54:09', 'Luong Duc', null, null, '0', null);
INSERT INTO `profiles` VALUES ('220', '924', null, '/uploads/applicants/924/ZjyADK6T/400x400_crop/test1.jpg', '/uploads/applicants/924/ZjyADK6T/30x30_crop/test1.jpg', 'DIR', null, null, null, null, '84', '051102555', null, '', null, null, 'Vietnamese', '', '1990-05-08', 'Single', 'ddddd', 'dddddddddddddd', 'd', '43', 'Vietnam', null, '', '', null, 'd', 'ssssssssss', 'd', '3333', null, null, 'd', '3333', null, null, 'cntt', 'sss', 'd@s.com', 'd@s.com', null, null, null, null, '0', '0', null, null, null, '2', '2014-05-14 04:18:35', '2014-05-14 04:25:14', 'Luong Duc', null, null, '0', null);
INSERT INTO `profiles` VALUES ('221', '925', null, '/uploads/applicants/925/XvIZwiAD/400x400_crop/Portrait_Gandhi.jpg', '/uploads/applicants/925/XvIZwiAD/30x30_crop/Portrait_Gandhi.jpg', 'DIR', null, null, null, null, '84', '0965465465', null, '', null, null, 'Vietnamese', '', '1988-05-10', 'Single', 'dđ', 'ddddddddddd', 'dddđ', '233', 'Belize', null, 'd', 'dddd', '1', 'dddddđ', 'dddddd', 'ddđ', '222', null, null, '33', '222222', null, null, 'ddd', 'ddđ', '33333@s.com', '33333@s.com', null, null, null, null, '1', '0', null, 'Tran Lam', '860', '1', '2014-05-15 04:13:54', '2014-05-15 04:39:46', 'Luong Duc', null, '1', '0', null);
INSERT INTO `profiles` VALUES ('222', '930', null, '', '', null, '1', null, null, null, '34', '234234234', null, 'ssssssssss', null, null, 'Bahraini', '', '1997-05-06', 'Married', 'ssssssssss', 'sssssssssssssssss', 's', '3333333', 'Azerbaijan', null, 's', 'sssssssssss', null, 'ssssss', '333', 'sssssssss', '333333333', null, null, '3333333', '33333', null, null, 'sss', '33333', '33333@s.com', '33333@s.com', null, null, null, null, '1', '0', null, null, null, '1', '2014-05-16 05:09:44', '2014-05-16 08:00:34', 'Tran  Vui', null, '1', '0', null);
INSERT INTO `profiles` VALUES ('223', '931', null, '', '', null, '1', null, null, null, '2', '222222', null, '', null, null, 'Angolan', null, '1999-05-11', 'Single', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', null, null, null, '2', '2014-05-16 05:18:32', '2014-05-16 05:18:32', null, null, null, '0', null);

-- ----------------------------
-- Table structure for `project_requirements`
-- ----------------------------
DROP TABLE IF EXISTS `project_requirements`;
CREATE TABLE `project_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `male` tinyint(1) DEFAULT NULL,
  `female` tinyint(1) DEFAULT NULL,
  `native` tinyint(1) DEFAULT NULL,
  `non_native` tinyint(1) DEFAULT NULL,
  `ba` tinyint(1) DEFAULT NULL,
  `ma` tinyint(1) DEFAULT NULL,
  `phd` tinyint(1) DEFAULT NULL,
  `ed_related` tinyint(1) DEFAULT NULL,
  `not_ed_related` tinyint(1) DEFAULT NULL,
  `celta` tinyint(1) DEFAULT NULL,
  `tefl` tinyint(1) DEFAULT NULL,
  `online_tefl` tinyint(1) DEFAULT NULL,
  `experience` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of project_requirements
-- ----------------------------
INSERT INTO `project_requirements` VALUES ('9', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, '2014-01-16 10:10:05', '2014-01-16 10:10:05');

-- ----------------------------
-- Table structure for `qualifications`
-- ----------------------------
DROP TABLE IF EXISTS `qualifications`;
CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qualification` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `qualification` (`qualification`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qualifications
-- ----------------------------
INSERT INTO `qualifications` VALUES ('1', 'BA', 'qual');
INSERT INTO `qualifications` VALUES ('3', 'MA', 'qual');
INSERT INTO `qualifications` VALUES ('5', 'PHD', 'qual');
INSERT INTO `qualifications` VALUES ('9', 'BSc', 'qual');
INSERT INTO `qualifications` VALUES ('10', 'MSc', 'qual');
INSERT INTO `qualifications` VALUES ('16', 'CELTA', 'cert');
INSERT INTO `qualifications` VALUES ('17', 'TEFL / TESOL', 'cert');
INSERT INTO `qualifications` VALUES ('18', 'Trinity', 'cert');
INSERT INTO `qualifications` VALUES ('14', 'LLB', 'qual');
INSERT INTO `qualifications` VALUES ('15', 'BBA', 'qual');
INSERT INTO `qualifications` VALUES ('11', 'BEd', 'qual');
INSERT INTO `qualifications` VALUES ('12', 'BMA', 'qual');

-- ----------------------------
-- Table structure for `recruiter_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `recruiter_statistics`;
CREATE TABLE `recruiter_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `number_recruiters` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recruiter_statistics
-- ----------------------------
INSERT INTO `recruiter_statistics` VALUES ('1', '2014', '35', '2014-04-28 08:03:36', '2014-05-13 11:05:31');

-- ----------------------------
-- Table structure for `recruiters`
-- ----------------------------
DROP TABLE IF EXISTS `recruiters`;
CREATE TABLE `recruiters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recruiter_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `recruiter_ref_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sector` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `recruiter_website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `contact_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_office` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_extention` int(8) DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_position` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recruiters
-- ----------------------------
INSERT INTO `recruiters` VALUES ('1', '111A Recruiter', 'REC140000027', '111ARecruiter', '111This is recruiter description ....', 'IT', '', '11175 Nguyen Luong Bang', 'Luan', '841695759995', '1', '222', 'aemail@gmail.com', '', '2014-05-08 13:17:26', '2014-05-10 05:34:23');
INSERT INTO `recruiters` VALUES ('2', 'SEDEZ', 'REC140000028', 'Sedez', 'Recruiter Description:', 'Construction', 'WWW.SEDEZ.COM', 'Da Nang', 'nguyen ngoc nhu mai', '0988858049', '51', '11', 'nnnmai@gmail.com', 'Staff', '2014-05-09 13:05:00', '2014-05-10 06:19:08');
INSERT INTO `recruiters` VALUES ('3', 'TRAPHACO', 'REC140000029', 'TPC', 'Recruiter Description: is compay  about drugs', 'Construction', 'WWW.TRAPHOCO.COM', 'Ngo chi dieu Da Nang', 'Nguyen My nhu kima', '097790890', '097790890', '5', 'ntmkim@gmail.com', 'Staff', '2014-05-10 06:41:11', '2014-05-12 13:37:46');
INSERT INTO `recruiters` VALUES ('4', 'Kim Phung company', 'REC140000030', 'Kim phung', 'Recruiter Description: COMPANY active with about cosmetics', 'Healthcare', 'http://www.myphamkimphung.net/', 'Ho Hoang Kiem, Ha Noi', 'Nguyen Thanh Luan', '0912345677', '0912345677', '9', 'nttluna@gmail.com', 'staff', '2014-05-10 07:02:25', '2014-05-10 07:05:36');
INSERT INTO `recruiters` VALUES ('5', 'Company  Anh Duc contruction', 'REC140000031', 'anh duc', 'Company  Anh Duc contruction', 'Construction', 'www.anhduc.com', 'Da Nang', 'Nguyen Anh Duc', '09123456778', '09123456778', '5', 'naduc@gmail.com', 'Staff', '2014-05-10 07:04:57', '2014-05-10 07:05:14');
INSERT INTO `recruiters` VALUES ('6', 'Nam Long Construction', 'REC140000032', 'Nam Long', 'Nam Long Construction', 'Construction', 'www.namlong.com', 'G3, Binh Minh District, Ward 8, Vung Tau City.', 'nguyen nhu my', '0978990224', '0978990224', '1', 'nnmy@yahoo.com', 'Managerment ', '2014-05-10 07:09:05', '2014-05-10 07:09:05');
INSERT INTO `recruiters` VALUES ('7', 'Dat phuong company', 'REC140000033', 'Dat Phuong', 'Dat Phuong Joint Stock Company was established March 12, 2002 formerly known as JSC construction and transportation Dat Phuong, far Dat Phuong Joint Stock Company has confirmed the power and prestige in sector investment and construction of transportation projects, hydro-electricity in the country.', 'Construction', 'www.datphuong.com', 'Ho hai , Tp Ho Chi Minh', 'Nguyen thanh dat', '0989010677', '0989010677', '8', 'ntdat@gmail.com', 'Director', '2014-05-10 07:12:19', '2014-05-10 07:12:19');
INSERT INTO `recruiters` VALUES ('8', 'company Khanh Hoa', 'REC140000034', 'khanh Hoa', 'company Khanh Hoa', 'Construction', 'ww.khanhhoa.com', 'Khanh Hoa', 'Nguyen Hong Thuan', '0923456788', '0923456788', '8', 'nhthuan@gmail.com', 'Managerment ', '2014-05-10 07:15:01', '2014-05-10 07:15:01');
INSERT INTO `recruiters` VALUES ('9', 'CONG TY NUOC MIA SACH', 'REC140000035', 'T', 'CONG TY NUOC MIA SACH', 'Healthcare', 'GOOGLE.COM', 'DA NANG', 'TruyenLuong', '3423434', '4343', '44444444', 'huymanh102@gmail.com', '', '2014-05-13 11:05:31', '2014-05-13 11:05:31');

-- ----------------------------
-- Table structure for `recruitment_application`
-- ----------------------------
DROP TABLE IF EXISTS `recruitment_application`;
CREATE TABLE `recruitment_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `advert_id` int(11) DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `recruiter_interviewed` tinyint(1) DEFAULT NULL,
  `recruiter_interviewed_date` date DEFAULT NULL,
  `recruiter_interviewer` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `application_task` tinyint(4) NOT NULL,
  `application_task_sent` tinyint(4) DEFAULT NULL,
  `application_task_recieved` tinyint(4) DEFAULT NULL,
  `application_task_recieved_date` date DEFAULT NULL,
  `application_task_success` tinyint(4) DEFAULT '3',
  `interview` tinyint(4) NOT NULL,
  `interview_scheduled` tinyint(4) DEFAULT NULL,
  `interview_date` datetime DEFAULT NULL,
  `interviewer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interview_place` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interview_complete` tinyint(1) DEFAULT '3',
  `interview_success` tinyint(4) DEFAULT NULL,
  `interview_notes` text COLLATE utf8_unicode_ci,
  `video_interview` tinyint(4) DEFAULT NULL,
  `client_approval` int(11) DEFAULT NULL,
  `date_sent_to_client` date DEFAULT NULL,
  `date_response_from_client` date DEFAULT NULL,
  `client_approved` tinyint(4) DEFAULT NULL,
  `check_references` tinyint(4) NOT NULL,
  `start_ref_check` tinyint(1) DEFAULT '2',
  `references_checked` tinyint(1) DEFAULT NULL,
  `references_ok` tinyint(4) DEFAULT NULL,
  `check_qualifications` tinyint(4) NOT NULL,
  `start_qual_check` tinyint(1) DEFAULT '2',
  `qualifications_checked` tinyint(4) DEFAULT NULL,
  `qualifications_clear` tinyint(4) DEFAULT NULL,
  `crb_check` tinyint(4) NOT NULL,
  `start_crb_check` tinyint(1) DEFAULT '2',
  `crb_check_done` tinyint(4) DEFAULT NULL,
  `crb_check_clear` tinyint(4) DEFAULT NULL,
  `send_offer` tinyint(4) NOT NULL,
  `date_of_offer` datetime DEFAULT NULL,
  `offer_sent` tinyint(4) DEFAULT NULL,
  `offer_accepted` tinyint(4) DEFAULT '3',
  `mohe_check` tinyint(4) NOT NULL,
  `start_mohe_check` tinyint(1) DEFAULT NULL,
  `mohe_done` tinyint(4) DEFAULT NULL,
  `mohe_approved` tinyint(4) DEFAULT NULL,
  `checking_stage` tinyint(1) DEFAULT NULL,
  `induction` tinyint(4) NOT NULL,
  `induction_scheduled` tinyint(4) DEFAULT NULL,
  `induction_date` datetime DEFAULT NULL,
  `induction_location` text COLLATE utf8_unicode_ci,
  `induction_complete` tinyint(1) DEFAULT '3',
  `welcome_pack_given` tinyint(4) DEFAULT NULL,
  `arrange_visa` tinyint(4) NOT NULL,
  `start_visa_process` tinyint(1) DEFAULT '2',
  `medical_complete` tinyint(4) DEFAULT NULL,
  `medical_passed` tinyint(4) DEFAULT NULL,
  `documents_with_agent` tinyint(11) DEFAULT NULL,
  `visa_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_given_to_agent` date DEFAULT NULL,
  `documents_with_embassy` tinyint(11) DEFAULT NULL,
  `date_entered_embassy` date DEFAULT NULL,
  `document_returned_to_applicant` tinyint(4) DEFAULT NULL,
  `date_returned` date DEFAULT NULL,
  `visa_issued` tinyint(4) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `arrange_flights` tinyint(4) NOT NULL,
  `applicant_available` date DEFAULT NULL,
  `flight_booked` tinyint(4) DEFAULT NULL,
  `flight_date` datetime DEFAULT NULL,
  `flight_arrival_date` datetime DEFAULT NULL,
  `flight_destination` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arrange_accomadation` tinyint(1) DEFAULT NULL,
  `accomadation_booked` tinyint(1) DEFAULT NULL,
  `accomadation_location` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suitable_for_job` tinyint(4) DEFAULT NULL,
  `application_submitted` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `meets_requirements` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_to_client` tinyint(1) DEFAULT NULL,
  `submitted_to_client` tinyint(1) DEFAULT NULL,
  `manual_client_approval` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `client_approver` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hiring_status` tinyint(1) DEFAULT '0',
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recruitment_application
-- ----------------------------
INSERT INTO `recruitment_application` VALUES ('3', '868', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '3', '2014-05-31 13:52:00', '725', 'Da nang', '3', '2', null, '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '2', '2014-05-08 14:30:59', '2014-05-08 14:30:59', '2014-05-13 07:18:13', '0', null, null, '1', null, '0', null, '5', null);
INSERT INTO `recruitment_application` VALUES ('4', '868', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', '3', '2014-05-31 13:52:00', '725', 'Da nang', '3', '2', null, '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-08 14:31:21', '2014-05-08 14:31:21', '2014-05-13 06:59:05', '0', null, null, '1', null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('6', '868', '2', '3', null, 'Project 1', '2', null, null, null, '2', null, null, null, '3', '2', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '2', '2', null, null, '2', '2', null, null, '1', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-08 14:34:13', '2014-05-08 14:34:13', '2014-05-09 09:25:41', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('8', '863', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', '2014-05-09', null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 04:19:59', '2014-05-09 04:20:00', '2014-05-09 09:25:41', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('10', '874', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '1', '2014-05-27 13:00:00', '881', 'qnam', '1', '1', 'ha', '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '0', '2014-05-09 04:38:12', '2014-05-09 04:38:12', '2014-05-13 07:24:54', '0', 'Luong Duc', null, '1', null, '1', null, '1', null);
INSERT INTO `recruitment_application` VALUES ('11', '874', '2', '3', null, 'Project 1', '2', null, null, null, '2', null, null, null, null, '2', '1', '2014-05-27 13:00:00', '881', 'qnam', '1', '1', 'ha', '2', '1', null, null, null, '1', null, null, null, '2', null, null, null, '2', null, null, null, '1', null, '3', '3', '2', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2014-05-13', '3', '2014-05-13 04:41:51', '2014-05-13 04:41:51', '                               ', '1', null, null, '0', '2014-05-09 04:38:19', '2014-05-09 04:38:19', '2014-05-13 07:24:54', '0', null, null, '1', null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('12', '874', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '1', '2014-05-27 13:00:00', '881', 'qnam', '1', '1', 'ha', '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 04:38:25', '2014-05-09 04:38:25', '2014-05-13 07:24:54', '0', null, null, '1', null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('13', '872', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '3', null, '725', null, '3', '3', '11', '2', '2', '2014-05-10', null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '1', '2014-05-09 05:54:16', '2014-05-09 05:54:16', '2014-05-10 12:32:30', '0', 'Luong Duc', null, '1', null, '1', null, '1', null);
INSERT INTO `recruitment_application` VALUES ('14', '863', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 05:59:19', '2014-05-09 05:59:19', '2014-05-09 09:25:41', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('15', '872', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '3', null, '725', null, '3', '3', '11', '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 06:00:47', '2014-05-09 06:00:47', '2014-05-10 12:33:15', '0', null, null, '1', null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('16', '872', '2', '3', null, 'Project 1', '2', null, null, null, '2', null, null, null, '3', '2', '3', null, '725', null, '3', '3', '11', '2', '1', null, null, null, '1', null, null, null, '2', null, null, null, '2', null, null, null, '1', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-09 06:08:05', '2014-05-09 06:08:05', '2014-05-09 09:25:42', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('17', '854', '2', '3', null, 'Project 1', '2', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-09 06:15:17', '2014-05-09 06:15:17', '2014-05-09 09:25:42', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('18', '854', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', '2014-05-09', null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 06:16:04', '2014-05-09 06:16:04', '2014-05-09 09:25:42', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('19', '854', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', '2014-05-09', null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 06:21:26', '2014-05-09 06:21:26', '2014-05-09 09:25:42', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('21', '863', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 06:47:12', '2014-05-09 06:47:12', '2014-05-09 09:25:42', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('34', '877', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '1', '2014-05-09 15:19:00', '725', 'ha nan                  ', '1', '1', 'hhhhhhhhhhh', '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '1', '2014-05-09 10:35:18', '2014-05-09 10:35:18', '2014-05-13 12:35:55', '1', 'Luong Duc', null, '1', null, '1', null, '1', null);
INSERT INTO `recruitment_application` VALUES ('35', '877', '2', '3', null, 'Project 1', '2', null, null, null, '1', '3', '3', null, '3', '1', '1', '2014-05-09 15:19:00', '725', 'ha nan                  ', '1', '1', 'hhhhhhhhhhh', '2', '1', null, null, null, '1', null, null, null, '1', null, null, null, '1', null, null, null, '1', null, '3', '3', '1', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '3', null, null, null, '1', null, null, '0', '2014-05-09 10:35:25', '2014-05-09 10:35:25', '2014-05-13 12:35:55', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('36', '877', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '1', '2014-05-09 15:19:00', '725', 'ha nan                  ', '1', '1', 'hhhhhhhhhhh', '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 10:44:58', '2014-05-09 10:44:58', '2014-05-13 12:35:55', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('37', '877', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '1', '2014-05-09 15:19:00', '725', 'ha nan                  ', '1', '1', 'hhhhhhhhhhh', '2', '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, '2', null, null, null, null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '0', '2014-05-09 10:45:12', '2014-05-09 10:45:12', '2014-05-13 12:35:55', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('39', '866', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 11:02:49', '2014-05-09 11:02:49', '2014-05-09 11:03:00', '0', null, null, null, null, '0', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('40', '866', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-09 11:03:16', '2014-05-09 11:03:16', '2014-05-09 11:03:48', '0', null, null, '1', null, '0', null, '5', null);
INSERT INTO `recruitment_application` VALUES ('41', '866', '10', '4', null, 'SFR Project', '3', null, null, null, '2', null, null, null, '3', '2', null, null, null, null, '3', null, null, '2', '1', '2014-05-10', null, null, '2', '2', null, null, '1', '2', null, null, '2', '2', null, null, '2', null, null, '3', '1', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '1', '2014-05-09 11:03:59', '2014-05-09 11:03:59', '2014-05-10 12:47:13', '0', 'Luong Duc', null, '1', null, '1', null, '1', null);
INSERT INTO `recruitment_application` VALUES ('42', '879', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '2', '2014-05-01 10:30:00', '884', 'hs', '3', '3', null, '2', '2', null, null, null, '2', '2', '3', '3', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, null, '2', null, '3', '3', null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', '0', '2014-05-09 14:36:39', '2014-05-09 14:36:39', '2014-05-12 14:21:49', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('43', '879', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, null, '1', '2', '2014-05-01 10:30:00', '884', 'hs', '3', '3', null, '2', '2', null, null, null, '2', '2', '3', '3', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, null, '2', null, '3', '3', null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', '0', '2014-05-09 14:39:04', '2014-05-09 14:39:04', '2014-05-12 14:21:49', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('44', '879', '2', '10', null, 'Project 1', '1', null, null, null, '1', '3', '3', null, '3', '1', '2', '2014-05-01 10:30:00', '884', 'hs', '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-09 14:44:05', '2014-05-09 14:44:05', '2014-05-12 14:21:49', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('46', '879', '2', '3', null, 'Project 1', '2', null, null, null, '1', null, null, null, '3', '1', '2', '2014-05-01 10:30:00', '884', 'hs', '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-09 14:56:24', '2014-05-09 14:56:24', '2014-05-12 14:21:49', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('47', '879', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '2', '2014-05-01 10:30:00', '884', 'hs', '3', '3', null, '2', '2', null, null, null, '2', '2', '3', '3', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, '3', '2', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-09 14:57:21', '2014-05-09 14:57:21', '2014-05-12 14:21:49', '0', null, null, null, null, '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('54', '876', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '2', '2014-05-10 05:47:25', '2014-05-10 05:47:25', '2014-05-10 05:51:26', '0', null, null, '1', '2', '0', null, '5', null);
INSERT INTO `recruitment_application` VALUES ('55', '876', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '2', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-10 05:50:59', '2014-05-10 05:50:59', '2014-05-10 05:50:59', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('63', '871', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-10 12:33:47', '2014-05-10 12:33:47', '2014-05-10 12:33:47', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('64', '871', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-10 12:34:07', '2014-05-10 12:34:07', '2014-05-10 12:34:07', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('65', '871', '10', '4', null, 'SFR Project', '3', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-10 12:34:34', '2014-05-10 12:34:34', '2014-05-10 12:34:34', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('67', '866', '4', '5', null, 'Project PDF', '4', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-10 12:37:10', '2014-05-10 12:37:10', '2014-05-10 12:37:10', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('70', '851', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-10 13:13:36', '2014-05-10 13:13:36', '2014-05-10 13:13:36', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('72', '864', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', '3', '3', null, '3', '1', '3', '2014-05-02 10:45:00', '725', 'Test', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '1', '2', '3', '3', '3', '', null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-10 14:13:34', '2014-05-10 14:13:34', '2014-05-10 15:10:37', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('73', '867', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', '3', '3', null, '3', '1', '2', '2014-05-04 09:52:00', '725', 'Ha noi', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '1', '2', '3', '3', '3', '', null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-10 14:21:28', '2014-05-10 14:21:28', '2014-05-10 14:26:55', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('74', '867', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', '3', '3', null, '3', '1', '2', '2014-05-04 09:52:00', '725', 'Ha noi', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '1', '2', '3', '3', '3', '', null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-10 14:21:34', '2014-05-10 14:21:34', '2014-05-10 14:28:15', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('76', '855', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', '3', '3', null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', '2014-05-01', '2014-05-17', '1', '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '1', '1', null, '1', '1', '2014-05-01 00:00:00', 'Ha Noi', '1', '1', '1', '1', '1', '1', '3', '', null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '1', '2014-05-10 14:35:05', '2014-05-10 14:35:05', '2014-05-17 14:08:38', '1', 'Luong Duc', '1', null, '1', '1', 'My Hoa', '0', null);
INSERT INTO `recruitment_application` VALUES ('77', '864', '2', '10', null, 'Project 1', '1', null, null, null, '1', '3', '3', null, '3', '1', '3', '2014-05-02 10:45:00', '725', 'Test', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '2', '3', null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-10 14:58:39', '2014-05-10 14:58:39', '2014-05-10 15:10:37', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('78', '864', '2', '11', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '3', '2014-05-02 10:45:00', '725', 'Test', '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-10 15:03:15', '2014-05-10 15:03:15', '2014-05-10 15:10:37', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('79', '864', '9', '15', null, 'FPT project', '1', null, null, null, '1', '3', '3', null, '3', '1', '3', '2014-05-02 10:45:00', '725', 'Test', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', '0', '2014-05-10 15:03:24', '2014-05-10 15:03:24', '2014-05-10 15:10:37', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('80', '864', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', '3', '3', null, '3', '1', '3', '2014-05-02 10:45:00', '725', 'Test', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '1', '2', '3', '3', '3', '', null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-10 15:06:46', '2014-05-10 15:06:46', '2014-05-10 15:10:37', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('81', '855', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 06:48:24', '2014-05-12 06:48:24', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('82', '855', '10', '4', null, 'SFR Project', '3', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 06:48:33', '2014-05-12 06:48:33', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('83', '855', '4', '5', null, 'Project PDF', '4', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 06:48:40', '2014-05-12 06:48:40', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('85', '855', '7', '7', null, 'Project Mangerment', '8', null, null, null, '2', null, null, null, '3', '2', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '2', null, null, null, '2', '2', '3', '3', '2', '1', '1', '1', '2', '2', '3', '3', '2', null, null, '3', '2', null, '1', '1', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-12 06:50:12', '2014-05-12 06:50:12', '2014-05-17 14:08:38', '0', null, null, '1', '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('86', '856', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', '3', '3', null, '3', '1', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '1', '2014-05-01', '2014-05-31', '1', '1', '1', '1', '1', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '1', '2014-05-28 00:00:00', 'Ha Noi', '1', '1', '1', '2', '3', '3', '3', null, null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-12 06:58:36', '2014-05-12 06:58:36', '2014-05-13 06:35:04', '0', null, '1', null, '1', '1', 'ha', '0', null);
INSERT INTO `recruitment_application` VALUES ('87', '856', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '1', '3', '3', null, '3', '1', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '1', null, null, '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '1', '2', '3', '3', '3', null, null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-12 06:58:41', '2014-05-12 06:58:41', '2014-05-13 06:35:04', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('88', '856', '2', '3', null, 'Project 1', '2', null, null, null, '1', null, null, null, '3', '1', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '1', null, null, null, '1', '1', '1', '1', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 06:58:46', '2014-05-12 06:58:46', '2014-05-13 06:35:04', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('89', '856', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '2', null, null, null, '2', '1', '1', '1', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, '3', '2', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-12 06:58:51', '2014-05-12 06:58:51', '2014-05-13 06:35:04', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('90', '856', '2', '10', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '1', null, null, null, '1', '1', '1', '1', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 06:58:56', '2014-05-12 06:58:56', '2014-05-13 06:35:04', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('91', '856', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', null, null, null, '3', '1', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '1', null, null, null, '1', '1', '1', '1', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 06:59:00', '2014-05-12 06:59:00', '2014-05-13 06:35:04', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('92', '856', '2', '11', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '1', null, null, null, '1', '1', '1', '1', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 06:59:06', '2014-05-12 06:59:06', '2014-05-13 06:35:04', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('93', '856', '9', '15', null, 'FPT project', '1', null, null, null, '1', null, null, null, '3', '1', '3', '2014-05-01 16:00:00', '859', 'Da Nang', '3', '3', null, '2', '1', null, null, null, '1', '1', '1', '1', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-12 06:59:10', '2014-05-12 06:59:10', '2014-05-13 06:35:04', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('94', '873', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '1', 'ha ', null, '2014-05-12 07:28:06', '2014-05-12 07:28:06', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('95', '873', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', '3', '3', null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, '2014-05-12', '3', '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', '1', '1', '1', '2014-05-01 07:50:00', 'ha lan', '3', '3', '1', '1', '1', '1', '3', null, '2014-05-12', '3', '2014-05-12', '3', '2014-05-12', '3', '2014-05-12', '1', null, '2', null, '2014-05-12 07:48:00', null, '1', '1', 'ha ', '0', '2014-05-12 07:29:13', '2014-05-12 07:29:13', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('96', '873', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '1', 'ha ', null, '2014-05-12 09:39:17', '2014-05-12 09:39:17', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('97', '873', '2', '3', null, 'Project 1', '2', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '1', 'ha ', null, '2014-05-12 09:39:23', '2014-05-12 09:39:23', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('98', '873', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '2', null, null, null, '2', '1', '3', '3', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, '3', '2', null, '3', '3', '1', '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '1', 'ha ', null, '2014-05-12 09:39:31', '2014-05-12 09:39:31', '2014-05-13 06:30:51', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('99', '873', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '2', null, null, null, '2', '1', '3', '3', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, '3', '2', null, '3', '3', '1', '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '1', 'ha ', null, '2014-05-12 09:39:34', '2014-05-12 09:39:34', '2014-05-13 06:30:51', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('100', '873', '2', '10', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '1', 'ha ', null, '2014-05-12 09:39:38', '2014-05-12 09:39:38', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('101', '873', '9', '15', null, 'FPT project', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '1', 'ha ', null, '2014-05-12 09:39:43', '2014-05-12 09:39:43', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('102', '873', '1', '22', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '1', 'ha ', null, '2014-05-12 09:39:47', '2014-05-12 09:39:47', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('103', '873', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '2', null, null, null, '2', '1', '3', '3', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, '3', '2', null, '3', '3', '1', '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '1', 'ha ', null, '2014-05-12 09:39:54', '2014-05-12 09:39:54', '2014-05-13 06:30:51', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('104', '873', '2', '10', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '1', 'ha ', null, '2014-05-12 09:40:01', '2014-05-12 09:40:01', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('105', '873', '9', '15', null, 'FPT project', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '1', 'ha ', null, '2014-05-12 09:40:05', '2014-05-12 09:40:05', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('106', '873', '1', '22', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-02 11:15:00', '859', 'Quang Nam', '3', '3', null, '2', '1', null, null, null, '1', '1', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', '1', '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '1', 'ha ', null, '2014-05-12 09:40:53', '2014-05-12 09:40:53', '2014-05-13 06:30:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('107', '901', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-12 09:47:57', '2014-05-12 09:47:57', '2014-05-13 06:55:42', '0', null, null, null, '1', '0', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('108', '901', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-12 09:48:02', '2014-05-12 09:48:02', '2014-05-12 09:48:02', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('109', '901', '10', '4', null, 'SFR Project', '3', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-12 09:48:08', '2014-05-12 09:48:08', '2014-05-12 09:48:08', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('110', '901', '4', '5', null, 'Project PDF', '4', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-12 09:48:14', '2014-05-12 09:48:14', '2014-05-12 09:48:14', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('112', '901', '7', '7', null, 'Project Mangerment', '8', null, null, null, '2', null, null, null, '3', '2', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-12 09:48:39', '2014-05-12 09:48:39', '2014-05-12 09:48:39', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('113', '901', '2', '10', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-12 09:48:45', '2014-05-12 09:48:45', '2014-05-12 09:48:45', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('114', '901', '2', '11', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-12 09:48:51', '2014-05-12 09:48:51', '2014-05-12 09:48:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('115', '901', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-12 09:49:53', '2014-05-12 09:49:53', '2014-05-12 09:49:53', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('116', '901', '9', '15', null, 'FPT project', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-12 09:49:58', '2014-05-12 09:49:58', '2014-05-12 09:49:58', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('117', '902', '2', '10', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 09:54:59', '2014-05-12 09:54:59', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('118', '902', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 09:55:05', '2014-05-12 09:55:05', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('119', '902', '2', '3', null, 'Project 1', '2', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 09:55:10', '2014-05-12 09:55:10', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('120', '902', '6', '8', null, 'Project design', '6', null, null, null, '2', null, null, null, '3', '2', '3', null, null, null, '3', '3', null, '2', '2', null, null, null, '2', '2', '3', '3', '2', '2', '3', '3', '2', '2', '3', '3', '2', null, null, '3', '2', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-12 09:55:16', '2014-05-12 09:55:16', '2014-05-12 10:57:51', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('121', '902', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 09:55:21', '2014-05-12 09:55:21', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('122', '902', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 09:55:27', '2014-05-12 09:55:27', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('123', '902', '2', '11', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 09:55:32', '2014-05-12 09:55:32', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('124', '902', '9', '15', null, 'FPT project', '1', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-12 09:55:37', '2014-05-12 09:55:37', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('125', '902', '1', '22', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 09:55:43', '2014-05-12 09:55:43', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('127', '902', '11', '23', null, 'testha', '17', null, null, null, '1', '3', '3', null, '3', '1', '3', null, null, null, '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2014-05-12 00:00:00', '3', '3', '1', null, '3', '3', null, '1', '1', '2014-05-12 10:57:51', '', '3', '3', '1', '1', '3', '1', '2', null, '2014-05-12', '2', '2014-05-12', '2', '2014-05-12', '2', '2014-05-12', '1', '2014-05-12', '3', '2014-05-12 10:57:51', '2014-05-12 10:57:51', '                          ', '1', '3', '', '0', '2014-05-12 10:32:58', '2014-05-12 10:32:58', '2014-05-12 10:57:51', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('128', '903', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', '3', '3', null, '3', '1', '1', '2014-05-01 09:00:00', '895', 'ha', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '1', '2', '3', '3', '3', null, null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-12 13:06:46', '2014-05-12 13:06:46', '2014-05-12 14:29:28', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('129', '855', '1', '1', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 15:51:33', '2014-05-12 15:51:33', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('130', '855', '2', '10', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 15:51:41', '2014-05-12 15:51:41', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('131', '855', '2', '11', null, 'Project 1', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-12 15:54:13', '2014-05-12 15:54:13', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('132', '855', '9', '15', null, 'FPT project', '1', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-12 15:54:38', '2014-05-12 15:54:38', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('133', '855', '9', '6', null, 'FPT project', '10', null, null, null, '1', null, null, null, '3', '1', '1', '2014-05-08 09:00:00', '881', 'Quang Nam', '1', '1', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '1', '1', '1', '1', '2', '3', '3', '1', null, null, '3', '1', null, '1', '1', null, '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', '3', '', null, '2014-05-12 16:20:55', '2014-05-12 16:20:55', '2014-05-17 14:08:38', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('134', '874', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', '2', '2', null, '2', '1', '1', '2014-05-27 13:00:00', '881', 'qnam', '1', '1', 'ha', '2', '1', '2014-05-13', '2014-05-13', '1', '1', null, null, null, '1', null, null, null, '1', null, null, null, '1', '2014-05-01 00:00:00', '1', '1', '1', null, null, null, null, '1', '1', '2014-05-13 04:50:00', 'g', '3', '3', '1', '1', '1', '1', '3', null, '2014-05-13', '3', '2014-05-13', '3', '2014-05-13', '3', '2014-05-13', '1', '2014-05-01', '1', '2014-05-01 00:00:00', '2014-05-31 00:00:00', 'ha noi', '1', null, null, '0', '2014-05-13 04:46:07', '2014-05-13 04:46:07', '2014-05-13 07:24:54', '0', null, '1', null, '1', '1', 'gg', '0', null);
INSERT INTO `recruitment_application` VALUES ('135', '874', '9', '15', null, 'FPT project', '1', null, null, null, '1', '3', '3', null, '3', '1', '1', '2014-05-27 13:00:00', '881', 'qnam', '1', '1', 'ha', '2', '1', null, null, '3', '1', null, null, null, '1', null, null, null, '1', null, null, null, '1', null, '3', '3', '1', null, null, null, null, '1', '3', null, '', '3', '3', '2', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, '0', '2014-05-13 04:58:54', '2014-05-13 04:58:54', '2014-05-13 07:24:54', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('136', '875', '1', '12', null, 'Recruitment Management Portal', '3', null, null, null, '1', '3', '1', '2014-05-31', '3', '1', '3', '2014-05-01 07:45:00', '725', 'ha', '3', '3', null, '2', '1', null, null, '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, '3', '3', '1', null, '3', '3', null, '1', '3', null, '', '3', '3', '1', '2', '3', '3', '3', null, null, '3', null, '3', null, '3', null, '1', null, '3', null, null, null, '1', '3', '', '0', '2014-05-13 05:34:27', '2014-05-13 05:34:27', '2014-05-13 06:57:29', '0', null, null, null, '1', '1', '', '0', null);
INSERT INTO `recruitment_application` VALUES ('137', '901', '9', '6', null, 'FPT project', '10', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-13 06:41:24', '2014-05-13 06:41:24', '2014-05-13 06:41:24', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('138', '901', '1', '24', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-13 06:41:30', '2014-05-13 06:41:30', '2014-05-13 06:44:12', '0', null, null, null, '1', '0', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('139', '901', '1', '25', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-13 06:43:32', '2014-05-13 06:43:32', '2014-05-13 06:43:51', '0', null, null, null, '1', '0', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('140', '875', '1', '22', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', '3', '2014-05-01 07:45:00', '725', 'ha', '3', '3', null, '2', '1', null, null, null, '1', '2', '3', '3', '1', '2', '3', '3', '1', '2', '3', '3', '1', null, null, '3', '1', null, '3', '3', null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', '3', '', null, '2014-05-13 06:56:49', '2014-05-13 06:56:49', '2014-05-13 06:57:29', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('141', '903', '1', '2', null, 'Recruitment Management Portal', '1', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, '2', '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '1', null, null, null, '3', null, '1', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-13 07:16:44', '2014-05-13 07:16:44', '2014-05-13 07:16:44', '0', null, null, null, '1', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('142', '856', '7', '7', null, 'Project Mangerment', '8', null, null, null, '2', null, null, null, '3', '2', null, null, null, null, '3', null, null, '2', '2', null, null, null, '2', '2', null, null, '2', '2', null, null, '2', '2', null, null, '2', null, null, '3', '2', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, '2', null, null, null, '2014-05-13 09:05:48', '2014-05-13 09:05:48', '2014-05-13 09:05:48', '0', null, null, null, '2', '1', null, '0', null);
INSERT INTO `recruitment_application` VALUES ('143', '925', '2', '28', null, 'Project 1', '2', null, null, null, '1', null, null, null, '3', '1', null, null, null, null, '3', null, null, null, '1', null, null, null, '1', '2', null, null, '1', '2', null, null, '1', '2', null, null, '1', null, null, '3', '1', null, null, null, null, '2', null, null, null, '3', null, '2', '2', null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, '1', null, null, null, '2014-05-15 04:30:01', '2014-05-15 04:30:01', '2014-05-15 04:30:01', '0', null, null, null, null, '1', null, '0', null);

-- ----------------------------
-- Table structure for `recruitment_requirements`
-- ----------------------------
DROP TABLE IF EXISTS `recruitment_requirements`;
CREATE TABLE `recruitment_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `verify_application` tinyint(1) NOT NULL DEFAULT '0',
  `application_task` tinyint(1) DEFAULT '0',
  `interview` tinyint(1) DEFAULT '0',
  `video_interview` tinyint(1) DEFAULT NULL,
  `client_approval` tinyint(1) DEFAULT NULL,
  `check_references` tinyint(1) DEFAULT '0',
  `check_qualifications` tinyint(1) DEFAULT '0',
  `check_crb` tinyint(1) DEFAULT '0',
  `send_offer` tinyint(1) DEFAULT '0',
  `mohe_check` tinyint(1) DEFAULT NULL,
  `induction` tinyint(1) DEFAULT '0',
  `arrange_visa` tinyint(1) DEFAULT '0',
  `arrange_flights` tinyint(1) DEFAULT '0',
  `arrange_accomadation` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manual_client_approval` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recruitment_requirements
-- ----------------------------
INSERT INTO `recruitment_requirements` VALUES ('1', '1', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2014-05-08 13:05:55', '2014-05-10 10:58:34', 'Luong Duc', 'Luong Duc', '1');
INSERT INTO `recruitment_requirements` VALUES ('2', '2', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '2', '2', '1', '1', '2014-05-08 13:24:06', '2014-05-09 06:12:12', 'Luong Duc', 'Luong Duc', '1');
INSERT INTO `recruitment_requirements` VALUES ('3', '3', '2', '2', '2', null, '1', '2', '1', '2', '1', '2', '1', '2', '2', '1', '2014-05-08 13:25:15', '2014-05-08 13:28:20', 'Luong Duc', 'Luong Duc', '2');
INSERT INTO `recruitment_requirements` VALUES ('4', '4', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2014-05-08 13:26:11', '2014-05-08 13:26:11', 'Luong Duc', null, '1');
INSERT INTO `recruitment_requirements` VALUES ('5', '5', '1', '1', '2', null, '2', '1', '2', '1', '2', '2', '2', '2', '2', '2', '2014-05-08 13:26:53', '2014-05-08 13:26:53', 'Luong Duc', null, '2');
INSERT INTO `recruitment_requirements` VALUES ('6', '6', '2', '2', '2', null, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2014-05-08 13:29:04', '2014-05-08 13:29:04', 'Luong Duc', null, '2');
INSERT INTO `recruitment_requirements` VALUES ('7', '7', '2', '2', '2', null, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2014-05-08 13:29:43', '2014-05-08 13:29:43', 'Luong Duc', null, '2');
INSERT INTO `recruitment_requirements` VALUES ('8', '8', '2', '2', '2', null, '2', '2', '2', '2', '1', '2', '2', '1', '2', '2', '2014-05-08 13:30:58', '2014-05-08 13:30:58', 'Luong Duc', null, '2');
INSERT INTO `recruitment_requirements` VALUES ('9', '9', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2014-05-08 13:31:52', '2014-05-13 07:50:21', 'Luong Duc', 'Luong Duc', '1');
INSERT INTO `recruitment_requirements` VALUES ('10', '10', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2014-05-08 13:33:07', '2014-05-10 10:41:51', 'Luong Duc', 'Luong Duc', '1');
INSERT INTO `recruitment_requirements` VALUES ('11', '11', '2', '1', '1', null, '2', '2', '2', '2', '2', '2', '2', '2', '1', '2', '2014-05-15 04:25:27', '2014-05-15 04:25:27', 'Luong Duc', null, '2');
INSERT INTO `recruitment_requirements` VALUES ('12', '12', '2', '2', '2', null, '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2014-05-15 12:40:05', '2014-05-15 12:40:05', 'Luong Duc', null, '2');

-- ----------------------------
-- Table structure for `recruitmentprojects`
-- ----------------------------
DROP TABLE IF EXISTS `recruitmentprojects`;
CREATE TABLE `recruitmentprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_description` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `close_on_target` tinyint(1) DEFAULT NULL,
  `vacancy_requirements` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `added_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of recruitmentprojects
-- ----------------------------
INSERT INTO `recruitmentprojects` VALUES ('1', 'Recruitment Management Portal', '1', '.... description for RMP', null, '1', '1', null, '2014-05-08 13:05:55', '2014-05-08 13:05:55', 'Luong Duc', null);
INSERT INTO `recruitmentprojects` VALUES ('2', 'Project 1', '2', ' Each of the U.S. manned space exploration projects had specific major goals. The Mercury project was designed to test whether or not human beings could survive and function in outer space. The Mercury project tested rockets with the new Mercury space capsule, which could hold one person. The Gemini project was intended to find out whether two people could work in the weightless environment of space. Gemini astronauts took \"spacewalks.\" They floated outside their spacecraft in a spacesuit, connected to it by a tether. ', null, '1', '1', null, '2014-05-08 13:24:06', '2014-05-08 13:24:06', 'Luong Duc', null);
INSERT INTO `recruitmentprojects` VALUES ('3', 'Project 2', '3', 'Gemini astronauts tried out new flying skills. Some astronauts flew two spacecraft extremely close together; this procedure was called \"rendezvous.\"', null, '1', '2', null, '2014-05-08 13:25:15', '2014-05-10 09:19:21', 'Luong Duc', 'Luong Duc');
INSERT INTO `recruitmentprojects` VALUES ('4', 'Project PDF', '5', 'Linking, or \"space docking,\" was a major goal of the Gemini program. The Apollo project, with three astronauts, was intended to test spacecraft and skills so that people could actually fly to the Moon and land on it', null, '2', '2', null, '2014-05-08 13:26:11', '2014-05-08 13:27:58', 'Luong Duc', 'Luong Duc');
INSERT INTO `recruitmentprojects` VALUES ('5', 'Projet PDF', '6', 'Performing scientific experiments on the lunar surface and collecting rocks for study on Earth were goals.', null, '2', '1', null, '2014-05-08 13:26:53', '2014-05-08 13:26:53', 'Luong Duc', null);
INSERT INTO `recruitmentprojects` VALUES ('6', 'Project design', '7', '  My hometown, Wheaton, is famous for several amazing natural features.  First, it is noted for the Wheaton River, which is very wide and beautiful.', null, '1', '2', null, '2014-05-08 13:29:04', '2014-05-08 13:33:28', 'Luong Duc', 'Luong Duc');
INSERT INTO `recruitmentprojects` VALUES ('7', 'Project Mangerment', '8', 'On either side of this river, which is 175 feet wide, are many willow trees which have long branches that can move gracefully in the wind', null, '2', '1', null, '2014-05-08 13:29:43', '2014-05-08 13:29:43', 'Luong Duc', null);
INSERT INTO `recruitmentprojects` VALUES ('8', 'Projcet Learn English', '9', ' In autumn the leaves of these trees fall and cover the riverbanks like golden snow.', null, '1', '1', null, '2014-05-08 13:30:58', '2014-05-08 13:30:58', 'Luong Duc', null);
INSERT INTO `recruitmentprojects` VALUES ('9', 'FPT project', '2', '   Each of the U.S. manned space exploration projects had specific major goals', null, '1', '1', null, '2014-05-08 13:31:52', '2014-05-12 04:19:26', 'Luong Duc', 'Luong Duc');
INSERT INTO `recruitmentprojects` VALUES ('10', 'SFR Project', '3', 'Company about programming about web , in the word ', null, '1', '1', null, '2014-05-08 13:33:07', '2014-05-10 10:41:30', 'Luong Duc', 'Luong Duc');
INSERT INTO `recruitmentprojects` VALUES ('11', 'NOKIA LUMIA', '19', 'AID1429 NOKIA LUMIA', null, '2', '1', null, '2014-05-15 04:25:27', '2014-05-15 04:25:27', 'Luong Duc', null);
INSERT INTO `recruitmentprojects` VALUES ('12', 'Nước sạch cho mọi nhà', '20', 'Nước sạch cho mọi nhà', null, '2', '1', null, '2014-05-15 12:40:05', '2014-05-15 12:40:05', 'Luong Duc', null);

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'system administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('2', 'Employee\'s Line Manager', '0000-00-00 00:00:00', '2013-11-18 13:20:03');
INSERT INTO `roles` VALUES ('12', 'Interviewer', '2014-02-02 13:33:57', '2014-02-02 13:33:57');
INSERT INTO `roles` VALUES ('13', 'Driver', '2014-02-02 13:34:11', '2014-02-02 13:34:11');
INSERT INTO `roles` VALUES ('14', 'RMP Administrator', '2014-03-14 09:09:08', '2014-03-14 09:09:08');
INSERT INTO `roles` VALUES ('15', 'Doctor11', '2014-05-06 14:15:58', '2014-05-12 13:40:20');
INSERT INTO `roles` VALUES ('18', 'teacher07', '2014-05-07 11:04:05', '2014-05-07 11:04:05');
INSERT INTO `roles` VALUES ('21', 'human', '2014-05-08 09:05:45', '2014-05-08 09:05:45');
INSERT INTO `roles` VALUES ('25', 'i have a dream, ', '2014-05-10 05:16:15', '2014-05-10 05:16:15');
INSERT INTO `roles` VALUES ('33', 'Staff', '2014-05-12 12:31:07', '2014-05-12 12:31:07');
INSERT INTO `roles` VALUES ('34', 'Construction', '2014-05-12 12:36:49', '2014-05-13 09:25:51');

-- ----------------------------
-- Table structure for `sectors`
-- ----------------------------
DROP TABLE IF EXISTS `sectors`;
CREATE TABLE `sectors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sectors
-- ----------------------------
INSERT INTO `sectors` VALUES ('1', 'Construction', '1', null, '2014-04-02 17:00:00', '0000-00-00 00:00:00');
INSERT INTO `sectors` VALUES ('2', 'Education', '1', null, '2014-04-02 17:00:00', '0000-00-00 00:00:00');
INSERT INTO `sectors` VALUES ('3', 'Finance', '1', null, '2014-04-02 17:00:00', '0000-00-00 00:00:00');
INSERT INTO `sectors` VALUES ('4', 'Healthcare', '1', null, '2014-04-02 17:00:00', '0000-00-00 00:00:00');
INSERT INTO `sectors` VALUES ('5', 'IT', '1', null, '2014-04-02 17:00:00', '0000-00-00 00:00:00');
INSERT INTO `sectors` VALUES ('6', 'Logistics', '1', null, '2014-04-02 17:00:00', '0000-00-00 00:00:00');
INSERT INTO `sectors` VALUES ('7', 'Pharmaceuticals', '1', null, '2014-04-02 17:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `service_locations`
-- ----------------------------
DROP TABLE IF EXISTS `service_locations`;
CREATE TABLE `service_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of service_locations
-- ----------------------------
INSERT INTO `service_locations` VALUES ('1', 'clientcontract', 'ClientContract', '2014-04-28 12:43:15', '2014-04-28 12:43:15');
INSERT INTO `service_locations` VALUES ('2', 'recruitercontract', 'RecruiterContract', '2014-04-28 12:43:15', '2014-04-28 12:43:15');

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('97j5nbduldhv5d7q3369e31ek4', '1401271629', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo2OiJfdG9rZW4iO3M6NDA6IlN6VkYxZ2hRNUc1cEcycWRYUmVkN0w5elFubFZsY05nSlRDT3c0eWwiO31fc2YyX2ZsYXNoZXN8YTowOnt9X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0MDEyNzE2Mjg7czoxOiJjIjtpOjE0MDEyNzE2Mjg7czoxOiJsIjtzOjQ6IjM2MDAiO30=');
INSERT INTO `sessions` VALUES ('algq8pi30gepu2d3646re7j9e0', '1401096791', 'X3NmMl9hdHRyaWJ1dGVzfGE6Mzp7czo2OiJfdG9rZW4iO3M6NDA6Ik9ubklZZ3lBOXhLcXpaTlp4VnVFNTdoajFHbHRXanRJOEZORVI0bkYiO3M6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozODoibG9naW5fODJlNWQyYzU2YmRkMDgxMTMxOGYwY2YwNzhiNzhiZmMiO2k6NzI1O31fc2YyX2ZsYXNoZXN8YTowOnt9X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0MDEwOTY3OTA7czoxOiJjIjtpOjE0MDEwOTYzOTU7czoxOiJsIjtzOjQ6IjM2MDAiO30=');
INSERT INTO `sessions` VALUES ('fbu9edt2be052rv0opi63u7v52', '1401096397', 'X3NmMl9hdHRyaWJ1dGVzfGE6Mjp7czo2OiJfdG9rZW4iO3M6NDA6IkhEQ3V6bUs5SDBkOElkWThmSjRhS2xXRHBtckVVS0JTT1VZNTNVaTAiO3M6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fV9zZjJfZmxhc2hlc3xhOjA6e31fc2YyX21ldGF8YTozOntzOjE6InUiO2k6MTQwMTA5NjM5NTtzOjE6ImMiO2k6MTQwMTA5NjM5NTtzOjE6ImwiO3M6NDoiMzYwMCI7fQ==');
INSERT INTO `sessions` VALUES ('fg1r90ip7j054ijfllr15eogb7', '1401258086', 'X3NmMl9hdHRyaWJ1dGVzfGE6Mzp7czo2OiJfdG9rZW4iO3M6NDA6IkFmTllrd3Jkc2dTQzI5cVJTaEFQdTNaTFNxQ25RWWZMMkNYMW5vbDUiO3M6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozODoibG9naW5fODJlNWQyYzU2YmRkMDgxMTMxOGYwY2YwNzhiNzhiZmMiO2k6NzI1O31fc2YyX2ZsYXNoZXN8YTowOnt9X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0MDEyNTgwODY7czoxOiJjIjtpOjE0MDEyNTgwNDg7czoxOiJsIjtzOjQ6IjM2MDAiO30=');
INSERT INTO `sessions` VALUES ('lb09vjr1rpi4jngu7sr8hmqhb4', '1401271629', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo2OiJfdG9rZW4iO3M6NDA6IjZ3TFJHcU1zNmFNSjZmMktENGpnWUFlMVdWWFhsbm9tZllJbm9iNU4iO31fc2YyX2ZsYXNoZXN8YTowOnt9X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0MDEyNzE2Mjg7czoxOiJjIjtpOjE0MDEyNzE2Mjg7czoxOiJsIjtzOjQ6IjM2MDAiO30=');

-- ----------------------------
-- Table structure for `teaching_certificates`
-- ----------------------------
DROP TABLE IF EXISTS `teaching_certificates`;
CREATE TABLE `teaching_certificates` (
  `id` int(11) NOT NULL DEFAULT '0',
  `certificate` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of teaching_certificates
-- ----------------------------
INSERT INTO `teaching_certificates` VALUES ('1', 'CELTA');
INSERT INTO `teaching_certificates` VALUES ('2', 'TEFL / TESOL');
INSERT INTO `teaching_certificates` VALUES ('3', 'TRINITY');
INSERT INTO `teaching_certificates` VALUES ('4', 'N/A');

-- ----------------------------
-- Table structure for `todo_list`
-- ----------------------------
DROP TABLE IF EXISTS `todo_list`;
CREATE TABLE `todo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `description` text,
  `status_important` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of todo_list
-- ----------------------------
INSERT INTO `todo_list` VALUES ('3', '227', 'Call Mustafa tomorrow about the new applicants and contracts', '1', '2014-03-30 20:42:03', '2014-03-30 20:42:03');
INSERT INTO `todo_list` VALUES ('12', '725', '1', '2', '2014-05-12 06:03:04', '2014-05-12 06:08:22');

-- ----------------------------
-- Table structure for `user_certificate`
-- ----------------------------
DROP TABLE IF EXISTS `user_certificate`;
CREATE TABLE `user_certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `qualification` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `hr_confirmed` tinyint(4) NOT NULL DEFAULT '2',
  `institute` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_certificate
-- ----------------------------
INSERT INTO `user_certificate` VALUES ('473', '227', 'CELTA', '2013-08-11', '1', '', '2013-08-25 23:02:00', '2014-01-05 21:32:17');
INSERT INTO `user_certificate` VALUES ('476', '650', 'CELTA', '2013-08-11', '2', 'Saxon Court', '2013-08-25 23:02:00', '2014-01-04 18:25:51');
INSERT INTO `user_certificate` VALUES ('477', '651', 'CELTA', '2013-08-11', '1', 'Saxon Court', '2013-08-25 23:02:00', '2014-01-05 21:09:05');
INSERT INTO `user_certificate` VALUES ('478', '652', 'CELTA', '2013-08-11', '1', 'Saxon Court', '2013-08-25 23:02:00', '2014-01-05 22:42:23');
INSERT INTO `user_certificate` VALUES ('479', '653', 'CELTA', '2013-08-11', '1', 'Queen Mary\'s College', '2013-08-25 23:02:00', '2013-12-31 09:38:56');
INSERT INTO `user_certificate` VALUES ('480', '654', 'TEFL / TESOL', '2013-08-11', '1', 'Saxon Court', '2013-08-25 23:02:00', '2014-01-05 23:09:53');
INSERT INTO `user_certificate` VALUES ('481', '656', 'CELTA', '2013-08-11', '2', null, '2013-08-25 23:02:00', '2013-08-28 11:58:44');
INSERT INTO `user_certificate` VALUES ('482', '657', 'TEFL', '2013-08-11', '2', null, '2013-08-25 23:02:00', '2013-08-28 11:58:44');
INSERT INTO `user_certificate` VALUES ('483', '658', 'TRINITY', '2013-08-11', '2', null, '2013-08-25 23:02:00', '2013-08-28 11:58:44');
INSERT INTO `user_certificate` VALUES ('484', '659', 'CELTA', '2013-08-11', '2', null, '2013-08-25 23:02:00', '2013-08-28 11:58:44');
INSERT INTO `user_certificate` VALUES ('485', '693', 'CELTA', '2011-01-12', '1', 'Saxon Court', '2014-01-18 13:48:35', '2014-01-19 10:30:04');
INSERT INTO `user_certificate` VALUES ('486', '694', 'Trinity', '1984-01-04', '1', 'Saxon Court', '2014-01-19 14:31:22', '2014-01-19 14:31:22');
INSERT INTO `user_certificate` VALUES ('487', '712', 'CELTA', '2010-01-13', '2', 'Saxon Court', '2014-01-22 15:37:12', '2014-01-22 15:41:11');
INSERT INTO `user_certificate` VALUES ('488', '716', 'TEFL / TESOL', '2014-01-24', '1', 'sdfsdf', '2014-01-22 17:13:46', '2014-01-22 17:13:46');
INSERT INTO `user_certificate` VALUES ('489', '714', 'TEFL / TESOL', '2014-01-02', '1', 'sdff', '2014-01-22 17:15:28', '2014-02-24 13:46:58');
INSERT INTO `user_certificate` VALUES ('491', '719', 'CELTA', '2009-07-01', '2', 'British Council', '2014-03-03 21:28:42', '2014-03-03 21:28:42');
INSERT INTO `user_certificate` VALUES ('492', '722', 'CELTA', '2009-06-10', '1', 'British Council', '2014-03-04 09:33:03', '2014-03-04 15:26:16');
INSERT INTO `user_certificate` VALUES ('495', '723', 'TEFL / TESOL', '1992-03-18', '1', 'British Council 14', '2014-03-09 20:51:18', '2014-04-28 13:49:38');
INSERT INTO `user_certificate` VALUES ('497', '726', 'CELTA', '2014-03-11', '2', 'British Council', '2014-03-09 21:45:21', '2014-03-09 21:45:21');
INSERT INTO `user_certificate` VALUES ('498', '724', 'CELTA', '2014-03-11', '2', 'Saxon Court', '2014-03-13 17:22:23', '2014-03-13 17:22:23');
INSERT INTO `user_certificate` VALUES ('499', '723', 'CELTA', '2014-01-29', '2', 'rwar 6', '0000-00-00 00:00:00', '2014-04-28 07:33:53');
INSERT INTO `user_certificate` VALUES ('500', '723', 'Trinity', '2011-04-02', '2', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `user_certificate` VALUES ('501', '762', 'CELTA', '2003-04-09', '2', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `user_certificate` VALUES ('503', '723', 'CELTA', '2014-04-29', '2', 'sdfsdfsf', '2014-04-28 13:58:00', '2014-04-28 13:58:00');
INSERT INTO `user_certificate` VALUES ('504', '766', 'TEFL / TESOL', '2014-04-30', '1', '11', '2014-04-29 06:31:28', '2014-04-29 06:32:20');
INSERT INTO `user_certificate` VALUES ('505', '766', 'CELTA', '2014-04-30', '2', 'qq', '2014-04-29 06:33:18', '2014-04-29 06:33:18');
INSERT INTO `user_certificate` VALUES ('506', '766', 'CELTA', '2014-04-01', '2', 'ww', '2014-04-29 06:33:24', '2014-04-29 06:33:24');
INSERT INTO `user_certificate` VALUES ('509', '767', 'Trinity', '2014-04-30', '2', 'c              ', '2014-04-29 09:11:36', '2014-04-29 11:46:10');
INSERT INTO `user_certificate` VALUES ('510', '767', 'CELTA', '2014-04-30', '2', 'cvc', '2014-04-29 11:46:19', '2014-04-29 11:46:19');
INSERT INTO `user_certificate` VALUES ('512', '773', 'CELTA', '2014-04-24', '2', 'asdasdasdasdasd', '2014-04-29 11:48:02', '2014-04-29 11:48:02');
INSERT INTO `user_certificate` VALUES ('515', '813', 'CELTA', '2014-05-01', '2', '                    ', '2014-05-05 10:22:30', '2014-05-05 10:22:30');
INSERT INTO `user_certificate` VALUES ('518', '813', 'CELTA', '2014-05-05', '2', '             ', '2014-05-05 10:23:52', '2014-05-05 10:23:52');
INSERT INTO `user_certificate` VALUES ('519', '813', 'CELTA', '2014-05-01', '2', '                ', '2014-05-05 10:24:06', '2014-05-05 10:24:06');
INSERT INTO `user_certificate` VALUES ('521', '813', 'CELTA', '2014-05-01', '2', '             ', '2014-05-05 10:31:17', '2014-05-05 10:31:17');
INSERT INTO `user_certificate` VALUES ('522', '794', 'CELTA', '2014-05-07', '2', 'kkk', '2014-05-05 12:32:56', '2014-05-05 12:32:56');
INSERT INTO `user_certificate` VALUES ('523', '785', 'CELTA', '2014-05-01', '1', '1 ', '2014-05-05 13:06:02', '2014-05-07 12:22:35');
INSERT INTO `user_certificate` VALUES ('524', '800', 'CELTA', '2014-05-20', '2', 'dsdsd', '2014-05-05 13:38:55', '2014-05-05 13:38:55');
INSERT INTO `user_certificate` VALUES ('525', '799', 'CELTA', '2014-05-13', '2', 'aaaaaaaaaaa', '2014-05-05 14:12:25', '2014-05-05 14:12:25');
INSERT INTO `user_certificate` VALUES ('527', '801', 'CELTA', '2014-05-21', '2', 'qweqweqwe', '2014-05-07 04:26:15', '2014-05-07 04:26:15');
INSERT INTO `user_certificate` VALUES ('528', '805', 'TEFL / TESOL', '2014-05-20', '2', 'qweqwe', '2014-05-07 04:45:47', '2014-05-07 04:45:47');
INSERT INTO `user_certificate` VALUES ('530', '807', 'CELTA', '2014-05-31', '2', '11', '2014-05-07 10:30:51', '2014-05-07 10:30:51');
INSERT INTO `user_certificate` VALUES ('531', '785', 'CELTA', '2014-05-31', '2', '11', '2014-05-07 12:21:50', '2014-05-07 12:21:50');
INSERT INTO `user_certificate` VALUES ('532', '785', 'CELTA', '2014-05-01', '2', '                     11', '2014-05-07 12:22:49', '2014-05-07 12:22:49');
INSERT INTO `user_certificate` VALUES ('533', '848', 'TEFL / TESOL', '2014-05-01', '2', 'ha', '2014-05-08 07:56:43', '2014-05-08 07:56:43');
INSERT INTO `user_certificate` VALUES ('534', '841', 'CELTA', '2014-05-01', '2', 'hhhhhhhhh', '2014-05-08 12:25:23', '2014-05-08 12:25:23');
INSERT INTO `user_certificate` VALUES ('535', '841', 'TEFL / TESOL', '2014-05-01', '2', '111', '2014-05-08 12:26:03', '2014-05-08 12:26:03');
INSERT INTO `user_certificate` VALUES ('536', '851', 'Trinity', '2014-05-23', '2', 'American', '2014-05-08 12:55:55', '2014-05-08 12:55:55');
INSERT INTO `user_certificate` VALUES ('537', '856', 'TEFL / TESOL', '2014-05-13', '2', 'qwerty', '2014-05-08 13:46:10', '2014-05-08 13:46:10');
INSERT INTO `user_certificate` VALUES ('538', '875', 'TEFL / TESOL', '2014-05-11', '2', 'Study', '2014-05-09 04:32:48', '2014-05-09 04:33:44');
INSERT INTO `user_certificate` VALUES ('539', '875', 'CELTA', '2014-05-19', '2', 'Study', '2014-05-09 04:33:01', '2014-05-09 04:33:01');
INSERT INTO `user_certificate` VALUES ('541', '876', 'CELTA', '1970-01-01', '2', '1', '2014-05-09 05:07:56', '2014-05-09 05:07:56');
INSERT INTO `user_certificate` VALUES ('542', '876', 'CELTA', '2014-05-09', '2', '                                    ', '2014-05-09 05:08:32', '2014-05-09 05:08:32');
INSERT INTO `user_certificate` VALUES ('543', '876', 'TEFL / TESOL', '1970-01-01', '2', '1', '2014-05-09 05:29:37', '2014-05-09 05:29:37');
INSERT INTO `user_certificate` VALUES ('544', '876', 'CELTA', '2014-05-09', '2', '                        ', '2014-05-09 05:30:35', '2014-05-09 05:30:35');
INSERT INTO `user_certificate` VALUES ('545', '854', 'TEFL / TESOL', '2014-05-07', '2', 'test', '2014-05-09 06:14:46', '2014-05-09 06:14:46');
INSERT INTO `user_certificate` VALUES ('546', '866', 'CELTA', '2014-05-27', '2', 'aaaaaa', '2014-05-09 11:02:01', '2014-05-09 11:02:01');
INSERT INTO `user_certificate` VALUES ('547', '873', 'CELTA', '2014-05-01', '2', '1', '2014-05-09 12:23:13', '2014-05-09 12:23:13');
INSERT INTO `user_certificate` VALUES ('548', '879', 'CELTA', '2014-05-21', '2', 'hehe', '2014-05-09 13:50:30', '2014-05-09 13:50:30');
INSERT INTO `user_certificate` VALUES ('549', '879', 'CELTA', '2014-05-09', '2', '123', '2014-05-09 14:29:39', '2014-05-09 14:29:39');
INSERT INTO `user_certificate` VALUES ('550', '879', 'CELTA', '2014-05-09', '2', '123', '2014-05-09 14:30:10', '2014-05-09 14:30:10');
INSERT INTO `user_certificate` VALUES ('551', '879', 'CELTA', '2014-05-28', '2', 'aaaa', '2014-05-09 14:39:39', '2014-05-09 14:39:39');
INSERT INTO `user_certificate` VALUES ('552', '879', 'CELTA', '2014-05-29', '2', 'aaaaa', '2014-05-09 14:39:39', '2014-05-09 14:39:39');
INSERT INTO `user_certificate` VALUES ('553', '855', 'CELTA', '2014-05-14', '2', 'Test', '2014-05-10 13:28:11', '2014-05-10 13:28:11');
INSERT INTO `user_certificate` VALUES ('554', '864', 'CELTA', '2014-05-28', '2', 'Test', '2014-05-10 14:05:56', '2014-05-10 14:05:56');
INSERT INTO `user_certificate` VALUES ('555', '862', 'CELTA', '2014-05-21', '2', 'Test', '2014-05-13 09:10:21', '2014-05-13 09:10:21');
INSERT INTO `user_certificate` VALUES ('556', '898', 'CELTA', '2014-05-14', '2', 'ss', '2014-05-13 12:00:29', '2014-05-13 12:00:29');
INSERT INTO `user_certificate` VALUES ('557', '923', 'CELTA', '2014-05-12', '2', 'sssssss', '2014-05-13 12:47:11', '2014-05-13 12:47:11');
INSERT INTO `user_certificate` VALUES ('558', '924', 'CELTA', '2014-05-14', '2', 'ss', '2014-05-14 04:25:27', '2014-05-14 04:25:27');
INSERT INTO `user_certificate` VALUES ('559', '925', 'CELTA', '2014-05-16', '2', 'ddd', '2014-05-15 04:31:36', '2014-05-15 04:31:36');
INSERT INTO `user_certificate` VALUES ('560', '855', 'CELTA', '2014-05-22', '2', 'eeeee', '2014-05-16 05:59:27', '2014-05-16 05:59:27');
INSERT INTO `user_certificate` VALUES ('561', '930', 'CELTA', '2014-05-23', '2', 'sssss', '2014-05-16 06:08:44', '2014-05-16 06:08:44');

-- ----------------------------
-- Table structure for `user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `view_staff_list` tinyint(4) DEFAULT '3',
  `view_pending_staff_list` tinyint(4) DEFAULT '3',
  `view_inactive_staff_list` tinyint(4) DEFAULT '3',
  `view_declined_staff_list` tinyint(4) DEFAULT '3',
  `view_dismissed_staff_list` tinyint(4) DEFAULT '3',
  `contact_list` tinyint(4) DEFAULT '3',
  `full_contact_list` tinyint(4) DEFAULT '3',
  `male_female_employees` tinyint(4) DEFAULT '3',
  `view_warnings` tinyint(4) DEFAULT '3',
  `create_warnings` tinyint(4) DEFAULT '3',
  `edit_warnings` tinyint(4) DEFAULT '3',
  `delete_warnings` tinyint(4) DEFAULT '3',
  `view_grievances` tinyint(4) DEFAULT '3',
  `create_grievances` tinyint(4) DEFAULT '3',
  `edit_grievances` tinyint(4) DEFAULT '3',
  `edit_grievance_actions` tinyint(4) DEFAULT '3',
  `delete_grievances` tinyint(4) DEFAULT '3',
  `review_requests` tinyint(4) DEFAULT '3',
  `approved_requests` tinyint(4) DEFAULT '3',
  `pending_requests` tinyint(4) DEFAULT '3',
  `edit_requests` tinyint(4) DEFAULT '3',
  `delete_requests` tinyint(4) DEFAULT '3',
  `add_flight_booking` tinyint(1) DEFAULT '3',
  `view_all_workshops` tinyint(4) DEFAULT '3',
  `create_workshops` tinyint(1) DEFAULT '3',
  `edit_workshops` tinyint(4) DEFAULT '2',
  `delete_workshops` tinyint(4) DEFAULT '3',
  `add_workshop_attendees` tinyint(1) DEFAULT '3',
  `edit_workshop_attendance` tinyint(1) DEFAULT '3',
  `view_position_perms` tinyint(4) DEFAULT '3',
  `edit_position_perms` tinyint(4) DEFAULT '3',
  `view_statistics` tinyint(4) DEFAULT '3',
  `view_finances` tinyint(4) DEFAULT '3',
  `view_profiles` tinyint(4) DEFAULT '3',
  `edit_profiles` tinyint(4) DEFAULT '3',
  `delete_profiles` tinyint(4) DEFAULT '3',
  `view_profile_overview` tinyint(4) DEFAULT '3',
  `view_profile_contact_info` tinyint(4) DEFAULT '3',
  `view_profile_medical_info` tinyint(4) DEFAULT '3',
  `view_profile_salary_info` tinyint(4) DEFAULT '3',
  `view_profile_imigration_info` tinyint(4) DEFAULT '3',
  `view_profile_grievance_info` tinyint(4) DEFAULT '3',
  `view_profile_note_info` tinyint(4) DEFAULT '3',
  `view_profile_cv_info` tinyint(4) DEFAULT '3',
  `view_imigration_list` tinyint(4) DEFAULT '3',
  `edit_imigration` tinyint(4) DEFAULT '3',
  `delete_imigration` tinyint(4) DEFAULT '3',
  `view_locations` tinyint(4) DEFAULT '3',
  `create_locations` tinyint(4) DEFAULT '3',
  `edit_locations` tinyint(4) DEFAULT '3',
  `delete_locations` tinyint(4) DEFAULT '3',
  `view_workflows` tinyint(4) DEFAULT '3',
  `edit_workflows` tinyint(4) DEFAULT '3',
  `delete_workflows` tinyint(4) DEFAULT '3',
  `view_workflowusers` tinyint(4) DEFAULT '3',
  `create_workflowusers` tinyint(4) DEFAULT '3',
  `edit_workflowusers` tinyint(4) DEFAULT '3',
  `view_holidays` tinyint(4) DEFAULT '3',
  `create_holidays` tinyint(4) DEFAULT '3',
  `edit_holidays` tinyint(4) DEFAULT '3',
  `delete_holidays` tinyint(4) DEFAULT '3',
  `view_contractors` tinyint(4) DEFAULT '3',
  `create_contractors` tinyint(4) DEFAULT '3',
  `edit_contractors` tinyint(4) DEFAULT '3',
  `delete_contractors` tinyint(4) DEFAULT '3',
  `view_departments` tinyint(4) DEFAULT '3',
  `create_departments` tinyint(4) DEFAULT '3',
  `edit_departments` tinyint(4) DEFAULT '3',
  `delete_departments` tinyint(4) DEFAULT '3',
  `view_documenttypes` tinyint(4) DEFAULT '3',
  `create_documenttypes` tinyint(4) DEFAULT '3',
  `edit_documenttypes` int(11) DEFAULT '3',
  `delete_documenttypes` tinyint(4) DEFAULT '3',
  `view_duties` tinyint(4) DEFAULT '3',
  `create_duties` tinyint(4) DEFAULT '3',
  `edit_duties` tinyint(4) DEFAULT '3',
  `delete_duties` tinyint(4) DEFAULT '3',
  `view_roles` tinyint(4) DEFAULT '3',
  `create_roles` tinyint(4) DEFAULT '3',
  `edit_roles` tinyint(4) DEFAULT '3',
  `delete_roles` tinyint(4) DEFAULT '3',
  `view_positions` tinyint(4) DEFAULT '3',
  `create_positions` tinyint(4) DEFAULT '3',
  `edit_positions` tinyint(4) DEFAULT '3',
  `delete_positions` tinyint(4) DEFAULT '3',
  `view_evaluationtypes` tinyint(4) DEFAULT '3',
  `create_evaluationtypes` tinyint(4) DEFAULT '3',
  `delete_evaluationtypes` tinyint(4) DEFAULT '3',
  `edit_evaluationtypes` tinyint(4) DEFAULT '3',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permissions` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_permissions
-- ----------------------------
INSERT INTO `user_permissions` VALUES ('1', '227', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, '2014-05-08 05:20:01', null);
INSERT INTO `user_permissions` VALUES ('2', '1', null, null, null, null, null, '3', '3', '3', '1', null, null, null, null, '3', null, '3', null, null, '2', null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, '3', null, null, null, null, null, null, '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2013-11-25 11:08:22', '2013-11-28 16:38:06', null);
INSERT INTO `user_permissions` VALUES ('3', '158', null, null, null, null, null, '3', '3', '3', null, null, null, null, null, '3', null, '3', null, '1', null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, null, '2', null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2013-11-25 20:01:03', '2013-12-15 16:14:31', null);
INSERT INTO `user_permissions` VALUES ('4', '229', null, null, null, null, null, '3', '3', '3', null, null, null, null, null, '3', null, '3', null, '1', null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, '3', '2', null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2013-11-26 11:34:16', '2013-11-26 11:34:16', null);
INSERT INTO `user_permissions` VALUES ('5', '7', null, null, null, null, null, '3', '3', '3', null, null, null, null, null, '3', null, '3', null, '1', '1', '1', null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, '3', '2', null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2013-11-26 16:34:25', '2013-11-26 16:34:25', null);
INSERT INTO `user_permissions` VALUES ('6', '419', null, null, null, null, null, '3', '3', '3', null, null, null, null, null, '3', null, '3', null, '1', null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, '1', '2', null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2013-11-26 18:35:59', '2013-11-26 18:35:59', null);
INSERT INTO `user_permissions` VALUES ('7', '6', null, null, null, null, null, '3', '3', '3', null, null, null, null, null, '3', null, '3', null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, '3', '2', null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2013-11-26 18:40:12', '2013-11-26 18:40:12', null);
INSERT INTO `user_permissions` VALUES ('9', '283', null, null, null, null, null, '3', '3', '3', null, null, null, null, null, '3', null, '3', null, null, null, null, null, null, '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null, null, null, null, '3', '2', null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2013-11-27 09:11:05', '2013-11-27 09:11:05', null);
INSERT INTO `user_permissions` VALUES ('20', '686', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', null, null, '3', null, null, null, null, '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-01-15 16:14:18', '2014-05-05 12:00:32', null);
INSERT INTO `user_permissions` VALUES ('21', '777', '3', '3', '3', '3', '3', '3', '3', '3', '0', '3', '0', '0', '0', '3', '0', '3', '0', '3', '3', '3', '0', '0', '3', '3', '3', '2', '3', '3', '3', '3', '3', '0', '3', '3', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-06 04:47:20', '2014-05-06 04:47:29', null);
INSERT INTO `user_permissions` VALUES ('22', '781', '3', '3', '3', '3', '3', '3', '3', '3', '1', '3', '1', '1', '1', '3', '1', '3', '1', '3', '3', '3', '1', '1', '3', '3', '3', '2', '3', '3', '3', '3', '3', '1', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-06 13:50:13', '2014-05-06 13:50:27', null);
INSERT INTO `user_permissions` VALUES ('23', '778', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-07 12:32:32', '2014-05-07 12:33:29', null);
INSERT INTO `user_permissions` VALUES ('24', '824', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-07 12:37:38', '2014-05-07 12:37:38', null);
INSERT INTO `user_permissions` VALUES ('25', '845', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-07 12:42:38', '2014-05-07 12:42:38', null);
INSERT INTO `user_permissions` VALUES ('26', '849', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-08 09:26:13', '2014-05-08 09:26:13', null);
INSERT INTO `user_permissions` VALUES ('27', '725', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-10 06:15:22', '2014-05-13 06:23:39', null);
INSERT INTO `user_permissions` VALUES ('28', '861', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-10 06:16:36', '2014-05-10 06:16:36', null);
INSERT INTO `user_permissions` VALUES ('29', '885', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-10 11:43:07', '2014-05-10 12:01:03', null);
INSERT INTO `user_permissions` VALUES ('30', '857', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '2014-05-10 11:54:01', '2014-05-10 11:54:13', null);

-- ----------------------------
-- Table structure for `user_positions`
-- ----------------------------
DROP TABLE IF EXISTS `user_positions`;
CREATE TABLE `user_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`role`)
) ENGINE=InnoDB AUTO_INCREMENT=666 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_positions
-- ----------------------------
INSERT INTO `user_positions` VALUES ('1', '1', 'English Chair', '2013-04-08', '2013-12-01');
INSERT INTO `user_positions` VALUES ('2', '2', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('3', '3', 'English Teacher', '2013-04-08', '2013-11-20');
INSERT INTO `user_positions` VALUES ('4', '4', 'Information Management Coordinator', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('5', '5', 'English Teacher', '2013-04-08', '2013-11-21');
INSERT INTO `user_positions` VALUES ('6', '6', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('7', '7', 'Human Resources Manager', '2013-04-08', '2013-11-26');
INSERT INTO `user_positions` VALUES ('8', '8', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('11', '11', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('15', '15', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('16', '16', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('17', '17', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('18', '18', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('19', '19', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('20', '20', 'English Chair', '2013-04-08', '2013-11-29');
INSERT INTO `user_positions` VALUES ('21', '21', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('22', '22', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('23', '23', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('24', '24', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('25', '25', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('26', '26', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('27', '27', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('28', '28', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('29', '29', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('30', '30', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('31', '31', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('32', '32', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('33', '33', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('34', '34', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('35', '35', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('36', '36', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('37', '37', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('38', '38', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('39', '39', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('40', '40', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('41', '41', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('42', '42', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('43', '43', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('44', '44', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('45', '45', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('46', '46', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('47', '47', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('48', '48', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('49', '49', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('50', '50', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('52', '52', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('53', '53', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('54', '54', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('55', '55', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('56', '56', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('57', '57', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('58', '58', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('59', '59', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('60', '60', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('61', '61', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('62', '62', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('63', '63', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('64', '64', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('65', '65', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('66', '66', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('67', '67', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('68', '68', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('69', '69', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('70', '70', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('71', '71', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('72', '72', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('73', '73', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('74', '74', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('75', '75', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('76', '76', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('77', '77', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('78', '78', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('79', '79', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('80', '80', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('81', '81', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('82', '82', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('83', '83', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('84', '84', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('85', '85', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('86', '86', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('87', '87', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('88', '88', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('89', '89', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('90', '90', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('91', '91', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('92', '92', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('93', '93', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('94', '94', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('95', '95', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('96', '96', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('97', '97', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('98', '98', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('99', '99', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('100', '100', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('101', '101', 'English Teacher', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('102', '102', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('103', '103', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('104', '104', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('105', '105', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('106', '106', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('107', '107', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('108', '108', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('109', '109', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('110', '110', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('111', '111', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('112', '112', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('113', '113', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('114', '114', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('115', '115', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('116', '116', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('117', '117', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('118', '118', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('119', '119', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('120', '120', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('121', '121', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('122', '122', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('123', '123', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('124', '124', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('125', '125', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('126', '126', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('127', '127', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('128', '128', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('129', '129', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('130', '130', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('131', '131', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('132', '132', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('133', '133', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('134', '134', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('135', '135', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('136', '136', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('137', '137', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('138', '138', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('139', '139', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('140', '140', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('141', '141', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('142', '142', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('143', '143', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('144', '144', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('145', '145', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('146', '146', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('147', '147', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('148', '148', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('149', '149', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('150', '150', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('151', '151', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('152', '152', 'Teacher', '2013-04-08', '2013-05-09');
INSERT INTO `user_positions` VALUES ('153', '153', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('154', '154', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('155', '155', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('156', '156', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('157', '157', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('158', '158', 'Human Resources Coordinator', '2013-04-08', '2013-11-29');
INSERT INTO `user_positions` VALUES ('159', '159', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('160', '160', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('161', '161', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('162', '162', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('163', '163', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('164', '164', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('165', '165', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('166', '166', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('167', '167', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('168', '168', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('169', '169', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('170', '170', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('171', '171', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('172', '172', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('173', '173', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('174', '174', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('175', '175', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('176', '176', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('177', '177', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('178', '178', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('179', '179', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('180', '180', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('181', '181', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('182', '182', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('183', '183', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('184', '184', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('185', '185', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('186', '186', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('187', '187', 'Human Resources Coordinator', '2013-04-08', '2013-11-21');
INSERT INTO `user_positions` VALUES ('188', '188', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('189', '189', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('190', '190', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('191', '191', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('192', '192', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('193', '193', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('194', '194', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('195', '195', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('196', '196', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('197', '197', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('198', '198', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('199', '199', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('200', '200', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('201', '201', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('202', '202', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('203', '203', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('204', '204', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('205', '205', 'Teacher', '2013-04-08', '2013-05-09');
INSERT INTO `user_positions` VALUES ('206', '206', 'Teacher', '2013-04-08', '2013-05-10');
INSERT INTO `user_positions` VALUES ('207', '207', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('208', '208', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('209', '209', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('210', '210', 'super admin', '2013-04-08', '2013-09-17');
INSERT INTO `user_positions` VALUES ('211', '211', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('212', '212', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('213', '213', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('214', '214', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('215', '215', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('216', '216', 'Teacher', '2013-04-08', '2013-04-23');
INSERT INTO `user_positions` VALUES ('217', '217', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('218', '218', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('219', '219', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('220', '220', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('221', '221', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('222', '222', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('223', '223', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('224', '224', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('225', '225', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('226', '226', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('228', '228', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('229', '229', 'Information Management Lead Teacher', '2013-04-08', '2013-11-26');
INSERT INTO `user_positions` VALUES ('230', '230', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('231', '231', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('232', '232', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('233', '233', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('234', '234', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('235', '235', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('236', '236', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('237', '237', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('238', '238', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('239', '239', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('240', '240', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('241', '241', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('242', '242', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('243', '243', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('244', '244', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('245', '245', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('246', '246', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('247', '247', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('248', '248', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('249', '249', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('250', '250', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('251', '251', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('252', '252', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('253', '253', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('254', '254', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('255', '255', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('256', '256', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('257', '257', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('258', '258', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('259', '259', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('260', '260', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('261', '261', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('262', '262', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('263', '263', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('264', '264', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('265', '265', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('266', '266', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('267', '267', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('268', '268', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('269', '269', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('270', '270', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('271', '271', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('272', '272', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('273', '273', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('274', '274', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('275', '275', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('276', '276', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('277', '277', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('278', '278', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('279', '279', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('280', '280', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('281', '281', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('282', '282', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('283', '283', 'Information Management Lead Teacher', '2013-04-08', '2013-11-27');
INSERT INTO `user_positions` VALUES ('284', '284', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('285', '285', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('286', '286', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('287', '287', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('288', '288', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('289', '289', 'Teacher', '2013-04-08', '2013-05-10');
INSERT INTO `user_positions` VALUES ('290', '290', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('291', '291', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('292', '292', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('293', '293', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('294', '294', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('295', '295', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('296', '296', 'Assessment Manager', '2013-04-08', '2013-11-24');
INSERT INTO `user_positions` VALUES ('297', '297', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('298', '298', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('299', '299', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('300', '300', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('301', '301', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('302', '302', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('303', '303', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('304', '304', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('305', '305', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('306', '306', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('307', '307', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('308', '308', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('309', '309', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('310', '310', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('311', '311', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('312', '312', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('313', '313', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('314', '314', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('315', '315', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('316', '316', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('317', '317', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('318', '318', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('319', '319', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('320', '320', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('321', '321', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('322', '322', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('323', '323', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('324', '324', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('325', '325', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('326', '326', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('327', '327', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('328', '328', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('329', '329', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('330', '330', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('331', '331', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('332', '332', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('333', '333', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('334', '334', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('335', '335', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('336', '336', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('337', '337', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('338', '338', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('339', '339', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('340', '340', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('341', '341', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('342', '342', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('343', '343', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('344', '344', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('345', '345', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('346', '346', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('347', '347', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('348', '348', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('349', '349', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('350', '350', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('351', '351', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('352', '352', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('353', '353', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('354', '354', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('355', '355', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('356', '356', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('357', '357', 'E-Learning Administrator', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('358', '358', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('359', '359', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('360', '360', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('361', '361', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('362', '362', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('363', '363', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('364', '364', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('365', '365', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('366', '366', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('367', '367', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('368', '368', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('369', '369', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('370', '370', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('371', '371', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('372', '372', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('373', '373', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('374', '374', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('375', '375', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('376', '376', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('377', '377', 'Assessment Manager', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('378', '378', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('379', '379', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('380', '380', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('381', '381', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('382', '382', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('383', '383', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('384', '384', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('385', '385', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('386', '386', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('387', '387', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('388', '388', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('389', '389', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('390', '390', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('391', '391', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('392', '392', 'Teacher', '2013-04-08', '2013-04-10');
INSERT INTO `user_positions` VALUES ('393', '393', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('394', '394', 'Teacher', '2013-04-08', '2013-04-13');
INSERT INTO `user_positions` VALUES ('395', '395', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('396', '396', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('397', '397', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('398', '398', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('399', '399', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('400', '400', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('401', '401', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('402', '402', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('403', '403', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('404', '404', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('405', '405', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('406', '406', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('407', '407', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('408', '408', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('409', '409', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('410', '410', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('411', '411', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('412', '412', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('413', '413', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('414', '414', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('415', '415', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('416', '416', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('417', '417', 'Teacher', '2013-04-08', '0000-00-00');
INSERT INTO `user_positions` VALUES ('418', '418', 'Teacher', '2013-04-08', '2013-04-10');
INSERT INTO `user_positions` VALUES ('419', '419', 'Information Management Manager', '2013-04-08', '2013-11-21');
INSERT INTO `user_positions` VALUES ('537', '537', 'Assessment Manager', '2013-04-08', '2013-11-23');
INSERT INTO `user_positions` VALUES ('635', '51', 'Student Affairs Advisor', '2013-12-01', '2013-12-01');
INSERT INTO `user_positions` VALUES ('636', '651', 'Assessment Manager', '2013-12-30', '2013-12-30');
INSERT INTO `user_positions` VALUES ('637', '725', 'Administration Driver', '0000-00-00', '2014-05-10');
INSERT INTO `user_positions` VALUES ('638', '777', 'Management CEO', '2014-04-28', '2014-04-28');
INSERT INTO `user_positions` VALUES ('639', '778', 'Management Administrator', '2014-04-28', '2014-04-28');
INSERT INTO `user_positions` VALUES ('640', '779', 'Management CEO', '2014-04-28', '2014-04-28');
INSERT INTO `user_positions` VALUES ('641', '780', 'Employee\'s Line Manager', '2014-04-28', '2014-04-28');
INSERT INTO `user_positions` VALUES ('643', '808', 'Employee\'s Line Manager', '2014-05-05', '2014-05-05');
INSERT INTO `user_positions` VALUES ('644', '815', 'Employee\'s Line Manager', '2014-05-05', '2014-05-05');
INSERT INTO `user_positions` VALUES ('645', '816', 'Management RMP Administrator', '2014-05-06', '2014-05-06');
INSERT INTO `user_positions` VALUES ('646', '819', 'Logistics Driver', '2014-05-06', '2014-05-06');
INSERT INTO `user_positions` VALUES ('647', '821', 'Administration Administrator', '2014-05-07', '2014-05-07');
INSERT INTO `user_positions` VALUES ('648', '822', 'Administration Administrator', '2014-05-07', '2014-05-07');
INSERT INTO `user_positions` VALUES ('649', '823', 'Administration Administrator', '2014-05-07', '2014-05-07');
INSERT INTO `user_positions` VALUES ('650', '824', 'Administration Administrator', '2014-05-07', '2014-05-07');
INSERT INTO `user_positions` VALUES ('652', '849', 'Recruitment11 CEO', '2014-05-08', '2014-05-08');
INSERT INTO `user_positions` VALUES ('653', '857', 'Logistics Administrator', '2014-05-08', '2014-05-09');
INSERT INTO `user_positions` VALUES ('654', '858', 'Logistics Administrator', '2014-05-08', '2014-05-08');
INSERT INTO `user_positions` VALUES ('655', '859', 'Administration Driver', '2014-05-08', '2014-05-09');
INSERT INTO `user_positions` VALUES ('656', '860', 'Management Administrator', '2014-05-08', '2014-05-08');
INSERT INTO `user_positions` VALUES ('657', '861', 'Logistics Interviewer', '2014-05-08', '2014-05-08');
INSERT INTO `user_positions` VALUES ('658', '880', 'Administration Driver', '2014-05-09', '2014-05-09');
INSERT INTO `user_positions` VALUES ('659', '881', 'Recruitment CEO', '2014-05-09', '2014-05-09');
INSERT INTO `user_positions` VALUES ('660', '882', 'Recruitment CEO', '2014-05-09', '2014-05-12');
INSERT INTO `user_positions` VALUES ('661', '883', 'Employee\'s Line Manager', '2014-05-09', '2014-05-09');
INSERT INTO `user_positions` VALUES ('662', '884', 'Logistics Administrator', '2014-05-09', '2014-05-09');
INSERT INTO `user_positions` VALUES ('663', '885', 'Administration Driver', '2014-05-09', '2014-05-10');
INSERT INTO `user_positions` VALUES ('664', '900', 'Administration Driver', '2014-05-12', '2014-05-12');
INSERT INTO `user_positions` VALUES ('665', '904', 'Recruitment11 Administrator', '2014-05-12', '2014-05-12');

-- ----------------------------
-- Table structure for `user_qualification`
-- ----------------------------
DROP TABLE IF EXISTS `user_qualification`;
CREATE TABLE `user_qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subject_related` tinyint(4) DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institute` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hr_confirmed` tinyint(4) NOT NULL DEFAULT '2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_qualification
-- ----------------------------
INSERT INTO `user_qualification` VALUES ('499', '694', null, 'BA', 'English Literature & Linguistics', 'Harvard', '1994-07-19', '1', '2014-01-19 14:31:01', '2014-01-20 12:00:11');
INSERT INTO `user_qualification` VALUES ('500', '693', null, 'MA', 'Computing and Information Systems', 'Oxford University', '2010-01-13', '1', '2014-01-20 03:57:20', '2014-01-20 03:57:20');
INSERT INTO `user_qualification` VALUES ('501', '694', null, 'MA', 'English Literature & Linguistics', 'Harvard', '1994-07-19', '1', '2014-01-19 14:31:01', '2014-01-19 14:31:01');
INSERT INTO `user_qualification` VALUES ('502', '712', null, 'BA', 'Graphic Design', 'UEL', '2014-01-15', '2', '2014-01-22 15:01:52', '2014-01-22 15:01:52');
INSERT INTO `user_qualification` VALUES ('503', '716', null, 'MA', 'Applied Linguistics', 'sdfsdf', '2014-01-15', '1', '2014-01-22 17:13:37', '2014-02-15 15:21:00');
INSERT INTO `user_qualification` VALUES ('509', '714', null, 'MA', 'Applied Lin', 'Ox', '2014-02-05', '1', '2014-02-24 13:43:40', '2014-02-24 13:43:40');
INSERT INTO `user_qualification` VALUES ('510', '719', null, 'BA', 'Graphic Design', 'UEL', '2010-07-08', '2', '2014-03-03 21:28:17', '2014-03-03 21:28:17');
INSERT INTO `user_qualification` VALUES ('511', '722', null, 'BA', 'Graphic Design', 'UEL', '2010-03-09', '1', '2014-03-04 00:51:01', '2014-03-04 15:26:09');
INSERT INTO `user_qualification` VALUES ('525', '726', null, 'BA', 'Graphic Design', 'UEL', '2014-03-27', '2', '2014-03-09 21:45:05', '2014-03-09 21:45:05');
INSERT INTO `user_qualification` VALUES ('526', '726', null, 'MA', 'Applied Linguistics', 'Oxford University', '2010-07-01', '2', '2014-03-09 21:45:05', '2014-03-09 21:45:05');
INSERT INTO `user_qualification` VALUES ('527', '724', null, 'BA', 'Graphic Design', 'UEL', '2014-03-13', '2', '2014-03-13 17:22:13', '2014-03-13 17:22:13');
INSERT INTO `user_qualification` VALUES ('531', '724', null, 'PHD', 'wew', 'wewe', '2014-03-04', '2', '2014-03-27 00:20:36', '2014-03-27 00:20:36');
INSERT INTO `user_qualification` VALUES ('532', '723', null, 'MA', 'English', 'UEL', '2014-03-11', '1', '0000-00-00 00:00:00', '2014-04-29 10:29:39');
INSERT INTO `user_qualification` VALUES ('535', '723', null, 'MA', 'test 56hyh', 'testh', '2014-04-08', '1', '0000-00-00 00:00:00', '2014-04-28 07:40:23');
INSERT INTO `user_qualification` VALUES ('538', '762', null, 'BA', 'test', 'test', '2014-04-03', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `user_qualification` VALUES ('539', '766', null, 'MA', '11', '11', '2014-04-01', '1', '2014-04-29 06:31:18', '2014-04-29 06:32:29');
INSERT INTO `user_qualification` VALUES ('540', '766', null, 'LLB', 'q', 'q', '2014-04-29', '2', '2014-04-29 06:33:03', '2014-04-29 06:33:03');
INSERT INTO `user_qualification` VALUES ('541', '766', null, 'BMA', 'q', 'q', '2014-04-01', '2', '2014-04-29 06:33:11', '2014-04-29 06:33:11');
INSERT INTO `user_qualification` VALUES ('543', '792', null, 'PHD', 'tesst11', 'tesst11', '2014-12-31', '1', '2014-04-29 07:45:58', '2014-04-29 07:47:45');
INSERT INTO `user_qualification` VALUES ('544', '776', null, 'PHD', '11', '11', '2014-05-30', '2', '2014-05-05 07:26:11', '2014-05-05 07:26:11');
INSERT INTO `user_qualification` VALUES ('545', '811', null, 'BA', '1q1', '1', '2014-05-03', '2', '2014-05-05 07:55:12', '2014-05-05 07:55:12');
INSERT INTO `user_qualification` VALUES ('550', '813', null, 'BA', 'ss', 'fdf', '1970-01-01', '2', '2014-05-05 09:56:16', '2014-05-05 09:56:16');
INSERT INTO `user_qualification` VALUES ('551', '813', null, 'BA', 'H&Acirc;', 'HA', '2014-05-05', '2', '2014-05-05 09:57:10', '2014-05-05 09:57:10');
INSERT INTO `user_qualification` VALUES ('552', '813', null, 'BA', '                  ', 'HA', '2014-05-01', '2', '2014-05-05 09:58:16', '2014-05-05 09:58:16');
INSERT INTO `user_qualification` VALUES ('553', '813', null, 'BA', '                  ', 'HA', '2014-05-01', '2', '2014-05-05 09:58:17', '2014-05-05 09:58:17');
INSERT INTO `user_qualification` VALUES ('554', '813', null, 'BA', 'hsa', '                      ', '2014-05-01', '2', '2014-05-05 10:02:04', '2014-05-05 10:02:04');
INSERT INTO `user_qualification` VALUES ('555', '813', null, 'BA', '                    ', '                 ', '2014-05-01', '2', '2014-05-05 10:14:18', '2014-05-05 10:14:18');
INSERT INTO `user_qualification` VALUES ('556', '776', null, 'BA', '1', '1', '2014-05-30', '2', '2014-05-05 11:58:03', '2014-05-05 11:58:03');
INSERT INTO `user_qualification` VALUES ('557', '784', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-05 12:04:52', '2014-05-05 12:04:52');
INSERT INTO `user_qualification` VALUES ('558', '794', null, 'BA', 'kkk', 'kkk', '2014-05-03', '2', '2014-05-05 12:32:48', '2014-05-05 12:32:48');
INSERT INTO `user_qualification` VALUES ('559', '785', null, 'BA', '2', 'ws', '2014-05-01', '2', '2014-05-05 12:56:56', '2014-05-05 12:56:56');
INSERT INTO `user_qualification` VALUES ('560', '800', null, 'BA', 'dsd', 'dsd', '2014-05-15', '2', '2014-05-05 13:38:58', '2014-05-05 13:38:58');
INSERT INTO `user_qualification` VALUES ('561', '799', null, 'BA', 'aaa', 'aaa', '2014-05-21', '2', '2014-05-05 14:12:19', '2014-05-05 14:12:19');
INSERT INTO `user_qualification` VALUES ('562', '804', null, 'BA', 'hoc', 'speak ', '2014-05-01', '2', '2014-05-06 04:38:19', '2014-05-06 04:38:19');
INSERT INTO `user_qualification` VALUES ('563', '786', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-06 04:45:28', '2014-05-06 04:45:28');
INSERT INTO `user_qualification` VALUES ('564', '767', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-06 07:45:36', '2014-05-06 07:45:36');
INSERT INTO `user_qualification` VALUES ('566', '787', null, 'BBA', '1', '11', '2014-05-01', '2', '2014-05-06 13:23:14', '2014-05-06 13:23:14');
INSERT INTO `user_qualification` VALUES ('567', '801', null, 'PHD', 'Qwe', 'qweqwe', '2014-05-22', '2', '2014-05-07 04:26:10', '2014-05-07 04:26:10');
INSERT INTO `user_qualification` VALUES ('568', '805', null, 'BEd', 'Q', 'qweqwe', '2014-05-20', '2', '2014-05-07 04:45:44', '2014-05-07 04:45:44');
INSERT INTO `user_qualification` VALUES ('571', '807', null, 'BA', '1', '1', '2014-05-31', '2', '2014-05-07 10:30:42', '2014-05-07 10:30:42');
INSERT INTO `user_qualification` VALUES ('572', '844', null, 'BA', '1', '1', '2014-05-02', '2', '2014-05-07 10:35:33', '2014-05-07 10:35:33');
INSERT INTO `user_qualification` VALUES ('573', '785', null, 'BA', '1q1', '11', '2014-05-03', '2', '2014-05-07 12:21:39', '2014-05-07 12:21:39');
INSERT INTO `user_qualification` VALUES ('574', '770', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-08 07:12:49', '2014-05-08 07:12:49');
INSERT INTO `user_qualification` VALUES ('575', '847', null, 'BA', '1', '1', '2014-05-31', '2', '2014-05-08 07:15:30', '2014-05-08 07:15:30');
INSERT INTO `user_qualification` VALUES ('576', '848', null, 'BA', '1', '1', '2014-05-30', '2', '2014-05-08 07:56:52', '2014-05-08 07:56:52');
INSERT INTO `user_qualification` VALUES ('577', '795', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-08 09:52:43', '2014-05-08 09:52:43');
INSERT INTO `user_qualification` VALUES ('578', '850', null, 'BA', '11', '11', '2014-05-01', '2', '2014-05-08 10:58:37', '2014-05-08 10:58:37');
INSERT INTO `user_qualification` VALUES ('579', '846', null, 'BA', '1', '1', '2014-05-02', '2', '2014-05-08 11:43:15', '2014-05-08 11:43:15');
INSERT INTO `user_qualification` VALUES ('580', '841', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-08 12:06:14', '2014-05-08 12:06:14');
INSERT INTO `user_qualification` VALUES ('581', '841', null, 'BA', '1`', '1', '2014-05-29', '2', '2014-05-08 12:18:24', '2014-05-08 12:18:24');
INSERT INTO `user_qualification` VALUES ('582', '841', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-08 12:26:12', '2014-05-08 12:26:12');
INSERT INTO `user_qualification` VALUES ('583', '851', null, 'LLB', 'Qwerty', 'Newyork', '2014-05-22', '2', '2014-05-08 12:55:42', '2014-05-08 12:55:42');
INSERT INTO `user_qualification` VALUES ('584', '856', null, 'BBA', 'sss', 'iii', '2014-05-27', '2', '2014-05-08 13:45:59', '2014-05-08 13:45:59');
INSERT INTO `user_qualification` VALUES ('585', '863', null, 'MA', 'English', 'English', '2003-01-01', '2', '2014-05-08 14:18:50', '2014-05-08 14:19:10');
INSERT INTO `user_qualification` VALUES ('586', '863', null, 'BA', 'Study', 'Study', '2014-05-28', '2', '2014-05-08 14:19:02', '2014-05-08 14:19:02');
INSERT INTO `user_qualification` VALUES ('587', '854', null, 'BA', 'English', 'English', '2014-05-01', '2', '2014-05-08 14:22:25', '2014-05-08 14:22:25');
INSERT INTO `user_qualification` VALUES ('588', '868', null, 'BA', 'learn English', 'learn English', '2014-05-01', '2', '2014-05-08 14:25:18', '2014-05-08 14:25:18');
INSERT INTO `user_qualification` VALUES ('589', '867', null, 'BA', 'study', 'study', '2014-05-01', '2', '2014-05-08 14:34:46', '2014-05-08 14:34:46');
INSERT INTO `user_qualification` VALUES ('592', '875', null, 'BA', 'Study', 'study', '2014-05-01', '2', '2014-05-09 04:28:28', '2014-05-09 04:31:54');
INSERT INTO `user_qualification` VALUES ('593', '875', null, 'BA', 'english', 'english', '2014-05-11', '1', '2014-05-09 04:32:16', '2014-05-09 04:32:40');
INSERT INTO `user_qualification` VALUES ('594', '874', null, 'BA', 'Study', 'Study', '2014-05-01', '2', '2014-05-09 04:36:06', '2014-05-09 04:36:06');
INSERT INTO `user_qualification` VALUES ('597', '876', null, 'BA', '                         ', '                                        ', '2014-05-09', '2', '2014-05-09 05:03:35', '2014-05-09 05:03:35');
INSERT INTO `user_qualification` VALUES ('598', '876', null, 'BA', '                ', '                  ', '2014-05-09', '2', '2014-05-09 05:05:26', '2014-05-09 05:05:26');
INSERT INTO `user_qualification` VALUES ('599', '876', null, 'BA', '1', '1', '2014-05-04', '2', '2014-05-09 05:29:25', '2014-05-09 05:29:25');
INSERT INTO `user_qualification` VALUES ('600', '876', null, 'BA', '                        ', '                        ', '2014-05-09', '2', '2014-05-09 05:30:23', '2014-05-09 05:30:23');
INSERT INTO `user_qualification` VALUES ('601', '872', null, 'BBA', 'Study', 'Study', '2014-05-19', '2', '2014-05-09 05:53:54', '2014-05-09 06:23:47');
INSERT INTO `user_qualification` VALUES ('602', '854', null, 'BA', 'test', 'test', '2014-05-13', '2', '2014-05-09 06:14:40', '2014-05-09 06:14:40');
INSERT INTO `user_qualification` VALUES ('603', '872', null, 'PHD', '1', '1', '2014-05-11', '2', '2014-05-09 06:22:28', '2014-05-09 06:22:28');
INSERT INTO `user_qualification` VALUES ('604', '877', null, 'BA', '1', '1', '2014-05-03', '2', '2014-05-09 10:34:57', '2014-05-09 10:34:57');
INSERT INTO `user_qualification` VALUES ('605', '866', null, 'BA', 'aaaaa', 'aa', '2014-05-15', '2', '2014-05-09 11:01:55', '2014-05-09 11:01:55');
INSERT INTO `user_qualification` VALUES ('606', '873', null, 'BA', '1', '1', '2014-05-01', '1', '2014-05-09 12:23:05', '2014-05-12 12:49:51');
INSERT INTO `user_qualification` VALUES ('608', '879', null, 'BA', 't&eacute;t', 't&eacute;t', '2014-05-14', '2', '2014-05-09 13:43:32', '2014-05-09 13:43:32');
INSERT INTO `user_qualification` VALUES ('609', '879', null, 'BA', 'aaa', 'aaaa', '1970-01-01', '2', '2014-05-09 14:08:35', '2014-05-09 14:08:35');
INSERT INTO `user_qualification` VALUES ('610', '879', null, 'BA', 'aaa', 'aaaa', '1970-01-01', '2', '2014-05-09 14:09:45', '2014-05-09 14:09:45');
INSERT INTO `user_qualification` VALUES ('612', '879', null, 'BA', '11111111', '111111111', '2014-05-28', '2', '2014-05-09 14:20:47', '2014-05-10 05:01:47');
INSERT INTO `user_qualification` VALUES ('613', '872', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-10 04:50:50', '2014-05-10 04:50:50');
INSERT INTO `user_qualification` VALUES ('614', '871', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-10 05:44:16', '2014-05-10 05:44:16');
INSERT INTO `user_qualification` VALUES ('615', '870', null, 'BA', '1', '1', '2014-05-31', '2', '2014-05-10 06:20:49', '2014-05-10 06:20:49');
INSERT INTO `user_qualification` VALUES ('616', '865', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-10 07:50:55', '2014-05-10 07:50:55');
INSERT INTO `user_qualification` VALUES ('617', '855', null, 'BA', 'Test', 'Test', '2014-05-20', '2', '2014-05-10 13:28:05', '2014-05-10 13:28:05');
INSERT INTO `user_qualification` VALUES ('618', '864', null, 'BA', 'Test', 'test', '2014-05-27', '2', '2014-05-10 14:05:51', '2014-05-10 14:05:51');
INSERT INTO `user_qualification` VALUES ('619', '901', null, 'BA', '1', '1', '2014-05-16', '2', '2014-05-12 09:46:41', '2014-05-12 09:46:41');
INSERT INTO `user_qualification` VALUES ('620', '902', null, 'PHD', '1', '1', '2014-05-01', '2', '2014-05-12 09:52:32', '2014-05-12 09:52:32');
INSERT INTO `user_qualification` VALUES ('621', '903', null, 'BA', '1', '1', '2014-05-01', '2', '2014-05-12 13:04:50', '2014-05-12 13:04:50');
INSERT INTO `user_qualification` VALUES ('622', '862', null, 'BA', 'Teste', 'test', '2014-05-07', '2', '2014-05-13 09:10:12', '2014-05-13 09:10:12');
INSERT INTO `user_qualification` VALUES ('623', '898', null, 'BA', 'dfsdfdf', 'dfff', '2014-05-14', '2', '2014-05-13 12:00:16', '2014-05-13 12:00:16');
INSERT INTO `user_qualification` VALUES ('624', '923', null, 'BA', 'ss', 'ss', '2014-05-05', '2', '2014-05-13 12:47:08', '2014-05-13 12:47:08');
INSERT INTO `user_qualification` VALUES ('625', '924', null, 'BA', 'sss', 's', '2014-05-15', '2', '2014-05-14 04:25:21', '2014-05-14 04:25:21');
INSERT INTO `user_qualification` VALUES ('626', '925', null, 'BA', 'ddddddddd', 'dddddd', '2014-05-13', '2', '2014-05-15 04:31:29', '2014-05-15 04:31:29');
INSERT INTO `user_qualification` VALUES ('627', '855', null, 'BSc', 'dddd', 'dddddddddd', '2014-05-13', '2', '2014-05-16 05:50:32', '2014-05-16 05:50:32');
INSERT INTO `user_qualification` VALUES ('628', '930', null, 'BA', 'Test', 'test', '2014-05-22', '2', '2014-05-16 06:07:29', '2014-05-16 06:07:29');
INSERT INTO `user_qualification` VALUES ('629', '930', null, 'BA', 'ooo', 'oooooo', '2014-05-14', '2', '2014-05-16 08:05:14', '2014-05-16 08:05:14');
INSERT INTO `user_qualification` VALUES ('630', '930', null, 'BA', 'ooooooooooo', 'o', '2014-05-14', '2', '2014-05-16 08:05:14', '2014-05-16 08:05:14');

-- ----------------------------
-- Table structure for `user_workhistory`
-- ----------------------------
DROP TABLE IF EXISTS `user_workhistory`;
CREATE TABLE `user_workhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `departure_reason` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `duties` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_workhistory
-- ----------------------------
INSERT INTO `user_workhistory` VALUES ('1', '714', 'King Saud University', '2010-10-05', '2014-06-24', 'Salary was too low', 'E Learning Lead Teacher', 'â€¢ none', '2013-08-26 11:47:33', '2014-02-25 11:48:52');
INSERT INTO `user_workhistory` VALUES ('3', '686', 'Misr International', '2009-10-05', '2010-06-24', 'Salary was too low', 'EFL Instructor & Examiner', 'dxag gsd fg fsgdgfdgdfg fgdgfgd fd fdg adt4ttT T RET RET TT RT ERT E', '2013-08-26 11:47:33', '2013-08-26 11:47:33');
INSERT INTO `user_workhistory` VALUES ('4', '714', 'McDonalds', '2013-01-01', '2014-01-01', 'Promotion', 'Master Chef', 'â€¢ Fry burgers â€¢ Fry Chips', '2014-02-25 20:21:57', '2014-02-25 20:31:42');
INSERT INTO `user_workhistory` VALUES ('5', '714', 'test', '2014-02-03', '2014-02-04', 'any reason', 'Manager', 'any thing', '2014-02-27 12:44:28', '2014-02-27 12:44:28');
INSERT INTO `user_workhistory` VALUES ('6', '719', 'King Saud University', '2010-10-05', '2014-07-17', 'Salary to low', 'EFL Instructor', 'Teaching, lesson plans, etc...', '2014-03-03 21:50:28', '2014-03-03 21:50:28');
INSERT INTO `user_workhistory` VALUES ('14', '726', 'Sainsburys', '1991-03-06', '1995-03-22', '', 'Manager', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.', '2014-03-09 21:46:13', '2014-03-09 21:46:13');
INSERT INTO `user_workhistory` VALUES ('15', '726', 'Tesco', '1997-11-12', '2001-10-09', '', 'Manager', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.', '2014-03-09 21:46:13', '2014-03-09 21:46:13');
INSERT INTO `user_workhistory` VALUES ('16', '724', 'Tesco', '2010-03-09', '2011-07-12', '', 'Manager', 'name some duties', '2014-03-14 13:01:31', '2014-03-14 13:01:31');
INSERT INTO `user_workhistory` VALUES ('19', '762', 'test', '2008-04-01', '2009-04-09', 'est', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `user_workhistory` VALUES ('21', '723', 'Test', '2014-04-01', '2014-04-30', 'q1', '111', 'q1`', '2014-04-28 07:37:13', '2014-04-28 13:49:52');
INSERT INTO `user_workhistory` VALUES ('22', '723', 'aqweqwe', '2014-04-15', '2014-04-23', 'adasdasdad', 'qweqw', 'asdasdadsad', '2014-04-28 13:56:08', '2014-04-28 13:56:08');
INSERT INTO `user_workhistory` VALUES ('23', '723', 'asdas', '2014-04-26', '2014-04-18', 'asdasdasd', 'dasd', 'asdasd', '2014-04-28 13:56:30', '2014-04-28 13:56:30');
INSERT INTO `user_workhistory` VALUES ('24', '723', 'sdaasd', '2014-04-22', '2014-04-26', 'da', 'asdasddad', 'dadsad', '2014-04-28 13:57:44', '2014-04-28 13:57:44');
INSERT INTO `user_workhistory` VALUES ('25', '723', 'qqqqqqqqqqqqqqq', '2014-04-08', '2014-04-26', 'qqqq', 'qqqqq', 'qq', '2014-04-28 13:58:14', '2014-04-28 13:58:14');
INSERT INTO `user_workhistory` VALUES ('26', '723', 'sdf', '2014-04-09', '2014-04-18', 'fdfdsfdsf', 'sdfsdfs', 'sdfsd', '2014-04-28 14:25:23', '2014-04-28 14:25:23');
INSERT INTO `user_workhistory` VALUES ('27', '766', '1', '2014-04-01', '2014-04-30', '1', '1', '1', '2014-04-29 06:31:45', '2014-04-29 06:31:45');
INSERT INTO `user_workhistory` VALUES ('28', '766', 'w', '2014-04-01', '2014-04-30', 'ww', 'w', 'ww', '2014-04-29 06:33:47', '2014-04-29 06:33:47');
INSERT INTO `user_workhistory` VALUES ('30', '767', 'ha', '2014-03-01', '2019-04-30', 'qq', 'tester', 'nguyễn thi thanh ha', '2014-04-29 11:53:36', '2014-04-29 11:53:36');
INSERT INTO `user_workhistory` VALUES ('31', '776', '1', '2014-05-01', '2014-08-31', 'd', '1', 'd', '2014-05-05 12:00:57', '2014-05-05 12:00:57');
INSERT INTO `user_workhistory` VALUES ('32', '784', '1', '2014-05-01', '2014-05-30', '1', '1', '1', '2014-05-05 12:05:40', '2014-05-05 12:05:40');
INSERT INTO `user_workhistory` VALUES ('33', '794', 'kk', '2009-05-06', '2011-05-19', 'kk', 'kk', 'kkk', '2014-05-05 12:33:10', '2014-05-05 12:33:10');
INSERT INTO `user_workhistory` VALUES ('34', '785', 'q1', '2014-05-31', '2014-07-31', '``', '`1', '`', '2014-05-05 12:57:54', '2014-05-05 12:57:54');
INSERT INTO `user_workhistory` VALUES ('35', '800', 'dsds', '2014-05-21', '2014-05-24', 'dsdsd', 'sdsd', 'sdsdsd', '2014-05-05 13:38:51', '2014-05-05 13:38:51');
INSERT INTO `user_workhistory` VALUES ('36', '799', 'aaa', '2014-05-15', '2014-05-31', 'aaaaaaaaaa', 'aaaaaaaaaaaa', 'aaaa', '2014-05-05 14:12:34', '2014-05-05 14:12:34');
INSERT INTO `user_workhistory` VALUES ('37', '786', '1', '2014-05-01', '2014-05-30', '1', '1', '1', '2014-05-06 04:45:56', '2014-05-06 04:45:56');
INSERT INTO `user_workhistory` VALUES ('38', '787', '1', '2014-05-01', '2014-05-31', '1', '1', '1', '2014-05-06 13:23:27', '2014-05-06 13:23:27');
INSERT INTO `user_workhistory` VALUES ('39', '801', 'qweqw', '2014-05-12', '2014-05-31', 'eqweqwewqe', 'qweqwe', 'qweqweqw', '2014-05-07 04:26:30', '2014-05-07 04:26:30');
INSERT INTO `user_workhistory` VALUES ('40', '805', 'qweqw', '2014-05-05', '2014-05-24', 'qweqweqw', 'qweqwe', 'qweqwe', '2014-05-07 04:45:57', '2014-05-07 04:45:57');
INSERT INTO `user_workhistory` VALUES ('42', '807', '1', '2014-05-03', '2014-05-31', 'tran mai', '1', 'tran mai', '2014-05-07 10:31:11', '2014-05-07 10:31:11');
INSERT INTO `user_workhistory` VALUES ('43', '844', '1', '2014-05-30', '2014-05-31', '1111111', '1', '111111111', '2014-05-07 10:35:51', '2014-05-07 10:35:51');
INSERT INTO `user_workhistory` VALUES ('44', '770', '1', '2014-05-01', '2014-05-31', '1', '1', '11', '2014-05-08 07:13:00', '2014-05-08 07:13:00');
INSERT INTO `user_workhistory` VALUES ('45', '847', '1', '2014-05-01', '2014-05-31', '1', '1', '1', '2014-05-08 07:15:42', '2014-05-08 07:15:42');
INSERT INTO `user_workhistory` VALUES ('46', '848', '1', '2014-05-03', '2014-05-31', '1', '1', '1', '2014-05-08 07:57:04', '2014-05-08 07:57:04');
INSERT INTO `user_workhistory` VALUES ('47', '795', '1', '2014-05-30', '2014-05-31', '11', '1', '11', '2014-05-08 09:52:55', '2014-05-08 09:52:55');
INSERT INTO `user_workhistory` VALUES ('48', '811', '1', '2014-05-01', '2014-05-29', '1111111', '1', '1111111111', '2014-05-08 10:41:52', '2014-05-08 10:41:52');
INSERT INTO `user_workhistory` VALUES ('49', '850', '11', '2014-05-01', '2014-05-31', '11', '11', '11', '2014-05-08 10:58:46', '2014-05-08 10:58:46');
INSERT INTO `user_workhistory` VALUES ('50', '846', '1', '2014-05-02', '2014-05-28', '1111111', '1', '11111111', '2014-05-08 11:43:28', '2014-05-08 11:43:28');
INSERT INTO `user_workhistory` VALUES ('51', '841', '1', '2014-05-01', '2014-05-07', '11', '1', '11', '2014-05-08 12:07:23', '2014-05-08 12:07:23');
INSERT INTO `user_workhistory` VALUES ('52', '841', '11', '2014-05-01', '2014-05-29', '11', '11', '11', '2014-05-08 12:25:39', '2014-05-08 12:25:39');
INSERT INTO `user_workhistory` VALUES ('53', '851', 'SFR', '2009-05-14', '2013-05-16', 'blahhhhhhhhhhhhUnkown', 'Staff', 'blahhhhhhhhhhhh', '2014-05-08 12:56:23', '2014-05-08 12:56:23');
INSERT INTO `user_workhistory` VALUES ('54', '856', 'SFR', '2009-05-20', '2013-05-21', 'blah', 'manager', 'blah', '2014-05-08 13:46:42', '2014-05-08 13:46:42');
INSERT INTO `user_workhistory` VALUES ('55', '863', 'SFR', '2014-05-01', '2019-05-31', 'i can test, ', 'manager ', 'i can test', '2014-05-08 14:19:58', '2014-05-08 14:19:58');
INSERT INTO `user_workhistory` VALUES ('56', '868', 'STR', '2014-01-01', '2014-05-31', 'work ', 'manager ', 'work ', '2014-05-08 14:30:31', '2014-05-08 14:30:31');
INSERT INTO `user_workhistory` VALUES ('57', '867', '1', '2014-05-01', '2014-05-31', 'study', '1', 'study', '2014-05-08 14:34:56', '2014-05-08 14:34:56');
INSERT INTO `user_workhistory` VALUES ('58', '875', '1', '2014-05-02', '2014-05-03', 'Heathly is not good', '1', 'Company HTO', '2014-05-09 04:27:30', '2014-05-09 04:27:30');
INSERT INTO `user_workhistory` VALUES ('59', '874', 'SFR', '2014-05-01', '2014-05-03', 'Heathly isn\'t good', 'STAFF', '', '2014-05-09 04:36:54', '2014-05-09 04:36:54');
INSERT INTO `user_workhistory` VALUES ('60', '872', 'fpt', '2014-05-01', '2014-05-31', 'health isn\'t good', 'managerment', '', '2014-05-09 05:53:39', '2014-05-09 05:53:39');
INSERT INTO `user_workhistory` VALUES ('61', '854', 'test', '2014-05-11', '2014-05-23', 'test', 'test', 'test', '2014-05-09 06:14:55', '2014-05-09 06:14:55');
INSERT INTO `user_workhistory` VALUES ('62', '872', '1', '2014-05-19', '2014-05-31', '1', '1', '1', '2014-05-09 06:22:50', '2014-05-09 06:22:50');
INSERT INTO `user_workhistory` VALUES ('63', '876', '1', '2014-05-01', '2014-05-31', '11', '1', '11', '2014-05-09 09:57:16', '2014-05-09 09:57:16');
INSERT INTO `user_workhistory` VALUES ('64', '877', '1', '2014-05-01', '2014-05-31', 'D', '1', 'F', '2014-05-09 10:34:47', '2014-05-09 10:34:47');
INSERT INTO `user_workhistory` VALUES ('65', '866', 'aaaa', '2014-05-26', '2014-05-28', 'aa', 'aaaaaa', 'aaa', '2014-05-09 11:02:09', '2014-05-09 11:02:09');
INSERT INTO `user_workhistory` VALUES ('66', '873', '1', '2014-05-01', '2014-05-31', '1', '1', '1', '2014-05-09 12:23:22', '2014-05-09 12:23:22');
INSERT INTO `user_workhistory` VALUES ('67', '879', '1', '2014-05-01', '2014-05-31', '11', '1', '11', '2014-05-09 14:36:18', '2014-05-09 14:36:18');
INSERT INTO `user_workhistory` VALUES ('68', '879', 'aa', '2014-05-21', '2014-05-29', '', 'aaaaaaaaaaaaaa', 'aaaaaaaaaa', '2014-05-09 14:38:50', '2014-05-09 14:38:50');
INSERT INTO `user_workhistory` VALUES ('69', '879', '2', '2014-12-01', '2014-12-29', '11', '2', '12', '2014-05-10 05:02:19', '2014-05-10 05:03:13');
INSERT INTO `user_workhistory` VALUES ('70', '871', '1', '2014-05-01', '2014-05-31', '11', '1', '11', '2014-05-10 05:44:29', '2014-05-10 05:44:29');
INSERT INTO `user_workhistory` VALUES ('71', '870', '1', '2014-05-28', '2014-05-31', 'good for you and me', 'Staff', '', '2014-05-10 06:21:17', '2014-05-10 06:21:17');
INSERT INTO `user_workhistory` VALUES ('72', '865', '1', '2014-05-12', '2014-05-31', '11', '1', '11', '2014-05-10 07:51:07', '2014-05-10 07:51:07');
INSERT INTO `user_workhistory` VALUES ('73', '855', 'Test', '2014-05-11', '2014-05-30', 'Test', 'Test', 'Test', '2014-05-10 13:28:21', '2014-05-10 13:28:21');
INSERT INTO `user_workhistory` VALUES ('74', '864', 'test', '2014-05-05', '2014-05-09', 'ssssssss', 'set', 'ssssssss', '2014-05-10 14:06:06', '2014-05-10 14:06:06');
INSERT INTO `user_workhistory` VALUES ('75', '901', '1', '2014-05-01', '2014-05-31', '1', '1', '1', '2014-05-12 09:46:52', '2014-05-12 09:46:52');
INSERT INTO `user_workhistory` VALUES ('76', '902', '1', '2014-05-01', '2014-05-30', '1', '1', '1', '2014-05-12 09:52:41', '2014-05-12 09:52:41');
INSERT INTO `user_workhistory` VALUES ('77', '903', '1', '2014-05-01', '2014-05-31', '1', '1', '1', '2014-05-12 13:05:04', '2014-05-12 13:05:04');
INSERT INTO `user_workhistory` VALUES ('78', '862', 'Stest', '2014-05-14', '2014-05-23', 'Stest', 'Stest', 'Stest', '2014-05-13 09:10:34', '2014-05-13 09:10:34');
INSERT INTO `user_workhistory` VALUES ('79', '898', 'dđ', '2013-05-01', '2014-05-01', 'ddd', 'ddddddd', 'ddd', '2014-05-13 12:01:03', '2014-05-13 12:01:03');
INSERT INTO `user_workhistory` VALUES ('80', '923', 's', '2001-05-15', '2014-05-01', 'ffffffffff', 'sssssssssssss', 'f', '2014-05-13 12:47:33', '2014-05-13 12:47:33');
INSERT INTO `user_workhistory` VALUES ('81', '924', 'rrrrrrr', '1996-05-08', '2003-05-13', '', 'rrrrrrrrrrrrr', 'rrrrrrrrrr', '2014-05-14 04:26:39', '2014-05-14 04:26:39');
INSERT INTO `user_workhistory` VALUES ('82', '925', 'ddd', '2001-05-08', '2014-05-14', 'dddđ', 'dddddddddđ', 'dddd', '2014-05-15 04:31:52', '2014-05-15 04:31:52');
INSERT INTO `user_workhistory` VALUES ('83', '930', 'sssss', '2014-05-06', '2014-05-30', 'ssss', 'sssssssss', 'ssssss', '2014-05-16 06:09:06', '2014-05-16 06:09:06');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `message_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `role` tinyint(1) DEFAULT '2',
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login2` datetime DEFAULT NULL,
  `attempts` tinyint(4) DEFAULT NULL,
  `remember_me` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lock_screen` tinyint(4) DEFAULT NULL,
  `ban_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `personal_permissions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=932 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('686', 'Bill', '', 'Fawley', 'man', null, 'EdEx01', 'bill@email.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '4', '::1', '2014-05-15 13:42:09', '2014-05-15 09:15:09', null, null, null, null, '2014-01-15 16:14:17', '2014-05-15 13:42:09', 'zAXVdIzwehSoRYb8k7A69hw6Wja5MBqVZMb68XdQkxK3YDO2F4dIiknGSica', null, null);
INSERT INTO `users` VALUES ('725', 'Luong', '', 'Duc', null, '', 'M110010', 'luong@email.com', '', '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '2', '::1', '2014-05-26 12:26:51', '2014-05-28 09:21:25', null, null, null, null, '2013-04-08 00:00:00', '2014-05-28 09:21:25', 'CZX8cO2ImRMkc3Pl8TbUF5U9qglenLYfPiWBJyo8ZxUnK4fz5JWOsd2qZj2S', null, '{\"add_applicant\":1,\"edit_applicant\":1,\"delete_applicant\":1,\"view_all_applicants\":1,\"search_applicant\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_rejected_applicants\":1,\"view_declined_applicants\":1,\"view_awaiting_submission\":1,\"view_refused_applicants\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"add_applicant_application\":1,\"delete_applicant_application\":1,\"update_application_status\":1,\"claim_applicant\":1,\"re_assign_applicant\":1,\"export_pending_applicants\":1,\"export_rejected_applicants\":1,\"export_refused_offer_applicants\":1,\"export_approved_applicants\":1,\"export_awaiting_submission\":1,\"view_applicant_note\":1,\"add_applicant_note\":1,\"edit_applicant_note\":1,\"delete_applicant_note\":1,\"login_as_applicant\":1,\"download_applicant_document\":1,\"add_project\":1,\"view_project\":1,\"edit_project\":1,\"delete_project\":1,\"add_advert\":1,\"view_advert\":1,\"edit_advert\":1,\"delete_advert\":1,\"administer_own_advert\":1,\"view_jobfair\":1,\"add_jobfair\":1,\"edit_jobfair\":1,\"delete_jobfair\":1,\"administer_own_jobfair\":1,\"view_department\":1,\"add_department\":1,\"edit_department\":1,\"delete_department\":1,\"view_role\":1,\"add_role\":1,\"edit_role\":1,\"delete_role\":1,\"view_position\":1,\"add_position\":1,\"edit_position\":1,\"delete_position\":1,\"edit_position_permission\":1,\"add_client\":1,\"view_client\":1,\"edit_client\":1,\"delete_client\":1,\"view_client_statistics\":1,\"administer_client_contract\":1,\"administer_client_employee\":1,\"administer_client_invoice\":1,\"administer_client_proposal\":1,\"view_recruiter\":1,\"add_recruiter\":1,\"edit_recruiter\":1,\"delete_recruiter\":1,\"view_recruiter_statistics\":1,\"administer_recruiter_contract\":1,\"administer_recruiter_employee\":1,\"administer_recruiter_proposal\":1,\"administer_recruiter_invoice\":1,\"view_schedule\":1,\"edit_schedule\":1,\"delete_schedule\":1,\"administer_own_schedule\":1,\"add_task\":1,\"delegate_task\":1,\"view_task\":1,\"edit_task\":1,\"delete_task\":1,\"administer_own_task\":1,\"view_delegate_task\":1,\"edit_delegate_task\":1,\"delete_delegate_task\":1,\"view_receive_task\":1,\"edit_receive_task\":1,\"delete_receive_task\":1,\"view_employee\":1,\"add_employee\":1,\"edit_employee\":1,\"delete_employee\":1,\"search_employee\":1,\"view_active_employee\":1,\"view_inactive_employee\":1,\"view_employee_permission\":1,\"edit_employee_permission\":1,\"view_employee_task\":1,\"view_employee_assigned_applicant\":1,\"login_as_employee\":1,\"export_employee_list\":1,\"view_recruiment_setting\":1,\"edit_recruiment_setting\":1,\"view_statistics\":1,\"export_statistics\":1}');
INSERT INTO `users` VALUES ('726', 'Tim', '', 'Wallace', 'man', null, 'EdEx01', 'tim@email.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '4', '::1', '2014-05-14 05:47:54', '2014-05-14 11:32:50', null, null, null, null, '2014-01-15 16:14:17', '2014-05-14 11:33:02', '8Rz1xDdrqBrmNjC6gOymQU8lZP4HYhHnungT8m4wHXvmZNUlPQpBqTkp8xOZ', null, null);
INSERT INTO `users` VALUES ('852', 'Nguyen ', 'Ngoc', 'Mai', 'female', null, null, 'mai@gmail.com', null, '$2y$08$.UKiazjihVw7f9ixK6ffCuH/BcwAEjcOMgSYLzlmcq3i5DpqOuPk.', '1', '3', '::1', null, null, null, null, null, null, '2014-05-08 12:58:26', '2014-05-08 12:58:26', null, null, null);
INSERT INTO `users` VALUES ('853', 'Tran ', 'van', 'vui', 'male', null, null, 'vui@gmail.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '4', '::1', '2014-05-16 07:50:32', '2014-05-17 04:16:39', null, null, null, null, '2014-05-08 12:59:03', '2014-05-17 04:18:49', 'yNkrTd5kAFKvQrEELy1TWudjx6ceIX7IIs1zsK44XUyxhiqyXkjr3IRKO5Dh', null, '{\"add_applicant\":1,\"edit_applicant\":1,\"delete_applicant\":1,\"view_all_applicants\":1,\"search_applicant\":1,\"view_pending_applicants\":1,\"view_approved_applicants\":1,\"view_declined_applicants\":1,\"view_rejected_applicants\":1,\"view_refused_offer_applicants\":1,\"view_awaiting_submission\":1,\"add_applicant_application\":1,\"delete_applicant_application\":1,\"view_applicant_application_status\":1,\"update_applicant_application_status\":1,\"add_applicant_note\":1,\"view_applicant_note\":1,\"edit_applicant_note\":1,\"delete_applicant_note\":1,\"download_applicant_document\":1,\"export_pending_applicants\":1,\"export_rejected_applicants\":1,\"export_refused_offer_applicants\":1,\"export_declined_applicants\":1,\"export_approved_applicants\":1,\"export_awaiting_submission\":1,\"view_48h_arrivals\":1,\"view_all_arrivals\":1,\"view_applicant_statistics\":1,\"view_invoice\":1,\"generate_invoice\":1,\"view_contract\":1,\"add_employee\":1,\"edit_employee\":1,\"search_employee\":1,\"view_employee_permission\":1,\"edit_employee_permission\":1}');
INSERT INTO `users` VALUES ('855', 'Jessica', '', 'Alba', 'female', null, 'APP14000075', 'jeaba@hotmail.com', '', '$2y$08$ukqxLf61IV1YAKC6WW1mo.3cc.AR7FOUF2knhDmR4bZj.AFT1Kg6q', '1', '1', '127.0.0.1', '2014-05-08 13:03:38', null, null, null, null, null, '2014-05-08 13:03:38', '2014-05-17 11:57:49', null, null, null);
INSERT INTO `users` VALUES ('856', 'Nguyen', 'Thanh', 'Quang', 'man', null, 'APP14000076', 'thanhquang@gmail.com', '', '$2y$08$UaV6oyIwO1rnQETy7GDMl.vIgkLXsWA7QCIkniK3SudCCzhzHxZXe', '1', '1', '127.0.0.1', '2014-05-08 13:45:07', null, null, null, null, null, '2014-05-08 13:45:07', '2014-05-12 06:57:52', null, null, null);
INSERT INTO `users` VALUES ('857', 'Truong', 'Tam', 'Hoang', null, null, null, 'hai11@gmail.com', '', '$2y$08$KUo0.jciWaPdx.VyRSY7oOSizVSNBTo0ebpq/8qxXw0qIxXfU2Va6', '2', '2', null, null, null, null, null, null, null, '2014-05-08 13:48:26', '2014-05-12 11:28:10', null, null, null);
INSERT INTO `users` VALUES ('858', 'Mai', 'Thi', 'Hai', null, null, null, 'mthai@email.com', '', '$2y$08$OsxVKlCTsuS3EjidNMtTVunvFCKg3hmRU7S9kBA5G/LT.JF4tr5pC', '2', '2', null, null, null, null, null, null, null, '2014-05-08 13:50:28', '2014-05-08 13:55:22', null, null, null);
INSERT INTO `users` VALUES ('859', 'Ho', 'Van', 'Tuan', null, null, null, 'hvtuan@gmail.com', '', '$2y$08$UaKqA8roG65lWAT7rBkZ9uijzms85XlSQHYCqJldvLX8NJXhaFHJe', '1', '2', '117.3.103.72', '2014-05-10 14:51:53', '2014-05-10 14:51:53', null, null, null, null, '2014-05-08 13:51:48', '2014-05-10 14:51:53', null, null, null);
INSERT INTO `users` VALUES ('860', 'Tran', 'Thanh', 'Lam', null, null, null, 'ttlam@gmail.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '2', '::1', '2014-05-15 04:47:13', '2014-05-15 04:47:13', null, null, null, null, '2014-05-08 13:53:25', '2014-05-15 04:47:21', 'YYDMJPaDBwtMynje9ucunpexFhFpFhO2ZibXw38SQttGtmegNh7e4AYIBPu2', null, null);
INSERT INTO `users` VALUES ('861', 'Vo', 'Cam', 'Xuyen', null, null, null, 'vcxuyen@gmail.com', null, '$2y$08$VT4qQDtvs0pmfKVNze7ojuhao2bvb.Igwgh0626AV9nC72RIr3Lu.', '2', '2', null, null, null, null, null, null, null, '2014-05-08 13:54:22', '2014-05-10 06:57:18', 'TycovyoF1VznLzt1nGZ50ABAkXghzUJRtwTx0Vy1B4HOQoQNtXREsQSSpoyh', null, null);
INSERT INTO `users` VALUES ('862', 'Ho', 'Van', 'Tuan', 'man', null, 'APP14000077', 'hvtuan130992@gmail.com', '', '$2y$08$hr1AjyNkCSz4orqHg4/h1.27K1RCPU6FfvVtkU3W9C6AIAPCSfDVu', '1', '1', '117.3.103.72', '2014-05-08 14:04:29', null, null, null, null, null, '2014-05-08 14:04:29', '2014-05-13 09:11:19', null, null, null);
INSERT INTO `users` VALUES ('863', 'Ho', 'Sy', 'Tai', 'man', null, 'APP14000078', 'hstai@gmail.com', '', '$2y$08$xCeL5nfK9Wm6r92mwzT1zOWYFpEBTr8DKAxUP0Pj1UbEViIolPbz.', '1', '1', '117.3.103.72', '2014-05-08 14:06:42', null, null, null, null, null, '2014-05-08 14:06:42', '2014-05-08 14:24:42', null, null, null);
INSERT INTO `users` VALUES ('864', 'Tran', 'Van', 'Tien', 'man', null, 'APP14000079', 'tvtien@gmail.com', '', '$2y$08$P2U5KBR5MaiNa4h6UTd6cuXZVngjbcX/NDNspOmnQyDVfy5sAVQUa', '1', '1', '117.3.103.72', '2014-05-08 14:08:10', null, null, null, null, null, '2014-05-08 14:08:10', '2014-05-10 14:06:31', null, null, null);
INSERT INTO `users` VALUES ('865', 'Nguyen', 'Ngoc', 'Mai', 'man', null, 'APP14000080', 'nnmai@gmail.com', '', '$2y$08$0dh/tyiymgajFg2ftvInrOtNcvWXsqwGahPAPymAvC6mIsqc.xBSO', '1', '1', '117.3.103.72', '2014-05-08 14:09:40', null, null, null, null, null, '2014-05-08 14:09:40', '2014-05-10 07:51:21', null, null, null);
INSERT INTO `users` VALUES ('866', 'Tran', '', 'Tam', 'female', null, 'APP14000081', 'ttam@gmail.com', '', '$2y$08$XQ05uKwbHVatVmN1fqyO5OctP.z2jQCnlaaBtFnOFvqxjvQ9m3oke', '1', '1', '117.3.103.72', '2014-05-08 14:13:33', null, null, null, null, null, '2014-05-08 14:13:33', '2014-05-12 11:28:22', null, null, null);
INSERT INTO `users` VALUES ('867', 'To', 'Thi', 'Tien', 'female', null, 'APP14000082', 'tttien@gmail.com', '', '$2y$08$GPllSq1gn5Cv505yqXGHDOXr4Q.ZGDjqC9JyRP6.ksI97j9Lemd4O', '1', '1', '117.3.103.72', '2014-05-08 14:15:36', null, null, null, null, null, '2014-05-08 14:15:36', '2014-05-08 14:35:06', null, null, null);
INSERT INTO `users` VALUES ('868', 'Vo11', 'Chi11', 'Tam11', 'man', null, 'APP14000083', 'vctam@gmail.com', '', '$2y$08$GOstxQIrw/WJsIacbnjOHuksX6lPIwzUQmJx6GMmHk3JTSQW0CUOu', '1', '1', '117.3.103.72', '2014-05-08 14:17:22', '2014-05-12 04:42:20', null, null, null, null, '2014-05-08 14:17:22', '2014-05-12 05:18:45', '4wdr3X0jcffT9fXw9uHbU52yGTGHAxaK2ft68b1eYPVNexawvpVfVNZsZhDG', null, null);
INSERT INTO `users` VALUES ('869', 'employee', '', 'client', 'male', null, null, 'clientemployee@email.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '4', '127.0.0.1', null, '2014-05-08 14:19:32', null, null, null, null, '2014-05-08 14:17:39', '2014-05-08 14:22:17', 'jlglvOkNGx1Fz4qM6G2XED2QQ1HmiHy7qPa8cmh7bTJYOjly09XB7LpeyOF1', null, null);
INSERT INTO `users` VALUES ('870', 'Applicant11', '11', 'Register1', 'man', 'truyen.luong', 'APP14000084', 'myemail@gmail.com', '', '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '4', '::1', '2014-05-08 14:15:36', '2014-05-14 09:14:37', null, null, null, null, '2014-05-08 14:43:02', '2014-05-14 09:14:37', null, null, null);
INSERT INTO `users` VALUES ('871', 'Tran', '', 'Hai', 'female', null, 'APP14000085', 'thai@gmail.com', '', '$2y$08$Pep8T7xp6T6fxfUdeERFUuh1zQZ2GAmsnsQ5onBoCwuCdV4h28KLS', '1', '1', '117.3.103.72', '2014-05-08 14:43:37', '2014-05-08 14:44:12', null, null, null, null, '2014-05-08 14:43:37', '2014-05-10 05:44:39', null, null, null);
INSERT INTO `users` VALUES ('872', 'Ly11', 'Van11', 'To11', 'female', null, 'APP14000086', 'lvto@gmail.com', '', '$2y$08$XOZ1PdzK8aBntwCgMXlk1OAzChYaKWoa8bSGlPLm7SXIiXVNyfuCq', '1', '1', '117.3.103.72', '2014-05-10 09:45:07', '2014-05-10 04:47:59', null, null, null, null, '2014-05-08 14:48:41', '2014-05-10 10:18:42', 'dI1qvNMJ2hWNEISm5H4AwQidLiHMtaafcChioG5AXy94sNRYFpAkOHTMZe82', null, null);
INSERT INTO `users` VALUES ('873', 'Tam', '', 'Anh', 'man', null, 'APP14000087', 'aone@email.com', '', '$2y$08$0/qv2HIznG/8qawftv.Gt.FdjZScIOiOuR5RjPSnSZ//ob6zvm2ou', '1', '1', '127.0.0.1', '2014-05-09 04:16:09', null, null, null, null, null, '2014-05-09 04:16:09', '2014-05-09 12:25:21', null, null, null);
INSERT INTO `users` VALUES ('874', 'ha', '', 'HA', 'man', null, 'APP14000088', 'tien@gmail.com', '', '$2y$08$9bjHfx/PezqQNLh66WD3YOPfA7tkJ0MKEadEHxYUzzGKBWKQHrEr6', '1', '1', '117.3.103.72', '2014-05-09 04:16:31', null, null, null, null, null, '2014-05-09 04:16:31', '2014-05-12 12:27:23', null, null, null);
INSERT INTO `users` VALUES ('875', 'ha', '', 'hien', 'man', null, 'APP14000089', 'haitien@gmail.com', '', '$2y$08$9vfdYoSR3j8SaRLf2M5WV.1Ki2SmP0ZeBXVUC.lVF6gxm2IEXN3YS', '1', '1', '117.3.103.72', '2014-05-09 04:21:15', null, null, null, null, null, '2014-05-09 04:21:15', '2014-05-09 04:26:41', null, null, null);
INSERT INTO `users` VALUES ('876', 'Luong', 'Tran', 'Tien', 'female', null, 'APP14000090', 'lttien@gmail.com', null, '$2y$08$Y0gR4mVduveY//o2qltgo.u6s0h1avmGqAWclI/Ryw289wa6BIIdK', '1', '1', '117.3.103.72', null, '2014-05-09 04:59:19', null, null, null, null, '2014-05-09 04:58:58', '2014-05-09 06:08:40', 'dApMdraNLcJKzZIK1UMyEDNl2ECPBkoxaYaaOjco3hUl0lOTWbC3a57RWLfJ', null, null);
INSERT INTO `users` VALUES ('877', 'Tran11', 'Van11', 'Lam11', 'man', null, 'APP14000091', 'lam@gmail.com', null, '$2y$08$7P1NrURHLWz6E9p6M0KHpehA7XMu1XV0DPCrFe0koIcYvRAip0S7e', '1', '1', null, null, null, null, null, null, null, '2014-05-09 05:22:03', '2014-05-09 05:35:26', 'OqKBJPispIoZv7SWPqRv6LppSeZYsAKuqz8jSIV11oiktudIXZZXcEPnTHJ0', null, null);
INSERT INTO `users` VALUES ('879', 'test', 'test', 'set', 'man', null, 'APP14000092', 'applicant_test@email.com', '', '$2y$08$fzvNhEExhuCk9e5OeeC82OQfnP85C0TuWmAumBrJpbSC213RtrYre', '1', '1', '127.0.0.1', '2014-05-09 14:42:20', '2014-05-10 04:55:30', null, null, null, null, '2014-05-09 12:47:48', '2014-05-10 05:03:23', 'b5EhgBYGqjA3DMdCelcO9LPl4vtiF2mWh80tHpPediNAhjELLFSf3AyDI6Vl', null, null);
INSERT INTO `users` VALUES ('880', 'Tran', '', 'Duc', null, null, null, 'duc@gmail.com', null, '$2y$08$Jh29spQhzYGewIfHB0Z/Ye0/JnDVTL3ach27Biy2Xw7fVDQYkoGOe', '1', '2', null, null, null, null, null, null, null, '2014-05-09 14:19:19', '2014-05-09 14:19:19', null, null, null);
INSERT INTO `users` VALUES ('881', 'Mai', 'thi', 'Ba', null, null, null, 'mttba@gmail.com', null, '$2y$08$.22bMSsLKckXI97SlUPTpeXvq0coh0pM3b8etbw733mSZDXtFC1eu', '1', '2', null, null, null, null, null, null, null, '2014-05-09 14:20:20', '2014-05-10 07:20:36', '2soaRuCxvwKX2iNn8exo2FsBxsFIBw75G9Sw8Sbyz7YPxMBrlpceVic99P9E', null, null);
INSERT INTO `users` VALUES ('882', 'Phan11', 'ngoc11', 'Dung11', null, null, null, 'pndung11@email.com', '', '$2y$08$nRCHtwh2F/ifXec6z6aP/OftLi5qnygK.pGnAPVo.Ape3bpZaJUXC', '2', '2', '117.3.103.72', '2014-05-12 05:33:37', '2014-05-12 05:33:37', null, null, null, null, '2014-05-09 14:21:15', '2014-05-12 05:35:49', null, null, null);
INSERT INTO `users` VALUES ('883', 'Nguyen', 'Ba', 'Phuoc', null, null, null, 'nbphuoc@gmail.com', null, '$2y$08$T2cJjkFZfy8ublm2WuwCpeterpPQRYttzctLor1LvMVDpi6pRA89u', '1', '2', null, null, null, null, null, null, null, '2014-05-09 14:22:03', '2014-05-09 14:22:03', null, null, null);
INSERT INTO `users` VALUES ('884', 'Ho', 'Thi', 'Hong', null, null, null, 'hthong@yahoo.com', null, '$2y$08$no89wj7B3lLRVnCoAduvG.6lNwxeuDEJx3ZUdSnX1OAXLTFPcxC0q', '1', '2', null, null, null, null, null, null, null, '2014-05-09 14:23:02', '2014-05-09 14:23:02', null, null, null);
INSERT INTO `users` VALUES ('885', 'Ho11', 'Van11', 'Ma11i', null, null, null, 'hvm@gmail.com', '', '$2y$08$sytnnLSKY.P724nNcOlyhOXIglRreCamg543ZfaC7jQ.LbjlcezEa', '1', '2', null, null, null, null, null, null, null, '2014-05-09 14:23:57', '2014-05-12 04:29:49', null, null, null);
INSERT INTO `users` VALUES ('886', 'Nguyen ', 'Tuong', 'Nhu', 'female', null, null, 'ntnhu@gmail.com', null, '$2y$08$avBemgOqwu1gxht0/XJ6FO13PFiqHsXZhGv4fncA6/xCcgChYMhuG', '1', '3', null, null, null, null, null, null, null, '2014-05-10 06:47:33', '2014-05-10 06:47:33', null, null, null);
INSERT INTO `users` VALUES ('887', 'Mai', 'Cong', 'Thuong', 'male', null, null, 'mcthuong@gmail.com', null, '$2y$08$e9ssNnIwABTQDbuvNjltr.HqkaGNpMnfcraIGtuBSm2rSEqzydosC', '1', '3', null, null, null, null, null, null, null, '2014-05-10 06:48:33', '2014-05-10 06:48:33', null, null, null);
INSERT INTO `users` VALUES ('888', 'Nguyen', 'Van ', 'Hau', 'male', null, null, 'nvhau@gmail.com', null, '$2y$08$AjvqfxORuQEemZak4Mey3.JAbJtIZeb8AcjvicCizYKJyCqfYRdKO', '1', '4', null, null, null, null, null, null, null, '2014-05-10 09:26:31', '2014-05-10 09:27:08', null, null, null);
INSERT INTO `users` VALUES ('889', 'Nguyen ', 'Van', 'Vu', 'male', null, null, 'nvvu@gmail.com', null, '$2y$08$avxMxO5oVYeJZedLZeY04umNXB1kqH.8XHJZ5IUpMaHHwfaCBbuqy', '1', '4', null, null, null, null, null, null, null, '2014-05-10 09:27:43', '2014-05-10 09:27:43', null, null, null);
INSERT INTO `users` VALUES ('890', 'Nguyen', 'Thi', 'Thu', 'female', null, null, 'ntthu@gmail.com', null, '$2y$08$sF8JxZvUYOzysX2cdLL.t.Jr3sTiwymCpnBj/vkRjY1lMAomrNQ.O', '1', '4', null, null, null, null, null, null, null, '2014-05-10 09:28:35', '2014-05-10 09:28:35', null, null, null);
INSERT INTO `users` VALUES ('891', 'Nguyen ', 'Hoa', 'Mai', 'female', null, null, 'nhmai@gmail.com', null, '$2y$08$SeHipn297yIFXAPLfl2.wufNsF9mzMXTgJacfiMM8v0I328p4ibeO', '1', '4', null, null, null, null, null, null, null, '2014-05-10 09:57:26', '2014-05-10 09:57:26', null, null, null);
INSERT INTO `users` VALUES ('892', 'R', 'Ht', 're', 'male', null, null, 'recruiterx@email.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '4', '127.0.0.1', null, '2014-05-12 04:18:12', null, null, null, null, '2014-05-12 04:16:44', '2014-05-12 05:15:30', '6U1Wv3YMiyhcWccd2HEMETeCkfzXg3E09yBVcbJYnoS04SrZXF4pPgFuhTTd', null, null);
INSERT INTO `users` VALUES ('893', '11', '11', '11', null, null, null, '112@gmail.com', null, '$2y$08$Te.1eIkwpOQxaBS2u42Lv.0P.X7Jti7I4ZL2lMPSIIp2j4nhQHb42', '1', '2', null, null, null, null, null, null, null, '2014-05-12 04:32:14', '2014-05-12 04:32:14', null, null, null);
INSERT INTO `users` VALUES ('894', '11', '11', '11', null, null, null, 'luong145@email.com', null, '$2y$08$kfsHr0XZzwb8s1xfYxSRUe7pm1OI8ApUSc57YUmJpcEZOuwO6MdnW', '1', '2', null, null, null, null, null, null, null, '2014-05-12 04:33:12', '2014-05-12 04:33:12', null, null, null);
INSERT INTO `users` VALUES ('896', 'ha', '', 'HA', 'man', null, 'APP14000093', 'ngoc@gmail.com', null, '$2y$08$zD7QRunPzNwI06XGwxl6oOy0oFvoqE43J7D6Hb2u91d.J881s2on2', '1', '1', '117.3.103.72', '2014-05-12 04:37:21', null, null, null, null, null, '2014-05-12 04:37:21', '2014-05-12 04:37:21', null, null, null);
INSERT INTO `users` VALUES ('897', 'ha', '', 'HA', 'man', null, 'APP14000094', 'ngoc11@gmail.com', null, '$2y$08$iG0v8xvswhQBuhHCvHPq8uVBqaYF0uzw0ZeL45NW5mw4I4xgvXYF6', '1', '1', '117.3.103.72', '2014-05-12 04:37:40', null, null, null, null, null, '2014-05-12 04:37:40', '2014-05-12 04:37:40', null, null, null);
INSERT INTO `users` VALUES ('898', 'ha', '', 'HA', 'man', null, 'APP14000095', 'ngoc111@gmail.com', '', '$2y$08$ayxXxZKjGKgMxhFGOO71QupVfbhZnYAsFG20uGFUvCDRsXq4oD3ha', '1', '1', '117.3.103.72', '2014-05-12 04:53:18', null, null, null, null, null, '2014-05-12 04:53:18', '2014-05-13 12:01:55', null, null, null);
INSERT INTO `users` VALUES ('899', 'test', '', 'test', 'man', null, 'APP14000096', 'test@gmail.com', null, '$2y$08$d2piXExiH6bBWoxa.bBBXOCTWHdeO16wVPTD/qiR9C7d7orGmastS', '1', '1', '117.3.103.72', '2014-05-12 04:55:25', null, null, null, null, null, '2014-05-12 04:55:25', '2014-05-12 04:55:25', null, null, null);
INSERT INTO `users` VALUES ('900', 'test', 'test', 'test', null, null, null, 'test123@gmail.com', '', '$2y$08$MCSth.f96AYDaf07qgClSO1gsyVNCnSBFZ/88p0uuIyK2VL12OHAG', '1', '2', '117.3.103.72', '2014-05-12 09:59:05', '2014-05-12 09:59:05', null, null, null, null, '2014-05-12 04:56:29', '2014-05-12 11:28:20', '5MM0xyXjIxQNOQfHOkSTBYzLEPily2jN5Bn2VgZYXrLxXZKj127nd2YuW0vU', null, null);
INSERT INTO `users` VALUES ('901', 'TEST12', '', 'TEST12', 'female', null, 'APP14000097', 'samha@gmail.com', '', '$2y$08$XoFSag2seKNwDE2rvwqzquUzf9CsaoTRS54oC0kyTtUUXMuzTf6pm', '1', '1', '117.3.103.72', '2014-05-12 09:45:39', '2014-05-12 09:57:24', null, null, null, null, '2014-05-12 09:45:39', '2014-05-12 09:58:36', 'tWJuck7ajXAvaoCXWjdeDLvLTErYDl9iZ1DZ4z3au53N3mAlvDDxjQavGfyM', null, null);
INSERT INTO `users` VALUES ('902', 'test123', '', 'test123', 'man', null, 'APP14000098', 'testha@gmail.com', '', '$2y$08$823qhLIsEPJNirSeSKAzseR5DvwyeAlgG6QYnTYNfBf8bmahs28i2', '1', '1', '117.3.103.72', '2014-05-13 05:28:53', '2014-05-12 12:09:19', null, null, null, null, '2014-05-12 09:51:37', '2014-05-13 05:53:11', 'kBIRsqaZugmJg5Pzb1WB4tgcHUCs97UFja2WwASkl4Her9iyVrPu8v2mZFCT', null, null);
INSERT INTO `users` VALUES ('903', 'delete', '', 'delete', 'female', null, 'APP14000099', 'delete@gmail.com', '', '$2y$08$QU2KYEwcKcdqtFGaGjOcdeaOzefZPL3RFDMlDvhWBsaDNw8Q3BJTe', '1', '1', '117.3.103.72', '2014-05-12 13:00:18', null, null, null, null, null, '2014-05-12 13:00:18', '2014-05-12 13:05:15', null, null, null);
INSERT INTO `users` VALUES ('904', 'test', 'tesr', 'test', null, null, null, 'test89@gmail.com', null, '$2y$08$tYi/mlALUqVDYUoDHP31mexHfm7BfOOxNn5U9u12tutLG38ycRc/G', '1', '2', null, null, null, null, null, null, null, '2014-05-12 13:31:23', '2014-05-12 13:31:23', null, null, null);
INSERT INTO `users` VALUES ('906', 'smile althought', '', 'smile', 'man', null, 'APP14000100', 'smile@gmail.com', null, '$2y$08$b/PQy84SDQ1HEfV9E8LxqOQFu/WEsem5TeDzfCUvOz8nDr43rLU8m', '1', '1', '117.3.103.72', '2014-05-13 06:25:44', null, null, null, null, null, '2014-05-13 06:25:44', '2014-05-13 06:25:44', null, null, null);
INSERT INTO `users` VALUES ('908', 'Nguyen', 'ngOC', 'mAI', 'man', null, 'APP14000101', 'nnmai12@gmail.com', null, '$2y$08$kBMSEu1uJZSZqcGLnnlQFuMxpblffinR.Aggtde3IX/F3jUQ8hco2', '1', '1', '117.3.103.72', '2014-05-13 07:28:07', null, null, null, null, null, '2014-05-13 07:28:07', '2014-05-13 07:28:07', null, null, null);
INSERT INTO `users` VALUES ('910', 'Mai      ', '', 'van11', 'female', null, null, 'nhyen@email.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '3', '127.0.0.1', null, '2014-05-13 09:19:32', null, null, null, null, '2014-05-13 07:53:49', '2014-05-13 10:06:31', '8oUcRmi5hwMryIa5qreKaVPEnyLNmqErPxkAoidL6CeZuIIqh2jyTqRXWqG9', null, null);
INSERT INTO `users` VALUES ('914', 'ha', 'ha', 'ha', 'male', null, null, 'nttha1@gmail.com', null, '$2y$08$dB79bInJBCiJlJgsunirwelz6eF6Osgq3B5lwmrNc9zRCf1m.Fcr.', '1', '3', null, null, null, null, null, null, null, '2014-05-13 08:07:30', '2014-05-13 09:12:12', null, null, null);
INSERT INTO `users` VALUES ('915', 'FPT Client', '', 'Employee', 'man', null, null, 'cemployee@email.com', null, '$2y$08$VYLqTQpQ3ulIaxClzbdmDeW8UnLl/py/w7hci4RxDFA8gc1RHt9nu', '1', '3', '117.3.103.72', '2014-05-13 09:29:35', '2014-05-13 09:59:44', null, null, null, null, '2014-05-13 09:28:00', '2014-05-13 10:26:37', 'i3b3g2k18x2YvTlcNtbbWl7xsPAW0J1VjmAzfAMkoRJ20jc2PYuKs5r4fwMP', null, null);
INSERT INTO `users` VALUES ('917', 'ha', '', 'ha', 'female', null, null, 'nuongtu@gmail.com', null, '$2y$08$8BgVibVXzzzqQkqZgKF1yuyeBbqNZtGtwcbhB2mTtNRw4c.2mip6S', '1', '3', null, null, null, null, null, null, null, '2014-05-13 09:55:18', '2014-05-13 09:55:18', null, null, null);
INSERT INTO `users` VALUES ('918', 'ha11', '', 'gg11', 'female', null, null, 'luong678@email.com', null, '$2y$08$MaoN0E856AmolteA1srOH.AeWZN8nrfPSs1t8DRPCPKCRC6p04Nda', '1', '3', null, null, null, null, null, null, null, '2014-05-13 09:55:47', '2014-05-13 09:56:03', null, null, null);
INSERT INTO `users` VALUES ('921', 'truyen', 'luong', 'thanh', 'male', null, null, 'ltt.develop@gmail.com', null, '$2y$08$d8boeXX4NSdiMhpDHFAy2e/9CWGx/MnsPDZbRfAyWYQrz5QA81rOq', '1', '4', null, null, null, null, null, null, null, '2014-05-13 11:07:07', '2014-05-13 11:07:07', null, null, null);
INSERT INTO `users` VALUES ('922', 'đ', 'dddddđ', 'dddd', 'male', null, null, 'dddd3@s.com', null, '$2y$08$bGIXPS1oMawdWhuio/RGUOXepxdGq.0S8Jw6g8SOfnAMv1vtSlhS2', '1', '4', null, null, null, null, null, null, null, '2014-05-13 11:31:51', '2014-05-13 11:31:51', null, null, null);
INSERT INTO `users` VALUES ('923', 'nguyen', 'thi', 'no', 'man', null, 'APP14000102', 'vidu1@gmail.com', '', '$2y$08$QzOcsLREbQ/uAgI3elQ7gOtq26zRYV7zmOCy4k6j2CHjuaCnxpCmG', '1', '1', '::1', '2014-05-13 12:45:17', null, null, null, null, null, '2014-05-13 12:45:17', '2014-05-13 12:47:42', null, null, null);
INSERT INTO `users` VALUES ('924', 'luong', 'thanh', 'truyen', 'man', null, 'APP14000103', 'truyen1@gmail.com', '', '$2y$08$TS4nUG15vN7amE5lJC84A.mSbLfj.zLyVzl5JQwwH7OsYauvUtUWm', '1', '1', null, null, null, null, null, null, null, '2014-05-14 04:18:34', '2014-05-14 04:49:48', 'PnWYgrK5YaTMp2piPtVPTwR9Q3gQLPTfYcSBr0DgiIQl00YljiHJdSMc0D4v', null, null);
INSERT INTO `users` VALUES ('925', 'Client1', '', 'Client1', 'man', null, 'APP14000104', 'truyen2@gmail.com', '', '$2y$08$e7CGc7//AOGtcIBYE3vETO.USmgSKJT8cJlxP.gHRGbT4RRsmxT8u', '1', '1', null, null, null, null, null, null, null, '2014-05-15 04:13:54', '2014-05-15 04:39:35', 'cOINsCe11xZr0AApSwOZaLwTBcbRtSm7MwTQ9V2Jjd77DwtS9crFIZH8KSyv', null, null);
INSERT INTO `users` VALUES ('930', 'luongthanhtruyen', 'sssssssssss', 'sssssss', 'man', null, 'APP14000109', 'sssssssssssssssss@s.com', '', '$2y$08$NmBr9x4EivOZoGFeKfLgh.j0v6K4S3g46kF776kaH2hoalDzev5bq', '1', '1', '::1', '2014-05-16 05:09:44', null, null, null, null, null, '2014-05-16 05:09:44', '2014-05-16 07:12:54', null, null, null);
INSERT INTO `users` VALUES ('931', 'sssss', 'ssssssssssssss', 'ssssssssss', 'man', null, 'APP14000110', 'sss@S.COM', null, '$2y$08$HL/O8EhqltQrLGHld4HfPuAnxjKLGpLAmsBB2Oi86oV19iceFltFy', '1', '1', '::1', '2014-05-16 05:18:32', null, null, null, null, null, '2014-05-16 05:18:32', '2014-05-16 05:18:32', null, null, null);

-- ----------------------------
-- Table structure for `work_hours`
-- ----------------------------
DROP TABLE IF EXISTS `work_hours`;
CREATE TABLE `work_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `am_f` varchar(6) NOT NULL,
  `am_l` varchar(6) NOT NULL,
  `pm_f` varchar(6) NOT NULL,
  `pm_l` varchar(6) NOT NULL,
  `slots` int(1) NOT NULL,
  `times` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `list_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_hours
-- ----------------------------
INSERT INTO `work_hours` VALUES ('1', '725', '06:35', '12:00', '13:00', '17:30', '8', '0', '2014-05-07 15:17:49', '2014-05-13 05:52:21', '1,2,3,4,5,6,7');
