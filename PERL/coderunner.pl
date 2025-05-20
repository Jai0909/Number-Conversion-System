# coderunner.pl
use strict;
use warnings;

# Include the ncs.pl file
require './ncs.pl';

print "ENTER TEXT TO BE CONVERTED: ";
my $s = <STDIN>;
chomp $s;

print "ENTER BASE TO BE CONVERTED FROM: ";
my $a = <STDIN>;
chomp $a;
$a = int($a); # Ensure it's an integer

print "ENTER BASE TO BE CONVERTED TO: ";
my $b = <STDIN>;
chomp $b;
$b = int($b); # Ensure it's an integer

# Call the conversion function from the included ncs.pl
convertBase($s, $a, $b);
