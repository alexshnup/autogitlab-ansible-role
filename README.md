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


```bash
molecule-init.sh
molecule converge
```

To check the role using a molecule (for now only the convergence script), you need to run the molecule_init.sh script, it will add everything necessary for Ansible-Molecule to work inside DIND, load all the necessary images into molecule/files/
which will run inside DIND, they will not download heavy Gitlab from the Internet every time the molecule is launched

