cask "ventmac" do
  version "0.1.1"
  sha256 "7e54e4a9b26808190fbd43e04271604a34fb0abbedf3748bcd8b675800364588"

  url "https://github.com/johnnymiranda/ventmac/releases/download/v#{version}/VentMac-#{version}.zip"
  name "VentMac"
  desc "Native macOS client for legacy Ventrilo 3 servers with global push-to-talk"
  homepage "https://github.com/johnnymiranda/ventmac"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "VentMac.app"

  # Self-contained (bundles speex/speexdsp) and notarized — installs and
  # launches with no dependencies and no Gatekeeper prompts.
  caveats <<~EOS
    For mouse-button push-to-talk, grant Input Monitoring under
    System Settings -> Privacy & Security -> Input Monitoring.
  EOS
end
