Volume setup:

In the current directory run the followings:

```sh
mkdir -p /tmp/demo/k8s_workspace
kubectl apply -f k8s_volume.yaml
```

Demo setup:

```sh
git clone https://github.com/mlcommons/mlcube_examples.git
cp -r mlcube_examples/emdenoise/workspace/parameters /tmp/demo/k8s_workspace/
cp -r platforms mlcube_examples/
cp -r run mlcube_examples/
```

Run:

```sh
mlcube_k8s run --mlcube=. --platform=platforms/k8s.yaml --task=run/download.k8s.yaml
mlcube_k8s run --mlcube=. --platform=platforms/k8s.yaml --task=run/preprocess.k8s.yaml
mlcube_k8s run --mlcube=. --platform=platforms/k8s.yaml --task=run/train.k8s.yaml
mlcube_k8s run --mlcube=. --platform=platforms/k8s.yaml --task=run/test.k8s.yaml
```
