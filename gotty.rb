require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.1'

  url "https://github.com/yudai/gotty/releases/download/v0.0.1/darwin_amd64.tar.gz"
  sha1 "b8bcc86be9d3ba5e30ebf881b954fc35af8af030"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.1/linux_amd64.tar.gz"
      sha1 "e991b22f99555a40e4923032a4dd6480da2c6f9f"
    end
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
