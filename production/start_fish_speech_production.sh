#!/bin/bash
set -e

echo "🚀 Fish Speech H100本番環境起動中..."

service supervisor stop
supervisord -c /etc/supervisor/supervisord.conf

# サービス状態確認
sleep 10

curl http://0.0.0.0:8000 -I