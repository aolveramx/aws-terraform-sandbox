# AWS sandbox with terraform

This template is for developers who want to test some IaC before going into the main repo

# Steps 

1.	Clone repo
2.	Rename file “terraform.tfvars.example” to “terraform.tfvars”
3.	If you’re in windows, in the file “terraform.tfvars” change “yourUsername” for your real windows username for lines 1 & 2.
4.	Open AWS config file stored in your machine at "C:/Users/yourUsername/.aws/config", copy profile name and paste it into “terraform.tfvars” line 3.
5.	Saver and close file “terraform.tfvars”.
6.	Open VSC terminal or any terminal you use,  download configuration from terraform:
terraform init
7.	Final test:
terraform plan

If everything went well, you will see a confirmation to create an S3 bucket named “sample_s3_bucket”, enter “yes” and hit “enter”.
8.	Now check in your AWS console for the S3 bucket you have created.
9.	To remove this test, enter command:
terraform destroy

Congratulation you are set to start working with terraform in AWS sandbox.
