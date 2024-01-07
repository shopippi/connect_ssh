#!/usr/bin/env ruby

require 'openssl'
# ./delete.shを呼び出す
  system('./delete.sh')


def generate_ssh_key(key_name = 'id_rsa', key_bits = 2048)
  key = OpenSSL::PKey::RSA.new(key_bits)

  # 秘密鍵の保存
  File.write("#{key_name}", key.to_pem)

  # 公開鍵の保存
  public_key = key.public_key
  File.write("#{key_name}.pub", "ssh-rsa #{public_key.export}\n")

  puts "\n生成された公開鍵:"
  puts File.read("#{key_name}.pub")

  puts "\n -------------- ここから注意書き ---------------"
  puts "\n公開鍵の内容をコピーして、リモートホストの~/.ssh/authorized_keysに追加してください。"
  puts "物理的なアクセス制限: 鍵が保存されているデバイスや場所に対する物理的なアクセスも考慮してください。不正な物理的アクセスを防ぐために、鍵を保存するデバイスを物理的に保護するか、暗号化することが重要です"

  puts "定期的な鍵のローテーション: 定期的に新しい鍵を生成し、古い鍵を無効にしてください。これにより、古い鍵が不正利用されるリスクを軽減できます。"
end

# ユーザーに鍵のファイル名を尋ねる
print "鍵のファイル名　秘密鍵の名前となります。（デフォルトはid_rsa）: "
key_name = gets.chomp
key_name = 'id_rsa' if key_name.empty?

# ユーザーに鍵のビット数を尋ねる
print "鍵のビット数（デフォルトは2048）: "
key_bits = gets.chomp.to_i
key_bits = 2048 if key_bits.zero?

generate_ssh_key(key_name, key_bits)
