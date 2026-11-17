echo "================================================="
echo "             Advanced Calculator                 "
echo "================================================="
while true  ;do
echo "choose the Number of  Arithmatic operation"
echo "1.Addition"
echo "2.Substraction"
echo "3.Devision"
echo "4.Multiblication"
echo "5.Exit"
read numop
if test $numop -eq 1 ;then
opr=+
elif test $numop -eq 2 ;then
opr=-
elif test $numop -eq 3 ;then
opr=/
elif test $numop -eq 4 ;then 
opr="*"
elif test $numop -eq 5 ;then 
exit 0
else
echo "Invalid operation!"
continue
fi
echo "Enter the n of numbers"
read n
for i in  $(seq 1 $n) ;do
read -p  "enter $i number :" n$i
done
error=0
res=$n1
for i in $(seq 2 "$n"); do
    var="n$i"
    value=${!var}

    if [[ $opr == "/" && $value -eq 0 ]]; then
        echo "Error: Division by zero!"
        error=1
        break
    fi

    res=$((res $opr value))
done

if [[ $error -eq 1 ]]; then
    continue
fi

echo "Result = $res"
echo "--------------------------------------------------------------------------"
done

