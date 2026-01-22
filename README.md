# ansible-setup-dotfiles

Automated DevOps tools setup for Linux and WSL with Bash and Ansible.

## 🎯 Supported Tools

- Git
- Python
- Ansible
- Terraform
- AWS CLI
- Go
- Node.js
- Docker
- kubectl
- Helm
- k9s

## 📋 Requirements

- Linux (Fedora, Ubuntu, or WSL)
- Sudo access
- Internet connection
- Bash shell

## 🚀 Quick Start

### First Time Setup

```bash
# Clone the repository
git clone https://github.com/argjendbytyqi/ansible-setup-dotfiles.git
cd ansible-setup-dotfiles

# Make bootstrap script executable
chmod +x bootstrap.sh

# Run bootstrap script (installs Ansible and essential tools)
./bootstrap.sh

# Run Ansible playbooks
ansible-playbook -i ansible/inventory/localhost.ini ansible/playbook.yml
```

### For Updates Only

```bash
cd ansible-setup-dotfiles
git pull
ansible-playbook -i ansible/inventory/localhost.ini ansible/playbook.yml
```

## 📁 Directory Structure

```
ansible-setup-dotfiles/
├── bootstrap.sh           # Initial bash script for basic setup
├── ansible/
│   ├── playbook.yml      # Main playbook
│   ├── inventory/
│   │   └── localhost.ini  # Local inventory
│   └── roles/
│       ├── docker/        # Docker installation
│       ├── kubernetes/    # kubectl, Helm, k9s
│       ├── terraform/     # Terraform setup
│       ├── aws-cli/       # AWS CLI installation
│       ├── go/            # Go installation
│       ├── nodejs/        # Node.js installation
│       ├── helm/          # Helm installation
│       └── k9s/           # k9s installation
└── README.md
```

## ✨ Features

✅ **Two-stage approach**: Bootstrap handles bare minimum (git, python, ansible), then Ansible handles everything else  
✅ **Distribution agnostic**: Works on Fedora, Ubuntu, and WSL  
✅ **Easy to maintain**: Version control your setup, track changes  
✅ **Modular**: Enable/disable tools easily in playbook.yml  
✅ **Idempotent**: Safe to run multiple times  
✅ **Open source**: Share with your team  

## 🔧 Customization

To disable specific tools, edit `ansible/playbook.yml` and comment out the roles you don't need:

```yaml
roles:
  - docker
  # - kubernetes    # Disabled
  - terraform
  # - aws-cli       # Disabled
  - go
  - nodejs
  - helm
  - k9s
```

## 📝 License

This project is licensed under the MIT License - see LICENSE file for details.

## 🤝 Contributing

Pull requests are welcome! Feel free to fork and contribute improvements.