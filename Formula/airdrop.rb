class Airdrop < Formula
  desc "Share files and URLs over AirDrop from the terminal"
  homepage "https://github.com/ChiChou/airdrop"
  url "https://github.com/ChiChou/airdrop/archive/refs/tags/1.0.0.tar.gz"
  sha256 "70ab67309a3230e06f3141942bf8a03fbb4db3c7b1ede07541fd2c8a090d74ac"
  license "MIT"

  def install
    system "make"
    bin.install "build/airdrop"
  end

  test do
    assert_match "USAGE: airdrop", shell_output("#{bin}/airdrop --help")
  end
end
