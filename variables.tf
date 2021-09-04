variable "aws_profile" { 
  type        = string
  description = " AWS Profile which you would like to deploy insatance scheduler"
  default     = "test"
 }

variable "ec2_tag_key_env_var" {
    description = "The EC2's tag key that lambda looking up."
    default = "Backup"
}

variable "ec2_tag_value_env_var" {
    description = "The EC2's tag value that lambda looking up."
    default = "true"
}

variable "schedule_exp" {
    description = "The cloudwatch event schedule expression."
    default = "cron(00 05 * * ? *)"
}

variable "max_images" {
    description = "The maximun count of backup images"
    default = 5
}
