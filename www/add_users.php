<?php
$login = htmlspecialchars($_POST['login']);
$password = htmlspecialchars($_POST['password']);
$connection = mysqli_connect('localhost', 'root' , '',"cinema_db");
if($connection == false)
{
	echo 'Не удалось подключиться к БД!<br>';
	echo mysqli_connect_error();
	exit();
}
else
{
	echo 'Я удачно соединился с БД!';
}

mysqli_query($connection,"INSERT INTO `vhod` (`id`, `login`, `password`, `reg_date`) 
VALUES (NULL, '$login', MD5('$password'), UNIX_TIMESTAMP())");
echo 'Информация успешно занесена!<br>';
mysqli_close($connection);
?>