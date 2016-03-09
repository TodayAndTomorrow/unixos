{
 masFn[FILENAME] = FILENAME;
}
END{
 for(i in masFn){
  split(masFn[i],mas,"_");
  mass[i] = mas[2];
 }
 for(i in mass){
  print mass[i] | "sort";
 }
}
