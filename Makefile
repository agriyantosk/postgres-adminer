create:
	kind create cluster --name postgres-adminer --config kind-config.yaml
	kubectl create namespace postgres-adminer

start:
	helm install postgres-adminer postgres-adminer/ -n postgres-adminer

upgrade:
	helm upgrade postgres-adminer postgres-adminer/ -n postgres-adminer

run:
	kubectl port-forward svc/adminer 8181:8080 -n postgres-adminer

delete:
	kind delete cluster --name postgres-adminer

info:
	kubectl cluster-info
	kubectl get nodes -o wide