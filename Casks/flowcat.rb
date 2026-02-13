cask "flowcat" do
  version "1.46.1"
  sha256 "0d3df3a1ddae659f37ac95cbb5deb773bec069e0b622cf36fd960fab546ef3fb"

  url "https://github.com/eunjae-lee/homebrew-tap/releases/download/flowcat-v#{version}/flowcat.dmg"
  name "flowcat"
  desc "Terminal task manager with native macOS UI"
  homepage "https://github.com/eunjae-lee/flowcat"

  depends_on macos: ">= :sonoma"

  app "flowcat.app"

  zap trash: [
    "~/Library/Preferences/com.flowcat.mac.plist",
  ]
end
