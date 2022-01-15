# Lesson 3: Array
Like many programing language, shell offers array to store mulitple values in one object.

## Syntax
You will use <b>array_name=(value1 value2 value3)</b> to declare an array, <b>array_name[i]</b> to access an array element, and <b>array_name[\*]</b> or <b>array_name[@]</b> to access all elements within the array. Arrays in shell are 0-based.

```
class1A=("Jacques" "Rodney" "Henry")
echo "${class1A[0]}"
echo "${class1A[@]}"
```
<br>
You can use the operator <b>+= </b>to append an element, also you may put the whole array as index to add an element at the end of the array. Using bracket to combine an array and an element is also possible to append an element in an array. Alternatively, You can add or edit by element index. If you print the list which contains empty elements, it will skip that element what you print on shell.

```
# Here are the ways to append into an array
class1A+=("Hugo")
class1A=(${class1A[@]} "Milo")
class1A=(${class1A[@]} ${class1B[@]}) # Assume we have declared the array class1B
```

## Example Script
This folder contains <i>produces.sh</i> that shows how to declare an array and various ways to append an element or edit an element in an array