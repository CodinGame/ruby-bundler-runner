#!/bin/bash
cd /project/target
#bundle config path /project/target
bundle config --local path ./bundler_gems 1>/dev/null 2>/dev/null
bundle exec bin/rspec --init 1>/dev/null 2>/dev/null
bundle exec bin/rspec --format doc $@