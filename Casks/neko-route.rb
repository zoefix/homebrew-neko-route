cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "e557dc5d7071ae7a530ff99a53f4ff9424550fba566f270fb7b1f5d7ffa3da6b",
         intel: "acf5eea3f89609ec2627dbec5a90dd48e1ff630803651798e80f356c344fb14c"

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
