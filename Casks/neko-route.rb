cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "3c6d60a2dc44705471729483117855ead2415cac0537903be96729dba51f54f8",
         intel: "149999bcf8d6d7703b070ca616f41d0a3c88d25b4d038bb24fe737bee9c289a4"

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
