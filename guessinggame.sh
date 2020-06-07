function guessing()
{
    true_ans=$(ls -l |grep "^-"|wc -l)
    flag=0
    while [ $flag == 0 ]
    do
        echo "pleas enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is Greater then the true number"
        else
            echo " congratulation,you are right!"
            $flag=1
            break;
        fi
    done
}
echo "guess the files number in the current directory!"
guessing
