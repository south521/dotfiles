if [ $# -ne 1 ]; then
  read -p "pass" INPUT
else
  INPUT="$1"
fi 

echo $INPUT
