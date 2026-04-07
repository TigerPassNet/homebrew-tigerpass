class Tigerpass < Formula
  desc "TigerPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/TigerPassNet/tigerpass"
  url "https://github.com/TigerPassNet/tigerpass/releases/download/v0.1.3/tigerpass-darwin-arm64.tar.gz"
  sha256 "08d30a55c1ca9d256d0239ab620cfa647682ec64cf4ed2c2165c6462b8326750"
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
