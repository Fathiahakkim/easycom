<?php
include 'db.php';  // Include the database connection

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get form data
    $username = $_POST['username'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Hash the password for secure storage
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Check if the phone number or email already exists in the database
    $check_user_query = "SELECT * FROM users WHERE email='$email' OR phone='$phone'";
    $result = $conn->query($check_user_query);

    if ($result->num_rows > 0) {
        echo "User with this email or phone number already exists.";
    } else {
        // SQL query to insert the user data into the database
        $sql = "INSERT INTO users (username, phone, email, password) 
                VALUES ('$username', '$phone', '$email', '$hashed_password')";

        // Execute the query and check for success
        if ($conn->query($sql) === TRUE) {
            echo "User registered successfully!";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}
?>
