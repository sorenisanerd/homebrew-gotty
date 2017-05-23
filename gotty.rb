require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v1.0.0'

  url "https://github.com/yudai/gotty/releases/download/v1.0.0/gotty_darwin_amd64.tar.gz"
  sha256 "0b4297cb44c020c90f0b0c80221f01a9e02a6b1331466b7f640f1578af91630a"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v1.0.0/gotty_linux_amd64.tar.gz"
      sha256 "0dceeed9ca3567188596361ff1b4d331244195c50d4c3a65721a0dce543cb401"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
