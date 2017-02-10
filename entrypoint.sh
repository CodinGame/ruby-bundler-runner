#!/bin/bash
cd /project/target
#bundle config path /project/target
bundle config --local path ./bundler_gems
bundle exec bin/rspec --init
bundle exec bin/rspec --format doc $@