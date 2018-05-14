<?php

$connection = mysqli_connect('localhost', 'root' , '',"cinema_db");
if($connection == false)
{
	echo 'Не удалось подключиться к БД!';
	echo mysqli_connect_error();
	exit();
}
else
{
	echo 'Я удачно соединился с БД!';
}




$result = mysqli_query($connection,"SELECT * FROM `films`");
?>
<br>
<ul>
<?php
while ( ($cat = mysqli_fetch_assoc($result)) )
{
echo ('<hr>' .$cat['nazvanie'].'</hr>');  ;
}
?>


<?php
mysqli_close($connection);


?>
</ul>