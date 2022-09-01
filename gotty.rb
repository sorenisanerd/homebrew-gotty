require "formula"

class Gotty < Formula
  homepage "https://github.com/sorenisanerd/gotty"
  version '1.5.0'

  if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/sorenisanerd/gotty/releases/download/v1.5.0/gotty_v1.5.0_darwin_arm64.tar.gz"
      sha256 "f058003158b0622474a799c658ebc78d62abd776927e9a29c1008a2caa6d287f"
  end

  if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/sorenisanerd/gotty/releases/download/v1.5.0/gotty_v1.5.0_darwin_amd64.tar.gz"
      sha256 "23e7914d8911d73481acc9d2a9e86b2efc6964cd7b659757d1e417f651cc8af9"
  end

  if OS.linux? && Hardware::CPU.is_64_bit?
      url "https://github.com/sorenisanerd/gotty/releases/download/v1.5.0/gotty_v1.5.0_linux_amd64.tar.gz"
      sha256 "2d33af44cd9a179d8dd845dcd4b75698b5cbe6a38dd16796e3341be5a6785cca"
  end

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
