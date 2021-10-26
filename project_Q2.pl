# Conversion of a file from one format to another 
use Bio::Seq;
use Bio::SeqIO;
# Input a file name, and its format
print "Enter file name to be converted\n";
$inp_file_name= <STDIN>;
chomp($inp_file_name);
print "Enter file format to be converted\n";
$inp_file_form= <STDIN>;
chomp($inp_file_form);
# Input a target filename and format
print "Enter target file name\n";
$tar_file_name= <STDIN>;
chomp($tar_file_name);
print "Enter target file format\n";
$tar_file_form= <STDIN>;
chomp($tar_file_form);
# Read the input file and 
$inp_obj = Bio::SeqIO->new(-file => "$inp_file_name",
                          -format => $inp_file_form);
# Save the sequence into the target file/format
$out_obj = Bio::SeqIO->new(-file => ">$tar_file_name",
                          -format => $tar_file_form);
while($inp_seq = $inp_obj->next_seq)
{
    $out_obj->write_seq($inp_seq);
}