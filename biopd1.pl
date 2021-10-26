use Bio::Seq;
use Bio::SeqIO;
use Bio::DB::GenBank;
$dbo=Bio::DB::GenBank->new;
$seqo=$dbo->get_Seq_by_acc("BA000005.3");
print $seqo->length;
print $seqo->seq;
