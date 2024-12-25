<?php

try {
    $pdo = new PDO('mysql:host=127.0.0.1;dbname=bookshop;charset=utf8mb4', 'your_database_user', 'your_database_password');
    echo "Kết nối thành công!";
} catch (PDOException $e) {
    echo "Lỗi kết nối: " . $e->getMessage();
}

?>