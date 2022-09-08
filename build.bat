docker build -t bia .
aws ecr get-login-password --region us-east-1 --profile bia | docker login --username AWS --password-stdin 235361825431.dkr.ecr.us-east-1.amazonaws.com/bia
docker tag bia:latest 235361825431.dkr.ecr.us-east-1.amazonaws.com/bia:latest
docker push 235361825431.dkr.ecr.usGIT/bia/build.bat-east-1.amazonaws.com/bia:latest