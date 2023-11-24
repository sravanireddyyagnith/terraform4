
resource "aws_iam_user" "Admin" {
    name = "sravani2"
    tags = {
    description = "senior devops engineer"

}
}
resource "aws_iam_policy" "Admin" {
    name = "sravani2users"
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "1234567890",
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
EOF
}
  
resource "aws_iam_user_policy_attachment" "sravani2-policy" {
  user = aws_iam_user.Admin.name
  policy_arn = aws_iam_policy.Admin.arn
}

