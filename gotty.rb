require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.4'

  url "https://github.com/yudai/gotty/releases/download/v0.0.4/darwin_amd64.tar.gz"
  sha1 "7ade35afb3d2d226820dea7c82c6bbf002220d0f"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.4/linux_amd64.tar.gz"
      sha1 "24eba326a7a099cda43b62dfd86eb64208088f38"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
