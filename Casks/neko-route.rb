cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "8568d9ff2139c4ad736d705f89711b69ffd330346e71ee6a79bb1b10eabf9192",
         intel: "de76903965fc363621b077011df309d0f02a0e46fcb82ef3d8a8abb0f9e0dc18"

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
