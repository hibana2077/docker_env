#!/bin/bash

# 更新包列表並安裝 OpenSSH 服務器
apt-get update
apt-get install -y openssh-server curl git vim neofetch

# 創建 mluser 用戶並設置密碼
useradd -m -s /bin/bash mluser
echo "mluser:1234" | chpasswd

# 配置 SSH 以允許密碼認證
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# 啟動 SSH 服務
service ssh start

apt-get install -y python3 python3-pip

pip3 install --upgrade pip

pip3 install -r /tool/requirements.txt

# 保持容器運行
tail -f /dev/null