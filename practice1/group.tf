resource "aws_iam_group" "Infosec" {
  name = "Infosec"
}

resource "aws_iam_group_membership" "team" {
  name = "team"

  users = [
    "${aws_iam_user.ksenia.name}",
     "${aws_iam_user.benny.name}",
      "${aws_iam_user.ilona.name}"
  ]

  group = "${aws_iam_group.Infosec.name}"
}

resource "aws_iam_role_policy_attachment" "practice-attach" {
  role       = "${aws_iam_role.practice-role.name}"
  policy_arn = "${aws_iam_policy.practice-policy11.arn}"
}

resource "aws_iam_group_policy_attachment" "practice-attach" {
  group       = "${aws_iam_group.Infosec.name}"
  policy_arn = "${aws_iam_policy.practice-policy11.arn}"
}