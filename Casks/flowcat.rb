cask "flowcat" do
  version "1.21.5"
  sha256 "26ded6053f2a3ad5ba4c641f44e1461996387a7d9711278037889f382c906d86"

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
