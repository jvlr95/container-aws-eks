resource "helm_release" "prometheus" {

  name             = "prometheus"
  chart            = "kube-prometheus-stack"
  repository       = "https://prometheus-community.github.io/helm-charts"
  namespace        = "prometheus"
  create_namespace = true

  version = "80.2.0"
  force_update = true

  values = [
    "${file("./files/prometheus/values.yaml")}"
  ]

  depends_on = [
    aws_eks_cluster.main,
    helm_release.karpenter
  ]
}
