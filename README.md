# Module Devops \_ tp-wik-dps-tp03

# Sommaire

- Prérequis
- Installation
- Lancement

## Prérequis

Ce projet nécessite d'avoir Docker Desktop d'installé.

## Installation

Pour installer le projet il faudra exécuter les commandes suivantes:

```sh
git clone https://github.com/KeunotorCagoule/tp---wik-dps-tp02.git
```

## Lancement

Pour lancer l'image Docker avec un seul stage il suffira de lancer la commande suivante:

```sh
docker build -t solostage -f solostage.dockerfile .
```

```sh
docker run -e PING_LISTEN_PORT=3000 -p 3000:3000 solostage
```

Voici la commande à lancer pour scanner l'image. En dessous, le résultat donné par cette commande sur l'image au dessus.

```sh
docker scout recommendations test
```

```sh
    ! New version 1.0.8 available (installed version is 1.0.7) at https://github.com/docker/scout-cli
    v Image stored for indexing
    v Indexed 278 packages
WARN failed to delete temporary image archive C:\Users\33785\AppData\Local\Temp\docker-scout\sha256\f669a0081cf112b051458eb544c4e1c6a205215b3bbeadc73d4581b8fd184611\8c1e24e6-bbce-4b45-bd17-5360965956a9: remove C:\Users\33785\AppData\Local\Temp\docker-scout\sha256\f669a0081cf112b051458eb544c4e1c6a205215b3bbeadc73d4581b8fd184611\8c1e24e6-bbce-4b45-bd17-5360965956a9: Le processus ne peut pas accéder au fichier car ce fichier est utilisé par un autre processus.
Recommended fixes for image  test:latest

  Base image is  node:18-alpine

  Name            │  18-alpine
  Digest          │  sha256:316ce6f7693c0107d2358521e3767eed24457ce74aaacda6165ddc7236cae19b
  Vulnerabilities │    0C     0H     0M     0L
  Pushed          │ 3 hours ago
  Size            │ 54 MB
  Packages        │ 258
  Flavor          │ alpine
  OS              │ 3.18
  Runtime         │ 18


  │ The base image is also available under the supported tag(s)  18-
  │ alpine3.18 ,  18.18-alpine ,  18.18-alpine3.18 ,  18.18.2-alpine ,
  │ 18.18.2-alpine3.18 ,  hydrogen-alpine ,  hydrogen-alpine3.18 ,  lts-
  │ alpine ,  lts-alpine3.18 . If you want to display recommendations
  │ specifically for a different tag, please re-run the command using
  │ the  --tag  flag.




Refresh base image
  Rebuild the image using a newer base image version. Updating this may result in breaking changes.

  v This image version is up to date.


Change base image
  The list displays new recommended tags in descending order, where the top results are rated as most suitable.


              Tag              │                   Details                   │   Pushed    │       Vulnerabilities

───────────────────────────────┼─────────────────────────────────────────────┼─────────────┼──────────────────────────────
   20-alpine                   │ Benefits:                                   │ 3 hours ago │    0C     0H     0M     0L
  Major runtime version update │ • Same OS detected                          │             │

  Also known as:               │ • Major runtime version update              │             │

  • alpine                     │ • Image has similar size                    │             │

  • alpine3.18                 │ • Image has same number of vulnerabilities  │             │

  • 20.8.1-alpine              │ • Image contains similar number of packages │             │

  • 20.8.1-alpine3.18          │                                             │             │

  • 20.8-alpine                │ Image details:                              │             │

  • 20.8-alpine3.18            │ • Size: 56 MB                               │             │

  • current-alpine             │ • Flavor: alpine                            │             │

  • current-alpine3.18         │ • OS: 3.18                                  │             │

  • 20-alpine3.18              │ • Runtime: 19                               │             │

                               │                                             │             │

                               │                                             │             │

                               │                                             │             │

   slim                        │ Benefits:                                   │ 3 hours ago │    0C     0H     0M    17L
  Tag is preferred tag         │ • Tag is preferred tag                      │             │
 +17
  Also known as:               │ • Major runtime version update              │             │

  • 20.8.1-slim                │ • Tag is using slim variant                 │             │

  • 20.8-slim                  │ • slim was pulled 17K times last month      │             │

  • current-slim               │                                             │             │

  • 20-slim                    │ Image details:                              │             │

  • bookworm-slim              │ • Size: 80 MB                               │             │

  • 20-bookworm-slim           │ • Runtime: 19                               │             │

  • 20.8-bookworm-slim         │                                             │             │

  • 20.8.1-bookworm-slim       │                                             │             │

  • current-bookworm-slim      │                                             │             │

                               │                                             │             │

                               │                                             │             │
```

Pour lancer l'image Docker avec plusieurs stages il suffira de lancer la commande suivante:

```sh
docker build -t solostage -f multistage.dockerfile .
```

```sh
docker run -e PING_LISTEN_PORT=3000 -p 3000:3000 multistage
```