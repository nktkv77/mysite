<?php
$nazvanie = htmlspecialchars($_POST['nazvanie']);
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


mysqli_query($connection,"DELETE FROM `films` WHERE `films`.`nazvanie` = '$nazvanie' ");
echo 'Информация успешно удалена!<br>';
mysqli_close($connection);
?>