<?php

require_once 'ncs.php'; // Include the ncs.php file

echo "ENTER TEXT TO BE CONVERTED: ";
$s = trim(strtoupper(fgets(STDIN))); // Read input, trim whitespace, convert to uppercase

echo "ENTER BASE TO BE CONVERTED FROM: ";
$a = (int)trim(fgets(STDIN)); // Read input and cast to integer

echo "ENTER BASE TO BE CONVERTED TO: ";
$b = (int)trim(fgets(STDIN)); // Read input and cast to integer

convertBase($s, $a, $b);

?>
