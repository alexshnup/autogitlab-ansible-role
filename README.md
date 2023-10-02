## Gitlab Auto Start

  Successful attempt to port a bash script to an Ansible role to run Gitlab in Docker:
- picks up a container with Gitlab
- creates a user
- gets a token for the API
- receives a token for the runner
- registers the runner
- pushes two repositories located in the frontend and frontend_build directories, which should be one level higher
- adds a tag for launching CI/CD


To test the role using molecule (for now only the converge script), you need to run the molecule_init.sh script, it will add everything necessary for Ansible-Molecule to work inside DIND, download all the necessary images to the molecule/files/.. directory and containers that will be launched inside DIND, they will not pump out heavy Gitlab from the Internet every time the molecule is launched

```
molecule converge
```

## TODO
We need to add idempotency to the last tasks... (+ more checks)