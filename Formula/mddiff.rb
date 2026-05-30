class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.2/mddiff-darwin-arm64"
      sha256 "4491b8fdc714ce9923c254f6b18215ab1273dd7cb2f70ad22cf9aaa4c518d1dd"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.2/mddiff-darwin-x64"
      sha256 "dee7b8bda76bbe2e9cf3fbec81b53cc4d3216b95a8b070cb047b179fb9fa7303"
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
