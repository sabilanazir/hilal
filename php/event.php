<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$mysqli = new mysqli("localhost", "root", "", "loginregister");
 
// Check connection
if($mysqli === false){
    die("ERROR: Could not connect. " . $mysqli->connect_error);
}
 
// Attempt select query execution
$sql = "SELECT * FROM events";
if($result = $mysqli->query($sql)){
    if($result->num_rows > 0){
        echo "<table>";
            echo "<tr>";
                // echo "<th>id</th>";
                echo "<th>EventName</th>";
                echo "<th>HijriDate</th>";
                echo "<th>CurrentDate</th>";
            echo "</tr>";
        while($row = $result->fetch_array()){
            echo "<tr>";
                // echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['EventName'] . "</td>";
                echo "<td>" . $row['HijriDate'] . "</td>";
                echo "<td>" . $row['CurrentDate'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        $result->free();
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
}
 
// Close connection
$mysqli->close();
?>