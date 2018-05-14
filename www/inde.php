<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>TEST</title>
</head>

<?php

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
mysqli_query($connection,"INSERT INTO `users` (`id`, `login`, `password`, `reg_date`) 
VALUES (NULL, '123', MD5('valera'), UNIX_TIMESTAMP())");

?>
<form action="add_users.php" method="post">
 <p>Введите логин: <input type="text" name="login" /></p>
 <p>Введите пароль: <input type="text" name="password" /></p>
 <p><input type="submit" /></p>
</form>
<body>
</body>
</html>