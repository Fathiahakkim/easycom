<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    echo "You must log in to view this page.";
    header('Location: login.html');
    exit();
}

echo "Welcome, " . $_SESSION['username'] . "!";
?>
