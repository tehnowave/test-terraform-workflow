provider "local" {

}

resource "local_file" "hello_world" {
  content  = <<-EOT
  #!/usr/bin/env python3
  def greet():
      print("${var.greeting}")
  
  if __name__ == "__main__":
      greet()
  EOT
  filename = "${path.module}/hello_world.py"
} 
