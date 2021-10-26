$str="ATGCATGCGCTA";
$l=length($str);
$c=0;
for($i=0;$i<$l;$i++)
{
    $pos=substr($str,$i,1);
    if($pos eq "C" || $pos eq "G")
    {
       $c++;
    }
}
print "Number of 'GC' = $c";