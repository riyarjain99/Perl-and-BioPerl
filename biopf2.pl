use Bio::Seq;
use Bio::SeqIO;
$sio = Bio::SeqIO->new(-file => 'AE003580.2.gb', -format => 'genbank');
$so = $sio->next_seq;
@features=$so->get_SeqFeatures();
foreach $feature(@features)
{
    if($feature->primary_tag eq "gene")
    {
        @tv=$feature->get_tag_values("gene");
        if($tv[0] eq "glaikit")
        {
            $eo=$feature->seq;
            print $so->seq;
            print "\n";
            $po=$eo->translate;
            print $po->seq;
            print "\n";
        }
    }
}