$str = "ATATAGGCCATGC";
$pos=index($str,"TATA");
if($pos!=-1)
{
    print substr($str,$pos+4,5);
}