class MacLinuxKdk < Formula
  desc "Linux Kernel Development Kit for macOS"
  homepage "https://github.com/SpinlockLabs/mac-linux-kdk"
  version "2021.11.05-7cf9dfd"

  url "https://github.com/SpinlockLabs/mac-linux-kdk/archive/7cf9dfd65637e0af1cc52730d025f76523996407.zip"
  sha256 "247291c1acb0a5d8dbe2d7321838f0c093c57f965f8fa4a6d3ae3836b7e24c88"
  license "LGPL-3.0-or-later" => { with: "LGPL-3.0-linking-exception" }

  depends_on "llvm"
  depends_on "make"
  depends_on "ncurses"
  depends_on "openssl@1.1"

  def install
    bin.install Dir["bin/*"]
    libexec.install Dir["*"]
  end
end
