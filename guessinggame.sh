function guessing()
{
    count=$(ls -l |grep "^-"|wc -l)
    flag=0
    while [ $flag == 0 ]
    do
        echo "pleas enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Lesser"
        elif [ $number -gt $count ]
        then
            echo "your guess is Greater"
        else
            echo " congratulation,you are right!"
            $flag=1
            break
        fi
    done
}
echo "Guessing Game!"
guessing
