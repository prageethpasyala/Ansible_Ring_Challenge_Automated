
#write out current crontab
crontab -r
crontab -l > mycron
#echo new cron into cron file
echo "*/5 * * * * /bin/bash /home/ubuntu/masterlog_loading.sh" >> mycron
#install new cron file
crontab mycron
rm mycron