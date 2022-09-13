#Comandos CLI Amazon DLM

# O comando cria a função do AWS Identity and Access Management (IAM)
# necessária para que o Amazon DLM funcione
aws dlm create-default-role

# Gerenciar volumes do EBS com uma política de ciclo de vida
# Comando para a criação da política
aws dlm create-lifecycle-policy
--description "My backup policy"
--state ENABLED --execution-role-arn
arn:aws:iam::197757065544:role/AWSDataLife
cycleManagerDefaultRole
--policy-details file://policyDetails.json

#Exibir a política de ciclo de vida
aws dlm get-lifecycle-policy
--policy-id <PolicyId>