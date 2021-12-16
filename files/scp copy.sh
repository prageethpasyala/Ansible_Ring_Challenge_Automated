#!/bin/bash


# importing ipaddress var values 
. ./ipadd.sh 

# pvtsrv1="192.168.21.193"
# pvtsrv2="192.168.22.26"
# pvtsrv3="192.168.23.246"
# pvtsrv4="192.168.24.167"
# pvtsrv5="192.168.25.126"
# pubsrv1="192.168.11.8"


# -------------------- pvt server 1
#set permision 400 for remote pem keys 
scp -i ta-lab-key.pem ta-lab-key.pem ubuntu@$pvtsrv1:/home/ubuntu; chmod 400 -i ta-lab-key.pem ubuntu@$pvtsrv1:/home/ubuntu/*.pem

#copy muiltipelbash scripts to remote servers
scp -i ta-lab-key.pem log.sh ipadd.sh ubuntu@$pvtsrv1:/home/ubuntu/
scp -i ta-lab-key.pem crontab.sh ubuntu@$pvtsrv1:/home/ubuntu/


# execute copyied crontab.sh script remotley to create  the crontabs on remote servers from public
ssh -i ta-lab-key.pem ubuntu@$pvtsrv1 'bash -s' < crontab.sh


#another methos of set permision 400 for remote pem keys 
# tar -zc ta-lab-key.pem | ssh -i ta-lab-key.pem ubuntu@$pvtsrv1 'tar -zx -C /home/ubuntu; chmod 400 /home/ubuntu/ta-lab-key.pem'

# ---------------------- pvt server 2
#set permision 400 for remote pem keys 
scp -i ta-lab-key.pem ta-lab-key.pem ubuntu@$pvtsrv2:/home/ubuntu; chmod 400 -i ta-lab-key.pem ubuntu@$pvtsrv2:/home/ubuntu/*.pem

#copy bash scripts to remote servers
scp -i ta-lab-key.pem log.sh ipadd.sh ubuntu@$pvtsrv2:/home/ubuntu/
scp -i ta-lab-key.pem crontab2.sh ubuntu@$pvtsrv2:/home/ubuntu/


# execute copyied crontab.sh script remotley to create  the crontabs on remote servers from public
ssh -i ta-lab-key.pem ubuntu@$pvtsrv2 'bash -s' < crontab2.sh

# ---------------------- pvt server 3
#set permision 400 for remote pem keys 
scp -i ta-lab-key.pem ta-lab-key.pem ubuntu@$pvtsrv3:/home/ubuntu; chmod 400 -i ta-lab-key.pem ubuntu@$pvtsrv3:/home/ubuntu/*.pem

#copy bash scripts to remote servers
scp -i ta-lab-key.pem log.sh ipadd.sh ubuntu@$pvtsrv3:/home/ubuntu/
scp -i ta-lab-key.pem crontab3.sh ubuntu@$pvtsrv3:/home/ubuntu/


# execute copyied crontab.sh script remotley to create  the crontabs on remote servers from public
ssh -i ta-lab-key.pem ubuntu@$pvtsrv3 'bash -s' < crontab3.sh

# ---------------------- pvt server 4
#set permision 400 for remote pem keys 
scp -i ta-lab-key.pem ta-lab-key.pem ubuntu@$pvtsrv4:/home/ubuntu; chmod 400 -i ta-lab-key.pem ubuntu@$pvtsrv4:/home/ubuntu/*.pem

#copy bash scripts to remote servers
scp -i ta-lab-key.pem log.sh ipadd.sh ubuntu@$pvtsrv4:/home/ubuntu/
scp -i ta-lab-key.pem crontab4.sh ubuntu@$pvtsrv4:/home/ubuntu/


# execute copyied crontab.sh script remotley to create  the crontabs on remote servers from public
ssh -i ta-lab-key.pem ubuntu@$pvtsrv4 'bash -s' < crontab4.sh

# ---------------------- pvt server 5
#set permision 400 for remote pem keys 
scp -i ta-lab-key.pem ta-lab-key.pem ubuntu@$pvtsrv5:/home/ubuntu; chmod 400 -i ta-lab-key.pem ubuntu@$pvtsrv5:/home/ubuntu/*.pem

#copy muiltipel bash scripts to remote servers
scp -i ta-lab-key.pem log.sh ipadd.sh ubuntu@$pvtsrv5:/home/ubuntu/
scp -i ta-lab-key.pem crontab5.sh ubuntu@$pvtsrv5:/home/ubuntu/


# execute copyied crontab.sh script remotley to create  the crontabs on remote servers from public
ssh -i ta-lab-key.pem ubuntu@$pvtsrv5 'bash -s' < crontab5.sh


