cask "moa" do
  version "0.1.2"
  sha256 "8cd2893279f72912b6977586c57589a9b8034d386caa8c69e96f2a2a907caab7"

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
