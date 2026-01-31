cask "flowcat" do
  version "latest"
  sha256 :no_check

  url "https://github.com/eunjae-lee/flowcat/releases/download/mac-latest/Flowcat.dmg"
  name "Flowcat"
  desc "Terminal task manager with native macOS UI"
  homepage "https://github.com/eunjae-lee/flowcat"

  depends_on macos: ">= :sonoma"

  app "Flowcat.app"

  zap trash: [
    "~/Library/Preferences/com.flowcat.mac.plist",
  ]
end
