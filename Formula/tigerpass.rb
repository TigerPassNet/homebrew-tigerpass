class Tigerpass < Formula
  desc "TigerPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/TigerPassNet/tigerpass"
  url "https://github.com/TigerPassNet/tigerpass/releases/download/v0.1.3/tigerpass-darwin-arm64.tar.gz"
  sha256 "f836665f81e8755e7cfd77fb928c21a47fba9c8269015e4fdd3fa487129c175a"
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
