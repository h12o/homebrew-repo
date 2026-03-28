class Qrfi < Formula
  desc "CLI Wi-Fi QR Code Generator written in Rust"
  homepage "https://h12o.blessedgeeks.com/qrfi"
  url "https://github.com/h12o/qrfi/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "5db8f1b973ee52324e11760cdca9d2748c40c4dd3444b606e0c7a8346a09c446"
  license "MIT"
  head "https://github.com/h12o/qrfi.git", branch: "main"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "qrfi #{version}", shell_output("#{bin}/qrfi --version")
  end
end
