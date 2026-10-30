cask "yunsftp" do
  version "1.1.0"
  sha256 "5ab47da2a990074af54e0c93e726bc2492b9c31d34617b95b633f6b5239dd21e"

  url "https://github.com/dohyun-yun/yunsftp/releases/download/v#{version}/yunsftp-v#{version}-macos-arm64.dmg"
  name "yunsftp"
  desc "Native dual-pane SFTP client and file manager for Apple Silicon"
  homepage "https://github.com/dohyun-yun/yunsftp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "yunsftp.app"

  zap trash: [
    "~/Library/Caches/com.finsternis.yunsftp",
    "~/Library/Preferences/com.finsternis.yunsftp.plist",
    "~/Library/Saved Application State/com.finsternis.yunsftp.savedState",
  ]

  caveats <<~EOS
    Releases are not notarized yet. On first launch, right-click yunsftp.app and choose Open,
    or install with: brew install --cask --no-quarantine yunsftp
  EOS
end
