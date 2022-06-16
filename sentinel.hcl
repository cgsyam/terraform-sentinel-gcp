module "tfplan-functions" {
    source = "./sentinel-common-functions/tfplan-functions/tfplan-functions.sentinel"

}

policy "restrict-gce-machine-type" {
    source = "./sentinel-tfplan-policy/restrict-gce-machine-type.sentinel"
    enforcement_level = "advisory"
}
