class Crules < Formula
  include Language::Python::Virtualenv

  desc "Project rules management CLI tool"
  homepage "https://github.com/tirano-tirano/crules"
  url "https://github.com/tirano-tirano/crules/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "placeholder"  # 最初のリリース時に更新
  license "MIT"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"crules", "--version"
  end
end
