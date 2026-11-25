cask "yapyap@beta" do
  version "0.3.2-beta.6"
  sha256 "e2ae0ab57f5a1aa9bfe0335e6ed5a09afa97d9e4155f490d3ba7bce0bac36380"

  url "https://github.com/vascoguita/yapyap/releases/download/v#{version}/YapYap-#{version}-mac-universal.dmg"
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
