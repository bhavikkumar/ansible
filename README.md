# ansible
A docker image to execute ansible playbooks

## Usage
To run a playbook, it is best to mount the appropriate volume to `/home/ansible` so that it is available for ansible.
```
docker run -v ${PWD}:/home/ansible bhavikk/ansible:latest ansible-playbook -i production site.yml
```
