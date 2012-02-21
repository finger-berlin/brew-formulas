require 'formula'

class Libvbucket < Formula
  homepage ''
  url 'http://packages.couchbase.com/clients/c/libvbucket-1.8.0.2.tar.gz'
  md5 'c49192074b632682246996ef6c2ed40e'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "vbuckettool"
  end
end
