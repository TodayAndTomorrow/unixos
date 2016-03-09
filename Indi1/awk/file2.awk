BEGIN{
}
{
 Aver[FILENAME] += $2;
 Count[FILENAME] += 1;
}
END{
  for(i in Count){
   print i ":" Aver[i]/Count[i];
  }
}
