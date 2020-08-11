#!/usr/bin/env bash
set -e

sudo apt install -y lftp

lftp -c "open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv public revientaelplaneta.com/; quit;"
