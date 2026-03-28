class Qrfi < Formula
  desc "CLI Wi-Fi QR Code Generator written in Rust"
  homepage "https://h12o.blessedgeeks.com/qrfi"
  url "https://github.com/h12o/qrfi/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "5db8f1b973ee52324e11760cdca9d2748c40c4dd3444b606e0c7a8346a09c446"
  license "MIT"
  head "https://github.com/h12o/qrfi.git", branch: "main"

  bottle do
    root_url "https://ghcr.io/v2/h12o/repo"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "c6eb31b159557eda0717759da507ec2897d17edcd4a70ac0de843a81e3480ff6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e52a712ddc5af1a6529b91bbd5d0de0c223e5d0173f25d838a1380b11dc20874"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "8d6595d798daf2c8999ff507ca539a0b289b0d1f550a51518b61c31d5a5126d5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "590782d8146513efc4c0904af4fb901da9387087adac3c13ac8e4710763f29f3"
  end
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "qrfi #{version}", shell_output("#{bin}/qrfi --version")
  end
end
