class Tigerpass < Formula
  desc "TigerPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/TigerPassNet/tigerpass"
  url "https://github.com/TigerPassNet/tigerpass/releases/download/v0.1.3/tigerpass-darwin-arm64.tar.gz"
  sha256 "9cdbca58a8a1ca37b9656afb6db65d8bb89930eae5f3b1d488c391c3e13d5b20"
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
