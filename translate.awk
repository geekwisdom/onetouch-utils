BEGIN { FS=";"}
{
i = split ($1,timedt," ");
b = split(timedt[1],dt,"-");
c = split(timedt[2],tm,":");
strdt = dt[2] "/"  dt[1]  "/"  dt[3]  " "  tm[1]  ":"  tm[2]
#print strdt
#res2 = mktime(strdt);
trimmed=substr($2,2);
printf ("%s,%2.1f,,,,,,,,,\n",strdt,trimmed);
}

 	

