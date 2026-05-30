class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.3/mddiff-darwin-arm64"
      sha256 "9e1b0668d1bb2fafa880b51c7b9716c230c6572b72880ec792231757b6f4fc05"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.3/mddiff-darwin-x64"
      sha256 "768c67d885c892879207914c9bda7acd3d38828b00b67c99857a7d38a7327319"
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
