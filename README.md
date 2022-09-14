Script and k8s yaml to setup a renovate scanner in kubernetes (using `kind`).

Pre-requisites:

	On a Mac, `brew install kind` and `brew install kubectl`.

Install:

	./installrenovate.sh

When Finished:

	Use `kind delete cluster --name kind-renovate` to get rid of the cluster once you are done.

