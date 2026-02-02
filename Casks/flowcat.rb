cask "flowcat" do
  version "1.34.1"
  sha256 "c77c78a18412dd4bd38fdc1c96e9d0b45937db3db8ae3c093374d1dbab9575e8"

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
