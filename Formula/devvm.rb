class Devvm < Formula
  desc "Developer VM manager — 6 languages, 3 databases, Grafana observability, app hosting"
  homepage "https://github.com/indranandjha1993/devvm"
  url "https://github.com/indranandjha1993/devvm/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "9914db2b9e1ee0d8f2a7d5a99dce97477d5543281228d518fa0cf75493f92c27"
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

      First time:
        devvm init       # create VM + install everything

      After every 'brew upgrade devvm':
        devvm upgrade    # sync the VM with the new devvm version (non-destructive)

      Docs: https://github.com/indranandjha1993/devvm/tree/main/docs
    EOS
  end

  test do
    assert_match "devvm", shell_output("#{bin}/devvm version")
  end
end
