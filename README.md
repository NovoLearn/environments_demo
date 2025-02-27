# environments_demo: Repo for making available configuration files and scripts for configuration of environments

* This repository is public to make it easy for downlaoding and testing configuration files and scripts.
* Nothing in this repository is remotely production ready.

## Ansible

### Run playbook

#### Run discrete playbook

Example: `ansible-playbook -i inventory.ini playbook.yml`

#### Run playbook with included tasks files

`ansible-playbook -i inventory.ini playbook_collection.yml`

```YAML
# playbook_collection.yml - EXAMPLE

- name: Ubuntu server general packages installations
  hosts: ubuntu_servers
  become: yes
  tasks:
    - name: Update apt cache
      apt:
        update_cache: yes
    - include_tasks: playbook_tasks_01.yml # Initial development environment management packages installation

- name: Install databases
  hosts: ubuntu_servers
  become: yes
  tasks:    
    - include_tasks: playbook_tasks_02.yml # Install standard databases
```

```YAML
# playbook_tasks_01.yml - EXAMPLE

# Initial development environment management packages installation
- name: Install pip
  apt:
    name: python3-pip
    state: latest
- name: Install pipx
  apt:
    name: pipx
    state: present
- name: Install python3-venv
  apt:
    name: python3-venv
    state: present
- name: Install poetry
  apt:
    name: python3-poetry
    state: latest
- name: Install uv using pipx
  command: pipx install uv
  become: false  # Become set to false to ensure not installed as root else permissions issues
```

```YAML
# playbook_tasks_02.yml - EXAMPLE

# Install standard databases
- name: Install SQLite
  apt:
    name: sqlite3
    state: latest
- name: Install redis
  apt:
    name: redis
    state: latest

```