
data_row=0

tail -n +2 "student_marks.csv" | while IFS=',' read -r student_id name subject marks; do
    ((data_row++))
    if ! [[ $marks =~ ^[0-9]+$ ]] || ((marks < 0 || marks > 100)); then
        echo "Row $data_row: Invalid marks"
    fi
done
