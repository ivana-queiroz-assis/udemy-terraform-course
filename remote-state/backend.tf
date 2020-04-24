terraform {
    backend "s3"{
        bucket = "ivana-s3-backend-course"
        key = "terraform/tfstate.tfstate"
        access_key ="AKIA4DELQOOZCKHCYT33"
        secret_key="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"
        region="us-east-1"
    }
}