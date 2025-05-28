<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "sql111.infinityfree.com";
$username = "if0_39103916";
$password = 'Mu5abM51';
$dbname = "if0_39103916_zenlog";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (!isset($_SESSION['user_id'])) {
    die("User not logged in.");
}

$user_id = $_SESSION['user_id'];

// Fetch the user's name
$sql = "SELECT username FROM users WHERE user_id = ?";
$stmt = $conn->prepare($sql);

if ($stmt === false) {
    die("Prepare failed: " . $conn->error);
}

$stmt->bind_param("i", $user_id);
$stmt->execute();
$stmt->bind_result($username);
$stmt->fetch();
$stmt->close();
$conn->close();

// Echo the username so it can be used in your HTML file
echo htmlspecialchars($username);
?>
