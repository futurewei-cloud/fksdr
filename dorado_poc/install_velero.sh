#!/bin/bash

. dr.cfg

../bin/velero.bin install --image ljtbbt/velero:v1 --provider aws --plugins velero/velero-plugin-for-aws:v1.0.0 --bucket velero --secret-file ./credentials-minio --use-volume-snapshots=false --use-restic --backup-location-config region=minio,s3ForcePathStyle=true,s3Url=${MINIO_URL},publicUrl=${MINIO_URL} 2>&1 >/dev/null
popd
