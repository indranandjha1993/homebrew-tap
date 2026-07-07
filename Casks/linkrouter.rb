cask "linkrouter" do
  version "1.0.0"
  sha256 "8cb6722894a53acf6a2a2b8322408e81165f4f8b123974d9ed7546f93a01b7c1"

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
