cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "47ae37337732ee9cdd9b46c17fe2214acfa8330cec9a27ff336b91b6ae75c7d4",
         intel: "1321a11109f16e6c3bd857178d80b57035a6492437dd3820255c475eb174f316"

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
