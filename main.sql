SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";





CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'saumil patel', 'het modi', 50000, '2021-02-04 06:03:01'),
(2, 'shrey', 'het modi', 1, '2021-02-04 06:07:11'),
(3, 'John', 'het modi', 1200000, '2021-02-15 03:59:54'),
(4, 'John', 'het modi', 2800000, '2021-02-17 14:54:41');



CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'het modi', 'hetmodi16@gmail.com', 1750001),
(2, 'saumil patel', 'saumil@gmail.com', 300000),
(3, 'shrey', 'shrey@gmail.com', 2839999),
(4, 'Yani Gupta', 'yani@gmail.com', 500000),
(5, 'Ved Patel', 'ved@gmail.com', 400000),
(6, 'Harsh shah', 'harsh@gmail.com', 300000),
(7, 'Manan shah', 'manan@gmail.com', 500000),
(8, 'Samrat Prajapati', 'samrat@gmail.com', 400000),
(9, 'Vihar Mansuri', 'vihar@gmail.com', 300000),
(10, 'Esha Singh', 'esha@gmail.com', 500000),
(11, 'Dhyan Rathod', 'dhyan@gmail.com', 180040),
(12, 'John', 'rohanpatelkumar32@gmail.com', 116000000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;


