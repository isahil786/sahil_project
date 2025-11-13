for file in *.c; do
  echo "Compiling $file..."
  gcc "$file" -o "${file%.c}.out" 2> "${file%.c}.err"
  if [ $? -ne 0 ]; then
    echo "Compilation failed for $file. Showing errors and removing source."
    cat "${file%.c}.err"
    rm -f "$file"
  else
    echo "Compiled $file successfully."
    rm -f "${file%.c}.err"
  fi
done
