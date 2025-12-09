#! /bin/bash
sudo useradd testuser
sudo passwd testuser
sudo usermod -aG sudo testuser
