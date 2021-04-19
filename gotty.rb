require "formula"

class Gotty < Formula
  homepage "https://github.com/sorenisanerd/gotty"
  version 'v1.1.0'

  url "https://github.com/sorenisanerd/gotty/releases/download/v1.1.0/gotty_darwin_amd64.tar.gz"
  sha256 "604e790cf1b1f587a099aea29e8a8c2dc8cc4c2a424a827d8645b07f5497c45b"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/sorenisanerd/gotty/releases/download/v1.1.0/gotty_linux_amd64.tar.gz"
      sha256 "90d264ac193149c1f10aad47d630bcea066127a373e68ffe4e9cdb6deea4e27d"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
