<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "loginregister";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM events";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while ($row = mysqli_fetch_assoc($result)) {
    $array[] = $row;
  }
  header('Content-Type:Application/json');
	echo json_encode($array);

} else {
  echo "0 results";
}
$conn->close();
?>