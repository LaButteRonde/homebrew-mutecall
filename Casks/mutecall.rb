cask "mutecall" do
  version "1.11.3"
  sha256 "..."
  
  url "https://github.com/LaButteRonde/homebrew-mutecall/releases/download/v#{version}/MuteCall-darwin-arm64-#{version}.zip"
  name "MuteCall"
  desc "Global mute/unmute shortcut for Microsoft Teams on macOS"
  homepage "https://github.com/LaButteRonde/homebrew-mutecall"

  app "MuteCall.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/MuteCall.app"],
      sudo: false
  end

  zap trash: [
    "~/Library/Application Support/mutecall",
    "~/Library/Preferences/com.lbr.mutecall.plist",
  ]
end