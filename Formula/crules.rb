class Crules < Formula
  include Language::Python::Virtualenv

  desc "Project rules management CLI tool"
  homepage "https://github.com/tirano-tirano/crules"
  url "https://github.com/tirano-tirano/crules/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "99441c35bb8dc8dd322e707ab65b9d0fc29239dcf4bddce068a8d33a4a0d15ff"
  license "MIT"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"crules", "--version"
  end
end
