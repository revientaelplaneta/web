#!/usr/bin/env bash
set -e

sudo apt install -y lftp

lftp -c "set ftps:initial-prot ''; set ftp:ssl-force true; set ftp:ssl-protect-data true; open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -eRv public revientaelplaneta.com/; quit;"
