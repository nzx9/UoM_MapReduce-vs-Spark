echo "Started...";

echo "delay-type,time_taken" > $1;

bash ./script.sh ./hql/carrier-delay.hql $1;
bash ./script.sh ./hql/late-aircraft-delay.hql $1;
bash ./script.sh ./hql/nas-delay.hql $1;
bash ./script.sh ./hql/security-delay.hql $1;
bash ./script.sh ./hql/weather-delay.hql $1;

echo "Done...";