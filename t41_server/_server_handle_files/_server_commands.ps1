# manifest: startProject
cd "g:\Projects\Flutter\serverpod\t41\t41_flutter";
cd "g:\Projects\Flutter\serverpod\t41\t41_flutter"; dart run build_runner build --delete-conflicting-outputs

REGISTRY_DOMAIN
REGISTRY_USER
REGISTRY_PASSWORD
REGISTRY_EMAIL
REDIS_PASSWORD
DB_PASSWORD
SERVICE_SECRET
KUBE_CONFIG

# serverpod
cd "g:\Projects\Flutter\serverpod\t41\t41_server";
docker compose down -v
docker volume rm t41_server_t41_data

     
cd "g:\Projects\Flutter\serverpod\t41\t41_server";
docker compose up -d
serverpod create-migration --experimental-features=all --force
serverpod generate --experimental-features=all
dart bin/main.dart --apply-migrations

cd "g:\Projects\Flutter\serverpod\t41\t41_server"; serverpod create-migration --experimental-features=all
cd "g:\Projects\Flutter\serverpod\t41\t41_server"; serverpod generate --experimental-features=all


#kubernaties
# 1. Установить nginx ingress
# 2. Установить дополнение cert-manager
# Секрет для Docker Registry
kubectl apply -f k8s_1/

# проброс порта для бд
Start-Job -ScriptBlock { kubectl port-forward pod/pg-proxy-pod 54321:5432 }
kubectl port-forward pod/pg-proxy-pod 54321:5432


[Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes('пароль'))

# Проверим поды
kubectl get pods
kubectl get pods -w

# Проверим сервисы
kubectl get svc
kubectl get svc t41-server-service -o yaml 

# логи приложения
kubectl logs -f -l app=t41-server

#kubectl logs serverpod-migration-job-ts3-6llg9

# Тестируем endpoint для получения списка TestData
Invoke-WebRequest -Uri "https://api5.my-points.ru/" -Method POST -ContentType "application/json" -Body '{"endpoint":"testData","method":"listTestDatas","params":{}}'

# Проверка доступности напрямую
Invoke-WebRequest -Uri "https://api5.my-points.ru/" -Method GET

# Проверим детали Ingress:
bashkubectl describe ingress sync2-server-ingress

docker login dbe81550-wise-chickadee.registry.twcstorage.ru
docker build -t dbe81550-wise-chickadee.registry.twcstorage.ru/t41-server:latest -f Dockerfile.prod .
docker push dbe81550-wise-chickadee.registry.twcstorage.ru/t41-server:latest

kubectl apply -f k8s/

kubectl apply -f k8s/configmap.yaml
kubectl apply -f k8s/job.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml
kubectl apply -f k8s/secret.yaml


#delete project
kubectl delete -f k8s/

kubectl delete service t41-server-service
kubectl delete ingress t41-server-ingress
kubectl delete configmap serverpod-config-t41
kubectl delete job serverpod-migration-job-t41
kubectl delete secret serverpod-secrets-t41
kubectl delete deployment t41-server-deployment

#restart deployment
kubectl rollout restart deployment t41-server-deployment


