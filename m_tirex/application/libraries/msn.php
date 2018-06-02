<?php

# FileName="Connection_php_mysql.htm"

# Type="MYSQL"

# HTTP="true"

$hostname_msn = "localhost";

$database_msn = "mausaya";

$username_msn = "root";

$password_msn = "";

$msn = mysql_connect($hostname_msn, $username_msn, $password_msn) or trigger_error(mysql_error(),E_USER_ERROR);

$keylock = 'herisantoso.net';



?>