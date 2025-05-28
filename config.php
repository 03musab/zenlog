<?php
$host = 'sql111.infinityfree.com';
$db = "if0_39103916_zenlog";
$user = 'if0_39103916';
$pass = 'Mu5abM51';
$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
