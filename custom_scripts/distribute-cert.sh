for instance in kubernetes-ha-master-1 kubernetes-ha-master-2; do
  scp -o StrictHostKeyChecking=no ca.crt ca.key kube-apiserver.key kube-apiserver.crt \
    apiserver-kubelet-client.crt apiserver-kubelet-client.key \
    service-account.key service-account.crt \
    etcd-server.key etcd-server.crt \
    kube-controller-manager.key kube-controller-manager.crt \
    kube-scheduler.key kube-scheduler.crt \
    ${instance}:~/
done

for instance in kubernetes-ha-worker-1 kubernetes-ha-worker-2 ; do
  scp ca.crt kube-proxy.crt kube-proxy.key ${instance}:~/
done