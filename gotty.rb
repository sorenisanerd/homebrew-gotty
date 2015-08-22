require "formula"

class Gotty < Formula
  homepage "https://github.com/yudai/gotty"
  version 'v0.0.3'

  url "https://github.com/yudai/gotty/releases/download/v0.0.3/darwin_amd64.tar.gz"
  sha1 "ef3f3b5d7efe56e96876d8b20cc72a73fc84e8b3"

  if OS.linux? && Hardware.is_64_bit?
      url "https://github.com/yudai/gotty/releases/download/v0.0.3/linux_amd64.tar.gz"
      sha1 "b08d011921c7de6cb5cec04b2928f819e70af117"
  end

  depends_on :arch => :intel

  def install
    bin.install 'gotty'
  end

  def caveats
    "GoTTY!"
  end
end
