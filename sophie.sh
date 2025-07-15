#!/bin/bash

PROMPT=""
read -p "-> " PROMPT
PROMPT=$(echo "$PROMPT" | tr '[:upper:]' '[:lower:]')
	if [[ "$PROMPT" == "hi" ]] || [[ "$PROMPT" == *"hey"* ]] ||  [[ "$PROMPT" == *"hello"* ]] || [[  "$PROMPT" == "hi!" ]]; then
		echo "Hi $USER!"
	elif [[ "$PROMPT" == *"how are you"* ]]; then
		echo "I'm good!"
	elif [[ "$PROMPT" == *"can you open "* ]]; then
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ open\ //g')
		xdg-open "$PROMPT"
		echo "Sure thing, $USER! Opening $PROMPT..."
	elif [[ "$PROMPT" == "bye" ]] || [[ "$PROMPT" == "gtg" ]]; then
		echo "Okay, bye $USER!"
		exit
	elif [[ "$PROMPT" == *"joke"* ]]; then
		echo "Why can a frog jump higher than the Burj Khalifa? BECAUSE THE BURJ KHAlIFA CAN'T JUMP AHAHAHA wait why didnt you laugh"
	elif [[ "$PROMPT" == *"name"* ]]; then
		echo "I'm Sophie / SophieTheMaid, how can I help?"
	elif [[ "$PROMPT" == "ok" ]] || [[ "$PROMPT" == *"okay"* ]] || [[ "$PROMPT" == "nice" ]] || [[ "$PROMPT" == "cool" ]] || [[ "$PROMPT" == "nice!" ]] || [[ "$PROMPT" == "cool!" ]]; then
		echo "Nice! Anything else you would like to say?"
	elif [[ "$PROMPT" == *"thank you"* ]] || [[ "$PROMPT" == *"thanks"* ]] || [[ "$PROMPT" == "ty" ]] || [[ "$PROMPT" == "thx" ]] || [[ "$PROMPT" == "tysm" ]]; then
		echo "You're Welcome!"
	elif [[ "$PROMPT" == *"can you run"* ]]; then
		echo "Sure thing!"
		echo
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ run\ //g')
		$PROMPT
	elif [[ "$PROMPT" == *"can you install"* ]]; then
		echo "Sure! You'll probably have to enter password to run sudo apt install"
		echo
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ install\ //g')
		sudo apt install $PROMPT
	elif [[ "$PROMPT" == *"can you show me your face"* ]]; then
		echo "((((()))))"
		echo "(  0   0 ) ))"
		echo "(    U   )  ))"
		echo "<><><><><>"
	elif [[ "$PROMPT" == *"can you close"* ]]; then
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ close\ //g')
		pkill -9 -if "$PROMPT"
		echo "Sure, $USER!"
	elif [[ "$PROMPT" == *"can you delete"* ]]; then
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ delete\ //g')
		CONF=""
		read -p "Are you sure you want to delete '$PROMPT'?" CONF
		if [[ $CONF == "y" ]]; then
			echo "Okay!"
			rm -rf $PROMPT
		else
			echo "I guess you changed your mind. That's okay!"
		fi
	elif [[ "$PROMPT" == *"how were you made"* ]]; then
		read -p "Would you like to take a look at my source code? y/n --> " CONF
		if [[ $CONF == "y" ]]; then
			cat sophie.sh
		else
			echo "I guess you don't know programming. Anything else you would like to say?"
		fi
	elif [[ "$PROMPT" == "yes" ]] || [[ "$PROMPT" == "yeah" ]]; then
		echo "Alright!"
	elif [[ "$PROMPT" == "no" ]] || [[ "$PROMPT" == "nah" ]]; then
		echo "Okay."
	elif [[ "$PROMPT" == *"ram usage"* ]] || [[ "$PROMPT" == *"memory usage"* ]]; then
		echo "Here's your memory usage statistics:"
		echo "Press CTRL + C to exit"
		echo "Wait A Second...."
		sleep 2
		top
	elif [[ "$PROMPT" == *"disk"* ]]; then
		echo "Here's your disk usage:"
		df -h
	elif [[ "$PROMPT" == *"where am i"* ]]; then
		echo "You're at $(pwd)"
	elif [[ "$PROMPT" == *"siri"* ]] || [[ "$PROMPT" == *"alexa"* ]] || [[ "$PROMPT" == *"google assistant"* ]] || [[ "$PROMPT" == *"copilot"* ]] || [[ "$PROMPT" == *"chatgpt"* ]]; then
		echo "I love my fellow chatbots and assistants."
	elif [[ "$PROMPT" == *"modify"* ]]; then
		echo "You want to modify me? Sure! Press CTRL+C to get out of the editor."
		sleep 0.5
		nano sophie.sh
	else
		echo "I’m not sure what that means, but here's what I found on the web!"	
		echo "https://www.google.com/search?q=$PROMPT&oq=a&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg8MgYIAhBFGD0yBggDEEUYPTIGCAQQRRg8MgYIBRAFGEAyBggGEAUYQDIGCAcQBRhA0gEIMjI4NWowajeoAgCwAgA&sourceid=chrome&ie=UTF-8"
	fi
./sophie.sh
