class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.7/mddiff-darwin-arm64"
      sha256 "bc7a75b586c5c25c2ec10a242605ffdbc6971b6e023922c178121176bf2628bc"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.7/mddiff-darwin-x64"
      sha256 "3693e7df0ee5ba360a2ada745906212c5b4537f364e7ebcd0b3964e6bcbd3de0"
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
