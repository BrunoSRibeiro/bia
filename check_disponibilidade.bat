::while sleep 5; do curl -o /dev/null -s -w "%{http_code}\n" http://alb-bia-1028520958.us-east-1.elb.amazonaws.com; done
@echo off
:check
curl -s -i http://alb-bia-1028520958.us-east-1.elb.amazonaws.com | findstr "HTTP/"
goto check