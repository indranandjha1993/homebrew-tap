cask "linkrouter" do
  version "1.0.0"
  sha256 "c343cac1049665d3dd6a127c55bd7f3166598686cdf33227c9d7f9ef7cc34f63"

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
