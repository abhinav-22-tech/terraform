resource "aws_instance" "ec2" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    associate_public_ip_address = "${var.ip_address}"

    root_block_device {
     volume_size = "${var.volume_size}"   
    }

    tags = {
        Name = "${var.name}-${var.environment}-${var.project}"  # name-project-environment
        Region = "${var.region}"
        Timestamp = "${replace("${timestamp()}",":","-")}"
        Project = "${var.project}"
        Environment = "${var.environment}"
    }
}

# Output Section <-- Print results to the screen 

output "region" { value = "${var.region}" }
output "ami" { value = "${aws_instance.ec2.*.ami}" }
output "instance_type" { value = "${aws_instance.ec2.*.instance_type}" }




