#!/usr/bin/env bash
# 重新抓取网易云歌单，生成静态 JSON 供播放器离线加载
# 用法: scripts/update-playlist.sh [meting-api 地址]
# 歌单变动后运行一次并提交 static/data/playlist.json 即可
set -euo pipefail
cd "$(dirname "$0")/.."

API="${1:-https://meting-api-production-d570.up.railway.app/api}"
API_HOST="${API#*://}"
API_HOST="${API_HOST%%/*}"
PLAYLIST_ID="13270992162"

TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

curl -fsS --retry 3 --retry-delay 2 \
  "$API?server=netease&type=playlist&id=$PLAYLIST_ID" -o "$TMP"

python3 - "$TMP" "$API_HOST" <<'PY'
import json, re, sys

data = json.load(open(sys.argv[1], encoding='utf-8'))
host = sys.argv[2]


def fix(s):
    # API 返回的 URL 是 http://，静态站点必须统一成 https 避免 Mixed Content
    if isinstance(s, str):
        return s.replace('http://' + host, 'https://' + host)
    return s


def walk(x):
    if isinstance(x, dict):
        return {k: walk(v) for k, v in x.items()}
    if isinstance(x, list):
        return [walk(v) for v in x]
    return fix(x)


# Meting API 歌单没有顶层 id 字段，从 url 提取后前置，方便前端使用
for i, song in enumerate(data):
    m = re.search(r'[?&]id=(\d+)', song.get('url') or '')
    if m:
        data[i] = {'id': m.group(1), **song}

with open('static/data/playlist.json', 'w', encoding='utf-8') as f:
    json.dump(walk(data), f, ensure_ascii=False, indent=2)

print(f"已更新 static/data/playlist.json（{len(data)} 首）")
PY
