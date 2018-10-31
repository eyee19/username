#! /bin/bash
# username.sh
echo "Enter username: "
read USER

LEN=$(echo ${#USER})

if [ $LEN -lt 3 ]; then
	echo "Username must be at least 3 characters"
else
	echo "Username has at least 3 characters"
fi

