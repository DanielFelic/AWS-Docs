#Comandos CLI Amazon EBS

#Criar um volume do EBS
aws ec2 create-volume \
    --size 80 \
    --availability-zone us-east-1a \
    --volume-type gp2

#Descrever o volume que foi criado
aws ec2 describe-volumes \
    --volume-ids <VolumeId>

#Anexar volume do EBS a uma instância
aws ec2 attach-volume --volume-id
<VolumeId> --instance-id
<InstanceId> --device /dev/sdf

#Criar um snapshot de um volume do EBS
aws ec2 create-snapshot –-volume-id
<VolumeId>
--description "This is my root volume snapshot"

#Copiar uma snapshot
aws ec2 copy-snapshot –-region us-east-1
--source-region us-west-2
–-source-snapshot-id <SnapshotId>
--description "This is my copied snapshot"

#Prova de cópia para uma nova região
aws ec2 describe-snapshots
--snapshot-ids <SnapshotId>
--region us-west-2

#Restaurando um snapshot
aws ec2 create-volume –-size 80
–-availability-zone us-east-1a
--volume-type gp2
–-snapshot-id <SnapshotId>

#Verificar o status do volume EBS
aws ec2 describe-volume-status
--volume-ids <VolumeId>
