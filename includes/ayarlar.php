<?php
$host='localhost';
$database = 'hesaplamalar';
$username = 'root';
$password = '';

try {
    $options = array(PDO::ATTR_PERSISTENT => TRUE, PDO::ATTR_EMULATE_PREPARES => FALSE);
    $db = new PDO("mysql:host=" . $host . ";dbname=" . $database . ";charset=utf8", $username, $password, $options);
} catch (PDOException $e) {
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    print $e->getMessage();
}
 $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>