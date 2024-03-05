echo "Running $1";
output=$(hive -f $1 2>&1);
echo "$output";
time_taken=$(echo $output | awk -F 'Time taken: ' {'print $2'} | awk -F ' ' {'print $1'});
delay_type=$(echo $1 | cut -d '.' -f 2 | cut -d '/' -f 3);
echo $delay_type;
echo "$delay_type,$time_taken" >> $2;
echo "-------------------------------------------";
