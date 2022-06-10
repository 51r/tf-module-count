variable "name" {
    type = string
  
}

resource "local_file" "sample" {
    filename = var.name
    content = "This is a random generated file"
  
}