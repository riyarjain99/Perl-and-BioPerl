print "Enter File name";
$name=<STDIN>;
open(fh, "<$name") or die "File '$filename' can't be opened"; 
$firstline = <fh>; 
print "$firstline"; 
close fh;