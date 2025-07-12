PROMPT=""
read PROMPT
PROMPT=$(echo "$PROMPT" | tr '[:upper:]' '[:lower:]')
	if [[ "$PROMPT" == "hi" ]] || [[ "$PROMPT" == *"hey"* ]] ||  [[ "$PROMPT" == *"hello"* ]] || [[  "$PROMPT" == "hi!" ]]; then
		echo "Hi $USER!"
	elif [[ "$PROMPT" == *"how are you"* ]]; then
		echo "I'm good!"
	elif [[ "$PROMPT" == *"can you open "* ]]; then
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ open\ //g')
		xdg-open "$PROMPT"
		echo "Sure thing, $USER!"
	elif [[ "$PROMPT" == "bye" ]] || [[ "$PROMPT" == "gtg" ]]; then
		echo "Okay, bye $USER!"
		exit
	elif [[ "$PROMPT" == *"joke"* ]]; then
		echo "Why can a frog jump higher than the Burj Khalifa? BECAUSE THE BURJ KHAlIFA CAN'T JUMP AHAHAHA wait why didnt you laugh"
	elif [[ "$PROMPT" == *"name"* ]]; then
		echo "I'm Sophie / SophieTheMaid, how can I help?"
	elif [[ "$PROMPT" == "ok" ]] || [[ "$PROMPT" == "okay" ]]; then
		echo "Nice! Anything else you would like to say?"
	elif [[ "$PROMPT" == *"thank you"* ]] || [[ "$PROMPT" == *"thanks"* ]] || [[ "$PROMPT" == "ty" ]] || [[ "$PROMPT" == "thx" ]] || [[ "$PROMPT" == "tysm" ]]; then
		echo "You're Welcome!"
	elif [[ "$PROMPT" == *"can you run"* ]]; then
		echo "Sure thing!"
		echo
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ run\ //g')
		$PROMPT
	elif [[ "$PROMPT" == *"can you install"* ]]; then
		echo "Sure! You'll probably have to enter password to run sudo apt-get"
		echo
		PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ install\ //g')
		sudo apt-get $PROMPT
	elif [[ "$PROMPT" == "can you show me your face" ]]; then
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
		echo "Are you sure? y/n"
		CONF=""
		read CONF
		if [[ $CONF == "y" ]]; then
			echo "Okay!"
			rm -f $PROMPT
		else
			echo "I guess you changed your mind. That's okay!"
		fi
	else
		echo "I don't know, but I looked it up, and you can figure out here!"
		echo "https://www.google.com/search?q=$PROMPT&oq=&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg7MgYIAhBFGDvSAQc4ODhqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8"
	fi
./sophie.sh
