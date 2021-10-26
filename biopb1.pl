use Bio::SeqIO;
use Bio::Tools::Run::RemoteBlast;
my $factory = Bio::Tools::Run::RemoteBlast->new(
    '-prog'=>"blastn",
    '-data'=>"nt",
    '-expect'=>"1e-1",
    '-readmethod'=>"SearchIO"
);
my $str= Bio::SeqIO->new(-file=>'AB000263.fasta', -format=>'fasta');
my $seq_obj1=$str->next_seq();
my $r= $factory->submit_blast($seq_obj1);
while(my @rids=$factory->each_rid)
{
    foreach my $rid(@rids)
    {
        my $rc= $factory->retrieve_blast($rid);
        if (!ref($rc))
        {
            if($rc<0)
            {
                $factory->remove_rid($rid);
            }
            print".";
            sleep 5;
        }
        else
        {
            my $result=$rc->next_result();
            print ("\nQuery Name:", $result->query_name(),"\n");
            while(my $hit=$result->next_hit)
            {
                print ("Hit name:",$hit->name,"\n");
                while(my $hsp=$hit->next_hsp)
                {
                    print ("Hit Score:",$hsp->score,"\n");
                    print ("Hit Length:",$hsp->length,"\n");
                    print ("Hit Strand:",$hsp->strand,"\n");
                    $seq_obj2=$hsp->seq;
                    print ("Hit Sequence:",$seq_obj2->seq,"\n");
                }
            }
        }
    }
}