# OpenVPN INSTALLATION

> Endless Possibilities

## INTRODUCTION

This is a simple script to install and configure a VPN Tunnel on any Linux system running Debian, Ubuntu or CentOS.

### INSTALLATION

Download the installation file, "install.sh", then run it in a bash shell with root priviledges.
The script will ask a few questions, after that all configurations will be done for you and a VPN configuration connection file generated for you (stored in: `~/`).
Use this file to get access to route all traffic through the VPN.

### CONTAINERIZE THE VPN

You are not limited to only running the VPN on a physical machine, or VM, but you can have the full features of VPN within a container.

To achieve this, start by building the docker container from the [Dockerfile](Dockerfile) by running:

```bash
docker-compose up -d
```

The script builds an ubuntu container and copies the [install.sh](install.sh) bash file into the container.

The [install.sh](install.sh) bash file is what is used to build and configure the actual VPN. To do this, execute the [start.sh](start.sh) file:

```bash
./start.sh
```

Running the above command will ask for you to specify the container name, provide the name, which if no modifications where done to this repo will be `openvpnconfig_openvpn`

Doing this will land you inside the container in the directory where the installation script resides. Run the installation by typing:

```bash
./install.sh
```

You'll be prompted with a few questions, after which your vpn will be set up for you.

`NOTE:` If you want to set your vpn port to anything other than `1194`, please make sure you change it not only in the [docker-compose.yaml](docker-compose.yaml), but also during the prompts.

After all is finnished, check `configs` directory for your `.ovpn` file, which you need to add to your open vpn client.