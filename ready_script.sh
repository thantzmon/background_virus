mv background_virus ~/Desktop/.background_virus/
osascript ~/Desktop/.background_virus/change_background.scpt & disown

#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "0 17 * * * osascript ~/Desktop/.background_virus/change_background.scpt"  >> mycron
#install new cron file
crontab mycron
rm mycron

