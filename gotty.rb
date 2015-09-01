require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.9'

  url "https://github.com/yudai/gotty/releases/download/v0.0.9/darwin_amd64.tar.gz"
  sha1 "163236b62af82a7f9264f085d8cf7cb2e072a4bd"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.9/linux_amd64.tar.gz"
      sha1 "24cb482e96457df4303a8f98ed109080ded5ce1e"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
