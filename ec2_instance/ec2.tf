terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
      }
    }
}
provider "aws"{
    region = "ap-northeast-1"
    access_key = "AKIATLTODK5RNPYHXZFC"
    secret_key = "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"
}
resource "aws_instance" "linux-server"{
    ami = "ami-0094a5917d668fcd7"
    instance_type = "t2.micro"
}

output "public_ip"{
    value = aws_instance.demo-instance.public_ip
}