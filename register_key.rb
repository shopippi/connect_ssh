require 'fileutils'

def save_public_key(public_key, output_directory)
  # ファイル名を一意に生成
  file_name = "user_#{Time.now.to_i}_key.pub"
  file_path = File.join(output_directory, file_name)

  # 公開鍵をファイルに保存
  File.open(file_path, 'w') { |file| file.puts(public_key) }

  puts "公開鍵が保存されました: #{file_path}"
end

def main
  # ディレクトリの指定（適宜変更してください）
  output_directory = '/path/to/your/public_keys'

  # ディレクトリが存在しない場合は作成
  FileUtils.mkdir_p(output_directory) unless File.directory?(output_directory)

  # 標準入力から公開鍵を読み取る
  puts '他人からもらったSSH公開鍵を入力してください（入力完了後、Ctrl + Dを押してください）:'
  public_key = $stdin.read.chomp

  # 公開鍵を指定されたディレクトリに保存
  save_public_key(public_key, output_directory)
end

# メインプログラムを実行
main
