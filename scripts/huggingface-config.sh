#!/bin/bash

# 获取项目根目录
PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/../
echo "Project Directory: $PROJECT_DIR"
cd $PROJECT_DIR

apt install -y python3.10-venv
curl -LsSf https://hf.co/cli/install.sh | bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

hf auth login
hf auth whoami
# hf upload legged-ai-lab/unitree_rl_lab logs/ 

hf download legged-ai-lab/unitree_rl_lab --local-dir logs/
