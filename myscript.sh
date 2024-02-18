#!/bin/bash
user=anotherUser
if grep $user /etc/passwd; then
	echo "The user $user Exists"
else
	echo "The user $user doesn’t exist"
fi

num=11
if [ $num -gt 10 ]; then
	echo "$num is bigger than 10"
else
	echo "$num is less than 10"
fi
