class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.6/mddiff-darwin-arm64"
      sha256 "4fbf32753464688985900016a593dd55ba6964057bf8cbf8fe2ae563a2142a90"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.6/mddiff-darwin-x64"
      sha256 "101cece2d0a6a1cb897363e2de449495bdafcd3efaf1558eda96d6d0d36acad3"
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
