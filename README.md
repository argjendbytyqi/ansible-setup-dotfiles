# ansible-setup-dotfiles

Deterministic DevOps workstation bootstrap using **Bash + Ansible**.

This repository provisions a reproducible local DevOps environment across
**Fedora, Ubuntu, and WSL**, with a focus on correctness, idempotency, and
cross-distribution consistency.

---

## Design goals

- Deterministic tool versions across distributions
- Idempotent execution (safe to re-run)
- Minimal abstraction, no magic
- Prefer vendor-supported binaries for fast-moving CLIs
- Clear separation between OS bootstrap and user tooling

This project intentionally avoids relying solely on OS package managers for
developer tools where version drift causes operational issues.

---

## Supported tools

- Git
- Python
- Ansible
- Docker
- Terraform
- AWS CLI (v2)
- Go
- Node.js
- kubectl
- Helm
- k9s

---

## Requirements

- Linux (Fedora, Ubuntu, or WSL)
- sudo access
- Internet connectivity
- Bash shell

---

## Quick start

### First-time setup

```bash
git clone https://github.com/argjendbytyqi/ansible-setup-dotfiles.git
cd ansible-setup-dotfiles

chmod +x bootstrap.sh
./bootstrap.sh

ansible-playbook -i ansible/inventory/localhost.ini ansible/playbook.yml
