#!/bin/bash

# 削除対象外のファイルやディレクトリ
exclude_files=("genkey.rb" "delete.sh" "regi.rb")

# カレントディレクトリ内のすべてのファイルを取得
files=(*)

# 削除対象外のファイルを除外して削除
for file in "${files[@]}"; do
  if [[ ! " ${exclude_files[@]} " =~ " ${file} " ]]; then
    # ファイルまたはディレクトリが存在する場合は削除
    if [ -e "$file" ]; then
      rm -r "$file"
      echo "削除: $file"
    fi
  fi
done

echo "削除が完了しました。"
