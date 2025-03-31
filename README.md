grr config set grafana.url https://grafana.tp.pymnts.exchange
grr config set grafana.token glsa_tokenabc
grr config set output-format yaml
grr config get-contexts
grr config get

https://grafana.github.io/grizzly/#resource-migration

List all supported resource kind:
```
$ grr providers      
API VERSION                     KIND
grizzly.grafana.com/v1alpha1    Datasource
grizzly.grafana.com/v1alpha1    DashboardFolder
grizzly.grafana.com/v1alpha1    LibraryElement
grizzly.grafana.com/v1alpha1    Dashboard
grizzly.grafana.com/v1alpha1    AlertRuleGroup
grizzly.grafana.com/v1alpha1    AlertNotificationPolicy
grizzly.grafana.com/v1alpha1    AlertContactPoint
grizzly.grafana.com/v1alpha1    AlertNotificationTemplate
grizzly.grafana.com/v1alpha1    PrometheusRuleGroup
grizzly.grafana.com/v1alpha1    SyntheticMonitoringCheck
```

Export resources:
```
$ grafana-export.sh
```

Import resources:
```
$ grafana-import.sh
```