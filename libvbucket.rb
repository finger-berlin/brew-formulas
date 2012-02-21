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
    # This test will fail and we won't accept that! It's enough to just
    # replace "false" with the main program this formula installs, but
    # it'd be nice if you were more thorough. Test the test with
    # `brew test libvbucket`. Remove this comment before submitting
    # your pull request!
    system "false"
  end
end
