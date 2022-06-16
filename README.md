# terraform-sentinel-gcp

A Hello World repo to familiarise Hashicorp Sentinel with GCP


## Prerequisites

- Install `terraform (>=1.2.2)`, `sentinel (>=0.18.11)`
- `gcloud auth application-default login`

## Steps

### Run Sentinel policies against Terraform plan

1. `terraform init`
2. `terraform plan -out=plans/tfplan`
3. `terraform show -json plans/tfplan > plans/tfplan.json`
4. ```sentinel apply -global mytfplan="{\"data\": `cat plans/tfplan.json`}"```. The file `sentinel.hcl` defines what are the policies to run.

For example, policy `sentinel-tfplan-policy/restrict-gce-machine-type.sentinel` defines what machine types are allowed for GCE. You can change the variable  `allowed_types` to include the allowed types you want.

### References

- Sentinal modules (common functions) are copied from https://github.com/hashicorp/terraform-sentinel-policies/tree/main/gcp. Made slight modifications to make it work with TF plan in json format.
