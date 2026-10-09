cask "mutecall" do
  version "2.17.0"
  sha256 "4fde4e7c49e501e1dd4cc28e93990508de515c7237e17260198ac6e4e454d9cd"
  
  url "https://github.com/LaButteRonde/homebrew-mutecall/releases/download/v#{version}/MuteCall-darwin-arm64-#{version}.zip"
  name "MuteCall"
  desc "Mute and unmute Microsoft Teams from a global shortcut and the menu bar"
  homepage "https://github.com/LaButteRonde/homebrew-mutecall"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "MuteCall.app"

  # Mise à jour depuis l'app : l'instance en cours est quittée proprement avant le remplacement (TERM en filet),
  # puis relancée par le postflight.
  uninstall quit:   "com.lbr.mutecall",
            signal: ["TERM", "com.lbr.mutecall"]

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/MuteCall.app"],
      sudo: false
    system_command "/usr/bin/open",
      args: ["-a", "#{appdir}/MuteCall.app"],
      sudo: false
  end

  zap trash: [
    "~/Library/Application Support/mutecall",
    "~/Library/Preferences/com.lbr.mutecall.plist",
  ]
end