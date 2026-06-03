class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap/tree/main/docs/mddiff"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.11/mddiff-darwin-arm64"
      sha256 "e74c0e76346bc3e3e456fbe0e07fedbcca0c2f6b0d764db4a82710dccff60da8"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.11/mddiff-darwin-x64"
      sha256 "0c9d31fe2106055fbe07af6770f3ed502dba32a4f71d5cc1f010396410b09575"
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
