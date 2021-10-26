sub get_seq
{
    my $seq='';
    my $file_name=$_[0];
    open(fh, "$file_name") or return $seq; 
    my $firstline = <fh>; 
    my @t=<fh>;
    $seq=join "",@t; 
    return $seq;
}
print "Enter File name";
$fname=<STDIN>;
@seq=get_seq($fname);
print @seq;

