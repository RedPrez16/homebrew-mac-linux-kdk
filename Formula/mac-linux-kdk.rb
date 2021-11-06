class MacLinuxKdk < Formula
  desc "Linux Kernel Development Kit for macOS"
  homepage "https://github.com/SpinlockLabs/mac-linux-kdk"
  version "2021.11.05-efa34e3d4e"

  url "https://github.com/SpinlockLabs/mac-linux-kdk/archive/20bb15c1bdeee37f25cde4570843079b9490322c.zip"
  sha256 "a1ac64bc4feb388714f6da20dfdec72d7026ce814380bb73733ec0ba09fbc0af"
  license "LGPL-3.0-or-later" => { with: "LGPL-3.0-linking-exception" }

  depends_on "llvm"
  depends_on "make"
  depends_on "ncurses"
  depends_on "openssl@1.1"

  def install
    libexec.install Dir["env/*"]
    bin.install Dir["bin/*"]
  end
end
