cask "flowcat" do
  version "1.21.4"
  sha256 "29629c0ab0aee2be728c139c506445b6a2a6a8c6d7db055546b2947cef22a3dc"

  url "https://github.com/eunjae-lee/homebrew-tap/releases/download/v#{version}/Flowcat.dmg"
  name "flowcat"
  desc "Terminal task manager with native macOS UI"
  homepage "https://github.com/eunjae-lee/flowcat"

  depends_on macos: ">= :sonoma"

  app "Flowcat.app"

  zap trash: [
    "~/Library/Preferences/com.flowcat.mac.plist",
  ]
end
