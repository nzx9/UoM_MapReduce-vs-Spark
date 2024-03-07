echo "delay-type,run_for,time_taken" > $1;

echo "Running for 1";
spark-submit ./scripts/carrier-delay.py --times-file $1 --run-for 1;

echo "Running for 2";
spark-submit ./scripts/carrier-delay.py --times-file $1 --run-for 2;

echo "Running for 3";
spark-submit ./scripts/carrier-delay.py --times-file $1 --run-for 3;

echo "Running for 4";
spark-submit ./scripts/carrier-delay.py --times-file $1 --run-for 4;

echo "Running for 5";
spark-submit ./scripts/carrier-delay.py --times-file $1 --run-for 5;