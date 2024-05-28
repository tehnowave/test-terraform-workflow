terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

provider "local" {
  # This provider doesn't need any configuration
}

resource "local_file" "hello_world" {
  content = <<-EOT
  #!/usr/bin/env python3
  def greet():
      print("${var.greeting}")
  
  if __name__ == "__main__":
      greet()
  EOT
  filename = var.file_path
}
