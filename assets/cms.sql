-- phpMyAdmin SQL Dump
-- version 4.0.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 14 Cze 2013, 21:29
-- Wersja serwera: 5.5.31-1
-- Wersja PHP: 5.4.4-15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `time` time NOT NULL,
  `chat_id` int(100) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Zrzut danych tabeli `chat`
--

INSERT INTO `chat` (`id`, `message`, `time`, `chat_id`) VALUES
(1, 'adsadasd', '19:59:32', 1),
(2, 'sadsdasd', '20:50:25', 1),
(3, 'sadasdasd', '20:52:31', 1),
(4, 'dsfasdfadsf', '20:52:35', 1),
(5, 'a teraz co ?', '20:52:44', 1),
(6, 'vcxbvcbxvb', '20:52:48', 1),
(7, 'asdsad', '20:54:34', 1),
(8, 'fdasfdsfdasf', '20:54:53', 1),
(9, 'dasfdfdsf', '20:54:56', 1),
(10, 'asdsad', '20:59:53', 1),
(11, 'asdasd', '21:01:23', 1),
(12, 'przemek', '21:08:30', 1),
(13, 'asdfsdfasdf', '21:08:48', 1),
(14, 'przemek2', '21:09:31', 1),
(15, 'cvvcv', '21:09:42', 1),
(16, 'przemek2', '21:10:05', 1),
(17, 'asdasd', '21:10:38', 1),
(18, 'vcvvvcvcv', '21:10:42', 1),
(19, 'bvbvbvbv', '21:10:45', 1),
(20, 'przemek12323123', '21:12:18', 1),
(21, 'asdfsdfsdfdsfdsafsdf', '21:12:38', 1),
(22, '', '21:12:46', 1),
(23, 'przemek i Ela', '21:14:16', 1),
(24, 'dsaasf', '21:20:04', 1),
(25, 'cxvzcvcvz', '21:20:14', 1),
(26, 'sadsd', '21:20:25', 1),
(27, 'vbvcb', '21:20:29', 1),
(28, 'asdasdasd', '21:20:44', 1),
(29, 'Ela numer 23', '21:21:02', 1),
(30, 'Przemek rz?dzi ?wiatem :D', '21:24:52', 1),
(31, 'a teraz cos sie dzieje czy nic ? :D', '21:25:43', 1),
(32, 'dsafdsf', '21:50:06', 1),
(33, 'vcvcv', '21:50:10', 1),
(34, 'Ela sie kapie', '21:50:37', 1),
(35, 'a teraz sie nie kapie', '21:54:38', 1),
(36, 'bnbnmbnbn', '21:56:46', 1),
(37, 'sfdasdf', '22:00:06', 1),
(38, '', '22:00:16', 1),
(39, '', '22:00:22', 1),
(40, 'vcxbvcb', '22:03:06', 1),
(41, 'fadsfasdf', '22:03:58', 1),
(42, 'asadfasdf', '22:04:27', 1),
(43, 'asdfasfadsf', '22:05:03', 1),
(44, 'dsfadfasdf', '22:05:53', 1),
(45, 'przemek', '22:09:43', 1),
(46, 'vcxvcxv', '22:10:49', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `sites_id` int(100) unsigned NOT NULL,
  `img` varchar(120) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `type` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Zrzut danych tabeli `content`
--

INSERT INTO `content` (`id`, `content`, `sites_id`, `img`, `title`, `type`) VALUES
(1, 'Wychodząc na przeciw naszym klientom prezentujemy nasze możliwości w kwestii tworzenia stron WWW. Prezentujemy Państwu naszą nową stronę internetową! Jest to odpowiedź na intensywnie zmieniający się rynek internetowy.', 1, '', 'Nowości w T-Design', NULL),
(2, 'T-Design jest agencją interaktywną zajmującą się kreowaniem wizerunku. Dzięki doświadczeniu na rynku, które rozpoczęliśmy zdobywać w 2006r. jesteśmy w stanie wyjść naprzeciw potrzebom naszych klientów.', 1, '', 'Kim jesteśmy?', NULL),
(3, 'Wraz z rosnącą popularnością Internetu, z którego korzysta już ponad połowa polskiego społeczeństwa, wzrasta znaczenie posiadania dobrej strony internetowej. \n\nDzięki pieniądzom napływającym z Unii Europejskiej coraz więcej osób starszych korzysta z Internetu. Zwiększająca się liczba polskich internautów tworzy pewną specyficzną społeczność, do której można dotrzeć poprzez dobrą stronę internetową. Wzrasta także popularność zakupów internetowych, co oznacza wzrost zaufania do danych znajdujących się w Internecie. To stwarza niepowtarzalną okazję do zaprezentowania własnej marki w Internecie.\n\nDzięki odpowiednio skonstruowanej stronie internetowej jesteśmy w stanie zwiększyć swoje wpływy w danej dziedzinie usług, a także stworzyć pozytywną aurę wokół swojej marki i przyciągnąć potencjalnych klientów. Dzięki wieloletniemu doświadczeniu w dziedzinie tworzenia stron internetowych potrafimy dostosować się do wymagań klienta i rynku.', 2, 'strony.png', 'Strony WWW', ''),
(4, 'Ważną częścią każdej strony WWW jest jej CMS, czyli system zarządzania treścią. Musi być rozbudowany i intuicyjny. Proponujemy autorskie rozwiązania jak i dostosowanie naszych projektów do najpopularniejszych dostępnych produktów.\n\nDobry CMS jest podstawą każdej udanej strony. To właśnie dzięki systemom zarządzania danych możemy w łatwy i przyjemny sposób dodawać treść na swoją stronę www. W naszej ofercie możemy zarówno zastosować autorskie rozwiązania, jak i te obecne już na rynku. Zależny nam na tym, aby zrobiona przez nas strona internetowa była kompletna. Dzięki dostosowaniu kodu CMS do Waszych upodobań, oddajemy w Wasze ręce solidny i prosty w obsłudze produkt, na którym praca staje się przyjemnością.', 2, 'cms.png', 'CMS', ''),
(5, 'Tworzymy grafikę użytkową dla klientów dostosowując się do ich wymagań. Od ulotek, które są najpowszechniejszą formą reklamy bezpośredniej, po całe szablony gazet. \n\nW obecnych czasach grafika użytkowa jest robiona sztampowo. Dostając ulotkę na mieście po przeczytaniu jednego sloganu, czy też samej nazwy, mechanicznie szukamy najbliższego kosza na śmieci. Naszym celem, przy tworzeniu grafiki użytkowej, jest zaciekawienie konsumenta. Mamy dość monotonności, jaka oblewa ten rynek. Nie pozwól, aby Twoja firma kojarzona była ze złą ulotką. Pozwól nam stworzyć coś wyjątkowego.', 2, 'dtp.png', 'DTP', ''),
(6, '„Reklama dźwignią handlu”. Z Tym twierdzeniem zgadzamy się w 100% i właśnie dlatego oferujemy naszym klientom spektrum kampanii reklamowych do wyboru. Od reklamy w Internecie po reklamę na ulicach. \n\nW T-Design przy tworzeniu reklam stawiamy sobie 2 podstawowe pytania: „Co chciałbym zobaczyć” oraz „Jak chciałbym zostać zaskoczony”. Reklamy atakują nas na każdym kroku. Nieważne czy stoimy w korku, słuchamy radia, przeglądamy ulubioną stronę internetową, czy nawet idziemy na mecz piłkarski – Reklama jest zawsze obecna. Rynek reklamowy w Polsce jest ogromny i zachęca do inwestycji, które szybko się zwracają. Jednak poprzez zbyt powszechną popularyzację środków reklamowych takich jak np. ulotka, staliśmy się niewolnikami nudy, schematów i marazmu. \n\nRynek reklamowy może kusić przedsiębiorców, jednak wiąże się on z wielkim ryzykiem. Dlaczego więc nie oddać robienia reklamy w ręce fachowców?', 2, 'reklamy.png', 'Reklamy', NULL),
(7, 'Obecnie każda firma potrzebuje pewnych form grafiki by dostosować się do najnowszych form promocji. Projektujemy grafikę na koszulki, długopisy, samochody, czapeczki, pieczątki itp. \n\nBudowanie wizerunku marki poprzez najnowsze formy promocji nie jest możliwa bez opracowania pewnych grafik. Każda koszulka firmowa, oklejony samochód, czy nawet długopis dany w prezencie klientowi jest odpowiedzialna za reklamę. W T-Design stawiamy na kreatywność i każde zlecenie traktujemy z najwyższym priorytetem. Zleć nam wykonanie tych grafik i pozwól się pozytywnie zaskoczyć.', 2, 'grafika_uzytkowa.png', 'Grafika użytkowa', ''),
(8, 'Dobra strona WWW to nie tylko fachowe wykonanie i dobry CMS. Zamieszczona w Internecie strona potrzebuje także administracji. Proponujemy państwu 24h/7 opiekę techniczną i merytoryczną. \n\nW czasach, w których informacja stała się dobrem pożądanym, całodobowa administracja strony internetowej jest niezbędna. W swojej ofercie posiadamy także administrację merytoryczną. Dzięki doświadczeniu, jakie posiadamy w kreowaniu wizerunku oraz dzięki obecności w naszym zespole osób wcześniej związanych z dziennikarstwem, redagowanie i przedstawianie informacji nie stanowi dla nas problemu. Należy pamiętać, że raz umieszczona informacja w Internecie, w większości przypadków, pozostaje tam na zawsze. Dlatego warto zlecić nam tą część pracy i czas zaoszczędzony poświęcić na osiąganie celów strategicznych.', 2, 'zarzadzanie.png', 'Zarządzanie stroną', ''),
(9, 'Tworzenie wizerunku identyfikacji firmy jest bardzo ważne, dlatego warto powierzyć to profesjonalistom. Zajmujemy się pełną identyfikacją firm. Od tworzenia logo, strony WWW, po reklamę danej marki. \n\nWejście danej firmy na rynek internetowy jest bardzo poważnym przedsięwzięciem. Wraz z tym krokiem wiąże się wiele prac, które muszą zostać wykonane. Prowadząc biznes doskonale zdajemy sobie sprawę z zasady mówiącej, że czas to pieniądz. Dlatego w naszej ofercie jest pozycja Brandingu, z którym wiąże się pełne umieszczenie firmy w Internecie. Oszczędź czas, zleć pracę profesjonalistom i skoncentruj się na realizacji zamierzonych celów, lub planach wykorzystywania swojej przyszłej strony internetowej. Stroną techniczną zajmiemy się my.', 2, 'marki.png', 'Marki', ''),
(10, 'Stworzenie samego rdzenia systemu zarządzania danych to nie wszystko. Bardzo ważną kwestią jest opakowanie go w przyjazny i intuicyjny interfejs, tak, aby administracja strony była prosta i szybka.\n\nBy móc osiągać większą efektywność w pracy oraz oszczędzać czas przy administrowaniu swoją stroną internetową, potrzebny jest przejrzysty interfejs, dzięki któremu w razie potrzeby będziemy mieli natychmiastowy dostęp do potrzebnych funkcji. W latach 90'' upowszechniła się praca na środowiskach graficznych. Swoim klientom oferujemy intuicyjne i miłe dla oka interfejsy.', 2, 'interfejsy.png', 'Interfejsy', ''),
(13, 'Wpis numer 13 podległ edycji .. ;]', 1, '', 'Edycja wpisu nr 13', 'tekstowy'),
(14, '', 5, 'klienci/kl1.png', '', NULL),
(15, '', 5, 'klienci/kl2.png', '', NULL),
(18, '', 5, 'klienci/kl3.png', '', NULL),
(19, '', 5, 'klienci/kl4.png', '', NULL),
(20, '', 5, 'klienci/kl5.png', '', NULL),
(21, '', 6, 'study/www/2006-1.jpg', '', 'www'),
(22, '', 6, 'study/www/2006-2.jpg', '', 'www'),
(25, '', 6, 'study/www/2006-3.jpg', '', 'www'),
(26, '', 6, 'study/www/2006-4.jpg', '', 'www'),
(27, '', 6, 'study/www/2006-5.jpg', '', 'www'),
(28, '', 6, 'study/www/2006-6.jpg', '', 'www'),
(29, '', 6, 'study/www/2006-7.jpg', '', 'www'),
(30, '', 6, 'study/www/2006-8.jpg', '', 'www'),
(31, '', 6, 'study/www/2007-1.jpg', '', 'www'),
(32, '', 6, 'study/www/2007-2.jpg', '', 'www'),
(33, '', 6, 'study/www/2007-3.jpg', 'last order', 'www'),
(34, '', 6, 'study/www/2007-4.jpg', '', 'www'),
(35, '', 6, 'study/www/2008-3.jpg', '', 'www'),
(36, '', 6, 'study/www/2008-4.jpg', '', 'www'),
(37, '', 6, 'study/www/2008-5.jpg', '', 'www'),
(39, '', 6, 'study/www/2008-6.jpg', '', 'www'),
(42, '', 6, 'study/www/2008-7.jpg', '', 'www'),
(43, '', 6, 'study/www/2008-8.jpg', '', 'www'),
(44, '', 6, 'study/www/2008-9.jpg', '', 'www'),
(45, '', 6, 'study/www/2009-1.jpg', '', 'www'),
(46, '', 6, 'study/www/2009-2.jpg', '', 'www'),
(47, '', 6, 'study/www/2009-3.jpg', '', 'www'),
(48, '', 6, 'study/www/2009-4.jpg', '', 'www'),
(49, '', 6, 'study/www/2009-5.jpg', '', 'www'),
(50, '', 6, 'study/www/2009-6.jpg', '', 'www'),
(51, '', 6, 'study/www/2009-7.jpg', '', 'www'),
(52, '', 6, 'study/www/2009-8.jpg', '', 'www'),
(53, '', 6, 'study/www/2010-1.jpg', '', 'www'),
(54, '', 6, 'study/www/2010-2.jpg', '', 'www'),
(55, '', 6, 'study/www/2010-3.jpg', '', 'www'),
(56, '', 6, 'study/www/2010-4.jpg', '', 'www'),
(57, '', 6, 'study/www/2010-6.jpg', '', 'www'),
(58, '', 6, 'study/www/2010-5.jpg', '', 'www'),
(59, '', 6, 'study/www/2010-7.jpg', '', 'www'),
(60, '', 6, 'study/www/2010-8.jpg', '', 'www'),
(61, '', 6, 'study/www/2010-9.jpg', '', 'www'),
(62, '', 6, 'study/www/2011-1.jpg', '', 'www'),
(63, '', 6, 'study/www/2011-2.jpg', '', 'www'),
(64, '', 6, 'study/www/2011-3.jpg', '', 'www'),
(65, '', 6, 'study/www/2011-4.jpg', '', 'www'),
(66, '', 6, 'study/www/2012-1.jpg', '', 'www'),
(67, '', 6, 'study/www/2012-2.jpg', '', 'www'),
(68, '', 6, 'study/www/2012-3.jpg', '', 'www'),
(69, '', 6, 'study/www/2012-4.jpg', '', 'www'),
(70, '', 6, 'study/logotypy/image1.jpg', '', 'logotypy'),
(71, '', 6, 'study/logotypy/image2.jpg', '', 'logotypy'),
(72, '', 6, 'study/logotypy/image3.jpg', '', 'logotypy'),
(73, '', 6, 'study/logotypy/image4.jpg', '', 'logotypy'),
(74, '', 6, 'study/logotypy/image5.jpg', '', 'logotypy'),
(75, '', 6, 'study/logotypy/image6.jpg', '', 'logotypy'),
(76, '', 6, 'study/logotypy/image7.jpg', '', 'logotypy'),
(77, '', 6, 'study/logotypy/image8.jpg', '', 'logotypy'),
(78, '', 6, 'study/logotypy/image9.jpg', '', 'logotypy'),
(79, '', 6, 'study/logotypy/image10.jpg', '', 'logotypy'),
(80, '', 6, 'study/logotypy/image11.jpg', '', 'logotypy'),
(81, '', 6, 'study/logotypy/image12.jpg', '', 'logotypy'),
(82, '', 6, 'study/logotypy/image13.jpg', '', 'logotypy'),
(83, '', 6, 'study/logotypy/image14.jpg', '', 'logotypy'),
(84, '', 6, 'study/logotypy/image15.jpg', '', 'logotypy'),
(85, '', 6, 'study/logotypy/image16.jpg', '', 'logotypy'),
(86, '', 6, 'study/logotypy/image17.jpg', '', 'logotypy'),
(87, '', 6, 'study/logotypy/image18.jpg', '', 'logotypy'),
(89, '', 6, 'study/logotypy/image19.jpg', '', 'logotypy'),
(90, '', 6, 'study/logotypy/image20.jpg', '', 'logotypy'),
(91, '', 6, 'study/logotypy/image21.jpg', '', 'logotypy'),
(92, '', 6, 'study/logotypy/image22.jpg', '', 'logotypy'),
(93, '', 6, 'study/logotypy/image23.jpg', '', 'logotypy'),
(94, '', 6, 'study/logotypy/image24.jpg', '', 'logotypy'),
(95, '', 6, 'study/logotypy/image25.jpg', '', 'logotypy'),
(96, '', 6, 'study/logotypy/image26.jpg', '', 'logotypy'),
(97, '', 6, 'study/logotypy/image27.jpg', '', 'logotypy'),
(98, '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="530" height="212" id="sektory" align="middle">\r\n<param name="allowScriptAccess" value="sameDomain" />\r\n<param name="allowFullScreen" value="false" />\r\n<param name="movie" value="/tdesign/assets/swf/sektory.swf" />\r\n<param name="quality" value="high" />\r\n<param name="wmode" value="transparent" />\r\n<param name="bgcolor" value="#ffffff" />	\r\n<embed src="/tdesign/assets/swf/sektory.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="530" height="212" name="sektory" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />\r\n</object>', 1, '', '', 'object');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `language`
--

INSERT INTO `language` (`id`, `name`, `description`) VALUES
(1, 'pl', 'Polish'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `language_id` int(11) NOT NULL,
  `href` varchar(20) NOT NULL,
  `site` varchar(20) NOT NULL,
  `site_id` int(100) unsigned NOT NULL,
  `lang_name` text NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Zrzut danych tabeli `menu`
--

INSERT INTO `menu` (`menu_id`, `name`, `language_id`, `href`, `site`, `site_id`, `lang_name`) VALUES
(1, 'strona glowna', 1, 'glowna', 'index', 1, 'pl'),
(2, 'uslugi', 1, 'uslugi', 'uslugi', 2, 'pl'),
(3, 'kontakt', 1, 'contact', 'contact', 0, 'pl'),
(4, 'nasi klienci', 1, 'customers', 'customers', 0, ''),
(5, 'Home', 2, 'home', '', 0, ''),
(6, 'services', 2, '', '', 0, ''),
(7, 'Portfolio', 1, 'portfolio', 'caseStudy', 6, 'pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'login', 'Login privileges, granted after account confirmation'),
(2, 'admin', 'Administrative user, has access to everything.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `roles_users`
--

INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(24) NOT NULL,
  `last_active` int(10) unsigned NOT NULL,
  `contents` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_active` (`last_active`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `sessions`
--

INSERT INTO `sessions` (`session_id`, `last_active`, `contents`) VALUES
('51854183400699-73361031', 1367687559, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY3Njg3NTU5O30='),
('51856d8dca2285-93050263', 1367702973, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY3NzAyOTczO30='),
('518b9ead0ecb06-32094955', 1368105165, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4MTA1MTY1O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzc6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MToiOCI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2ODEwNDYyMCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9czo4OiJfY2hhbmdlZCI7YTowOnt9czo3OiJfbG9hZGVkIjtiOjE7czo2OiJfc2F2ZWQiO2I6MTtzOjg6Il9zb3J0aW5nIjtOO3M6MTY6Il9vcmlnaW5hbF92YWx1ZXMiO2E6Nzp7czoyOiJpZCI7czoxOiIxIjtzOjU6ImVtYWlsIjtzOjEwOiJ2dXozQHdwLnBsIjtzOjg6InVzZXJuYW1lIjtzOjQ6InZ1ejMiO3M6ODoicGFzc3dvcmQiO3M6NjQ6ImIwNjhlNGRlNGM3ZmRhYzRkY2U2MjRhOWNlODcxOWFhZTI4OGY3Y2Y4YWYxMGUxNDIyMWY0YWVlNGZkNjdlYjYiO3M6NjoibG9naW5zIjtzOjE6IjgiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjgxMDQ2MjAiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fX19fQ=='),
('51866683428547-77247621', 1367762643, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY3NzYyNjQzO3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzc6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MToiNyI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2Nzc2MjU2MyI7czo2OiJhdmF0YXIiO3M6MDoiIjt9czo4OiJfY2hhbmdlZCI7YTowOnt9czo3OiJfbG9hZGVkIjtiOjE7czo2OiJfc2F2ZWQiO2I6MTtzOjg6Il9zb3J0aW5nIjtOO3M6MTY6Il9vcmlnaW5hbF92YWx1ZXMiO2E6Nzp7czoyOiJpZCI7czoxOiIxIjtzOjU6ImVtYWlsIjtzOjEwOiJ2dXozQHdwLnBsIjtzOjg6InVzZXJuYW1lIjtzOjQ6InZ1ejMiO3M6ODoicGFzc3dvcmQiO3M6NjQ6ImIwNjhlNGRlNGM3ZmRhYzRkY2U2MjRhOWNlODcxOWFhZTI4OGY3Y2Y4YWYxMGUxNDIyMWY0YWVlNGZkNjdlYjYiO3M6NjoibG9naW5zIjtzOjE6IjciO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjc3NjI1NjMiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fX19fQ=='),
('518b7c4f4de0c6-42649829', 1368095823, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4MDk1ODIzO30='),
('518e757033e465-68674900', 1368290676, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4MjkwNjc2O30='),
('5190f93874d0e6-22612627', 1368460248, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4NDYwMjQ4O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTEiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjg0NTU0ODAiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxMSI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2ODQ1NTQ4MCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('519233d00bd297-41531227', 1368621075, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4NjIxMDc1O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTMiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjg1MzY3MzQiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxMyI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2ODUzNjczNCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('5192369ed93fc9-56353967', 1368539922, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4NTM5OTIyO3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTMiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjg1MzY3MzQiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxMyI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2ODUzNjczNCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('5193fe02960c58-71999097', 1368653344, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4NjUzMzQ0O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTUiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjg2NTMzMTQiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxNSI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2ODY1MzMxNCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51966c6409d5d2-38929942', 1368820494, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4ODIwNDk0O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTYiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjg4MTI2NDMiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxNiI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2ODgxMjY0MyI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('5197132dd45b29-97677508', 1368855372, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY4ODU1MzcyO3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTciO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNjg4NTUzNDEiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxNyI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM2ODg1NTM0MSI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51a62aa2b8d0c3-78160304', 1369858337, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY5ODU4MzM3O30='),
('51a62bef7f2364-70697698', 1369844719, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY5ODQ0NzE5O30='),
('51a63b394545b2-72319883', 1369849026, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY5ODQ5MDI2O30='),
('51a64e37bb79d2-73789964', 1369854766, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzY5ODU0NzY2O30='),
('51aa169e8dc569-35427112', 1370120764, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwMTIwNzY0O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTgiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzAxMDE0MDYiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxOCI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDEwMTQwNiI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51adc28482a0a3-98682871', 1370342113, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwMzQyMTEzO3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMTkiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzAzNDIwMjAiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIxOSI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDM0MjAyMCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51ade8cfa6cc10-15309723', 1370353647, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwMzUzNjQ3O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjAiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzAzNTE4MjMiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyMCI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDM1MTgyMyI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51ae3a5490c799-24722140', 1370384467, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwMzg0NDY3O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjEiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzAzNzI2OTIiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyMSI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDM3MjY5MiI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51afaeb36990f5-10766022', 1370468467, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwNDY4NDY3O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjIiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzA0NjgwMTkiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyMiI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDQ2ODAxOSI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51b0a5c70990c5-68499468', 1370549160, 'YToxOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwNTQ5MTYwO30='),
('51b15aa6afedc4-34504633', 1370582639, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwNTgyNjM5O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjMiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzA1Nzc1NzQiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyMyI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDU3NzU3NCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51b21dbaa98077-88134535', 1370627617, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwNjI3NjE3O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjQiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzA2Mjc1MTQiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyNCI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDYyNzUxNCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51b3772ccb8370-53656606', 1370719916, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwNzE5OTE2O3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjUiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzA3MTU5NDgiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyNSI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDcxNTk0OCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51b4b164c966b0-51982552', 1370796392, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwNzk2MzkyO3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjYiO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzA3OTYzODgiO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyNiI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDc5NjM4OCI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19'),
('51b5df618983d8-92950320', 1370873750, 'YToyOntzOjExOiJsYXN0X2FjdGl2ZSI7aToxMzcwODczNzUwO3M6OToiYXV0aF91c2VyIjtDOjEwOiJNb2RlbF9Vc2VyIjo2Mzk6e2E6Nzp7czoxODoiX3ByaW1hcnlfa2V5X3ZhbHVlIjtzOjE6IjEiO3M6NzoiX29iamVjdCI7YTo3OntzOjI6ImlkIjtzOjE6IjEiO3M6NToiZW1haWwiO3M6MTA6InZ1ejNAd3AucGwiO3M6ODoidXNlcm5hbWUiO3M6NDoidnV6MyI7czo4OiJwYXNzd29yZCI7czo2NDoiYjA2OGU0ZGU0YzdmZGFjNGRjZTYyNGE5Y2U4NzE5YWFlMjg4ZjdjZjhhZjEwZTE0MjIxZjRhZWU0ZmQ2N2ViNiI7czo2OiJsb2dpbnMiO3M6MjoiMjciO3M6MTA6Imxhc3RfbG9naW4iO3M6MTA6IjEzNzA4NzM2OTciO3M6NjoiYXZhdGFyIjtzOjA6IiI7fXM6ODoiX2NoYW5nZWQiO2E6MDp7fXM6NzoiX2xvYWRlZCI7YjoxO3M6NjoiX3NhdmVkIjtiOjE7czo4OiJfc29ydGluZyI7TjtzOjE2OiJfb3JpZ2luYWxfdmFsdWVzIjthOjc6e3M6MjoiaWQiO3M6MToiMSI7czo1OiJlbWFpbCI7czoxMDoidnV6M0B3cC5wbCI7czo4OiJ1c2VybmFtZSI7czo0OiJ2dXozIjtzOjg6InBhc3N3b3JkIjtzOjY0OiJiMDY4ZTRkZTRjN2ZkYWM0ZGNlNjI0YTljZTg3MTlhYWUyODhmN2NmOGFmMTBlMTQyMjFmNGFlZTRmZDY3ZWI2IjtzOjY6ImxvZ2lucyI7czoyOiIyNyI7czoxMDoibGFzdF9sb2dpbiI7czoxMDoiMTM3MDg3MzY5NyI7czo2OiJhdmF0YXIiO3M6MDoiIjt9fX19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `favicon` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `settings`
--

INSERT INTO `settings` (`id`, `title`, `favicon`) VALUES
(1, 'T-Design - Agencja Interaktywna', 'favicon.ico');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(100) NOT NULL,
  `state` int(1) DEFAULT NULL,
  `date` datetime NOT NULL,
  `menu_id` int(100) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `sites`
--

INSERT INTO `sites` (`id`, `user_id`, `template`, `language_id`, `state`, `date`, `menu_id`) VALUES
(1, 1, 'index', 1, 1, '2011-08-08 12:44:51', 1),
(2, 1, 'services', 1, 1, '2011-08-07 11:19:39', 2),
(4, 1, 'contact', 1, 1, '2013-05-15 00:00:00', 3),
(5, 1, 'customers', 1, 1, '2013-06-01 21:37:24', 4),
(6, 1, 'caseStudy', 1, 1, '2013-06-03 21:05:00', 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `logins`, `last_login`, `avatar`) VALUES
(1, 'vuz3@wp.pl', 'vuz3', 'b068e4de4c7fdac4dce624a9ce8719aae288f7cf8af10e14221f4aee4fd67eb6', 27, 1370873697, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_tokens`
--

CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `roles_users`
--
ALTER TABLE `roles_users`
  ADD CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
