cask "kodi-beta" do
  version "19.0-Matrix_rc1"
  sha256 "1247db6d16da64b6073632320132c50780755b2d4aa32b6b628b29468bcd0909"

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast "https://kodi.tv/tags/pre-release"
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  auto_updates true
  conflicts_with cask: [
    "kodi",
    "kodi-nightly",
  ]

  app "Kodi.app"

  zap trash: [
    "~/.kodi",
    "~/Library/Application Support/Kodi",
    "~/Library/Logs/kodi.log",
    "~/Library/Logs/kodi.old.log",
    "~/Library/Saved Application State/org.xbmc.kodi.savedState",
  ]
end
