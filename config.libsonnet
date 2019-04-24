{
  _config+:: {
    // Selectors are inserted between {} in Prometheus queries.
    cephExporterSelector: 'job="rook-ceph-mgr"',

    // Number of Ceph Managers which are reporting metrics
    cephMgrCount: 3,
    // Number of Ceph Monitors
    cephMonCount: 3,
    // Number of Ceph OSDs
    cephOsdCount: 3,

    // Grafana url for Ceph-Cluster dashboard
    grafanaClusterDashboardURL: '',
    // Grafana url for OSD overview dashboard
    grafanaOSDDashboardURL: '',
    // Grafana url for Ceph-Cluster dashboard
    grafanaMonDashboardURL: '',
    // Grafana url for Ceph-Cluster dashboard
    grafanaMgrDashboardURL: '',

    // Duration to raise various Alerts
    cephNodeDownAlertTime: '30s',
    clusterStateAlertTime: '10m',
    clusterVersionAlertTime: '10m',
    clusterUtilizationAlertTime: '5m',
    monQuorumAlertTime: '15m',
    osdDataRebalanceAlertTime: '15s',
    osdDataRecoveryAlertTime: '2h',
    osdDataRecoveryInProgressAlertTime: '30s',
    osdDiskAlertTime: '1m',
    osdDownAlertTime: '5m',
    PGRepairAlertTime: '1h',

    // Constants
    storageType: 'ceph',

    // For links between grafana dashboards, you need to tell us if your grafana
    // servers under some non-root path.
    grafanaPrefix: '',

    // We build alerts for the presence of all these jobs.
    jobs: {
      CephExporter: $._config.cephExporterSelector,
    },
  },
}
