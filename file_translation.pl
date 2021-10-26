open(FH , "<new1.txt") or die "Cannot open file";
$l=<FH>;
while($line=<FH>)
{
    chomp($line);
    $seq=$seq.$line;
}
print $seq;
$seq=~tr/T/U/;
print $seq;
open(FH2, "<codontable.txt")or die "Sorry!! couldn't open";
while($line=<FH2>) 
{ 
    ($codon,$protein)=split/:/,$line;
    $h{$codon}=$protein;
} 
$L=length($seq);
print $L;
$proteinstr='';
for($i=0;$i<$L;$i=$i+3)
{
    $triplet=substr($seq,$i,3);
    $proteinstr.=$h{$triplet};
}
print $proteinstr;
close FH;
close FH2;

