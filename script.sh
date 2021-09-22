IFS='_'
for f in *.wav; do
    name=`echo "$f"`
    IFS='_' read -r -a array <<< "$name"  # To split string and store in array.
    IFS='.' read -r -a arr <<< "${array[2]}"
    if [[ ${arr[0]} -lt 5 ]]; then
    	mkdir -p "${array[1]}_${arr[0]}"
    	cp "${array[0]}_${array[1]}_${array[2]}" "${array[1]}_${arr[0]}/${array[0]}.wav"
    fi
done
