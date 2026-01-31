cask "flowcat" do
  version "1.4.0"
  sha256 "360b72116effb4dc0e46d0d8304ce55550482a8199b18340112694089e7b5c46"

  url "https://github.com/eunjae-lee/flowcat/releases/download/v#{version}/Flowcat.dmg"
  name "Flowcat"
  desc "Terminal task manager with native macOS UI"
  homepage "https://github.com/eunjae-lee/flowcat"

  depends_on macos: ">= :sonoma"

  app "Flowcat.app"

  zap trash: [
    "~/Library/Preferences/com.flowcat.mac.plist",
  ]
end
