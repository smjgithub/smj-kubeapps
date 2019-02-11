# Kubernetes ElasticHQ


ElasticHQ is deployed as a Deployment

### Key Features

* Works with 2.x, 5.x, 6.x and current versions of Elasticsearch.
* Monitor many clusters at once.
* Monitor Nodes, Indices, Shards, and general cluster metrics.
* Create and perform maintenance on Elasticsearch Indices.
* One-Click access to ES API and cat API endpoints.
* Copy mappings and reindex Indices.
* Well-documented REST API for extensibility.
* Real-time monitoring charts of important metrics.
* Diagnostics check-up helps alert to specific nodes having issues.
* Active project used by Fortune 100 companies around the world.
* Free and (Real) Open Source. ;-)

### Installation
For full installation and configuration instructions, see [Getting Started][get started]   
For further installation and configuration help, please read the docs: [ElasticHQ Documentation][docs]

[elasticsearch]: https://www.elastic.co/products/elasticsearch
[kibana]: https://www.elastic.co/products/kibana
[xPack]: https://www.elastic.co/products/x-pack
[setupCreds]: https://www.elastic.co/guide/en/x-pack/current/setting-up-authentication.html#reset-built-in-user-passwords
[configMap]: https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/
[secret]: https://kubernetes.io/docs/concepts/configuration/secret/
[statefulSet]: https://kubernetes.io/docs/concepts/workloads/controllers/statefulset
[initContainer]: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
[daemonSet]: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
[bootstrap]: https://www.elastic.co/guide/en/elasticsearch/reference/master/setup-configuration-memory.html#bootstrap-memory_lock
[![Analytics](https://kubernetes-site.appspot.com/UA-36037335-10/GitHub/cluster/addons/fluentd-elasticsearch/README.md?pixel)]()
[docs]: http://docs.elastichq.org/installation.html
[get started]: http://docs.elastichq.org/