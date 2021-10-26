open(FH , "<new1.txt") or die "Cannot open file";
$l=<FH>;
$seq='';
while($line=<FH>)
{
    chomp($line);
    $seq=$seq.$line;
}
print $seq;
$seq=~tr/T/U/;
print $seq;