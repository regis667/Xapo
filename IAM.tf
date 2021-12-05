resource "aws_iam_role" "Xapo_role" {
  name = "Xapo_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
       "Principal": {
         "AWS": [
           "arn:aws:iam::AWS-account-ID:user/user-name-1", 
           "arn:aws:iam::AWS-account-ID:user/user-name-2"
  ]
}
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}
