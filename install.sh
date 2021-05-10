#!/bin/bash

pushd /devhub/fksdr
./velero.bin.v1 install --image ljtbbt/velero:v1 --provider aws --plugins velero/velero-plugin-for-aws:v1.0.0 --bucket velero --secret-file ./credentials-minio --use-volume-snapshots=false --use-restic --backup-location-config region=minio,s3ForcePathStyle=true,s3Url=http://10.124.48.118:9000,publicUrl=http://10.124.48.118:9000 2>&1 >/dev/null
popd
