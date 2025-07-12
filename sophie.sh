PROMPT=""
read PROMPT
PROMPT=$(echo "$PROMPT" | tr '[:upper:]' '[:lower:]')

if [[ "$PROMPT" == "hi" ]] || [[ "$PROMPT" == *"hey"* ]] ||  [[ "$PROMPT" == *"hello"* ]] ||[[  "$PROMPT" == "hi!" ]]; then
	echo "Hi!"
elif [[ "$PROMPT" == *"how are you"* ]]; then
	echo "I'm good!"
elif [[ "$PROMPT" == *"can you open "* ]]; then
	PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ open\ //g')
	xdg-open "$PROMPT"
	echo "Sure thing!"
elif [[ "$PROMPT" == "bye" ]] || [[ "$PROMPT" == "gtg" ]]; then
	echo "Okay, bye!"
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
else
	echo "I don't know, but I looked it up, and you can figure out here!"
	echo "https://www.google.com/search?q=$PROMPT&oq=&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg7MgYIAhBFGDvSAQc4ODhqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8"
fi

./sophie.sh
