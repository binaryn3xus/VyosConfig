# VyosConfig

## Requirements
- [Vyos System](https://docs.vyos.io/en/latest/)
- [SOPS](https://github.com/getsops/sops)

## Getting Started

### Installing SOPS on Vyos

_This README assumes that you already have a SOPS AGE key_

1) Download the SOPS installer
```sh
wget https://github.com/getsops/sops/releases/download/v3.7.3/sops_3.7.3_amd64.deb
```

2) Install SOPS
```sh
sudo apt install sops_3.7.3_amd64.deb
```

3) Add your SOPS key to `/config/secrets/age.key`

---

### Clone your configuration project

Clone your configuration to the root folder `/`

Example:

```sh
📁 /config            # Vyos defined as code
├─📁 config-parts     # Vyos commands split into seperate files
├─📁 containers       # Container configurations
└─📁 scripts          # Vyos scripts
└─ ...etc...          # All other files
```

_Be aware your repo will share the location with other offical vyos files and be mixed in. Your `.gitignore` is important here!_

---

## Using the `apply-config.sh`

### Dry-Run

```sh
cd /
config
run /config/apply-config.sh
```

### Actual Run

_Notice the -c argument_

```sh
cd /
config
run /config/apply-config.sh -c
```

