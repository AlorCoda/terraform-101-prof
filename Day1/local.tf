resource "local_file" "trial" {
    filename = "C:/Users/SupaSoft IT/Documents/Terraform/Day1/Devops.txt"
    content = "Benji is an expert in Terraform. It's an amazing IaC tool and interesting to learn." 
}

resource "local_file" "project" {
    filename = "C:/Users/SupaSoft IT/Documents/Terraform/Day1/school.txt"
    content = "We are the best among the rest, great NSUTEC." 
}