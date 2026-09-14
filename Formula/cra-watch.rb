class CraWatch < Formula
  include Language::Python::Virtualenv

  desc "Screen dependencies against CISA KEV for EU Cyber Resilience Act Article 14 exposure"
  homepage "https://github.com/ntoledo319/cra-watch"
  url "https://github.com/ntoledo319/cra-watch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0183c00d616cb85a2a2e7a31bc5d6fade9284bc9d0f43fd23f568f6f829f33d1"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "cra-watch", shell_output("#{bin}/cra-watch --version")
    # A directory with no dependency manifest exits 2 by design.
    output = shell_output("#{bin}/cra-watch scan #{testpath} 2>&1", 2)
    assert_match "No dependency manifests found", output
  end
end
