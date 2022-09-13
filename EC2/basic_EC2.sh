# Comandos EC2 para Amazon CLI

# Criar instância EC2
aws ec2 run-instances 
--image-id ami-0123456789012345 
--instance-type t2.micro 
--key-name mykeypair 
--security-group-ids sg-0123456789012345 
--subnet-id subnet-0123456789012345 
--iam-instance-profile Name=EC2Admin 
--user-data file://UserData.txt
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=WebServer}]'

# Encerrar instância EC2
aws ec2 stop-instances -–instance-id i-1234567890abcdef0 --output json

# Decrever todas instâncias EC2 
aws ec2 describe-instances

# Option --query
# Usada para limitar os resultados retornados
# Os resultados são filtrados no lado do cliente.

# Mostrar apenas a primeira instância do Amazon EC2 na lista
aws ec2 describe-instances –-query 'Reservations[0].Instances[0]'

# Mostrar o estado nomeado da primeira instância
aws ec2 describe-instances --query 'Reservations[0].Instances[0].State.Name'

# Mostrar o estado nomeado de todas as instâncias usando o curinga (*)
aws ec2 describe-instances --query 'Reservations[*].Instances[*].State.Name'

# Option --filter
# Usada para restringir o conjunto de resultados filtrado no lado do servidor

# Mostrar apenas instâncias do Microsoft Windows
aws ec2 describe-instances –-filter "Name=platform,Values=windows"

# Encontra os instanceIds de todas as instâncias na conta
# Exibe apenas as instâncias t2.micro e t2.small
aws ec2 describe-instances \ 
--query "Reservations[*].Instances[*].InstanceId" \ 
–-filter "Name=instance-type,Values=t2.micro,t2.small"

# Option --dry-run
# Verifica se as permissões necessárias para a ação estão presentes sem realmente fazer a solicitação
aws ec2 run-instances --image-id ami-1a2b3c4d 
--count 1 
--instance-type c5.large --key-name MyKeyPair 
--security-groups MySecurityGroup --dry-run

#Transição para um novo tamanho de instância
aws ec2 modify-instance-attribute --instance-type m5.xlarge

# Criar volume EBS
aws ec2 create-volume

# Criar VPC
aws ec2 create-vpc