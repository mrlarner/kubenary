## Kube Canary demo

Tested with Docker for Mac + [nginx ingress](https://kubernetes.github.io/ingress-nginx/deploy/#docker-for-mac)

To test

- Ensure you have a Kube cluster setup in DFM or whatever, and are in the correct context and namespace, eg `k config set-context docker-desktop --namespace=default`
- Start it up with Skaffold: `skaffold dev`
- Visit `http://localhost`
- You should see `Variation A`
- Subsequent refreshes should show you only Variation A
- Bring the Canary up to 50% by applying Variation B's canary-50 overlay `kustomize build kustomize/services/variation-b/canary-50 | k apply --context=docker-desktop -f -`
- Subsequent refreshes should show you both Variation A and Variation B. Note there is no session affinity so each refresh is a roll of the die
