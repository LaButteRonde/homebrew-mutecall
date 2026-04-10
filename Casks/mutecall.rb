cask "mutecall" do
  version "1.11.5"
  sha256 "66b9bcbbbb416b453d9524098e70ba97f559473a52558b7e797da61f198ccc02"
  
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