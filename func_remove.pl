sub remove
{
    my ($seq,$mot)=@_;
    my @a=split /$mot/,$seq;
    $n=$a+1;
    my $newseq=join'',@a;
    return ($newseq,$n);
}
print"Enter sequence";
$seq=<STDIN>;
chomp($seq);
print"Enter motif";
$mot=<STDIN>;
chomp($mot);
($newseq,$num)=remove($seq,$mot);
print"New sequence= $newseq \n";
print"No. of times removed =$num";