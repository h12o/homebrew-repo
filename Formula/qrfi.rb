class Qrfi < Formula
  desc "CLI Wi-Fi QR Code Generator written in Rust"
  homepage "https://h12o.blessedgeeks.com/qrfi"
  url "https://github.com/h12o/qrfi/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "4303ed0ca710f4d561c3f4ce99f76486c918e744335c8d1ffd36884e85699e5e"
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
