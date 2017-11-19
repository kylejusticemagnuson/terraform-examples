resource "aws_lambda_function" "hello_world" {
  filename         = "${var.lambda_deployment}"
  function_name    = "hello_world"
  role             = "${aws_iam_role.iam_for_lambda.arn}"
  handler          = "handler.hello_world"
  runtime          = "python2.7"
}
