use Bio::Seq;
use Bio::SeqIO;
$sio = Bio::SeqIO->new(-file => 'AB000263.fasta', -format => 'fasta');
$so = $sio->next_seq;
#Step 2: Make a Bio::SeqIO object & relate it to the file to be used.
$seqo = Bio::SeqIO->new(-file => '>sequence.fasta', -format => 'fasta' );
#Step 3 : Write the Bio::Seq object 
$seqo->write_seq($so);
