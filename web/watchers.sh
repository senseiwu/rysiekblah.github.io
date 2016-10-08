#!/bin/bash
coffee --compile --output javascripts/ assets/javascripts/
sass --watch assets/stylesheets/:stylesheets/ assets/stylesheets/lib/:stylesheets/lib &

