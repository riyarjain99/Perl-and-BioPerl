# #input accession id and extract sequence from internet database
use Bio::SeqIO;
use Bio::Seq;
use Bio::DB::GenBank;
print "Please enter the accession id \n";
$accID=<STDIN>;
print "\n";
chomp ($accID);
$db_obj=Bio::DB::GenBank->new;
$so=$db_obj->get_Seq_by_acc($accID);
$fname="$accID.gb";
$sio=Bio::SeqIO->new(-file=>">$fname", -format=>"genbank");
$sio->write_seq($so);
print "\n";