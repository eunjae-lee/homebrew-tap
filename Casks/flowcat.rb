cask "flowcat" do
  version "1.31.1"
  sha256 "98cbaa894dcb86bd4c6afad7975a98cc78bf52a5e9033c2b2032c88e6fdd1ae2"

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
