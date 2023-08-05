![Static Badge](https://img.shields.io/badge/VyOS_Version-1.4-blue?style=for-the-badge)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/BinaryN3xus/VyosConfig?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/BinaryN3xus/VyosConfig?style=for-the-badge)
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/binaryn3xus/VyosConfig/main?style=for-the-badge)

This repo reflects my ongoing journey in configuring my home network with VyOS. While it may not be flawless, I hope it serves as a helpful resource for fellow HomeLab enthusiasts. Feel free to explore, learn, and contribute, as we all learn together!

## Requirements
- [VyOS System](https://docs.vyos.io/en/latest/)
- [Git](https://git-scm.com/)
- [SOPS](https://github.com/getsops/sops)

## Getting Started

### Install Git on VyOS

```sh
sudo apt update
sudo apt install git
```

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

Clone your configuration to the root folder `/config`

Example:

```sh
📁 /config            # Vyos defined as code
├─📁 config-parts     # Vyos commands split into seperate files
├─📁 containers       # Container configurations
└─📁 scripts          # Vyos scripts
└─🗒️ .gitignore       # gitignore file
└─🗒️ ..etc..          # All other files
```

> **NOTE: Handling `.gitignore` Files**
>
> - Include a `.gitignore` file in all folders and set it to ignore everything by default: `/*`
> - To add specific files or folders to the repository, allowlist them with `!` before the file or folder name. For example: `!/apply-config.sh` or `!config-parts/` for files and folders (respectively).
>
> This is to prevent accidentially committing unintented/sensitive files from being added to your repository.

---

## Using the `apply-config.sh`

### Dry-Run

```sh
config
cd /config
run ./apply-config.sh -c
```

### Actual Run

_Notice the -c argument_

```sh
config
cd /config
run ./apply-config.sh -c
```

