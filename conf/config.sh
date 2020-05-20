this=$(echo $0 | cut -f2 -d "/")
for file in $(ls); do
  if [ "$file" != "$this" ]; then
    echo "applying $file"
    location=$(head -n 1 $file | sed 's/# \+//') # get destination of file
    tail -n +2 $file > $location # write file contents (excluding location) to location
    echo $location
  fi
done
