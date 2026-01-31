cask "flowcat" do
  version "1.4.0"
  sha256 "50e2db8ac5cebd3904c7de7f7e616aaa86de17521feab812c1f8d907c77e2403"

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
