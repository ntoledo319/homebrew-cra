class PldWatch < Formula
  include Language::Python::Virtualenv

  desc "Find components past upstream end-of-life for EU Product Liability Directive exposure"
  homepage "https://github.com/ntoledo319/pld-watch"
  url "https://github.com/ntoledo319/pld-watch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "adc634199718da0e2e567d4d30b9a497faf486fd57af49bd6f3f3f859f7e391d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "pld-watch", shell_output("#{bin}/pld-watch --version")
    # A directory with nothing detectable exits 2 by design.
    output = shell_output("#{bin}/pld-watch scan #{testpath} 2>&1", 2)
    assert_match "No runtime or framework versions found", output
  end
end
