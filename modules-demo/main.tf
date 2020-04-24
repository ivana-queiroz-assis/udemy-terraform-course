resource "aws_iam_user" "mainUser" {
  name= "mainUser" 
}

module "ec2modules" {
  source = "./ec2"  
  ec2name= "My first module"
}






