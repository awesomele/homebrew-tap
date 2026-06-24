class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap/tree/main/docs/mddiff"
  version "0.2.36"
  # mddiff is free-to-use proprietary software; its license is not an SPDX
  # expression. The release asset is a prebuilt binary, not open source.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.36/mddiff-darwin-arm64"
      sha256 "e12613bd0be8dd191ddeab87597104e2094163e4d602bd7021c8b0f137c0047c"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.36/mddiff-darwin-x64"
      sha256 "8c4520081ed2a5b21aba105c9b79025b6be8f18be20bc64454599c0398a25d4d"
    end
  end

  def install
    # The release asset is the standalone binary itself (bun runtime + deps
    # embedded); install it as `mddiff`.
    bin.install Dir["mddiff-*"].first => "mddiff"
  end

  test do
    assert_match "rendered markdown diff", shell_output("#{bin}/mddiff --help 2>&1", 1)
  end
end
