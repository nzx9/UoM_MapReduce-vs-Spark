echo "Started...";

echo "delay_type,run_for,time_taken" > $1;

bash ./script.sh ./hql/carrier-delay.hql $1 1;
bash ./script.sh ./hql/carrier-delay.hql $1 2;
bash ./script.sh ./hql/carrier-delay.hql $1 3;
bash ./script.sh ./hql/carrier-delay.hql $1 4;
bash ./script.sh ./hql/carrier-delay.hql $1 5;

echo "Done...";