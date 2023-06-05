# Installation guide

The entire project is proposed to be built up in AWS.

The details of induvidual units is mentioned in the inside of every folder of install.

## pre-requesites.
The Installation happens directly from the machine where the deployment is started.
### The following are necessary prerequisites for installation
1. ansible
1. AWS CLI
1. terraform
1. python version > 3.9

### Summary of Resources
|    |    |    |    |    |    |
|----|----|----|----|----|----|
|Sr. | Type of Resource | Company | Purpose | Details | Specification |
|1. | EC2 | AWS | compilation of C++ resources | Recommended to be a big machine<br>Required one time to create AMI <br> AMI can be taken and then the ec2 instnace can be destroyed. | CPU : 32 Core<br>RAM : 64 GB <br> type : spot. <br> Disk : 15 GB |
|2. | EC2 | AWS | compilation of C++ resources | Recommended to be a medium sized machine<br>Required only during compilation<br>AMI used from above | CPU : 8 Core<br>RAM : 32 GB <br> type : spot. <br> Disk : 15 GB |
|3. | EC2 | AWS | compilation of C++ resources | Recommended to be a medium sized machine<br>Required only during compilation<br>AMI used from above | CPU : 8 Core<br>RAM : 32 GB <br> type : spot. <br> Disk : 15 GB |