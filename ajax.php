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


$query = "SELECT * FROM my_table order by active desc limit 1";
$result = mysqli_query($mysqli, $query);
if (!$result)
{
   echo 'Query error: ' . mysqli_error($mysqli);
   die();
}

$row = mysqli_fetch_assoc($result);

echo json_encode($row);

?>