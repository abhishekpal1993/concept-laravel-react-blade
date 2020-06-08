GRANT USAGE ON *.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' With GRANT OPTION;
GRANT USAGE ON laravel.* TO 'laraveluser'@'%' IDENTIFIED BY 'abcd1234';
GRANT ALL PRIVILEGES ON laravel.* TO 'laraveluser'@'%' IDENTIFIED BY 'abcd1234';
FLUSH PRIVILEGES;