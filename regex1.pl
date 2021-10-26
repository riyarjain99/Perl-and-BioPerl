$s="AATGTGGAATTCTCCGA";
if ($s~m/GAATTC/)
{
    print $`;
    print "\n";
    print $&;
    print "\n";
    print $';
}