class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.5/mddiff-darwin-arm64"
      sha256 "c70d95ef28e959c98e221cb56b1dde54b6254e4d69b1bfd1debb60e41cfa0432"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.5/mddiff-darwin-x64"
      sha256 "b348010769e4624bb8d36fb9829f4e269984c8d097a2cd4e750f418f5091c17c"
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
