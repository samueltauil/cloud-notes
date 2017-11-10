## Running OCP with persistent profile config

- Get the script oc-cluster:

https://github.com/openshift-evangelists/oc-cluster-wrapper

- Install socat:

```
brew install socat
```

- Execute the oc-cluster:

```
./oc-cluster up --image=registry.access.redhat.com/openshift3/ose --version=v3.3.0.35-1 --metrics=true --skip-registry-check
```

- Enable tech [preview features](https://docs.openshift.com/container-platform/3.3/install_config/web_console_customization.html#web-console-enable-tech-preview-feature) (like pipelines) editing
`~/.oc/profiles/default/config/master/master-config.yaml` and add:

```
assetConfig:
  ...
extensionScripts:
 - /var/lib/origin/openshift.local.config/master/tech-preview.js
```
