# Terraform crash caused by empty list schema in BQ table

[Issue](https://github.com/hashicorp/terraform-provider-google/issues/7302) has been filed. Workaround, or, rather, the right way to provide an empty schema is [to pass nothing](https://github.com/sadasystems/terraform-google-bq-table-crash/blob/feature/workaround/main.tf#L13), rather than an empty line (which fails on `terraform plan`) or an empty list (which crashes Terraform).
