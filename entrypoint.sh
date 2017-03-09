#!/bin/bash

cd /project/target

if [ -f bin/rspec ]; then
	bundle exec bin/rspec --init 1>/dev/null 2>/dev/null
fi
"$@"
#example: bundle exec bin/rspec --format doc -I liba/ [regex]