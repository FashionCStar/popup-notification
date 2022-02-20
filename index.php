<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">


<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<div class="container" style="padding:30px" >
  <h1>Message List</h1>
<table class="table">
  <thead>
  <tr>
    <th>Title</th>
    <th>Description</th>
    <th>Status String</th>
    <th>Time</th>
    <th>Image url</th>
    <th>Active</th>
    <th></th>
  </tr>
  </thead>
  <tbody>

<?php
date_default_timezone_set("Asia/Singapore");
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

if($_POST !=null)
{  
  $uploaddir = 'uploads/';
  $uploadfile = $uploaddir . basename($_FILES['image']['name']);

  if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
    $title = $_POST['title'];
    $description = $_POST['description'];
    $status = $_POST['status'];
    $showtime = time();
    $image_url = $uploadfile;

    mysqli_query($mysqli,"UPDATE `my_table` set `active` = 0");

    $query="INSERT INTO `my_table`(`title`, `description`,`status`, `showtime`, `image_url`, `active`) VALUES ('$title','$description','$status','$showtime','$image_url',1)";
    if (!mysqli_query($mysqli, $query))
    {
      echo 'Query error: ' . mysqli_error($mysqli);
      die();
    }
    unset($_POST);
    header("Location: index.php");
  } else {
      echo "Possible file upload attack!\n";
  }
}


$query = "SELECT * FROM my_table order by `active` desc";
$result = mysqli_query($mysqli, $query);
if (!$result)
{
   echo 'Query error: ' . mysqli_error($mysqli);
   die();
}

/* Iterate through the result set */
while ($row = mysqli_fetch_assoc($result))
{
?>
<tr>
<td><?php
echo $row['title']
?></td>
<td><?php
echo $row['description']
?></td>
<td><?php
echo $row['status']
?></td>
<td><?php
echo date('Y-m-d H:i:s',$row['showtime'])
?></td>
<td><?php
echo $row['image_url']
?></td>
<td class="active_status"><?php
echo $row['active']==1?"Active":""
?></td>
<td>
<button class="btn btn-primary activeBtn" id="<?php echo $row['id']; ?>">Active</button>  
</td>
</tr>
<?php
   
}
?>
</tbody>
</table>

<a href="insert.php" class="btn btn-primary">Insert</a>
</div>

<script>
  $(document).ready( function () {
    var table = $('.table').DataTable({ "ordering": false});
    $(document).on("click", ".activeBtn", function(){
      var id = $(this).attr("id");
      var btn = $(this);
      $.post("active.php", {id:id}, function(d){
        //$(btn).parent().prev().text("Active")
        location.reload();
      })
    })
} );
</script>