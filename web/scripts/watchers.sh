#!/bin/bash
exec `coffee --watch --compile --output gen/javascripts/ assets/javascripts/` &
exec `sass --watch assets/stylesheets/:gen/stylesheets/ assets/stylesheets/lib/:gen/stylesheets/lib` &

# run http server: https://www.npmjs.com/package/http-server
`http-server .`
