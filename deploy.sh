#!/usr/bin/env bash
set -e

sudo apt install -y lftp

cd public
lftp -f "open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv --verbose . revientaelplaneta.com/ ; bye;"
