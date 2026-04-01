cask "mutecall" do
  version "1.11.3"
  sha256 "2e82a38bf3bf24439dda6b125c846e5644404f58fb05fc810e493eaa64c5bb53"

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