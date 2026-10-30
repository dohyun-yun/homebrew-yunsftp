cask "yunsftp" do
  version "1.2.0"
  sha256 "e5e372a7e832ea39fb612c32956519a81da3025abd4e520572f0c8e07fc4602b"

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
    Releases are ad-hoc signed (not notarized). On first launch, right-click yunsftp.app in
    /Applications and choose Open, or run:
      xattr -d com.apple.quarantine /Applications/yunsftp.app
  EOS
end
