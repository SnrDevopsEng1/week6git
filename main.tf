# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "gitlab_test" {
  name              = "custom_gitlab"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  # key_pair_name     = "some_key_name"
  user_data = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is my first Terraform project</h1>' | sudo tee /var/www/html/index.html && sudo useradd u5bt2024 && sudo groupadd cloudstream"
  tags = {
    Team      = "Devops"
    Env       = "dev"
    create_by = "terraform"
  }
}