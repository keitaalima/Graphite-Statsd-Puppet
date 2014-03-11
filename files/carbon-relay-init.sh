#!/bin/bash
#
# Carbon-relay (part of Graphite)
#
# chkconfig: 3 50 50
# description: Carbon-relay init.d
. /etc/rc.d/init.d/functions
 
prog=carbon-relay
RETVAL=0
 
start() {
    echo -n $"Starting $prog: "
    
    PYTHONPATH=/usr/local/lib/python2.6/dist-packages/ /opt/graphite/bin/carbon-relay.py start
    RETVAL=$?
    
    if [ $RETVAL = 0 ]; then
        success "carbon-relay started"
    else
        failure "carbon-cache failed to start"
    fi
    
    echo
    return $RETVAL
}

 
stop() {
    echo -n $"Stopping $prog: "
    
    PYTHONPATH=/usr/local/lib/python2.6/dist-packages/ /opt/graphite/bin/carbon-relay.py stop > /dev/null 2>&1
    RETVAL=$?
    
    if [ $RETVAL = 0 ]; then
        success "carbon-relay stopped"
    else
        failure "carbon-relay failed to stop"
    fi
    
    echo
    return $RETVAL
}
 
# See how we were called.
case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  status)
    PYTHONPATH=/usr/local/lib/python2.6/dist-packages/ /opt/graphite/bin/carbon-relay.py status
    RETVAL=$?
    ;;
  restart)
    stop
    start
    ;;
  *)
    echo $"Usage: $prog {start|stop|restart|status}"
    exit 1
esac
 
exit $RETVAL
