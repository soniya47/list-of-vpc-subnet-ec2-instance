output "vpc_ids" {
        description = "Listout the vpc ids"
        value = data.aws_vpcs.vpc.id#rsesource.vpc.myvpc.id
}

output "vpc_count" {
        description = "number of vpcs created"
        value = data.aws_vpcs.vpc.ids
}

output "subnet_count" {
        description = "Number of subnets created"
        value = data.aws_subnet_ids.task
}

output "EC2_instance" {
        description = "Number of instances created"
        value = data.aws_instances.foo.ids
}
