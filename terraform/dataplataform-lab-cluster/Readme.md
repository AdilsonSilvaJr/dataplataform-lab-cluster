## Dataplataform lab cluster
To create a Kubernetes cluster using the kind command with the provided configuration using terraform, you can use the following command:

```
cd dataplataform-lab-cluster

terraform init

terraform apply -auto-approve
```

## Destroy the cluster
To destroy the Kubernetes cluster, you can use the following command:

```
cd dataplataform-lab-cluster

terraform destroy -auto-approve
```
