class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.0/mddiff-darwin-arm64"
      sha256 "9d164fa324f47492745f0492655bf259b9dd7cda66a1483fd26eb8a735a8a8ad"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.0/mddiff-darwin-x64"
      sha256 "e56df5df5e2479316c3e95fb99f73783e2a6ba393f7ddffdfc9447eb4edc7f6d"
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
