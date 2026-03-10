cask "flowcat" do
  version "1.51.3"
  sha256 "d9c7532a3e4f18e8a68e9790b1fd7aaffa02a1d9d2b6412d1beb2fcedacb0cdd"

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
