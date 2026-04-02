class Tigerpass < Formula
  desc "TigerPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/TigerPassNet/tigerpass"
  url "https://github.com/TigerPassNet/tigerpass/releases/download/v0.1.3/tigerpass-darwin-arm64.tar.gz"
  sha256 "b35e0fcd7c9b213f6101684b29c5c91e9e5d0e6fd10e6358d35f255fbe7987a2"
  version "0.1.3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "TigerPass" => "tigerpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tigerpass --version")
  end
end
