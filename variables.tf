variable "greeting" {
  description = "The greeting to use in the hello world script"
  type        = string
  default     = "Hello world"
}

variable "file_path" {
  description = "The path where the file will be created"
  type        = string
  default     = "hello_world.py"
}
