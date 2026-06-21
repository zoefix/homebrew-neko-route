cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "724c629f3b9b543909531878dc6dff31ad5f0792c664a95b6b2c04254958519e",
         intel: "dbca07eaf073960e12f9c5d6a1bea1be69749b18f088bbaaa7114960c1518ffb"

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
