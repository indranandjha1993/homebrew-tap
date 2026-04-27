cask "swiftpicker" do
  version "1.0.0"
  sha256 :no_check # This should be updated with the actual SHA256 of the zip file

  url "https://github.com/indranandjha1993/SwiftPicker/releases/download/v1.0.0/SwiftPicker.app.zip"
  name "SwiftPicker"
  desc "Modern, native macOS browser picker built with SwiftUI"
  homepage "https://github.com/indranandjha1993/SwiftPicker"

  app "SwiftPicker.app"

  zap trash: [
    "~/Library/Application Support/SwiftPicker",
    "~/Library/Preferences/com.indranand.SwiftPicker.plist",
  ]
end
