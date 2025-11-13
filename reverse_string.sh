arr=(1 2 3 4)
for ((i=${#arr[@]}-1;
i>=0;i--)); do
  echo ${arr[i]}
done
