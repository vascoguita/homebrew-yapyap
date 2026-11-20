cask "yapyap@beta" do
  version "0.3.1-beta.8"
  sha256 "eb230aaa7463ea75aac1abc0fba593775d2bee8c7dc976e3a2305b96746f7ce1"

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
