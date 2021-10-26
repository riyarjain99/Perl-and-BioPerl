use Bio::Seq
$seq_obj = Bio::Seq->new(-seq        => "ATGC",
                         -display_id => "#S101",
                         -desc       => "Demo sequence" );
$seq = $seq_obj->seq;
print "$seq\n";
$so2 = $seq_obj->revcom;
$seq = $so2->seq;
print $seq;