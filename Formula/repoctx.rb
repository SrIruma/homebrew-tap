class Repoctx < Formula
  desc "Keep your AI coding-agent context files (AGENTS.md, CLAUDE.md) truthful"
  homepage "https://github.com/SrIruma/repoctx"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SrIruma/repoctx/releases/download/v0.10.0/repoctx_darwin_arm64"
      sha256 "fdf213dfa49ae0033891e26cdef7e4816db5177ac97b79892341c937ef7cd6dc"
    else
      url "https://github.com/SrIruma/repoctx/releases/download/v0.10.0/repoctx_darwin_amd64"
      sha256 "77b81bcc5d2280b94e8febfe542e48be84d2a102af5b2cc92df7a02884dcda87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SrIruma/repoctx/releases/download/v0.10.0/repoctx_linux_arm64"
      sha256 "d33ab429b051a998878bce08e7a7de41a59be57786204ee44effc20005d1eea9"
    else
      url "https://github.com/SrIruma/repoctx/releases/download/v0.10.0/repoctx_linux_amd64"
      sha256 "d8c1846737bd8219559452fda21f83ebc136e3acea1c7248903a57237fe56bac"
    end
  end

  def install
    binary = Dir["repoctx_*"].first
    bin.install binary => "repoctx"
  end

  test do
    assert_match "repoctx", shell_output("#{bin}/repoctx --version")
  end
end
