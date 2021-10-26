use Bio::Seq;
use Bio::SeqIO;
$sio = Bio::SeqIO->new(-file => 'AB000263.fasta', -format => 'fasta');
$so = $sio->next_seq;
print $so->length;
print "\n";
print $so->seq;
