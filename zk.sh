#!/bin/bash
case $1 in
        start)
                for((i=1;i<4;i++));do
                        ssh hadoop$i "$ZOOKEEPER_HOME/bin/zkServer.sh start"
                done
                ;;
        stop)
                for((i=1;i<4;i++));do
                        ssh hadoop$i "$ZOOKEEPER_HOME/bin/zkServer.sh stop"
                done
                ;;
        status)
                for((i=1;i<4;i++));do
                        echo "-------------------- hadoop$i -----------------------"
                        ssh hadoop$i "$ZOOKEEPER_HOME/bin/zkServer.sh status"
                done
                ;;
        *)
                echo "USAGE: $0 [ start | stop | status ] "
esac