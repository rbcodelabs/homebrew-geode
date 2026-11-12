cask "geode" do
  arch arm: "arm64"

  version "0.30.18"
  sha256 "f3042212dede36cd8b379fac347bad1242f2bec6ec0fbdba879d27c3f083b900"

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
