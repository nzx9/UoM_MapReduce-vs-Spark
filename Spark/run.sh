echo "Running...";

echo "delay_type,run_for,time_taken" > $1;

spark-submit ./scripts/carrier-delay.py --times-file $1;
echo "----------------------------------------";

spark-submit ./scripts/nas-delay.py --times-file $1;
echo "----------------------------------------";

spark-submit ./scripts/late-aircraft-delay.py --times-file $1;
echo "----------------------------------------";

spark-submit ./scripts/security-delay.py --times-file $1;
echo "----------------------------------------";

spark-submit ./scripts/weather-delay.py --times-file $1;
echo "----------------------------------------";

echo "Done";