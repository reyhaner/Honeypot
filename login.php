<?php
$ip = $_SERVER['REMOTE_ADDR'];
$user = $_POST['user'] ?? 'unknown';
$pass = $_POST['pass'] ?? 'unknown';
$date = date('Y-m-d H:i:s');

// Log girişi oluştur
$log_entry = "[$date] IP: $ip | User: $user | Pass: $pass\n";
file_put_contents('attacks.log', $log_entry, FILE_APPEND);

// Simüle edilmiş gecikme (Gerçekçilik için)
usleep(800000);

if ($user === "admin" && $pass === "omu_admin_2026") {
    echo "success";
} else {
    http_response_code(401);
    echo "Unauthorized";
}
?>
