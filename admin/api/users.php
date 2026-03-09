<?php
header('Content-Type: application/json');

try {
    require_once '../db.php';
    
    $stmt = $pdo->query("SELECT id, name FROM users ORDER BY id DESC");
    $users = $stmt->fetchAll();

    echo json_encode(['success' => true, 'data' => $users]);
} catch (Exception $e) {
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}
?>
