-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 27 Mar 2013, 20:53
-- Wersja serwera: 5.5.28
-- Wersja PHP: 5.4.4-14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
--
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `state` int(1) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `content`, `state`, `date`) VALUES
(1, 1, 'Samlpe article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non lorem id leo volutpat sodales. Vivamus elementum luctus viverra. Nunc sit amet dui mauris. Cras nunc ante, pharetra a dapibus nullam.', 1, '2011-08-08 12:44:51'),
(2, 1, 'Second article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam aliquet faucibus dapibus. In in diam elit. Suspendisse potenti. Etiam eu posuere enim. Suspendisse fringilla accumsan massa vel mollis. Suspendisse vel nisi id enim dapibus pulvinar sed id purus. Donec ut erat nec odio feugiat vulputate ut molestie dui. Praesent in arcu odio, et hendrerit dolor. In hac habitasse platea dictumst. Mauris pharetra, arcu et viverra tempus, dui tellus interdum diam, id pulvinar nisl nisi nec est posuere.', 1, '2011-08-07 11:19:39'),
(3, 2, 'User article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac odio non arcu pharetra pretium. Maecenas et est metus, in porttitor augue. Praesent dolor metus, pharetra ut rhoncus at, fermentum nec lacus. Proin blandit sapien eget massa varius id posuere urna pretium. Duis venenatis sollicitudin nisl fermentum sagittis. Aenean blandit, lectus sed auctor gravida, nunc neque gravida massa, ut porttitor lacus erat quis ipsum. Mauris dictum porta varius. Nam sed arcu quam, dapibus cras amet.', 1, '2011-08-08 12:52:59'),
(4, 2, 'User second article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet metus ipsum, quis commodo diam. Morbi nisi dui, ultrices in mollis vitae, rutrum quis augue. Fusce lobortis est a nibh porta facilisis. Donec placerat, ipsum eu sollicitudin congue, mauris purus varius urna, non consectetur lectus massa sed nunc. Donec eros lorem, tincidunt at viverra vitae, ultrices sed erat. Suspendisse venenatis aliquam nisl et suscipit. Integer tortor leo, interdum sagittis tristique a, hendrerit nullam.', 1, '2011-08-08 12:53:40');

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
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

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
