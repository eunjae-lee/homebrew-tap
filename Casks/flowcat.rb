cask "flowcat" do
  version "1.4.0"
  sha256 "1fe38f92e8ccdcb46d669ad9cc84ab79e2ecaa693b03435957763858c8e3aaa3"

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
