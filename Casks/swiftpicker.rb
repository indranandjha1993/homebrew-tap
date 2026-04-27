cask "swiftpicker" do
  version "1.0.0"
  sha256 :no_check # This should be updated with the actual SHA256 of the zip file

  url "https://github.com/your-username/SwiftPicker/releases/download/v#{version}/SwiftPicker.app.zip"
  name "SwiftPicker"
  desc "Modern, native macOS browser picker built with SwiftUI"
  homepage "https://github.com/your-username/SwiftPicker"

  app "SwiftPicker.app"

  zap trash: [
    "~/Library/Application Support/SwiftPicker",
    "~/Library/Preferences/com.indranand.SwiftPicker.plist",
  ]
end
