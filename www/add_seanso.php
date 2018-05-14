<?php
$vremya = htmlspecialchars($_POST['vremya']);
$tip_seansa = htmlspecialchars($_POST['tip_seansa']);
$koeficent = htmlspecialchars($_POST['koeficent']);
$data = htmlspecialchars($_POST['data']);
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

mysqli_query($connection,"INSERT INTO `seans` (`id`, `time`, `tip_seansa`, `koef`, `day`) 
VALUES (NULL, '$vremya', '$tip_seansa', '$koeficent', '$data')");
echo 'Информация успешно занесена!<br>';
mysqli_close($connection);
?>