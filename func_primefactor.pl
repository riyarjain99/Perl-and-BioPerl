sub factor
{
    my $n=$_[0];
    my @a=();
    for(my $i=1;$i<=$n;$i++)
    {
        if($n%$i==0)
        {
            push (@a,$i);
        }
    }
    return @a;
}
sub prime
{
    my $n=$_[0];
    my $ctr=0;
    for(my $i=1;$i<=$n;$i++)
    {
        if($n%$i==0)
        {
            $ctr++;
        }
    }
    if($ctr==2)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
sub prime_factor
{
    my $n=$_[0];
    my @pf=();
    @fac=factor($num);
    foreach $e(@fac)
    {
        if(prime($e)==1)
        {
            push @pf,$e;
        }
    return @pf;
    }
}
print "enter no.";
$num=<STDIN>;
@prime_fact=prime_factor($num);
$prime_factor=join',',@prime_fact;
print"prime factors = $prime_factor";