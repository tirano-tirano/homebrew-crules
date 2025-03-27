class Crules < Formula
  desc "A command-line tool to generate and manage Cursor rules (.mdc files) for various frameworks"
  homepage "https://github.com/tirano-tirano/crules"
  url "https://github.com/tirano-tirano/crules/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "407f7ef6135fbf23b685597f36a49ded590c34a867f0831b17955da06f367c51"

  depends_on "ruby"

  def install
    # ライブラリファイルのインストール
    lib.install Dir["lib/*"]
    
    # 実行ファイルのインストール
    bin.install "bin/crules"
    
    # 依存関係のインストール
    system "bundle", "install", "--path", "#{libexec}/vendor/bundle"
    
    # 実行ファイルのパスを修正
    inreplace bin/"crules", "require_relative \"../lib/crules/cli\"", "require \"#{lib}/crules/cli\""
    inreplace bin/"crules", "require_relative \"../lib/crules/version\"", "require \"#{lib}/crules/version\""
  end

  test do
    system "#{bin}/crules", "version"
  end
end 