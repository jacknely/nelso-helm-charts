# nelso-helm-charts
Collection of helm charts from nelso

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add nelso https://jacknely.github.io/nelso-helm-charts

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
nelso` to see the charts.

To install the nelso-helm-charts chart:

    helm install chart nelso/chart-name

To uninstall the chart:

    helm delete chart
