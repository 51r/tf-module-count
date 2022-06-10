# Terraform count module

This repo contains Terraform configuration with 1 module which is used with [count](https://www.terraform.io/language/meta-arguments/count) argument.

It creates the identical files based on the number set in `count` argument by using `local` provider.

# Purpose of count

The usage of count argument is to create identical resources from a single module without specifying them in different blocks.
Each resource created by the resource block with count will have a different incrementing value for `count.index` - starting from zero, that's why I have added `+1` to the `count.index +1`, so the files will be 1,2,3...

The sample in the repo uses **local** module. 

# Prerequisite
You need to have [Terraform CLI >0.13](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed on you workstation. 

# How to use the repo

* Clone this repo locally to a folder of your choice
```
git clone https://github.com/51r/tf-module-count.git
```

* Make sure you are in the main directory of the repo:
```
cd tf-module-count
```

* initialize Terraform  
```
terraform init
```

* Check the plan in order to see the changes which terraform is going to made.
```
terraform plan
```

* Apply the plan which terraform is going to execute based on our configuration (main.tf)
```
terraform apply
```
