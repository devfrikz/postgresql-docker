#!/bin/bash
set -e

# Instalar aws-cli, tar y gzip
yum install -y unzip tar gzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Imprimir el contenido de PGDATA para depuración
echo "PGDATA is set to: $PGDATA"

timestamp=$(date +%s)
mkdir -p /backups
cd /backups
filename="${timestamp}-pgdata.tar.gz"
echo "Backing up PostgreSQL data into backups/${filename}..."
tar czf "${filename}" -C "$PGDATA" .

# Subir el backup a AWS S3
aws s3 cp "${filename}" "s3://undergrub/backupspostgresql/${filename}"

echo "Backup completed and uploaded to AWS S3."
