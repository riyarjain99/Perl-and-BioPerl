sub fact
{
    $n=$_[0];
    $f=1;
    for($i=1;$i<=$n;$i++)
    {
        $f=$f*$i;
    }
    return $f;
}
print"Enter no.\n";
$no=<STDIN>;
$fac=fact($no);
print"Factorial = $fac";