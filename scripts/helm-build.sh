#!/bin/bash
# Get the chart version from Chart.yaml file
VERSION=$(yq -r '.version' ../chart/Chart.yaml)
# Download helm dependencies
helm dependency update ../chart
# Package the chart
helm package ../chart --destination ../packages --version $VERSION
# Update the index.yaml file in the packages directory
helm repo index ../packages/ --url https://genseb13011.github.io/activepieces-helm-chart/packages