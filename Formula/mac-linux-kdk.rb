class MacLinuxKdk < Formula
  desc "Linux Kernel Development Kit for macOS"
  homepage "https://github.com/SpinlockLabs/mac-linux-kdk"
  version "2021.11.05-8192041c2c"

  url "https://github.com/SpinlockLabs/mac-linux-kdk/archive/8192041c2cd1a5f31ff1b0663a6b8be4f42c207a.zip"
  sha256 "db745202ef72842dc8b9b6b792c82b2398c44fcce41a972610b0c963976061bc"
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
