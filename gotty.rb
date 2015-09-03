require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.10'

  url "https://github.com/yudai/gotty/releases/download/v0.0.10/darwin_amd64.tar.gz"
  sha1 "223411f5fd0f49bfef6d2e0fd34b47ad7c48fd1b"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.10/linux_amd64.tar.gz"
      sha1 "758cf45b217a27bb5cd6b826d02b16ae1d5f8661"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
