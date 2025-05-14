Create Script FIle Ex:script.pig

data = LOAD 'data.txt' USING PigStorage(',') AS (name:chararray, age:int, city:chararray);
sorted_data = ORDER data BY age DESC;
grouped_data = GROUP data BY age;
data1 = LOAD 'data1.txt' USING PigStorage(',') AS (id:int, name:chararray);
data2 = LOAD 'data2.txt' USING PigStorage(',') AS (id:int, age:int);
joined_data = JOIN data1 BY id, data2 BY id;
projected_data = FOREACH data GENERATE name, age;
filtered_data = FILTER data BY age > 30;
STORE sorted_data INTO 'sorted_data_output' USING PigStorage(',');
STORE grouped_data INTO 'grouped_data_output' USING PigStorage(',');
STORE joined_data INTO 'joined_data_output' USING PigStorage(',');
STORE projected_data INTO 'projected_data_output' USING PigStorage(',');
STORE filtered_data INTO 'filtered_data_output' USING PigStorage(',');


Run the command- pig -x local script.pig
