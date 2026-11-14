cask "geode" do
  arch arm: "arm64"

  version "0.30.20"
  sha256 "1022dabe0c0bb4f3a815c926f3911dc712d89250d0d11ea06acbd8e5b2eb8e35"

  url "https://github.com/rbcodelabs/geode/releases/download/v#{version}/Geode-#{version}-#{arch}.dmg"
  name "Geode"
  desc "Local-first Markdown knowledge base"
  homepage "https://github.com/rbcodelabs/geode"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Geode.app"

  zap trash: [
    "~/Library/Application Support/Geode",
    "~/Library/Caches/com.rbcodelabs.geode",
    "~/Library/Caches/com.rbcodelabs.geode.ShipIt",
    "~/Library/Preferences/com.rbcodelabs.geode.plist",
    "~/Library/Saved Application State/com.rbcodelabs.geode.savedState",
  ]
end
