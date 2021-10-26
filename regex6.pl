$s="AATGTGGAATTCTCCGA";
@a=($s=~m/(ATG.+?)TGA|TAG|TAA/g)
$exon= join"",@a;
print $exon;
