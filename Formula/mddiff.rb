class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap/tree/main/docs/mddiff"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.8/mddiff-darwin-arm64"
      sha256 "70311cddedff423cac2577d82520a2ea061aaa7ed8561d3bb40b2fad94cb57ad"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.8/mddiff-darwin-x64"
      sha256 "41979c9837de92b5f926894088bbc8ecd449fa87109a68b54eae4677c63c1a93"
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
