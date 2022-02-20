<?php
header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');

/* Host name of the MySQL server */
$host = 'localhost';

/* MySQL account username */
$user = 'root';

/* MySQL account password */
$passwd = '';

/* The schema you want to use */
$schema = 'popup';

/* Connection with MySQLi, procedural-style */
$mysqli = mysqli_connect($host, $user, $passwd, $schema);

/* Check if the connection succeeded */
if (!$mysqli)
{
   echo 'Connection failed<br>';
   echo 'Error number: ' . mysqli_connect_errno() . '<br>';
   echo 'Error message: ' . mysqli_connect_error() . '<br>';
   die();
}

$id = $_POST['id'];

$query = "UPDATE `my_table` set `active` = 0";
mysqli_query($mysqli, $query);


$query = "UPDATE `my_table` set `active` = 1 where `id` = $id";
mysqli_query($mysqli, $query);

echo $id;

?>