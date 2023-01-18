# "guru-flow-logs-${data.aws_caller_identity.current.account_id}"
data "aws_s3_bucket" "flow_logs" {
  bucket = "guru-flow-logs-${data.aws_caller_identity.current.account_id}"
}

data "aws_caller_identity" "current" {}

resource "aws_flow_log" "log" {
  log_destination      = "${data.aws_s3_bucket.flow_logs.arn}/${var.vpc_name}"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.main.id
}
