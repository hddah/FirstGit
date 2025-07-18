#!/bin/bash

# Installer Trivy (dernière version stable)
curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -

# Scanner une image Docker (exemple : ubuntu:latest)
./trivy image --exit-code 1 --severity HIGH,CRITICAL ubuntu:latest

# Si Trivy détecte des vulnérabilités critiques, le script retournera 1 (échec)
