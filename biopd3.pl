#sending a query sequence and find and download top 10 sequences considering the query seq 
use Bio::SeqIO;
use Bio::Seq;
use Bio::DB::GenBank;
use Bio::DB::Query::GenBank;
$query = "mad[Gene Name]";
$query_obj= Bio::DB::Query::GenBank->new(-db=>"nucleotide",-query=>"$query");
$gb_obj= Bio::DB::GenBank->new;
$stream_obj= $gb_obj->get_Stream_by_query($query_obj);
$ctr=0;
while ($seq_obj = $stream_obj->next_seq)
{
	$fname=$seq_obj->accession_number.".gb";
	$sio=Bio::SeqIO->new(-file=>">$fname", -format=>"genbank");
	$sio->write_seq($seq_obj);
    $ctr++;
	if($ctr>10) 
	{
		break;
	}
}