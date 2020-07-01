## Kube Canary demo

Tested with Docker for Mac + [nginx ingress](https://kubernetes.github.io/ingress-nginx/deploy/#docker-for-mac)

To test

- Ensure you are in the Docker Desktop context and default namespace
- `k config set-context docker-desktop --namespace=default`
- Start it up with Skaffold: `skaffold dev`
- Visit `http://localhost`
- Subsequent refreshes should show you Variation A and Variation B
- You can control the weighting in `kustomize/services/variation-b/ingress.yaml` by changing `nginx.ingress.kubernetes.io/canary-weight` annotation to some percentage
