<!-- required package: mysqli -->
<!-- installation: docker-php-ext-install mysqli -->
<?php

echo "Connecting to: " . $_ENV["DB_HOST"] . $_ENV["DB_DATABASE"] . $_ENV["DB_USERNAME"] . $_ENV["DB_PASSWORD"];
$link = mysqli_connect(
    $_ENV["DB_HOST"], /* HOST, */ 
    $_ENV["DB_USERNAME"], /* USERNAME */ 
    $_ENV["DB_PASSWORD"], /* PASSWORD */
    $_ENV["DB_DATABASE"] /* DATABASE */
);

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Success: A proper connection to MySQL was made! The my_db database is great." . PHP_EOL;
echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

mysqli_close($link);
?>