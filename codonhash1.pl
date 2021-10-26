open(FH, "<codontable.txt")or die "Sorry!! couldn't open";
%h=""; 
while($line=<FH>) 
{ 
    ($codon,$protein)=split/:/,$line;
    $h{$codon}=$protein;
} 
print $h{"UUU"};
close;
