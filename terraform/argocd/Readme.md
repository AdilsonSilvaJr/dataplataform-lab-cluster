# terraform commands
```
terraform init
terraform apply -auto-approve
```

# argocd get secrets
```
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d
```

# argocd port-forward
```
kubectl port-forward svc/argocd-server -n argocd 8081:443
```

# argocd login
username: admin
password: #get password from argocd get secrets

# terraform destroy
```
terraform destroy -auto-approve
```