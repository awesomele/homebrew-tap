class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.1/mddiff-darwin-arm64"
      sha256 "21a1b04e72a692152aa91538d96ca817070a31beabc094230d55d86d053fc415"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.1/mddiff-darwin-x64"
      sha256 "437fdd10e902d4001a049450bf22d930c9fe5398ddce6225f0a07ef7797b61c2"
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
