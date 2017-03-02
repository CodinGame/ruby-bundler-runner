#!/bin/bash

/project/build

cd /project/target

cp -r /project/answer/* .

if [ -f bin/rspec ]; then
	bundle exec bin/rspec --init 1>/dev/null 2>/dev/null
fi
"$@"
#example: bundle exec bin/rspec --format doc -I liba/ [regex]