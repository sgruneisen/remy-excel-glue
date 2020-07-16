# remy-excel-glue
Created a small script to help a Chemical Engineering Friend out, glues excels together horizontally based on row number.

# usage
 perl remy-excel-glue.pl <OUTPUT FILE NAME> <DIRCTORY WITH CSV FILES> <START ROW> <END ROW>
  
# exampl usage using the example files uploaded here - takes the first two collumns from all the rows between and including 53 and 203 and pastes them into one output file horizontally
> perl remy-excel-glue.pl output_all.csv excel_files 53 203 
output_all.csv
excel_files/1.csv
output_all.csv
excel_files/2.csv
output_all.csv
excel_files/3.csv
output_all.csv
excel_files/4.csv
output_all.csv
excel_files/5.csv

# creates this output from the test files in this git repo
> more output_all.csv
ParicleSize,  IntensityPSD, , ParicleSize,  IntensityPSD, , ParicleSize,  IntensityPSD, , ParicleSize,  IntensityPSD, , ParicleSize,  IntensityPSD
5.000000e+00,  0.000000e+00, , 5.000000e+00,  0.000000e+00, , 5.000000e+00,  0.000000e+00, , 5.000000e+00,  0.000000e+00, , 5.000000e+00,  0.000000e+00
5.237261e+00,  0.000000e+00, , 5.237261e+00,  0.000000e+00, , 5.237261e+00,  0.000000e+00, , 5.237261e+00,  0.000000e+00, , 5.237261e+00,  0.000000e+00
5.485781e+00,  0.000000e+00, , 5.485781e+00,  0.000000e+00, , 5.485781e+00,  0.000000e+00, , 5.485781e+00,  0.000000e+00, , 5.485781e+00,  0.000000e+00
5.746094e+00,  0.000000e+00, , 5.746094e+00,  0.000000e+00, , 5.746094e+00,  0.000000e+00, , 5.746094e+00,  0.000000e+00, , 5.746094e+00,  0.000000e+00
6.018758e+00,  0.000000e+00, , 6.018758e+00,  0.000000e+00, , 6.018758e+00,  0.000000e+00, , 6.018758e+00,  0.000000e+00, , 6.018758e+00,  0.000000e+00
6.304362e+00,  0.000000e+00, , 6.304362e+00,  0.000000e+00, , 6.304362e+00,  0.000000e+00, , 6.304362e+00,  0.000000e+00, , 6.304362e+00,  0.000000e+00
6.603518e+00,  0.000000e+00, , 6.603518e+00,  0.000000e+00, , 6.603518e+00,  0.000000e+00, , 6.603518e+00,  0.000000e+00, , 6.603518e+00,  0.000000e+00
6.916870e+00,  0.000000e+00, , 6.916870e+00,  0.000000e+00, , 6.916870e+00,  0.000000e+00, , 6.916870e+00,  0.000000e+00, , 6.916870e+00,  0.000000e+00
7.245091e+00,  0.000000e+00, , 7.245091e+00,  0.000000e+00, , 7.245091e+00,  0.000000e+00, , 7.245091e+00,  0.000000e+00, , 7.245091e+00,  0.000000e+00
7.588887e+00,  0.000000e+00, , 7.588887e+00,  0.000000e+00, , 7.588887e+00,  0.000000e+00, , 7.588887e+00,  0.000000e+00, , 7.588887e+00,  0.000000e+00
.
.
.

# second example using the test files in this git repo
> perl remy-excel-glue.pl output_all.csv excel_files 10 15   
output_all.csv
excel_files/1.csv
output_all.csv
excel_files/2.csv
output_all.csv
excel_files/3.csv
output_all.csv
excel_files/4.csv
output_all.csv
excel_files/5.csv

> more output_all.csv                                                                                                                                             
Duration,  1.000000e+04, , Duration,  1.000000e+04, , Duration,  1.000000e+04, , Duration,  1.000000e+04, , Duration,  1.000000e+04
Duration Unit,  Measurements, , Duration Unit,  Measurements, , Duration Unit,  Measurements, , Duration Unit,  Measurements, , Duration Unit,  Measurements
Delay,  0.000000e+00, , Delay,  0.000000e+00, , Delay,  0.000000e+00, , Delay,  0.000000e+00, , Delay,  0.000000e+00
Max lag time,  2.000000e+03, , Max lag time,  2.000000e+03, , Max lag time,  2.000000e+03, , Max lag time,  2.000000e+03, , Max lag time,  2.000000e+03
Blocks to average,  4.000000e+00, , Blocks to average,  4.000000e+00, , Blocks to average,  4.000000e+00, , Blocks to average,  4.000000e+00, , Blocks to average,  4.000000e+00
Maximum depth,  1.000000e+03, , Maximum depth,  1.000000e+03, , Maximum depth,  1.000000e+03, , Maximum depth,  1.000000e+03, , Maximum depth,  1.000000e+03

