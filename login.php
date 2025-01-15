<?php
session_start();
include 'db.php';  // Include the database connection

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get form data
    $email_or_phone = $_POST['email'];
    $password = $_POST['password'];

    // Query to check if user exists with given email or phone
    $sql = "SELECT * FROM users WHERE email='$email_or_phone' OR phone='$email_or_phone'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        // User found, now verify password
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            // Start the session and set session variables
            $_SESSION['user_id'] = $row['id'];
            $_SESSION['username'] = $row['username'];

            // Redirect to the dashboard
            header('Location: dashboard.php');
            exit();
        } else {
            echo "Incorrect password!";
        }
    } else {
        echo "User not found!";
    }
}
?>

