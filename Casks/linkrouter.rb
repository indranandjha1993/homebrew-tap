cask "linkrouter" do
  version "1.0.3"
  sha256 "d36f368850f678268d62c5ed4c01f8aea8ba16d2f4c38dee49c2db506da90310"

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
