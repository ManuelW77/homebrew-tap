cask "schnittwerk" do
  version "0.4.1"
  sha256 "6004c6b98ac058760d97e60881630150a0497ef538c81e96ca2baa320a09cf58"

  url "https://github.com/ManuelW77/Schnittwerk/releases/download/v#{version}/Schnittwerk-#{version}.dmg"
  name "Schnittwerk"
  desc "Design and cut software for Silhouette Cameo plotters"
  homepage "https://github.com/ManuelW77/Schnittwerk"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Schnittwerk.app"

  zap trash: [
    "~/Library/Application Support/Schnittwerk",
    "~/Library/Preferences/de.manuelweiser.schnittwerk.plist",
  ]
end
