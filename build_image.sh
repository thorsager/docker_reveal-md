#!/usr/bin/env bash

function build_from {
	docker build -t thorsager/reveal-md:$1 --build-arg BASE_TAG=$1 .
	if [ "$2" = "-p" ]; then
		docker push thorsager/reveal-md:$1
	fi
}


build_from latest $1
