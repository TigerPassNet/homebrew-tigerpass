class Tigerpass < Formula
  desc "TigerPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/TigerPassNet/tigerpass"
  url "https://github.com/TigerPassNet/tigerpass/releases/download/v0.1.4/tigerpass-darwin-arm64.tar.gz"
  sha256 "f6276fcef643db43dc0969c0105858554f7c16c96b65dd3f3600be0f7f1d61d2"
  version "0.1.4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "TigerPass" => "tigerpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tigerpass --version")
  end
end
