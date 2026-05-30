class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.4/mddiff-darwin-arm64"
      sha256 "eb8a1fd84b4c8aade5c87b2cb096b212609735d6b06d4677da80e15538a4198b"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/v0.1.4/mddiff-darwin-x64"
      sha256 "12158defc1362b38a54d5170ad2ccb5107a6b092f7f1713f840c19f2d86c2987"
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
