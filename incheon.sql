-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-07-22 20:57
-- 서버 버전: 10.4.10-MariaDB
-- PHP 버전: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `incheon`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `placement`
--

CREATE TABLE `placement` (
  `idx` int(11) NOT NULL,
  `json` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `placement`
--

INSERT INTO `placement` (`idx`, `json`) VALUES
(1, '{\"places\": [{\"id\": 1, \"name\": \"제 1 행사장\", \"score\": 4.5, \"description\": \"26,508㎡의 전시장으로 전문전시회, 대형회의, 각종 이벤트, 스포츠행사, 초대형기업행사 등이 가능합니다.\", \"price\": 5000, \"rest\": [0], \"image\": [\"01.jpg\"] }, {\"id\": 2, \"name\": \"제 2 행사장\", \"score\": 4.5, \"description\": \"19,872㎡의 전시장과 1,512㎡의 회의실로 전문전시회, 대형회의, 각종 이벤트, 스포츠행사, 초대형기업행사 등이 가능합니다.\", \"price\": 3500, \"rest\": [1, 2], \"image\": [\"02.jpg\"] }, {\"id\": 3, \"name\": \"오디토리움\", \"score\": 3, \"description\": \"대규모 회의, 각종 이벤트, 문화공연이 가능한 전북축제 오디토리움입니다.\", \"price\": 2500, \"rest\": [4, 5], \"image\": [\"03.jpg\"] }, {\"id\": 4, \"name\": \"컨벤션홀\", \"score\": 3.5, \"description\": \"26,508㎡의 전시장으로 전문전시회, 대형회의, 각종 이벤트, 스포츠행사, 초대형기업행사 등이 가능합니다.\", \"price\": 5000, \"rest\": [0, 6], \"image\": [\"04.jpg\", \"01.jpg\"] }, {\"id\": 5, \"name\": \"누리마루\", \"score\": 5, \"description\": \"“누리마루 APEC하우스”는 순수 우리말인 누리(세계) 마루(정상)와 APEC 회의장소인 APEC하우스를 조합한 명칭으로 “세계 정상들이 모여 APEC회의를 개최한 장소”라는 의미를 지니고 있다.\", \"price\": 1500, \"rest\": [6], \"image\": [\"05.jpg\"] }, {\"id\": 6, \"name\": \"유니언타운\", \"score\": 1, \"description\": \"첨단 인텔리전트 시스템 및 IT 인프라를 두루 갖추었습니다 또한 최고의 축제-문화-관광의 명소로서 쾌적한 환경을 제공합니다.\", \"price\": 6500, \"rest\": [0, 2], \"image\": [\"04.jpg\"] }, {\"id\": 7, \"name\": \"다솜마루\", \"score\": 4.5, \"description\": \"지상 1층 ~ 4층 총 36,007㎡ (연면적 46만㎡) 으로 구성된 A~D홀의 4개 전문전 시장과 100개의 회의실, 그리고 최고의 편의시설이 제공됩니다.\", \"price\": 5500, \"rest\": [4, 6], \"image\": [\"02.jpg\"] }, {\"id\": 8, \"name\": \"한빛 행사장\", \"score\": 4.5, \"description\": \"첨단 관리 시스템과 최고의 환경을 제공하며 즐거움과 추억을 선사하고 있습니다.\", \"price\": 6500, \"rest\": [2, 6], \"image\": [\"05.jpg\"] }, {\"id\": 9, \"name\": \"아름 행사장\", \"score\": 3.5, \"description\": \"트레이드마크, 아셈타워, 룩삼타워, 쇼핑몰, 뮤지컬 극장, 영화관등 여러가지 혜택을 제공하고 있습니다.\", \"price\": 3500, \"rest\": [1, 5], \"image\": [\"01.jpg\"] }, {\"id\": 10, \"name\": \"호건타운\", \"score\": 4.5, \"description\": \"첨단 건축방식을 적용해 깔끔한 디자인과 홀딩스가 직업운영 및 건물 관리를 하여 쾌적한 공간에서 관람할 수 있는 환경을 제공합니다\", \"price\": 4500, \"rest\": [5], \"image\": [\"03.jpg\"] }, {\"id\": 11, \"name\": \"팔거천\", \"score\": 2.5, \"description\": \"120개의 워크스테이션과 최신 장비를 갖춘 6개의 공연장이 준비되어 있습니다.\", \"price\": 2000, \"rest\": [2, 3], \"image\": [\"04.jpg\"] }, {\"id\": 12, \"name\": \"라바야홀\", \"score\": 3, \"description\": \"초고속 인터넷 망과 IT 상시 지원 서비스, 고급 인테리어, 휴식처인 릴렉스룸등 여러가지 환경을 제공합니다.\", \"price\": 1500, \"rest\": [1], \"image\": [\"05.jpg\"] }, {\"id\": 13, \"name\": \"과천세리움\", \"score\": 4, \"description\": \"연회장, 공연장, 관광버스등 여러가지 서비스를 이용하실수 있습니다.\", \"price\": 7000, \"rest\": [6], \"image\": [\"01.jpg\"] }, {\"id\": 14, \"name\": \"새날드림\", \"score\": 3.5, \"description\": \"친환경적인 시설과 조명과 인테리어를 새롭게 조명하여 미래와 유사한 시설을 제공합니다\", \"price\": 6000, \"rest\": [4], \"image\": [\"03.jpg\"] }, {\"id\": 15, \"name\": \"주공타운\", \"score\": 3.5, \"description\": \"평범한 일상도 단번에 특별한 추억으로 만들어주는 이벤트를 제공합니다\", \"price\": 4500, \"rest\": [3, 5], \"image\": [\"02.jpg\"] }, {\"id\": 16, \"name\": \"타운어스\", \"score\": 2.5, \"description\": \"고객이 만족할 수 있도록 행사에 적합한 컨텐츠를 준비했습니다.\", \"price\": 4000, \"rest\": [0, 3], \"image\": [\"05.jpg\"] }, {\"id\": 17, \"name\": \"원심포지엄\", \"score\": 4.5, \"description\": \"최고의 디렉팅 그리고 무대 연출로 관괙뿐만 아니라 고객의 만족도까지 향상시키는 서비스가 제공됩니다.\", \"price\": 3500, \"rest\": [1], \"image\": [\"04.jpg\"] }, {\"id\": 18, \"name\": \"주기캘리\", \"score\": 2, \"description\": \"신선의 컨텐츠와 최고의 시설로 관객들의 즐거움을 책임집니다.\", \"price\": 1500, \"rest\": [4], \"image\": [\"03.jpg\"] }, {\"id\": 19, \"name\": \"한힘샘\", \"score\": 5, \"description\": \"글로벌 시대에 발맞춰 다양한 엔터테인먼트 사업으로 서비스를 제공합니다.\", \"price\": 3500, \"rest\": [2, 5], \"image\": [\"02.jpg\"] }, {\"id\": 20, \"name\": \"백역움\", \"score\": 2.5, \"description\": \"여러분의 추억과 엄청난 행사로 무장한 다양한 서비를 제공합니다.\", \"price\": 2000, \"rest\": [0], \"image\": [\"01.jpg\"] } ] }');

-- --------------------------------------------------------

--
-- 테이블 구조 `reservation`
--

CREATE TABLE `reservation` (
  `idx` int(11) NOT NULL,
  `json` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `reservation`
--

INSERT INTO `reservation` (`idx`, `json`) VALUES
(1, '{\"reservations\": [{\"id\": 1, \"placement\": 1, \"since\": \"2020-12-15\", \"until\": \"2020-12-25\", \"name\": \"세계인의 게임 축제 G스타\", \"createdAt\": \"2018-06-31\", \"user\": {\"name\": \"지스타 관리자\"} }, {\"id\": 2, \"placement\": 3, \"since\": \"2020-10-01\", \"until\": \"2020-10-15\", \"name\": \"전북국제영화제\", \"createdAt\": \"2018-03-31\", \"user\": {\"name\": \"영화제 관리자\"} }, {\"id\": 3, \"placement\": 2, \"since\": \"2020-11-30\", \"until\": \"2020-11-31\", \"name\": \"2019 전북국제의료관광컨벤션\", \"createdAt\": \"2018-04-21\", \"user\": {\"name\": \"컨벤션 관리자\"} }, {\"id\": 4, \"placement\": 9, \"since\": \"2020-11-04\", \"until\": \"2020-11-06\", \"name\": \"2019 축제환경에너지 산업전\", \"createdAt\": \"2018-06-01\", \"user\": {\"name\": \"산업전 관리자\"} }, {\"id\": 5, \"placement\": 12, \"since\": \"2020-12-05\", \"until\": \"2020-12-08\", \"name\": \"제 22회 전북국제관광전\", \"createdAt\": \"2018-06-14\", \"user\": {\"name\": \"관광전 관리자\"} }, {\"id\": 6, \"placement\": 14, \"since\": \"2020-7-05\", \"until\": \"2020-7-11\", \"name\": \"3000 제55회 전국 기능경기대회\", \"createdAt\": \"2018-04-10\", \"user\": {\"name\": \"인평 관리자\"} }, {\"id\": 7, \"placement\": 3, \"since\": \"2020-10-30\", \"until\": \"2020-11-01\", \"name\": \"제17회 전북축제엑스포 EXPO\", \"createdAt\": \"2018-5-05\", \"user\": {\"name\": \"엑스포 관리자\"} }, {\"id\": 8, \"placement\": 4, \"since\": \"2020-07-01\", \"until\": \"2020-07-30\", \"name\": \"제16회 전북축제무역엑스포 개최\", \"createdAt\": \"2018-04-28\", \"user\": {\"name\": \"전북 관리자\"} }, {\"id\": 9, \"placement\": 14, \"since\": \"2020-01-02\", \"until\": \"2020-01-04\", \"name\": \"제1회 비제이페스티벌 개최\", \"createdAt\": \"2019-12-01\", \"user\": {\"name\": \"우가우가 관리자\"} }, {\"id\": 10, \"placement\": 18, \"since\": \"2020-01-24\", \"until\": \"2020-01-26\", \"name\": \"제6회 육회축제\", \"createdAt\": \"2019-12-26\", \"user\": {\"name\": \"육회 관리자\"} }, {\"id\": 11, \"placement\": 15, \"since\": \"2020-02-02\", \"until\": \"2020-02-04\", \"name\": \"제1회 트위치 페스티벌\", \"createdAt\": \"2020-01-03\", \"user\": {\"name\": \"트위치 관리자\"} }, {\"id\": 12, \"placement\": 2, \"since\": \"2020-02-05\", \"until\": \"2020-02-07\", \"name\": \"제3회 캐논 포토 사진전\", \"createdAt\": \"2020-01-06\", \"user\": {\"name\": \"캐논 관리자\"} }, {\"id\": 13, \"placement\": 5, \"since\": \"2020-02-06\", \"until\": \"2020-02-08\", \"name\": \"제1회 겨울놀이 축제\", \"createdAt\": \"2020-01-06\", \"user\": {\"name\": \"겨울놀이 관리자\"} }, {\"id\": 14, \"placement\": 16, \"since\": \"2020-02-12\", \"until\": \"2020-02-13\", \"name\": \"제1회 니콘 포토 사진전\", \"createdAt\": \"2020-01-09\", \"user\": {\"name\": \"니콘 관리자\"} }, {\"id\": 15, \"placement\": 20, \"since\": \"2020-02-15\", \"until\": \"2020-02-19\", \"name\": \"제3회 밀리터리 페스티벌\", \"createdAt\": \"2020-01-10\", \"user\": {\"name\": \"밀리터리 관리자\"} }, {\"id\": 16, \"placement\": 15, \"since\": \"2020-02-20\", \"until\": \"2020-02-24\", \"name\": \"제2회 청소년 동아리 한마당\", \"createdAt\": \"2020-01-20\", \"user\": {\"name\": \"동아리 관리자\"} }, {\"id\": 17, \"placement\": 7, \"since\": \"2020-03-14\", \"until\": \"2020-03-15\", \"name\": \"제1회 파이다\", \"createdAt\": \"2020-02-10\", \"user\": {\"name\": \"3.14 관리자\"} }, {\"id\": 18, \"placement\": 13, \"since\": \"2020-03-16\", \"until\": \"2020-03-19\", \"name\": \"제3회 대학생 동아리 한마당\", \"createdAt\": \"2020-02-01\", \"user\": {\"name\": \"동아리 관리자\"} }, {\"id\": 19, \"placement\": 11, \"since\": \"2020-03-20\", \"until\": \"2020-03-22\", \"name\": \"제3회 산업대제전\", \"createdAt\": \"2020-03-01\", \"user\": {\"name\": \"산업 관리자\"} }, {\"id\": 20, \"placement\": 6, \"since\": \"2020-03-30\", \"until\": \"2020-04-05\", \"name\": \"제1회 E스포츠 페스티벌\", \"createdAt\": \"2020-03-02\", \"user\": {\"name\": \"E스포츠 관리자\"} } ] }');

-- --------------------------------------------------------

--
-- 테이블 구조 `transportation`
--

CREATE TABLE `transportation` (
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`json`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `transportation`
--

INSERT INTO `transportation` (`json`) VALUES
('{\"transportation\": [{\"id\": 1, \"name\": \"고속 버스 1번\", \"description\": \"먼 이동기간동안 당신의 여행 파트너가 되어줄 고속 버스입니다.\", \"interval\": 30, \"cycle\": [\"16:00\", \"22:00\"], \"rest\": [0, 3, 6], \"price\": 12000, \"limit\": 40 }, {\"id\": 2, \"name\": \"KTX 관광 에디션\", \"description\": \"당신의 완벽한 관광을 도와줄 코레일의 관광 파트너, KTX 관광 에디션입니다.\", \"interval\": 90, \"cycle\": [\"06:00\", \"20:00\"], \"rest\": [1, 2], \"price\": 78000, \"limit\": 80 }, {\"id\": 3, \"name\": \"Air Junbuk Festival Edition\", \"description\": \"럭셔리한 항공편으로 주요 국가 및 주요 도시에서 전북으로 간편하게 이동하세요!\", \"interval\": 480, \"cycle\": [\"06:00\", \"20:00\"], \"rest\": [1, 3, 5], \"price\": 96000, \"limit\": 150 }, {\"id\": 4, \"name\": \"고속 버스 2번\", \"description\": \"먼 이동기간동안 당신의 여행 파트너가 되어줄 고속 버스입니다.\", \"interval\": 20, \"cycle\": [\"06:30\", \"21:30\"], \"rest\": [1, 2, 5], \"price\": 12000, \"limit\": 40 }, {\"id\": 5, \"name\": \"레드 버스\", \"description\": \"빠르게 이동하고 싶으신가요? 레드 버스를 이용해 주세요\", \"interval\": 15, \"cycle\": [\"07:00\", \"22:00\"], \"rest\": [0], \"price\": 15000, \"limit\": 20 }, {\"id\": 6, \"name\": \"블루 버스\", \"description\": \"먼 이동거리를 책임질 블루 버스 입니다.\", \"interval\": 30, \"cycle\": [\"05:30\", \"21:30\"], \"rest\": [2], \"price\": 20000, \"limit\": 30 }, {\"id\": 7, \"name\": \"옐로우 버스\", \"description\": \"소중한 아이들을 위한 버스! 옐로우 버스 입니다.\", \"interval\": 20, \"cycle\": [\"08:00\", \"22:00\"], \"rest\": [6], \"price\": 8000, \"limit\": 30 }, {\"id\": 8, \"name\": \"2층 버스\", \"description\": \"2층 버스와 함께 즐거운 관광을 즐기세요!\", \"interval\": 25, \"cycle\": [\"06:30\", \"22:30\"], \"rest\": [2], \"price\": 15000, \"limit\": 30 }, {\"id\": 9, \"name\": \"마차\", \"description\": \"여유있게 즐기고 싶으신 당신을 위해 준비했습니다.\", \"interval\": 40, \"cycle\": [\"09:00\", \"18:00\"], \"rest\": [2], \"price\": 27000, \"limit\": 60 }, {\"id\": 10, \"name\": \"리무진\", \"description\": \"럭셔리한 관광을 즐기고 싶으신가요? 리무진을 이용해 보세요!\", \"interval\": 60, \"cycle\": [\"05:00\", \"18:00\"], \"rest\": [2], \"price\": 120000, \"limit\": 120 }, {\"id\": 11, \"name\": \"헬리콥터\", \"description\": \"헬리콥터!\", \"interval\": 120, \"cycle\": [\"08:00\", \"19:00\"], \"rest\": [2], \"price\": 67000, \"limit\": 240 }, {\"id\": 12, \"name\": \"KRT\", \"description\": \"빠르게 이동시켜주는 기차 입니다.\", \"interval\": 10, \"cycle\": [\"05:00\", \"23:00\"], \"rest\": [2,5], \"price\": 90000, \"limit\": 30 }, {\"id\": 13, \"name\": \"우주왕복선\", \"description\": \"세계 최초 민간 우주왕복선!\", \"interval\": 480, \"cycle\": [\"08:00\", \"20:00\"], \"rest\": [2], \"price\": 760000, \"limit\": 150 }, {\"id\": 14, \"name\": \"크루즈\", \"description\": \"엄청 큰 배 입니다.\", \"interval\": 360, \"cycle\": [\"06:30\", \"20:30\"], \"rest\": [5], \"price\": 230000, \"limit\": 120 }, {\"id\": 15, \"name\": \"범선\", \"description\": \"옛날 배 입니다.\", \"interval\": 240, \"cycle\": [\"09:30\", \"18:30\"], \"rest\": [5], \"price\": 25000, \"limit\": 100 } ] }');

-- --------------------------------------------------------

--
-- 테이블 구조 `trans_res`
--

CREATE TABLE `trans_res` (
  `json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `idx` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `trans_res`
--

INSERT INTO `trans_res` (`json`, `idx`) VALUES
('{\"transportation_reservation\":[{\"id\":\"1\",\"name\":\"김사장\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"16:30\",\"member\":{\"old\":\"1\",\"adult\":\"3\",\"kids\":\"30\"},\"price\":\"252000\"},{\"id\":\"2\",\"name\":\"유관광\",\"transportation\":\"1\",\"date\":\"2020-7-06\",\"time\":\"17:30\",\"member\":{\"old\":\"0\",\"adult\":\"3\",\"kids\":\"0\"},\"price\":\"288000\"},{\"id\":\"3\",\"name\":\"박여행\",\"transportation\":\"2\",\"date\":\"2019-07-19\",\"time\":\"06:00\",\"member\":{\"old\":\"2\",\"adult\":\"10\",\"kids\":\"0\"},\"price\":\"78000\"},{\"id\":\"4\",\"name\":\"임성준\",\"transportation\":\"3\",\"date\":\"2019-07-19\",\"time\":\"15:00\",\"member\":{\"old\":\"0\",\"adult\":\"3\",\"kids\":\"0\"},\"price\":\"288000\"},{\"id\":\"5\",\"name\":\"김철수\",\"transportation\":\"4\",\"date\":\"2019-07-19\",\"time\":\"11:30\",\"member\":{\"old\":\"0\",\"adult\":\"30\",\"kids\":\"0\"},\"price\":\"88000\"},{\"id\":\"6\",\"name\":\"박영희\",\"transportation\":\"6\",\"date\":\"2019-07-19\",\"time\":\"12:00\",\"member\":{\"old\":\"10\",\"adult\":\"0\",\"kids\":\"0\"},\"price\":\"420000\"},{\"id\":\"7\",\"name\":\"이소현\",\"transportation\":\"7\",\"date\":\"2019-07-19\",\"time\":\"01:30\",\"member\":{\"old\":\"1\",\"adult\":\"2\",\"kids\":\"3\"},\"price\":\"50000\"},{\"id\":\"8\",\"name\":\"유재석\",\"transportation\":\"5\",\"date\":\"2019-07-19\",\"time\":\"05:30\",\"member\":{\"old\":\"0\",\"adult\":\"1\",\"kids\":\"0\"},\"price\":\"12000\"},{\"id\":\"9\",\"name\":\"박광현\",\"transportation\":\"10\",\"date\":\"2019-07-19\",\"time\":\"09:00\",\"member\":{\"old\":\"30\",\"adult\":\"2\",\"kids\":\"0\"},\"price\":\"480000\"},{\"id\":\"10\",\"name\":\"윤진서\",\"transportation\":\"8\",\"date\":\"2019-07-19\",\"time\":\"15:30\",\"member\":{\"old\":\"0\",\"adult\":\"4\",\"kids\":\"10\"},\"price\":\"21000\"},{\"id\":\"11\",\"name\":\"박두식\",\"transportation\":\"9\",\"date\":\"2019-07-19\",\"time\":\"20:30\",\"member\":{\"old\":\"1\",\"adult\":\"2\",\"kids\":\"1\"},\"price\":\"47000\"},{\"id\":\"12\",\"name\":\"이승주\",\"transportation\":\"15\",\"date\":\"2019-07-19\",\"time\":\"22:00\",\"member\":{\"old\":\"0\",\"adult\":\"2\",\"kids\":\"0\"},\"price\":\"22000\"},{\"id\":\"13\",\"name\":\"남우현\",\"transportation\":\"13\",\"date\":\"2019-07-19\",\"time\":\"19:00\",\"member\":{\"old\":\"5\",\"adult\":\"1\",\"kids\":\"0\"},\"price\":\"90000\"},{\"id\":\"14\",\"name\":\"임현수\",\"transportation\":\"12\",\"date\":\"2019-07-19\",\"time\":\"23:30\",\"member\":{\"old\":\"0\",\"adult\":\"1\",\"kids\":\"20\"},\"price\":\"320000\"},{\"id\":\"15\",\"name\":\"정해인\",\"transportation\":\"11\",\"date\":\"2019-07-19\",\"time\":\"02:00\",\"member\":{\"old\":\"1\",\"adult\":\"0\",\"kids\":\"0\"},\"price\":\"8000\"},{\"id\":\"16\",\"name\":\"유해진\",\"transportation\":\"14\",\"date\":\"2019-07-19\",\"time\":\"00:00\",\"member\":{\"old\":\"0\",\"adult\":\"2\",\"kids\":\"0\"},\"price\":\"68000\"},{\"id\":\"17\",\"name\":\"이동건\",\"transportation\":\"3\",\"date\":\"2019-07-19\",\"time\":\"06:00\",\"member\":{\"old\":\"5\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"110000\"},{\"id\":\"18\",\"name\":\"정유진\",\"transportation\":\"7\",\"date\":\"2019-07-19\",\"time\":\"01:30\",\"member\":{\"old\":\"2\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"64000\"},{\"id\":\"19\",\"name\":\"이세영\",\"transportation\":\"12\",\"date\":\"2019-07-19\",\"time\":\"13:30\",\"member\":{\"old\":\"1\",\"adult\":\"3\",\"kids\":\"0\"},\"price\":\"73000\"},{\"id\":\"20\",\"name\":\"한은서\",\"transportation\":\"1\",\"date\":\"2019-07-19\",\"time\":\"18:00\",\"member\":{\"old\":\"0\",\"adult\":\"4\",\"kids\":\"0\"},\"price\":\"55000\"},{\"id\":\"21\",\"name\":\"정재성\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"\",\"member\":{\"old\":\"2\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"38400\"},{\"id\":\"22\",\"name\":\"정재성\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"\",\"member\":{\"old\":\"0\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"38400\"},{\"id\":\"23\",\"name\":\"정재성\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"\",\"member\":{\"old\":\"0\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"38400\"},{\"id\":\"24\",\"name\":\"정재성\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"16:00\",\"member\":{\"old\":\"0\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"38400\"},{\"id\":\"25\",\"name\":\"정재성\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"16:00\",\"member\":{\"old\":\"0\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"38400\"},{\"id\":\"26\",\"name\":\"정재성\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"17:00\",\"member\":{\"old\":\"2\",\"adult\":\"2\",\"kids\":\"2\"},\"price\":\"38400\"},{\"id\":\"27\",\"name\":\"정재성\",\"transportation\":\"1\",\"date\":\"2020-07-06\",\"time\":\"20:00\",\"member\":{\"old\":\"0\",\"adult\":\"3\",\"kids\":\"3\"},\"price\":\"57600\"}]}', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE `user` (
  `idx` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`idx`, `id`, `password`, `name`, `phone`) VALUES
(1, 'ajwwlswotjd', 'asdf1234@', '정재성', '010-9274-9223'),
(21, 'ajwwlswotjd2', 'asdf1234@', '정재성', '010-1234-5678');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `placement`
--
ALTER TABLE `placement`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `trans_res`
--
ALTER TABLE `trans_res`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idx`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `placement`
--
ALTER TABLE `placement`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `trans_res`
--
ALTER TABLE `trans_res`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
