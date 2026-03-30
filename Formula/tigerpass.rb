class Tigerpass < Formula
  desc "TigerPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/TigerPassNet/tigerpass"
  url "https://github.com/TigerPassNet/tigerpass/releases/download/v0.1.1/tigerpass-darwin-arm64.tar.gz"
  sha256 "c86f73f3112fc0b92f7483e52a2198c93e279af87415732525d6e232f26efae8"
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
