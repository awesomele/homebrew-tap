class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap/tree/main/docs/mddiff"
  version "0.2.55"
  # mddiff is free-to-use proprietary software; its license is not an SPDX
  # expression. The release asset is a prebuilt binary, not open source.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.55/mddiff-darwin-arm64"
      sha256 "96a129a3e037ed7a0041087038e5665f89d860a26da4ef43b70c8ecad484b363"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.55/mddiff-darwin-x64"
      sha256 "608bba9134161d4be91d33b547ab6ddd8d8570c73766be97a5d69e5cbf544762"
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
