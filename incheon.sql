-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-07-21 20:18
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
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`json`)),
  `idx` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `trans_res`
--

INSERT INTO `trans_res` (`json`, `idx`) VALUES
('\"[{\\\"id\\\":1,\\\"name\\\":\\\"김사장\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"16:30\\\",\\\"member\\\":{\\\"old\\\":1,\\\"adult\\\":3,\\\"kids\\\":30},\\\"price\\\":252000},{\\\"id\\\":2,\\\"name\\\":\\\"유관광\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-7-06\\\",\\\"time\\\":\\\"17:30\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":3,\\\"kids\\\":0},\\\"price\\\":288000},{\\\"id\\\":3,\\\"name\\\":\\\"박여행\\\",\\\"transportation\\\":2,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"06:00\\\",\\\"member\\\":{\\\"old\\\":2,\\\"adult\\\":10,\\\"kids\\\":0},\\\"price\\\":78000},{\\\"id\\\":4,\\\"name\\\":\\\"임성준\\\",\\\"transportation\\\":3,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"15:00\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":3,\\\"kids\\\":0},\\\"price\\\":288000},{\\\"id\\\":5,\\\"name\\\":\\\"김철수\\\",\\\"transportation\\\":4,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"11:30\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":30,\\\"kids\\\":0},\\\"price\\\":88000},{\\\"id\\\":6,\\\"name\\\":\\\"박영희\\\",\\\"transportation\\\":6,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"12:00\\\",\\\"member\\\":{\\\"old\\\":10,\\\"adult\\\":0,\\\"kids\\\":0},\\\"price\\\":420000},{\\\"id\\\":7,\\\"name\\\":\\\"이소현\\\",\\\"transportation\\\":7,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"01:30\\\",\\\"member\\\":{\\\"old\\\":1,\\\"adult\\\":2,\\\"kids\\\":3},\\\"price\\\":50000},{\\\"id\\\":8,\\\"name\\\":\\\"유재석\\\",\\\"transportation\\\":5,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"05:30\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":1,\\\"kids\\\":0},\\\"price\\\":12000},{\\\"id\\\":9,\\\"name\\\":\\\"박광현\\\",\\\"transportation\\\":10,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"09:00\\\",\\\"member\\\":{\\\"old\\\":30,\\\"adult\\\":2,\\\"kids\\\":0},\\\"price\\\":480000},{\\\"id\\\":10,\\\"name\\\":\\\"윤진서\\\",\\\"transportation\\\":8,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"15:30\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":4,\\\"kids\\\":10},\\\"price\\\":21000},{\\\"id\\\":11,\\\"name\\\":\\\"박두식\\\",\\\"transportation\\\":9,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"20:30\\\",\\\"member\\\":{\\\"old\\\":1,\\\"adult\\\":2,\\\"kids\\\":1},\\\"price\\\":47000},{\\\"id\\\":12,\\\"name\\\":\\\"이승주\\\",\\\"transportation\\\":15,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"22:00\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":2,\\\"kids\\\":0},\\\"price\\\":22000},{\\\"id\\\":13,\\\"name\\\":\\\"남우현\\\",\\\"transportation\\\":13,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"19:00\\\",\\\"member\\\":{\\\"old\\\":5,\\\"adult\\\":1,\\\"kids\\\":0},\\\"price\\\":90000},{\\\"id\\\":14,\\\"name\\\":\\\"임현수\\\",\\\"transportation\\\":12,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"23:30\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":1,\\\"kids\\\":20},\\\"price\\\":320000},{\\\"id\\\":15,\\\"name\\\":\\\"정해인\\\",\\\"transportation\\\":11,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"02:00\\\",\\\"member\\\":{\\\"old\\\":1,\\\"adult\\\":0,\\\"kids\\\":0},\\\"price\\\":8000},{\\\"id\\\":16,\\\"name\\\":\\\"유해진\\\",\\\"transportation\\\":14,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"00:00\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":2,\\\"kids\\\":0},\\\"price\\\":68000},{\\\"id\\\":17,\\\"name\\\":\\\"이동건\\\",\\\"transportation\\\":3,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"06:00\\\",\\\"member\\\":{\\\"old\\\":5,\\\"adult\\\":2,\\\"kids\\\":2},\\\"price\\\":110000},{\\\"id\\\":18,\\\"name\\\":\\\"정유진\\\",\\\"transportation\\\":7,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"01:30\\\",\\\"member\\\":{\\\"old\\\":2,\\\"adult\\\":2,\\\"kids\\\":2},\\\"price\\\":64000},{\\\"id\\\":19,\\\"name\\\":\\\"이세영\\\",\\\"transportation\\\":12,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"13:30\\\",\\\"member\\\":{\\\"old\\\":1,\\\"adult\\\":3,\\\"kids\\\":0},\\\"price\\\":73000},{\\\"id\\\":20,\\\"name\\\":\\\"한은서\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2019-07-19\\\",\\\"time\\\":\\\"18:00\\\",\\\"member\\\":{\\\"old\\\":0,\\\"adult\\\":4,\\\"kids\\\":0},\\\"price\\\":55000},{\\\"id\\\":21,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"\\\",\\\"member\\\":{\\\"old\\\":\\\"0\\\",\\\"adult\\\":\\\"3\\\",\\\"kids\\\":\\\"3\\\"},\\\"price\\\":\\\"57600\\\"},{\\\"id\\\":null,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"\\\",\\\"member\\\":{\\\"old\\\":\\\"0\\\",\\\"adult\\\":\\\"3\\\",\\\"kids\\\":\\\"3\\\"},\\\"price\\\":\\\"57600\\\"},{\\\"id\\\":null,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"\\\",\\\"member\\\":{\\\"old\\\":\\\"0\\\",\\\"adult\\\":\\\"2\\\",\\\"kids\\\":\\\"2\\\"},\\\"price\\\":\\\"38400\\\"},{\\\"id\\\":null,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"\\\",\\\"member\\\":{\\\"old\\\":\\\"2\\\",\\\"adult\\\":\\\"2\\\",\\\"kids\\\":\\\"2\\\"},\\\"price\\\":\\\"38400\\\"},{\\\"id\\\":null,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"\\\",\\\"member\\\":{\\\"old\\\":\\\"2\\\",\\\"adult\\\":\\\"2\\\",\\\"kids\\\":\\\"2\\\"},\\\"price\\\":\\\"38400\\\"},{\\\"id\\\":null,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"\\\",\\\"member\\\":{\\\"old\\\":\\\"0\\\",\\\"adult\\\":\\\"2\\\",\\\"kids\\\":\\\"2\\\"},\\\"price\\\":\\\"38400\\\"},{\\\"id\\\":1,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"\\\",\\\"member\\\":{\\\"old\\\":\\\"2\\\",\\\"adult\\\":\\\"2\\\",\\\"kids\\\":\\\"2\\\"},\\\"price\\\":\\\"38400\\\"},{\\\"id\\\":2,\\\"name\\\":\\\"정재성\\\",\\\"transportation\\\":1,\\\"date\\\":\\\"2020-07-06\\\",\\\"time\\\":\\\"17:00\\\",\\\"member\\\":{\\\"old\\\":\\\"2\\\",\\\"adult\\\":\\\"2\\\",\\\"kids\\\":\\\"2\\\"},\\\"price\\\":\\\"38400\\\"}]\"', 0);

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
-- 테이블의 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
