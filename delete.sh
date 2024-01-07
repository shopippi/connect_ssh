#!/bin/bash

# delete.sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

directory="$1"

# ディレクトリ内のすべてのファイルを削除
rm -rf "$directory"/*

echo "古い鍵は削除しました。."
