#!/bin/sh
# start, restart or stop emacs-daemon

if [ $# -ne 1 ]; then
    echo "usage: $0 [start|stop|restart]"
    exit 1
fi

case $1 in
    "start")
	emacs --daemon
	;;
    "stop")
	emacsclient --eval "(kill-emacs)"
	;;
    "restart")
	emacsclient --eval "(kill-emacs)"
	emacs --daemon
	;;
    "*")
	echo "usage: $0 [start|stop|restart]"
	exit 1
	;;
esac
