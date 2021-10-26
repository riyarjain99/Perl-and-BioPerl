$s="AATGTGGAATTCTCCGA";
if ($s=~m/(.{5,5})GAATTC/)
{
    print $1;
    print "\n";
}