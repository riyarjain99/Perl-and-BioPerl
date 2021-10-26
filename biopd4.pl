#List of acc ids and search them 1 by 1 making files of each
sub Get_GenBank_File
{
	use Bio::SeqIO;
	use Bio::Seq;
	use Bio::DB::GenBank;
	$acc_ID=$_[0];
	$db_obj=Bio::DB::GenBank->new;
	$so=$db_obj->get_Seq_by_acc($acc_ID);
	$fname=">$acc_ID.gb";
	$sio=Bio::SeqIO->new(-file=>">$fname", -format=>"genbank");
	$sio->write_seq($so);	
}
@accids=("MW884226","MW345813");
foreach $acc(@accids)
{
	Get_GenBank_File($acc);	
}