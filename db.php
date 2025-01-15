<?php
$servername = "localhost"; // or your server IP
$username = "root"; // replace with your database username
$password = ""; // replace with your database password
$dbname = "auth_app"; // replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>

