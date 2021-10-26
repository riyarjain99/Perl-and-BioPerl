use Bio::Seq;
use Bio::SeqIO;
$sio = Bio::SeqIO->new(-file => 'AB000263.fasta', -format => 'fasta');
$so = $sio->next_seq;
$s=$so->seq;
while($s=~m/GAATTC/g) 
{
    $p=pos($s)- length(“GAATTC”);
    print("found at $p\n");
}