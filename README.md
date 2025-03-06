# digitaltolk

App folder

docker build -t pythonapp .
docker run -d -p 80:80 pythonapp

Terraform folder 
an existin vpc, public subnet and sg
these things are retrieved in data of terraform
vpc id, sg id, subnet name

I have tested this code in region = "us-west-2"  
you need to change accoridingly in provider section
