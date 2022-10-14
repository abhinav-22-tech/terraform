resource "aws_instance" "ec2" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    # count = "${var.count}"
    associate_public_ip_address = "${var.ip_address}"

    root_block_device {
     volume_size = "${var.volume_size}"   
    }

    tags = {
        Name = "${var.name}-${var.environment}-${var.project}"  # name-project-environment
        Region = "${var.region}"
        # Count = "${var.count}"
        Timestamp = "${replace("${timestamp()}",":","-")}"
        Project = "${var.project}"
        Environment = "${var.environment}"
    }
}

resource "aws_ebs_volume" "new_volume" {
  availability_zone = "${var.region}"
  size = 30

  tags = {
    Name = "${var.name}-${var.environment}-${var.project}"  # name-project-environment
  }
  depends_on = [aws_instance.ec2]
}

resource "aws_volume_attachment" "new_attach" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.new_volume.id
  instance_id = aws_instance.ec2.id
}

# Output Section <-- Print results to the screen 

output "region" { value = "${var.region}" }
output "ami" { value = "${aws_instance.ec2.*.ami}" }
output "instance_type" { value = "${aws_instance.ec2.*.instance_type}" }




