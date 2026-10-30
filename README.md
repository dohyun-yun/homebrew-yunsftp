# homebrew-yunsftp

Homebrew tap for [yunsftp](https://github.com/dohyun-yun/yunsftp), a native dual-pane SFTP client and file manager for Apple Silicon Macs.

```bash
brew tap dohyun-yun/yunsftp
brew trust dohyun-yun/yunsftp     # newer Homebrew asks before loading third-party taps
brew install --cask yunsftp
```

Releases are ad-hoc signed (not notarized), so macOS blocks the first launch. Right-click `yunsftp.app` in `/Applications` → Open once, or clear the quarantine flag:

```bash
xattr -d com.apple.quarantine /Applications/yunsftp.app
```

Upgrade with `brew upgrade --cask yunsftp`. A scheduled workflow in this repository checks for new yunsftp releases every six hours and updates the cask; the yunsftp release workflow can also trigger it directly.
