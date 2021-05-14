#!/bin/bash
#
#                             MIT License
#
# Copyright (c) 2021 Futurewei Technologies Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#



pushd /devhub/fksdr
./velero.bin.v1 install --image ljtbbt/velero:v1 --provider aws --plugins velero/velero-plugin-for-aws:v1.0.0 --bucket velero --secret-file ./credentials-minio --use-volume-snapshots=false --use-restic --backup-location-config region=minio,s3ForcePathStyle=true,s3Url=http://10.124.48.118:9000,publicUrl=http://10.124.48.118:9000 2>&1 >/dev/null
popd
