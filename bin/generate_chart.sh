#!/bin/bash

printf "apiVersion: ${CHART_API_VERSION}\n" > .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "description: Chart for deployment\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "name: checkr-embed-patterns\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "version: 0.1.0\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "dependencies:\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "- name: $CHART_NAME\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "  version: $CHART_VERSION\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "  repository: $CHART_REPOSITORY\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "  alias: $CHART_ALIAS\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml

printf "microservice:\n" > .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "  environment: sandbox\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "  nameOverride: checkr-embed-patterns\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "  deployments:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "    web:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "      command: ['node', 'app.js']\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "      replicaCount: $REPLICA_COUNT\n\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "  ingresses:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "    web:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "      type: $INGRESS_TYPE\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "      hosts:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "        - host: $INGRESS_HOSTS\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "          serviceName: web\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "          servicePort: 80\n\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "  services:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "    web:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "      ports:\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "        - port: 80\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "          targetPort: 5000\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
printf "      selector: web\n" >> .gitops/helm/checkr-embed-patterns/sandbox_us.yaml
