cask "kodi-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    URI("https://mirrors.kodi.tv/nightlies/osx/x86_64/master/").read[/href="([^"]+.dmg)"/, 1]
  end
  name "Kodi"
  desc "Free and open-source media player"
  homepage "https://kodi.tv/"

  auto_updates false
  conflicts_with cask: [
    "kodi",
    "kodi-beta",
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
