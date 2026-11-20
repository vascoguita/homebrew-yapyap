cask "yapyap" do
  version "0.3.1"
  sha256 "e88c7848ccab847b80ff6c6a5b6047a50190f534fb819f0cf2a9c5a8610b318a"

  url "https://github.com/vascoguita/yapyap/releases/download/v#{version}/YapYap-#{version}-mac-universal.dmg",
      verified: "github.com/vascoguita/yapyap/"
  name "YapYap"
  desc "Unofficial desktop client for WhatsApp Web"
  homepage "https://yapyap.guita.org/"

  livecheck do
    skip "Updated by the YapYap release workflow"
  end

  auto_updates true
  conflicts_with cask: "yapyap@beta"
  depends_on macos: :ventura

  app "YapYap.app"

  zap trash: [
    "~/Library/Application Support/YapYap",
    "~/Library/Logs/YapYap",
    "~/Library/Preferences/org.guita.YapYap.plist",
    "~/Library/Saved Application State/org.guita.YapYap.savedState",
  ]
end
