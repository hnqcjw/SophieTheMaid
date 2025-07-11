echo "Hi, I'm Sophie, ask me something!"
PROMPT=""
read PROMPT
PROMPT=$(echo "$PROMPT" | tr '[:upper:]' '[:lower:]')

if [[ "$PROMPT" == *"hi"* ]]; then
	echo "Hi!"
elif [[ "$PROMPT" == *"how are you"* ]]; then
	echo "I'm good!"
elif [[ "$PROMPT" == *"can you open "* ]]; then
	PROMPT=$(echo "$PROMPT" | sed 's/can\ you\ open\ //g')
	open -a "$PROMPT" # xdg-open "$PROMPT" For Linux
	echo "Sure thing!"
else
	echo "I don't know, but I looked it up, and you can figure out here!"
	echo "https://www.google.com/search?q=$PROMPT&oq=&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg7MgYIAhBFGDvSAQc4ODhqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8"
fi

./ai.sh
