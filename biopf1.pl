use Bio::Seq;
use Bio::SeqIO;
$sio = Bio::SeqIO->new(-file => 'AE003580.2.gb', -format => 'genbank');
$so = $sio->next_seq;
@features=$so->get_SeqFeatures();
foreach $feature(@features)
{
    print $feature->primary_tag;
    print "\n";
    if($feature->primary_tag eq "gene")
    {
        @tv=$feature->get_tag_values("gene");
        print $tv[0];
        print "\n";
    }
}