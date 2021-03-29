module "child1" {
  source = "git::ssh://git@github.com/AhrazA/terraform-vercheck-test-child.git?ref=v0.2.0"

  name = "child1"
}

module "child2" {
  source = "git::ssh://git@github.com/AhrazA/terraform-vercheck-test-child.git?ref=v1.0.0"

  name = "child2"
}
