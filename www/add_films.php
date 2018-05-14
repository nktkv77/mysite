<?php
$nazvanie = htmlspecialchars($_POST['nazvanie']);
$opisanie = htmlspecialchars($_POST['opisanie']);
$akteri = htmlspecialchars($_POST['akteri']);
$dlitelnost = htmlspecialchars($_POST['dlitelnost']);
$rating = htmlspecialchars($_POST['rating']);
$janr = htmlspecialchars($_POST['janr']);
$strana = htmlspecialchars($_POST['strana']);
$rejiser = htmlspecialchars($_POST['rejiser']);
$date = htmlspecialchars($_POST['date']);
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


mysqli_query($connection,"INSERT INTO `films` (`id`, `nazvanie`, `opisanie`, `akters`, `dlit`, `reiting`, `janr`, `strana`, `rejiser`, `god_izdaniya`) 
VALUES (NULL, '$nazvanie', '$opisanie', '$akteri', '$dlitelnost', '$rating', '$janr', '$strana', '$rejiser', '$date')");
echo 'Информация успешно занесена!<br>';
mysqli_close($connection);
?>