lst_files=($(ls))
arr=()
SUB='while_'
for STR in "${lst_files[@]}"
do
	if [[ "$STR" == *"$SUB"* ]]; 
		then arr+=("$STR")
	fi
done
echo "${arr[*]}"