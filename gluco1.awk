BEGIN { FS="," }
function formatdate(thedate)
{
s=split(thedate,dt,"/");
r=dt[1] "/" dt[2] "/20" dt[3];
return r;
}
function mmconv(v)
{
v=v/18;
return v;
}
function noquotes(v)
{
gsub(/\"/,"",v);
return v;
}
function ltrim(v) 
{ 
   gsub(/^[ \t]+/, "", v); 
   return v; 
} 
function rtrim(v) 
{ 
   gsub(/[ \t]+$/, "", v); 
   return v; 
} 
function trim(v) 
{ 
   return ltrim(rtrim(v)); 
} 

{
#print $4;
#reading=trim(noquotes($4));
amount=$4
reading=mmconv(trim(noquotes(amount)));
date1=trim(noquotes($2));
time1=trim(noquotes($3));
#printf ("%2.1f\n",mmconv(trim(noquotes($4))));
if (reading != 0)
 {
 printf ("%s %s,%2.1f,,,,,,,,\n",formatdate(date1),time1,reading);
 }
#reading=trim($4);
#print $reading;
}
