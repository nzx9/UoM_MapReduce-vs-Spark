echo "Running...";

echo "delay-type,time_taken" > $1;

$carrier_delay = $(spark-submit ./scripts/carrier-delay.py)
echo $carrier_delay;
echo "carrier-delay,$carrier_delay" >> $1;
echo "----------------------------------------";

$nas_delay = $(spark-submit ./scripts/nas-delay.py)
echo "nas-delay,$nas_delay" >> $1;
echo "----------------------------------------";

$late_aircraft_delay = $(spark-submit ./scripts/late-aircraft-delay.py)
echo "late-aircraft-delay,$late_aircraft_delay" >> $1;
echo "----------------------------------------";

$security_delay = $(spark-submit ./scripts/security-delay.py)
echo "security-delay,$security_delay" >> $1;
echo "----------------------------------------";

$weather_delay = $(spark-submit ./scripts/weather-delay.py)
echo "weather-delay,$weather_delay" >> $1;
echo "----------------------------------------";

echo "Done";