sub codon_frame
{
    my $n=@_;
    if($n==1)
    {
        my $pos=0;
    }
    else
    {
        $pos=$_[1]-1;
    }
    my $l=length($seq);
    my @a=();
    while($pos<$l)
    {
        my $sub = substr ($seq,$pos,3);
        if(length($sub)==3)
        {
        push @a,$sub;
        }
        $pos=$pos+3;
    }
    return @a;
}
print"Enter sequence \n";
$seq=<STDIN>;
print"Enter frame number \n";
$fn=<STDIN>;
@codon=codon_frame($seq,$fn);
print join "-",@codon;