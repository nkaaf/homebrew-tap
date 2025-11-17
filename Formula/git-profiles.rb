class GitProfiles < Formula
  include Language::Python::Virtualenv

  desc "Managing Git profiles systemwide"
  homepage "https://github.com/nkaaf/git-profiles"
  url "https://github.com/nkaaf/git-profiles/archive/refs/tags/0.2.0.tar.gz"
  license "Apache-2.0"

  depends_on "rust" => :build # for pydantic-core
  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/git-profiles version")
    assert_match "0.2.0", output
  end
end
