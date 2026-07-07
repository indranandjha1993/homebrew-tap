cask "linkrouter" do
  version "1.0.2"
  sha256 "98f1893022d4666a70755a41549751a7a2f134935fde5826c5f100de89d3bfb4"

  url "https://github.com/indranandjha1993/LinkRouter/releases/download/v#{version}/LinkRouter.app.zip"
  name "LinkRouter"
  desc "Tiny, fast browser router for macOS — routes every link to the browser you choose"
  homepage "https://github.com/indranandjha1993/LinkRouter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :ventura

  app "LinkRouter.app"

  uninstall quit: "com.indranandjha.LinkRouter"

  zap trash: [
    "~/Library/Application Support/LinkRouter",
    "~/Library/Preferences/com.indranandjha.LinkRouter.plist",
  ]
end
