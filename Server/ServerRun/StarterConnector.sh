#! /bin/sh
#ff
clear

# Edit and uncomment it to run the server as non-root
CS_USER=""

PATH=/bin:/usr/bin:/sbin:/usr/sbin

# 
# DON'T FORGET TO CHANGE THE PATH TO YOUR NEEDS!
DIR=$PWD/Connector

#
DAEMON=$DIR/run

PARAMS=" connector_test start &"

NAME=Connector
DESC="TEST_LC Connector"


case "$1" in
 start)
   if [[ `screen -ls |grep $NAME` ]]
   then
	echo "Name: $NAME > Desc: $DESC > Already Running!!!"
   else
   	echo "Starting Name: $NAME > Desc: $DESC"
   	
	if [ -e $DIR ];
   		then
    		cd $DIR
   		screen -d -m -S $NAME $DAEMON $PARAMS
   		else echo "No such directory: $DIR!"
	fi
   fi
   ;;

 stop)
   if [[ `screen -ls |grep $NAME` ]]
   then
       echo -n "Stopping $DESC: $NAME"
	screen -r ${NAME} -X quit
       echo " ... done."
   else
       echo "Coulnd't find a running $DESC"
   fi
   ;;

 restart)
   if [[ `screen -ls |grep $NAME` ]]
   then
       echo -n "Stopping $DESC: $NAME"
	screen -r ${NAME} -X quit
       echo " ... done."
   else
       echo "Coulnd't find a running $DESC"
   fi
   
   echo -n "Starting $DESC: $NAME"
   cd $DIR
   screen -d -m -S $NAME $DAEMON $PARAMS
   echo " ... done."
   ;;
 
 status)
   ps aux | grep -v grep | grep $NAME | grep SCREEN > /dev/null
   CHECK=$?
   [ $CHECK -eq 0 ] && echo "Server is UP" || echo "Server is DOWN"
echo "    "
   ps aux | grep -v grep | grep Connector | grep -v test | awk '{print "Server %CPU usage is:", $3}'
   ps aux | grep -v grep | grep Connector | grep -v test | awk '{print "Server %Mem usage is:", $4}'
   ;;

console)
   	if [[ `screen -ls |grep $NAME` ]]
   	then
   	screen -r $NAME	
   	else
	echo "Coulnd't find a running $DESC"
	fi
   ;; 
 
 *)
   echo "Usage: $0 {start|stop|status|restart|console}"
   exit 1
   ;;
esac

exit 0
