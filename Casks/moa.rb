cask "moa" do
  version "0.1.1"
  sha256 "af2a133b98fffaab4cdf0df2e2c6b95dc30cc9f229f268d15f3f7ffc09036139"

  url "https://github.com/eunjae-lee/moa/releases/download/v#{version}/moa-#{version}-macos-aarch64.zip"
  name "moa"
  desc "Local-first coding agent app"
  homepage "https://github.com/eunjae-lee/moa"

  depends_on macos: :ventura

  app "moa.app"

  zap trash: [
    "~/.local/state/moa",
    "~/Library/Logs/dev.eunjae.moa",
    "~/Library/Preferences/dev.eunjae.moa.plist",
  ]
end
