for instance in kubernetes-ha-worker-1 kubernetes-ha-worker-2; do
    scp kube-proxy.kubeconfig ${instance}:~/
done

for instance in kubernetes-ha-master-1 kubernetes-ha-master-2; do
    scp admin.kubeconfig kube-controller-manager.kubeconfig kube-scheduler.kubeconfig ${instance}:~/
done
