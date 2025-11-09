#!/bin/bash
# =====================================
# install-tools.sh
# Nathan's system bootstrap script
# =====================================

set -e

echo "⚙️  Updating system..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing essential packages..."
sudo apt install -y \
    build-essential \
    curl \
    wget \
    git \
    vim \
    unzip \
    net-tools \
    htop \
    software-properties-common \
    ca-certificates \
    gnupg \
    lsb-release

echo "🐳 Installing Docker..."
if ! command -v docker &> /dev/null; then
    curl -fsSL https://get.docker.com | sudo sh
    sudo usermod -aG docker $USER
    echo "✅ Docker installed. Logout & login to activate group permissions."
else
    echo "Docker already installed."
fi

echo "📦 Installing kubectl..."
if ! command -v kubectl &> /dev/null; then
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
else
    echo "kubectl already installed."
fi

echo "⚡ Installing Node.js (via NVM)..."
if ! command -v nvm &> /dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install --lts
else
    echo "NVM already installed."
fi

echo "✅ All tools installed successfully!"
