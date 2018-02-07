BEGIN { FS="," }
{
reading=$2;
#print reading;
if (reading != 0)
 {
 sum=sum + reading;
 count = count + 1;
 }
}
END { 
if (count == 1)
 {
printf("Had a BG reading of %2.1f http://manage.sugarstats.com/BradDet",sum/count); 
 }
else
{
if (count < 5)
 {
printf("Blood Sugar Daily Average of %2.1f http://manage.sugarstats.com/BradDet",sum/count); 

 }
else
 {
printf("Has #Blood_Sugar avg of %2.1f http://manage.sugarstats.com/BradDet",sum/count); 
 }
}
}
