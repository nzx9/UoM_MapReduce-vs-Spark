echo "Started...";

echo "delay_type,run_for,time_taken" > $1;

bash ./script.sh ./hql/carrier-delay.hql $1 1;
bash ./script.sh ./hql/late-aircraft-delay.hql $1 1;
bash ./script.sh ./hql/nas-delay.hql $1 1;
bash ./script.sh ./hql/security-delay.hql $1 1;
bash ./script.sh ./hql/weather-delay.hql $1 1;

echo "Done...";