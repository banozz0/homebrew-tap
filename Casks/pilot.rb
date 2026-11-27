cask "pilot" do
  version "1.4.3"
  sha256 "558ec3f077c54ffb907bbd0cf93623cf59f8c839a7a13d60d6eefaf1fa2dd6ae"

  url "https://github.com/banozz0/pilot/releases/download/v#{version}/Pilot-#{version}.dmg"
  name "Pilot"
  desc "Hyper key, tiling window manager and launcher"
  homepage "https://pilotformac.com/"

  livecheck do
    url "https://github.com/banozz0/pilot/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Pilot.app"

  uninstall quit: "dev.banozz.pilot"

  zap trash: [
    "~/Library/Application Support/Pilot",
    "~/Library/Caches/dev.banozz.pilot",
    "~/Library/Caches/Pilot",
    "~/Library/HTTPStorages/dev.banozz.pilot",
    "~/Library/HTTPStorages/dev.banozz.pilot.binarycookies",
    "~/Library/Preferences/dev.banozz.pilot.plist",
    "~/Library/Saved Application State/dev.banozz.pilot.savedState",
  ]
end
