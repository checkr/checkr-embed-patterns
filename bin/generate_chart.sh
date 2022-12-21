#!/bin/bash

printf "apiVersion: ${CHART_API_VERSION}\n" > .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "description: Chart for deployment\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "name: checkr-embed-patterns\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "dependencies:\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "  - name: $CHART_NAME\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "    version: $CHART_VERSION\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "    repository: $CHART_REPOSITORY\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml
printf "    alias: $CHART_ALIAS\n" >> .gitops/helm/checkr-embed-patterns/Chart.yaml

ls .gitops/helm/checkr-embed-patterns/

cat .gitops/helm/checkr-embed-patterns/Chart.yaml