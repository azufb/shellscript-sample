array=(123 456 789)

for i in "${array[@]}";
do
    echo "${i}"
done

for n in `seq 1 5`
do
    echo "${n}番目です。"
done