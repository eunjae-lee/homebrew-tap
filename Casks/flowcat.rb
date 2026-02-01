cask "flowcat" do
  version "1.21.11"
  sha256 "071f356d542a5868bb253e78d0c1c40d45f9c4395e1a6f913fc978c196b14aac"

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
