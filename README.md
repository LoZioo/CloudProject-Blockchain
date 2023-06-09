# CloudProject-Blockchain
Cloud project Blockchain section repository.

## Prepare your envroiment
1. Install Ansible as a python dependency:
	```
	pip install -r requirements.txt
	```
2. Then:
	```
	source add-scripts-to-path.sh
	```
3. Edit `config.sh` and configure it to match your infrastructure.
4. Generate your Ansible's `hosts.ini` by running `compile-ansible-hosts.sh`.
5. Run every Ansible playbook under `playbooks` by running `playbook-run-all.sh`.
6. To build the Docker images, refer to the [CloudProject-Edge](https://github.com/LoZioo/CloudProject-Edge) repository.

## Manually compile and test the Typescript code
1. `cd` into the `services` folder and then in the interested image folder: you will find the Typescript source code under the `src` folder.
2. Install the project requirements running `npm -i`; the project is developed under node version `lts-hydrogen` (v18.16.0), so you have to install node first.
3. If you want a better VS Code experience, install the [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) extension.
4. Run `npm run lint` to manually call ESLint.
5. Run `npm run build` to compile the TS code in JS code; you will find the build under the `build` folder.
6. Run `npm run run` to build and run the code.

## Repo structure
- [scripts](scripts): ssh and sftp bash scripts.
- [playbooks](playbooks): Ansible provision playbooks.
- [services](services): Docker images and the corresponding source code.
- [data](data): here you will find application specific runtime files (ex.: the `hash.db.json` file from the blockchain application).
- [add-scripts-to-path.sh](add-scripts-to-path.sh): add every script under [scripts](scripts) to `$PATH`.
- [config.sh](config.sh): configure it to match your infrastructure.
- [compile-ansible-hosts.sh](compile-ansible-hosts.sh): generate the `hosts.ini` file.
- [playbook-run.sh](playbook-run.sh): run the specified Ansible playbook inside the [playbooks](playbooks) folder.
- [playbook-run-all.sh](playbook-run-all.sh): automatically run every Ansible playbook inside the [playbooks](playbooks) folder (prefixed order).
- [docker-compose.yml](docker-compose.yml): bring up the application by using the `docker-compose` plugin.
- [requirements.txt](requirements.txt): Ansible python dependencies.

## Playbooks for provisioning
- `sync`: sync via rsync the entire local repository folder, including secrets, literally every file you have added in that folder so far, so be careful!
- `blockchain`: docker pull the blockckain image.
