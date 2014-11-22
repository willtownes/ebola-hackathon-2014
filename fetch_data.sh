max=16
for i in `seq 1 $max`
do
    curl http://api.qdatum.io/v1/pull/$i?format=csv > data/$i.csv
done

for i in {1..9}
do
    mv data/$i.csv data/0$i.csv
done