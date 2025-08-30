#!/bin/bash

## Node Selector
kubectl label node kind-worker node-role=worker1
kubectl label node kind-worker2 node-role=worker2
kubectl label node kind-worker3 node-role=worker3
kubectl label node kind-worker4 node-role=worker4



## Node Affinity
### DoesNotExist
kubectl label node kind-worker deprecated=dummy
kubectl label node kind-worker2 deprecated=dummy
kubectl label node kind-worker3 deprecated=dummy

### Exists
kubectl label node kind-worker3 gpu=dummy

### Gt
kubectl label node kind-worker cpu-core=2
kubectl label node kind-worker2 cpu-core=1
kubectl label node kind-worker3 cpu-core=3
kubectl label node kind-worker4 cpu-core=4

### Lt
kubectl label node kind-worker memory-size=8
kubectl label node kind-worker2 memory-size=4
kubectl label node kind-worker3 memory-size=16
kubectl label node kind-worker4 memory-size=32




## Topology
kubectl label node kind-worker topology.kubernetes.io/zone=zone-a
kubectl label node kind-worker2 topology.kubernetes.io/zone=zone-b
kubectl label node kind-worker3 topology.kubernetes.io/zone=zone-b
kubectl label node kind-worker4 topology.kubernetes.io/zone=zone-c

