cask "yapyap" do
  version "0.3.2"
  sha256 "8671b9df842b2638d1e4d52e336a5d0e5dd5ca3d632c19da2349c1dbee2e9ed2"

  url "https://github.com/vascoguita/yapyap/releases/download/v#{version}/YapYap-#{version}-mac-universal.dmg"
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
