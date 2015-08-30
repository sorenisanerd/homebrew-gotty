require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.7'

  url "https://github.com/yudai/gotty/releases/download/v0.0.7/darwin_amd64.tar.gz"
  sha1 "42e4de034789bc732bccbaf21bf666149928958a"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.7/linux_amd64.tar.gz"
      sha1 "31df9a5979cff2a4db771265952ffcba85fb8bbe"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
