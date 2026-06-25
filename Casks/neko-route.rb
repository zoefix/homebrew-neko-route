cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "8cae4e02b571f1859d6e32587dbe440905f945d37f7ff50d8d7cfeeff33a260c",
         intel: "0abcf1e73164a5068a3465884d9f263c1de148250f83337b739b40dfe633056a"

  url "https://github.com/zoefix/neko-route/releases/download/v#{version}/Neko-Route_#{version}_macos_#{arch}.dmg"
  name "Neko Route"
  desc "Local AI model router for Codex"
  homepage "https://github.com/zoefix/neko-route"

  livecheck do
    url "https://github.com/zoefix/neko-route/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Neko Route.app"
end
