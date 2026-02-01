cask "flowcat" do
  version "1.21.1"
  sha256 "e86a698f95357550bea2607afdf7e55aa582b73c1dd951172344532dbbc37fb3"

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
