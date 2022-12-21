#!/bin/bash

printf "apiVersion: ${CHART_API_VERSION}\n" > .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "description: Chart for deployment\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "name: checkr-embed-patterns\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "version: 0.1.0\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "dependencies:\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "  - name: $CHART_NAME\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "    version: $CHART_VERSION\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "    repository: $CHART_REPOSITORY\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "    alias: $CHART_ALIAS\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml

printf "microservice:\n" > .gitops/helm/checkr-embed-patterns/production.yaml
printf "  environment:production\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "  nameOverride: checkr-embed-patterns\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "  deployments:\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "    web:\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "      command: ['node', 'app.js']\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "      replicaCount: $REPLICA_COUNT\n\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "  ingresses:\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "    web:\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "      type: $INGRESS_TYPE\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "      hosts: $INGRESS_TYPE\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "        - host: $INGRESS_HOSTS\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "          serviceName: web\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "          servicePort: 80\n\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "  services:\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "    web:\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "      ports:\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "        - port: 80\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "        - targetPort: 5000\n" >> .gitops/helm/checkr-embed-patterns/production.yaml
printf "      selector:web\n" >> .gitops/helm/checkr-embed-patterns/production.yaml