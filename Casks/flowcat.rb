cask "flowcat" do
  version "1.21.3"
  sha256 "ddb4e35dfa086b108f23c1c343e5862eb5f51de38ce19b5cc67a04cc4417e3e8"

  url "https://github.com/eunjae-lee/homebrew-tap/releases/download/v#{version}/Flowcat.dmg"
  name "flowcat"
  desc "Terminal task manager with native macOS UI"
  homepage "https://github.com/eunjae-lee/flowcat"

  depends_on macos: ">= :sonoma"

  app "Flowcat.app"

  zap trash: [
    "~/Library/Preferences/com.flowcat.mac.plist",
  ]
end
