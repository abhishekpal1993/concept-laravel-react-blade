<?php

echo "Connecting to: " . $_SERVER["DB_HOST"] .','. $_SERVER["DB_DATABASE"] .','. $_SERVER["DB_USERNAME"] .','. $_SERVER["DB_PASSWORD"] . PHP_EOL;
$link = mysqli_connect(
    $_SERVER["DB_HOST"], /* HOST, */ 
    $_SERVER["DB_USERNAME"], /* USERNAME */ 
    $_SERVER["DB_PASSWORD"], /* PASSWORD */
    $_SERVER["DB_DATABASE"] /* DATABASE */
);

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Success: A proper connection to MySQL was made! The laravel database is great." . PHP_EOL;
echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

mysqli_close($link);
?>
