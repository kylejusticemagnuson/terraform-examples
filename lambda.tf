resource "aws_lambda_function" "test_lambda" {
  filename         = "${var.lambda_deployment}"
  function_name    = "hello_world"
  role             = "${aws_iam_role.iam_for_lambda.arn}"
  handler          = "handler.py"
  runtime          = "python2.7"
}
