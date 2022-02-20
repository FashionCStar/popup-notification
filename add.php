
<?php

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

$uploaddir = 'uploads/';
$uploadfile = $uploaddir . basename($_FILES['image']['name']);

if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
	

$title = $_POST['title'];
$description = $_POST['description'];
$status = $_POST['status'];
$showtime = $_POST['showtime'];
$image_url = $uploadfile;

$query="INSERT INTO `my_table`(`title`, `description`,`status`, `showtime`, `image_url`) VALUES ('$title','$description','$status','$showtime','$image_url')";
if (!mysqli_query($mysqli, $query))
{
   /* if mysqli_query() returns FALSE it means an error occurred */
   echo 'Query error: ' . mysqli_error($mysqli);
   die();
}

echo "added successfully<br>";
} else {
    echo "Possible file upload attack!\n";
}


?>