require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.6'

  url "https://github.com/yudai/gotty/releases/download/v0.0.6/darwin_amd64.tar.gz"
  sha1 "c8e3b07389525237a47babb3a240db1828c7cd97"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.6/linux_amd64.tar.gz"
      sha1 "1d487f5feb0f0398a40a3c97364695c07c71937b"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
