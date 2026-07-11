cask "moa" do
  version "0.1.3"
  sha256 "463c61d72535019edd3f57e3aa6ceb0739929b7ad5fe5b7dac38a9303e3bedfe"

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
