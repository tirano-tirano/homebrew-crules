class Crules < Formula
  desc "A command-line tool to generate and manage Cursor rules (.mdc files) for various frameworks"
  homepage "https://github.com/tirano-tirano/crules"
  url "https://github.com/tirano-tirano/crules/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "407f7ef6135fbf23b685597f36a49ded590c34a867f0831b17955da06f367c51"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "crules.gemspec"
    system "gem", "install", "--ignore-dependencies", "crules-0.1.1.gem"
    bin.install libexec/"bin/crules"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    system "#{bin}/crules", "version"
  end
end 