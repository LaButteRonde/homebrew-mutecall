cask "mutecall" do
  version "2.20.0"
  sha256 "a47264d7256d11e39ddc34d3ab5bd23e705982251c83d0bc17f4e4386f07ef7e"
  
  url "https://github.com/LaButteRonde/homebrew-mutecall/releases/download/v#{version}/MuteCall-darwin-arm64-#{version}.zip"
  name "MuteCall"
  desc "Mute and unmute Microsoft Teams from a global shortcut and the menu bar"
  homepage "https://mutecall.labutteronde.fr"

  depends_on macos: :sonoma
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