#!/bin/bash
#
# Carbon-aggregator (part of Graphite)
#
# chkconfig: 3 50 50
# description: Carbon init.d
. /etc/rc.d/init.d/functions
 
prog=carbon-aggregator
RETVAL=0
 
start() {
    echo -n $"Starting $prog: "
    
    PYTHONPATH=/usr/local/lib/python2.6/dist-packages/ /opt/graphite/bin/carbon-aggregator.py start
    RETVAL=$?
    
    if [ $RETVAL = 0 ]; then
        success "carbon-aggregator started"
    else
        failure "carbon-aggregator failed to start"
    fi
    
    echo
    return $RETVAL
}

 
stop() {
    echo -n $"Stopping $prog: "
    
    PYTHONPATH=/usr/local/lib/python2.6/dist-packages/ /opt/graphite/bin/carbon-aggregator.py stop > /dev/null 2>&1
    RETVAL=$?
    
    if [ $RETVAL = 0 ]; then
        success "carbon-aggregator stopped"
    else
        failure "carbon-aggregator failed to stop"
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
    PYTHONPATH=/usr/local/lib/python2.6/dist-packages/ /opt/graphite/bin/carbon-aggregator.py status
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
