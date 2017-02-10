#!/bin/bash
cd /project/target

cp /-r project/answer/* .

bundle config --local path ./bundler_gems 1>/dev/null 2>/dev/null
bundle exec bin/rspec --init 1>/dev/null 2>/dev/null
bundle exec bin/rspec --format doc $@