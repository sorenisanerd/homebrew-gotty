require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.5'

  url "https://github.com/yudai/gotty/releases/download/v0.0.5/darwin_amd64.tar.gz"
  sha1 "fb4e723e95600d69a0fd2d99f39e00faa4e9c096"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.5/linux_amd64.tar.gz"
      sha1 "bdb7bfcbfa27ce084ebd5e9d82127af4bd0fe28b"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
