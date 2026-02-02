cask "flowcat" do
  version "1.38.0"
  sha256 "9f4d0b3c8c2490cdc97d24819b6a620fd00a9cd34593a8a8ce2b0d05a54a2ecc"

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
