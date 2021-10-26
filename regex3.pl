$s="AATGTGGAATTCTCCGA";
if ($s~m/[^ATGC]/i)
{
    print "Invalid";
}
else
{
     print "Valid";
}