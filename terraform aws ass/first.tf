# using s3 bucket and use count loop
# resource "aws_s3_bucket" "b" {
#   count =length(var.tag_name)
#   bucket =var.tag_name[count.index]
  
#   tags = {
#     Name        = "my bucket"
#     owner="divya"
#   }
# }
# output "tag_name" {
#   value = {for k,v in var.tag_name :k=>v}
# }

# using ec2instance and use for_each loop
resource "aws_instance" "my_ins"{
  for_each = var.tag_name2
    ami="ami-090fa75af13c156b4"
    instance_type = "var.ins_type"
    
    tags={
        name=each.value
        owner="divya67"
    }
}
output "tag_name2" {
  value = {for k,v in var.tag_name2 :k=>v}
}