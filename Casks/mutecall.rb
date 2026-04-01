cask "mutecall" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/LaButteRonde/homebrew-mutecall/releases/download/v#{version}/MuteCall-darwin-arm64-#{version}.zip"
  name "MuteCall"
  desc "Global mute/unmute shortcut for Microsoft Teams on macOS"
  homepage "https://github.com/LaButteRonde/homebrew-mutecall"

  app "MuteCall.app"

  zap trash: [
    "~/Library/Application Support/mutecall",
    "~/Library/Preferences/com.lbr.mutecall.plist",
  ]
end