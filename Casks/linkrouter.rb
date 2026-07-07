cask "linkrouter" do
  version "1.0.5"
  sha256 "c506b5e4c1b8b243830619ffdc78f81aa802073da168266ebe86967ff82b37df"

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
