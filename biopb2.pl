# Write the blast result into a file
use Bio::Tools::Run::RemoteBlast;

my $factory = Bio::Tools::Run::RemoteBlast->new(
                 '-prog'=>'blastn',
                 '-data'=>'nt',
                 '-expect'=>'1e-1',
                 '-readmethod'=>'SearchIO'
                 );
 
 
my $str = Bio::SeqIO->new(-file=>'sequence.fasta' , -format => 'fasta' );
my $input = $str->next_seq() ;
my $r = $factory->submit_blast($input);
 
while ( my @rids = $factory->each_rid ) {
    foreach my $rid ( @rids ) {
      my $rc = $factory->retrieve_blast($rid);
      if( !ref($rc) ) {
        if( $rc < 0 ) {
          $factory->remove_rid($rid);
        }
        print STDERR ".";
        sleep 5;
      } else {
        my $result = $rc->next_result();
        #save the output
        my $filename = $result->query_name()."\.out";
        $factory->save_output($filename);
        $factory->remove_rid($rid);
      }
    }
}
 
