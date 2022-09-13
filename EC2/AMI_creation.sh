# Criação de AMI
aws ec2 create-image –-instance-id i-1234567890abcdef0 
–-name "Our_Base_Image-2018-09-17"

# Copiar AMIs para diferentes regiões da AWS
aws ec2 copy-image –-source-image-id ami-1234567890abcdef0 
–-source-region us-east-1 –-region ap-northeast-1 –-name "My server"
