<?php

function val($c) {
    if ($c >= '0' && $c <= '9') {
        return (int)$c;
    } else {
        return ord($c) - ord('A') + 10;
    }
}

function toDeci($str, $base) {
    $len = strlen($str);
    $power = 1;
    $num = 0;
    for ($i = $len - 1; $i >= 0; $i--) {
        $charVal = val($str[$i]);
        if ($charVal >= $base) {
            echo "Invalid Number\n";
            return -1;
        }
        $num += $charVal * $power;
        $power = $power * $base;
    }
    return $num;
}

function reVal($num) {
    if ($num >= 0 && $num <= 9) {
        return chr($num + ord('0'));
    } else {
        return chr($num - 10 + ord('A'));
    }
}

function fromDeci($base, $inputNum) {
    $res = "";
    if ($inputNum === 0) {
        return "0";
    }
    while ($inputNum > 0) {
        $res .= reVal($inputNum % $base);
        $inputNum = floor($inputNum / $base);
    }
    return strrev($res);
}

function convertBase($s, $a, $b) {
    $num = toDeci($s, $a);
    if ($num === -1) {
        return;
    }
    $ans = fromDeci($b, $num);
    echo "ANSWER: " . $ans . "\n";
}

?>
