This Container DR project relies on features/enhancements offered in following projects:

1. Velero with PVC backup: https://github.com/futurewei-cloud/velero
2: FKSDR plugin for Velero: https://github.com/futurewei-cloud/velero-plugin-fksdr
3. Huawei CSI: https://github.com/futurewei-cloud/eSDK_K8S_Plugin


Note the CEPH based POC is obsolete and no longer maintained, please use dorado_poc for testing.

Test environment requires following hardware:

1. Two K8S clusters
2. Two enterprise storage system, such as Huawei OceanStor Dorado 

Procedure:

=========== manual procedure before running the scripts ================
1. Install CSI on both K8S clusters, each connect to their own 'on-site' Dorado.
2. Set up async-replication or hyper-metro active-active replication (recommended).
3. Test and make sure PVC and replication works.

=========== test script ============
1. set up primary cluster using dr_setup
2. create backup using dr_backup
3. kick off failover using dr_failover
4. restore app to DR site using dr_restore

Optionally you can use dr_test to automate the whole process, 
and use dr_cleanup to return to state right after step 1.

