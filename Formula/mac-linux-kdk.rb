class MacLinuxKdk < Formula
    desc "Linux Kernel Development Kit for macOS"
    homepage "https://github.com/SpinlockLabs/mac-linux-kdk"
    version "2021.11.05-efa34e3d4e"

    url "https://github.com/SpinlockLabs/mac-linux-kdk/archive/efa34e3d4ed1be3fb6aadb5af2297a98f94041f4.zip"
    sha256 "cb1fa50efdecc8241567f88178f17b45c7c49f5ecd0e9b3083cd23806a0d5779"
    license "LGPL-3.0-or-later" => { with: "LGPL-3.0-linking-exception" }
  
    def install
      libexec.install Dir["env/*"]
    end
  end
  