class Crules < Formula
  include Language::Python::Virtualenv

  desc "プロジェクトのルール管理を効率的に行うためのツール"
  homepage "https://github.com/tirano-tirano/crules"
  url "https://github.com/tirano-tirano/crules/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "896d759aa9449f46fad6262c3063e3c9553f2e180f1e3b5fd5a6314b703ca663"
  license "MIT"

  depends_on "python@3.9"

  resource "jinja2" do
    url "https://github.com/tirano-tirano/crules/archive/refs/tags/v0.3.1.tar.gz"
    sha256 "896d759aa9449f46fad6262c3063e3c9553f2e180f1e3b5fd5a6314b703ca663"
  end

  resource "markupsafe" do
    url "https://github.com/tirano-tirano/crules/archive/refs/tags/v0.3.1.tar.gz"
    sha256 "896d759aa9449f46fad6262c3063e3c9553f2e180f1e3b5fd5a6314b703ca663"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"crules", "--version"
  end
end
