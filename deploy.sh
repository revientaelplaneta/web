#!/usr/bin/env bash
set -e

sudo apt update
sudo apt install -y lftp

cd public
lftp -c "open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv --verbose . revientaelplaneta.com/ ; bye;"
