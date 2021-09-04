resource "aws_cloudwatch_event_rule" "daily_utc_5am" {
  name        = "daily_ami_backup"
  description = "Daily UTC05:00 ami_backup batch job."
  schedule_expression = var.schedule_exp

  depends_on = [aws_iam_role.iam_for_lambda]
}

resource "aws_cloudwatch_event_target" "target_ami_backup_lambda" {
  rule      = aws_cloudwatch_event_rule.daily_utc_5am.name
  arn       = aws_lambda_function.ami_backup_lambda.arn
}

variable "schedule_exp" {
  description = "The cloudwatch event schedule expression."
}
