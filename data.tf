## VPC ##

 data "aws_vpcs" "vpc" {
 }

 data "aws_vpc" "vpc_count" {
   count = length(data.aws_vpcs.vpc.ids)
   id    = tolist(data.aws_vpcs.vpc.ids)[count.index]
 }

data "aws_subnet_ids" "task" {
  for_each = data.aws_vpcs.vpc.ids
  vpc_id = each.value

}

data "aws_instances" "foo" {

  filter {
    name = "instance-state-name"
    values = ["running"]
  }

}

