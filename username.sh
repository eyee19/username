#! /bin/bash
# username.sh
echo "Username requirements: "
echo
echo "- Can only use lower case letters, digits, and the underscore character"
echo "- Must begin with a lower case letter"
echo "- Contain at least 3 but no more than 12 characters"
echo
echo "Enter username: "
read USER

accepted=false

LEN=$(echo ${#USER})

#while echo $USER | [ "$accepted" != "true" ];
#do
	if [ $LEN -lt 3 ] || [ $LEN -gt 12 ]; then
		echo "Error: username must be at least 3 but no more than 12 characters"
		#accepted=false
		#read USER
	elif [[ "$USER" =~ [[:upper:]] ]]; then
		echo "Error: username cannot contain upper case letters"
		#accepted=false
		#read USER
	elif [[ $USER =~ ^[a-z0-9_]+$ ]] && [[ $USER =~ ^[a-z] ]] && [ $LEN -gt 2 ] && [ $LEN -lt 13 ]; then
		echo "Valid username, thank you $USER"
		#accepted=true
	else
		echo "Error: username must begin with a lower case letter and cannot have special characters (except the underscore)"
		#accepted=false
		#read USER
	fi
#done
