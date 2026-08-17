class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap/tree/main/docs/mddiff"
  version "0.2.46"
  # mddiff is free-to-use proprietary software; its license is not an SPDX
  # expression. The release asset is a prebuilt binary, not open source.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.46/mddiff-darwin-arm64"
      sha256 "e7bc18f69cd7f70cfa5e737cc8fc528b892271c4d72471641f1a972bedd023e6"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.46/mddiff-darwin-x64"
      sha256 "ed34844dbdc922b04e87af916892049889038ff2c717ff408a7da4139d34e75f"
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
