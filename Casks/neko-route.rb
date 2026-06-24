cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "c45fbdf6768a10c2a9f955973743646fa7ad5126d822dc375d5bd77e477339ca",
         intel: "566794d497743ffca5c4cf49f40fef39204466d7d1b9698d52b2c7270a417acb"

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
