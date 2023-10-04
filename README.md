## Gitlab Auto Start

  Successful attempt to port a bash script to an Ansible role to run Gitlab in Docker:
- Start a container with Gitlab-CE + Runner
- creates a user
- gets a token for the API
- receives a token for the runner
- registers the runner
- pushes repositories located in directories (see default.yml)
- add/update CICD Variables (see default.yml)
- delete,adds a tags for launching CI/CD (see default.yml)


```
molecule converge
```

