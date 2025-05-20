# ncs.pl

# Function to get value of a character
sub val {
    my $c = shift;
    if ($c ge '0' && $c le '9') {
        return $c; # Perl converts string '0'-'9' to int automatically
    } else {
        return (ord(uc($c)) - ord('A') + 10);
    }
}

# Function to convert a number from given base to decimal
sub toDeci {
    my ($str, $base) = @_;
    my $s = uc($str); # Convert to uppercase for consistency
    my $len = length($s);
    my $power = 1;
    my $num = 0;

    for (my $i = $len - 1; $i >= 0; $i--) {
        my $char_val = val(substr($s, $i, 1));
        if ($char_val >= $base) {
            print "Invalid Number\n";
            return -1;
        }
        $num += $char_val * $power;
        $power *= $base;
    }
    return $num;
}

# Function to get character from an integer value
sub reVal {
    my $num = shift;
    if ($num >= 0 && $num <= 9) {
        return chr($num + ord('0'));
    } else {
        return chr($num - 10 + ord('A'));
    }
}

# Function to convert a decimal number to a string in a given base
sub fromDeci {
    my ($base, $inputNum) = @_;
    my $res = "";
    if ($inputNum == 0) {
        return "0";
    }

    while ($inputNum > 0) {
        $res .= reVal($inputNum % $base);
        $inputNum = int($inputNum / $base); # Integer division
    }
    return reverse $res;
}

# Main conversion function
sub convertBase {
    my ($s, $a, $b) = @_;
    my $num = toDeci($s, $a);
    if ($num == -1) {
        return; # Handle invalid number
    }
    my $ans = fromDeci($b, $num);
    print "ANSWER: $ans\n";
}

1; # Required for 'require' to succeed
