#! /bin/bash
# username.sh
echo "Enter username: "
read USER
while echo $USER | egrep -v "^[0-9]{5}$" > /dev/null 2>&1
do
	echo "Usernames can only have lower case letters, digits, and the underscore character."
	echo "Usernames must start with a lower case letter, and be at least 3 but no more than 12 characters."
	echo "Enter username: "
	read USER
done
echo "User confirmed, thank you!"

