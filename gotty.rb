require "formula"

class Gotty < Formula
  homepage "https://github.com/sorenisanerd/gotty"
  version '1.4.0'

  if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/sorenisanerd/gotty/releases/download/v1.4.0/gotty_v1.4.0_darwin_arm64.tar.gz"
      sha256 "e076ea00dd5ed23f9d2f0c381768dec8666ece3b022719d24999ac5540952ae5"
  end

  if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/sorenisanerd/gotty/releases/download/v1.4.0/gotty_v1.4.0_darwin_amd64.tar.gz"
      sha256 "de4b68e1b14daf18bce8b3a47d49193f3ef9d12da12538d6f1bd3d5bceb9e6aa"
  end

  if OS.linux? && Hardware::CPU.is_64_bit?
      url "https://github.com/sorenisanerd/gotty/releases/download/v1.4.0/gotty_v1.4.0_linux_amd64.tar.gz"
      sha256 "79c315166c1f30bf12cc55c48c177b444cae342f55d846c928894d6f4658cf4f"
  end

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
