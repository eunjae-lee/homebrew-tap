cask "flowcat" do
  version "1.21.2"
  sha256 "796e6ceece0f8aaa1ba8f40fd72fcc222883a1148a5ce14c29fba1e2afaef9ee"

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
