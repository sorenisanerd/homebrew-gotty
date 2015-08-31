require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.8'

  url "https://github.com/yudai/gotty/releases/download/v0.0.8/darwin_amd64.tar.gz"
  sha1 "fa00acb9e080d9507d471b18a5cfd86d9c56cbc8"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.8/linux_amd64.tar.gz"
      sha1 "234646d792ad9c3e328bfeed1ac79ea2ffa4d827"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
