module "local" {
  source   = "./local"
  count = 3
  name     = "file${count.index +1}.txt"
}