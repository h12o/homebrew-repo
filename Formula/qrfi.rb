class Qrfi < Formula
  desc "A CLI Wi-Fi QR Code Generator written in Rust"
  homepage "https://github.com/h12o/qrfi"
  version "0.1.0"
  license "MIT"
  url "https://github.com/h12o/qrfi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "622ab55533c2ac1d5c3d1ab2f9fd718cace9f37685dbbf245c36f8cf0ab915b9"
  head "https://github.com/h12o/qrfi.git", branch: "main"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "qrfi #{version}", shell_output("#{bin}/qrfi --version")
  end
end
