# Reading a blast report from a file
use Bio::SearchIO;

$searchio = new Bio::SearchIO (-format => 'blast',
                             -file   => "testabc.out");
                             
while(  $result = $searchio->next_result ) {
  # Get info about the entire report
#  print $result->database_name;
  $algorithm_type =  $result->algorithm;
#  print $algorithm_type,"\n";
  # get info about the first hit
  while($hit = $result->next_hit) {
      $hit_name = $hit->name ;
      print $hit_name,"\n";
      # get info about the first hsp of the first hit
      while($hsp = $hit->next_hsp) {
          $hsp_start = $hsp->query->start;
#          print $hsp_start,"\n";
        print $hsp->score,"\n";
      }
  }
}