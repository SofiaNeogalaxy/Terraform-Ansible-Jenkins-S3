# Terraform-Ansible-Jenkins-S3
This is a Jenkins pipeline that uses Terraform and Ansible to provision AWS resources. The pipeline creates an S3 bucket, initializes and applies Terraform configuration for both dev and prod environments, and deploys infrastructure using Ansible.

# Usage

1. Clone the repository to your local machine.
2. Modify the dev.tfvars and prod.tfvars files in the repository to match your desired configurations.
3. Open Jenkins and create a new pipeline job.
4. Configure the pipeline job to use the Jenkinsfile in the repository as the pipeline script.
5. Build the pipeline job and wait for the job to complete.
