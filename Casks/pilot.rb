cask "pilot" do
  version "1.4.2"
  sha256 "ce4c7a52ee46fa74ac19b1cde8ef0f7b52dd9183159304e3c8c1ded38f028c29"

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
