# IFS=$'\0'
echo -n "Press any key: "
read -n 1 var
if [ -n "$var" ]; then
    echo "You pressed: $(printf '%q' "$var")"
else
    echo "You pressed nothing."
fi
