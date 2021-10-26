print "Enter DNA/RNA string";
$str = <STDIN>;
chomp $str;
print "Enter frame number";
$fr=<STDIN>;
$l=length($str);
for($pos=$fr-1;$pos<$l;$pos=$pos+3)
    {
        $sub = substr ($str,$pos,3);
        if($sub==3)
        {
        print "$sub\n";
        }
    }
