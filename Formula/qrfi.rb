class Qrfi < Formula
  desc "CLI Wi-Fi QR Code Generator written in Rust"
  homepage "https://h12o.blessedgeeks.com/qrfi"
  url "https://github.com/h12o/qrfi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "622ab55533c2ac1d5c3d1ab2f9fd718cace9f37685dbbf245c36f8cf0ab915b9"
  license "MIT"
  head "https://github.com/h12o/qrfi.git", branch: "main"

  bottle do
    root_url "https://ghcr.io/v2/h12o/repo"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "068b4a82b4faf631034a82813659117e213227083507ef6b52a58c8c00f6a607"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6481733e88d7c5eb19877a92f0a7b46b2d049833f982503792b150016ba755af"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "3cf6eed895d29973c436d5ac26d9ceee35e0ee3a68a968b1bce7128dd64d2b12"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "13e66549d6cd9a17804408913fd8659b01980145163f157f95ee3f91611f25ad"
  end
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "qrfi #{version}", shell_output("#{bin}/qrfi --version")
  end
end
