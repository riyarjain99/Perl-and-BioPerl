$s="AATGTGGAATTCTCCGA";
@a=($s=~m/(...)/g);
$seq=join"",@a;
print $seq;