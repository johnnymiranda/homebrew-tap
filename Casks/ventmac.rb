cask "ventmac" do
  version "0.2.0"
  sha256 "0999283e6487470712cf4f330c1b0258a4a7f938b42098b14e7c30e91ff0ba08"

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
