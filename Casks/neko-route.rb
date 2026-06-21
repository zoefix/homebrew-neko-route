cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "22826b8763f690a02dd62b94bdd065e63a66f3fc250b3a2b68ed77e16be7d46d",
         intel: "e739b3c15070d0bc3f27c3899b7a60986e4549cd22f3294986d1acadbdf81c93"

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
