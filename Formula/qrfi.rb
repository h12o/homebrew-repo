class Qrfi < Formula
  desc "CLI Wi-Fi QR Code Generator written in Rust"
  homepage "https://h12o.blessedgeeks.com/qrfi"
  url "https://github.com/h12o/qrfi/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "4303ed0ca710f4d561c3f4ce99f76486c918e744335c8d1ffd36884e85699e5e"
  license "MIT"
  head "https://github.com/h12o/qrfi.git", branch: "main"

  bottle do
    root_url "https://ghcr.io/v2/h12o/repo"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "c0bdda0831dc2710b633bf14551e65df88287a976f7738879b38cd372caa04a0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "453cf44ca5366bebe75ea454ba539109a3ae9e9872b6584b15c2246e85d98df3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "c1473a3030b0ca172e34ebbe24bc277eb651d8e84b5346a83edf27f6005385f4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "b5ac1b5345603ac954bc06955b875c12ee93980b035c8c0bd0c02dec75a4703d"
  end
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "qrfi #{version}", shell_output("#{bin}/qrfi --version")
  end
end
