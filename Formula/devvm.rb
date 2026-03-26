class Devvm < Formula
  desc "Developer VM manager — 6 languages, 3 databases, Grafana observability, app hosting"
  homepage "https://github.com/indranandjha1993/devvm"
  url "https://github.com/indranandjha1993/devvm/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "2094cf297f82fa0e51c1d9564da613885edd47b6540af88fb8c1d317ce80c8a3"
  license "MIT"

  def install
    bin.install "cli/dev" => "devvm"

    (share/"devvm").install "cloud-init"
    (share/"devvm").install "provision"
    (share/"devvm").install "observability"
    (share/"devvm").install "systemd"
    (share/"devvm").install "verify.sh"
    (share/"devvm").install "vscode"
    (share/"devvm").install "docs"

    bash_completion.install "completions/devvm.bash" => "devvm"
    zsh_completion.install "completions/_devvm"
  end

  def caveats
    <<~EOS
      Requires OrbStack: https://orbstack.dev

      Quick start:
        devvm init       # create VM + install everything
        devvm status     # see what's running

      Docs: https://github.com/indranandjha1993/devvm/tree/main/docs
    EOS
  end

  test do
    assert_match "devvm", shell_output("#{bin}/devvm version")
  end
end
