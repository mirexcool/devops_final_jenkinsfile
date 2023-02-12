Link to presentation - https://docs.google.com/presentation/d/1o1YAVcYOdeAX_9OybjtPoBULJSgz5B4q6V-e5W4vhLw/edit?usp=sharing

In this repository located all Jenkinsfiles for CI/CD pipeline for CV_DevOps(7_L1) Final project.

---------------
Jenkinsfile_CI:
    This file is whole CI pipeline. Starts from clonning sources from github than build artifact and upload to S3 bucket.
    At the end will ask to procced to CD pipeline.

---------------
Jenkinsfile_CD:
    This file is a CD pipeline. Starts from downloading artifact from S3 bucket and deliver to all servers wich defined in hosts.txt on Ansible part(https://github.com/mirexcool/final_project_ansible).
    
---------------
Jenkinsfile_CDP:
    This file takes the latest artifact and deliver it to production stage (updating version).

###############

The source code for Java webapp located in this repository - https://github.com/mirexcool/devops_final_project

Terraform code located in this repositiry - https://github.com/mirexcool/devops_final_project_terraform

Ansible code located in this repositiry - https://github.com/mirexcool/final_project_ansible

###############

