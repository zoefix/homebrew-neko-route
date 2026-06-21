cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "d7c62a263b7b7d21b1f2469038b2857b4cc6b3f1404af0354858315bbd822e81",
         intel: "394c7bb6c28d0161515897a28bf2d91128fe2e242cc9dd1fbaee7f3358bb01e9"

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
