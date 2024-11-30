#!/bin/sh
(crontab -l 2>/dev/null; echo "10 3 * * 1 date >> /var/log/cron.log && echo \"Starting maintainance crontabs...\" >> cron.log ") | crontab -
(crontab -l 2>/dev/null; echo "10 3 * * 1 apt update && apt upgrade -y >> /var/log/cron.log") | crontab -
(crontab -l 2>/dev/null; echo "20 3 * * 1 echo \"Ran maintainance crontabs\" >> /var/log/cron.log") | crontab -
apt install ufw -y
systemctl enable ufw --now
ufw allow 22
ufw --force enable
