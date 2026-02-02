cask "flowcat" do
  version "1.34.0"
  sha256 "f3d2faca4d17f3967e4ea39e95dc46be5c03cbccafcf490e2ec82c7b77b9f7e4"

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
