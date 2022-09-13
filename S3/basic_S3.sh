# Comandos CLI Amazon S3

# Crie um novo bucket
aws s3 mb s3://mybucket

# Liste todos os buckets na conta da AWS
aws s3 ls

# Copie um arquivo local para o Amazon S3
aws s3 cp file.txt s3://mybucket/myprefix/file.txt

# Sincronize objetos em um bucket e prefixo especificados para o diretório local atual
aws s3 sync s3://mybucket/myprefix/

# Exclua um objeto de um bucket
aws s3 rm s3://mybucket/myprefix/file.txt

# Criar um objeto com uma classe de armazenamento específica
aws s3 cp file.txt s3://mybucket/myprefix/file.txt --storage-class INTELLIGENT_TIERING