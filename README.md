# Xapo
XAPO Tech tests <br />
Task #1 is in Dockerfile in this repo, wrapped by setup.sh script. To run the task, copy the repository with git clone and run DOCKERFILE. All output will be available in your docker client console <br /> 
Task #2 is called task.tf and it sets up the DOCKERFILE [it's NOT a compete architecture] using FARGATE in AWS. <br />
Task #3 is called Jenkinsfile and it's a simple, basic Jenkinsfile for the docker depoloyment and push to the registry - the mentioned registry is **NOT** created, it's just a tempalte<br />
Task #4:
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resource "aws_vpc" "main" {

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cidr_block = "10.88.40.0/15 ( http://10.88.40.0/15 )"

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;instance_tenancy = "dedicated"

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tags = {

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name = "main"

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It's a simple terraform resource definition which is creating a VPC with the IP address pool 10.88.0.0-	10.89.255.255 . 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This  script should also create two subnets (private and public), route tables  for both and maybe a NAT gateway for public subnet. 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There is really no more to be said about this script, because it's just a textbook example form terraform site. The ' ( http://10.88.40.0/15 )' &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;part is strange, I think it should not be a part of the script. 
<br />
<br />
