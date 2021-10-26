$s="AATGTGGAATTCTCCGA";
if ($s=~m/(ATG.+?)(TGA|TAG|TAA)/)
{
    print $1;
    print "\n";
}