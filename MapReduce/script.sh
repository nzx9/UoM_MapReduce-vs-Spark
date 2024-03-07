echo "Running $1";
total_time_taken=0;
for i in $(seq 1 $3);
do
    echo "Run_for: $i"
    output=$(hive -f $1 2>&1);
    echo "$output";
    delay_type=$(echo $1 | cut -d '.' -f 2 | cut -d '/' -f 3);
    time_taken=$(echo $output | awk -F 'Time taken: ' {'print $2'} | awk -F ' ' {'print $1'});
    echo "done";
    total_time_taken=$(echo $total_time_taken $time_taken | awk '{print $1 + $2}')
done
echo "$delay_type,$3,$total_time_taken" >> $2;
