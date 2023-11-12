#!/bin/sh

if   [ "$NODE_ENV" = 'development' ]; then
	echo development
	while true; do sleep 20; done
	npm install
	npm run-script dev
elif [ "$NODE_ENV" = 'production' ]; then
	echo production
	rm -rf ./build
	npm install
	npm run-script build
fi


exec "$@"
