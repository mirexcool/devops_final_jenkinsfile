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