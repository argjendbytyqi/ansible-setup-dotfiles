#!/bin/bash

set -e

echo "🚀 Starting DevOps Tools Setup..."

# Detect OS
if [ -f /etc/fedora-release ]; then
    OS="fedora"
    PKG_MANAGER="dnf"
elif [ -f /etc/debian_version ]; then
    OS="debian"
    PKG_MANAGER="apt"
else
    echo "❌ Unsupported OS"
    exit 1
fi

echo "📦 Detected OS: $OS"

# Update package manager
echo "📥 Updating package manager..."
sudo $PKG_MANAGER update -y

# Install essential tools
echo "📥 Installing essential tools..."
if [ "$OS" = "fedora" ]; then
    sudo dnf install -y @development-tools python3 python3-pip git curl wget
else
    sudo apt-get install -y build-essential python3 python3-pip git curl wget
fi

# Install Ansible
echo "📥 Installing Ansible..."
pip3 install --upgrade pip
pip3 install ansible

# Clone or prepare playbooks
echo "✅ Bootstrap complete! You can now run: ansible-playbook ansible/playbook.yml"