require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.11'

  url "https://github.com/yudai/gotty/releases/download/v0.0.11/darwin_amd64.tar.gz"
  sha1 "aa64469fd6dc00d93d65b5607d1e994fb72e81fa"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.11/linux_amd64.tar.gz"
      sha1 "15fec3fd3a181fdd766dc44766e54e9f41e35376"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
