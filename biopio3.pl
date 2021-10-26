use Bio::Seq;
use Bio::SeqIO;
$sio = Bio::SeqIO->new(-file => 'AE003580.2.gb', -format => 'genbank');
$so = $sio->next_seq;
$sl=$so->length;
print $sl;
print "\n";
$s=$so->seq;
$c1=0;
while($s=~m/[GC]/g)
{
    $c1++;
}
$gcp=($c1/$sl)*100;
print $gcp;
$c2=0;
while($s=~m/GAATTC/g) 
{
    $p=pos($s)-6;
    print "found at $p \n";
    $c2++;
}
print $c2;