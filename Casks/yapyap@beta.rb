cask "yapyap@beta" do
  version "0.3.0-beta.2"
  sha256 "7d14847ea53049c037f0420515e47145d29a17235df05b46b0d9119678b58a92"

  url "https://github.com/vascoguita/yapyap/releases/download/v#{version}/YapYap-#{version}-mac-universal.dmg",
      verified: "github.com/vascoguita/yapyap/"
  name "YapYap Beta"
  desc "Unofficial desktop client for WhatsApp Web"
  homepage "https://yapyap.guita.org/"

  livecheck do
    skip "Updated by the YapYap release workflow"
  end

  auto_updates true
  conflicts_with cask: "yapyap"
  depends_on macos: :ventura

  app "YapYap.app"

  zap trash: [
    "~/Library/Application Support/YapYap",
    "~/Library/Logs/YapYap",
    "~/Library/Preferences/org.guita.YapYap.plist",
    "~/Library/Saved Application State/org.guita.YapYap.savedState",
  ]
end
