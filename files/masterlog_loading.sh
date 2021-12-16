#!/bin/bash


mv /var/www/html/masterlog.txt /var/www/html/logs/$(date -d "today" +"%Y%m%d%H%M").txt