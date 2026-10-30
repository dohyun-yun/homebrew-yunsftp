cask "yunsftp" do
  version "1.0.0"
  sha256 "0c03cfc7da024993c4b9334e7eabf9739bf7622c363e70c0490864ced1dbd4b9"

  url "https://github.com/dohyun-yun/yunsftp/releases/download/v#{version}/yunsftp-v#{version}-macos-arm64.dmg"
  name "yunsftp"
  desc "Native dual-pane SFTP client and file manager for Apple Silicon"
  homepage "https://github.com/dohyun-yun/yunsftp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "yunsftp.app"

  caveats <<~EOS
    Releases are not notarized yet. On first launch, right-click yunsftp.app and choose Open,
    or install with: brew install --cask --no-quarantine yunsftp
  EOS

  zap trash: [
    "~/Library/Preferences/com.finsternis.yunsftp.plist",
    "~/Library/Caches/com.finsternis.yunsftp",
    "~/Library/Saved Application State/com.finsternis.yunsftp.savedState",
  ]
end
