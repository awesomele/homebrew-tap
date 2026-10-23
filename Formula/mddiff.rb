class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap/tree/main/docs/mddiff"
  version "0.2.48"
  # mddiff is free-to-use proprietary software; its license is not an SPDX
  # expression. The release asset is a prebuilt binary, not open source.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.48/mddiff-darwin-arm64"
      sha256 "8ace9cb957fcdaa35047ffbebf3dfbf776fa28496f5de9cf1bea2209c36f7d1c"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.48/mddiff-darwin-x64"
      sha256 "9349df462f6fbb8d06eb010c5d0892b8c07d12b7ae6a23ebf2bd2faf2b954b4c"
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
