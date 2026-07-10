cask "moa" do
  version "0.1.0"
  sha256 "70c7fcb368bceeead83effb72ac1fc5ba8a76b16be12b22c630f7dc7f38961ca"

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
