NR == 1{next}

{
    sum = 0;
    count = 0;
    for(i=2; i<=NF; i++){
        sum+=$i;
        count++;
    }
    average = sum/count;

    if(average>max_average){
        max_average = average
        topper = $1;
    }
}

END{
    print "Topper: " topper;
}