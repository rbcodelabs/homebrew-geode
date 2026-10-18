cask "geode" do
  arch arm: "arm64"

  version "0.30.9"
  sha256 "fb633dc6602bb001c1f4e1e19cb8eeefcf842885ad78c2f8c7064cec5196c7ab"

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
