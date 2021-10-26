sub find_motif
{
    ($seq,$mot)=@_;
    my $l=length($mot)-1;
    my @a=();
    for(my $i=0;$i<length($seq);$i=$i+$l)
    {
        my $pos=index($seq,$mot,$i);
        if($pos!=-1)
        {
            push @a,$pos;
        }
    }
    return @a;
}
print"Enter sequence";
$seq=<STDIN>;
chomp($seq);
print"Enter motif";
$mot=<STDIN>;
chomp($mot);
@loc=find_motif($seq,$mot);
print"locations of motifs=";
print join",",@loc;