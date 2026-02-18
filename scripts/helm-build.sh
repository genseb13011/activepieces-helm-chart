VERSION=$(yq -r '.version' ../chart/Chart.yaml)
echo $VERSION
helm dependency update ../chart
helm package ../chart --destination ../packages --version $VERSION