@echo off
set app_path="D:\AWS\GIT\bia\client\build"
rd /s /q %app_path%
set "REACT_APP_API_URL=https://d2xe4xkrctbq4d.cloudfront.net" && set "SKIP_PREFLIGHT_CHECK=true" && call npm run build --prefix client
echo "Fazendo deploy dos assets"
aws s3 sync %app_path% s3://s3-bia-private-lab --exclude "index.html" --profile bruno
echo "Deploy Finalizado"
echo "Fazendo deploy do index.html"
aws s3 sync %app_path% s3://s3-bia-private-lab --exclude "*" --include "index.html" --profile bruno
echo "Deploy Finalizado"

