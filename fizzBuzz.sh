for n in `seq 1 20`
do
    if [ $((n % 15)) -eq 0 ]; then
        echo "FizzBuzz"
    elif [ $((n % 5)) -eq 0 ]; then
        echo "Buzz"
    elif [ $((n % 3)) -eq 0 ]; then
        echo "Fizz"
    else
        echo $n
    fi
done

# [ $((n % 3)) -eq 0 ] && [ $((n % 5)) -eq 0 ];