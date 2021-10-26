print "Enter DNA/RNA string";
$str = <STDIN>;
$l=length($str) - 1;
print "$l\n";
for($pos=0;$pos<=$l;$pos=$pos+3)
{
    $sub = substr ($str,$pos,3);
    print "$sub\n";
}