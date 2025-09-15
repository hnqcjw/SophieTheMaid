echo "Welcome to the SophieTheMaid installation script!"

cd ~/Downloads

sleep 1

cd SophieTheMaid-main
sleep 0.1

echo "Moving sophie shell script to /usr/bin (Which may ask for your password) ... "
sudo mv ./sophie /usr/bin/sophie
sleep 1

echo "Removing excess files..."
rm -rf SophieTheMaid-main
rm -f SophieTheMaid-main.zip

sudo chmod +x /usr/bin/sophie
echo "Installation Complete! Try by typing \"sophie\" in the terminal"
