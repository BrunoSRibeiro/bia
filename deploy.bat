call build.bat
aws ecs update-service --cluster cluster-bia-alb --service cluster-bia-alb --region us-east-1 --force-new-deployment --profile bia
