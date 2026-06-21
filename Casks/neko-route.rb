cask "neko-route" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "ff09aceabe60dd3296e857892cf4b6e88536bc44098d1478e6080d8a84b48c7f",
         intel: "9c6d128eccf1d78a8b791b6faf2824b0bb20538b5c71570f7f9574069c1db07a"

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
