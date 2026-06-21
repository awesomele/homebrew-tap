class Mddiff < Formula
  desc "Rendered markdown diff — block-aware, inline + side-by-side, in your browser"
  homepage "https://github.com/awesomele/homebrew-tap/tree/main/docs/mddiff"
  version "0.2.35"
  # mddiff is free-to-use proprietary software; its license is not an SPDX
  # expression. The release asset is a prebuilt binary, not open source.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.35/mddiff-darwin-arm64"
      sha256 "44ddf3a269ed134d31901f419fcb3dad55a47d237adf1fa37db8d56af6ed670e"
    end
    on_intel do
      url "https://github.com/awesomele/homebrew-tap/releases/download/mddiff-v0.2.35/mddiff-darwin-x64"
      sha256 "847e4836f843007432dcd1e301b4546d4a87d40c8298e8a7e90dafd71a88fd22"
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
