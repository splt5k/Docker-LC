#! /bin/sh
#ff
clear

# Edit and uncomment it to run the server as non-root
CS_USER=""

PATH=/bin:/usr/bin:/sbin:/usr/sbin

# 
# DON'T FORGET TO CHANGE THE PATH TO YOUR NEEDS!
DIR=$PWD/GameServer

#
DAEMON=$DIR/run

PARAMS=" gameserver_test1 start &"


NAME=GS1
DESC="GameServer_1"


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
#       kill `screen -ls |grep $NAME |awk -F . '{print $1}'|awk '{print $1}'`
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
#       kill `screen -ls |grep $NAME |awk -F . '{print $1}'|awk '{print $1}'`
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
   [ $CHECK -eq 0 ] && echo -n "Server is UP" || echo -n "Server is DOWN"
echo "    "
   ps aux | grep -v grep | grep $NAME | grep -v SCREEN | awk '{print "Server %CPU usage is:", $3}'
   ps aux | grep -v grep | grep $NAME | grep -v SCREEN | awk '{print "Server %Mem usage is:", $4}'
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
