class Iodine < Formula
  desc "Tool for tunneling IPv4 data through a DNS server"
  homepage "http://code.kryo.se/iodine/"
  head "https://github.com/yarrick/iodine.git"

  depends_on :tuntap

  stable do
    url "http://code.kryo.se/iodine/iodine-0.7.0.tar.gz"
    mirror "https://mirrors.ocf.berkeley.edu/debian/pool/main/i/iodine/iodine_0.7.0.orig.tar.gz"
    sha256 "ad2b40acf1421316ec15800dcde0f587ab31d7d6f891fa8b9967c4ded93c013e"
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{sbin}/iodine", "-v"
  end
end
