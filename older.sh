dir=/home/ubuntu/Assignment_1
{ 
read -r -d $'\t' time && read -r -d '' filename
 } < <(find "$dir" -maxdepth 1 -mindepth 1 -printf '%T+\t%P\0' | sort -z )
printf "The oldest folder is $filename, created on $time and analysis done using v1.3 by $USER at $(date "+%D %r")\n" >> /home/ubuntu/Assignment_1/log
echo "$filename"
