produces=("Oranges" "Apples" "Carrots")
echo "We have ${produces[0]}"
echo "Here is the list of produces we have: ${produces[*]}"
produces[0]="Strawberries"
produces[5]="Blueberries"
produces+=("Bananas")
produces=(${produces[@]} "Tomatoes")
echo "After we updated the list, the list of produces we now have: ${produces[@]}"