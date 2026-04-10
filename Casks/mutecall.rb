cask "mutecall" do
  version "1.12.0"
  sha256 "8444de0d03c348b04736354ac4e7e6a0e0c8364ee6fb6d190ea21cbd719e6b4b"
  
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