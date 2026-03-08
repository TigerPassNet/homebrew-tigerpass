class Tigerpass < Formula
  desc "TigerPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/TigerPassNet/tigerpass"
  url "https://github.com/TigerPassNet/tigerpass/releases/download/v0.1.1/tigerpass-darwin-arm64.tar.gz"
  sha256 "7ca0f103f55fced82e14a1b3aa8a1b964d182de4574154fc3ab0bd185f5d2aac"
  version "0.1.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "TigerPass" => "tigerpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tigerpass --version")
  end
end
