
#write out current crontab
crontab -r
crontab -l > mycron
#echo new cron into cron file
echo "* * * * * sleep 35; /bin/bash /home/ubuntu/log.sh" >> mycron
#install new cron file
crontab mycron
rm mycron