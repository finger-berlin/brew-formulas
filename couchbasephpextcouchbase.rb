require 'formula'

class Couchbasephpextcouchbase < Formula
  version '661604a'
  homepage ''
  url 'https://github.com/couchbase/php-ext-couchbase/tarball/master'
  md5 '232fdb6ee3ee09f0ff8b0c108be0434f'

  depends_on 'php'
  depends_on 'libcouchbase'

  def install
    system "phpize"
    system "./configure", "--prefix=#{prefix}"
    system "make install"
    system "echo 'add couchbase.so as extension to your current php.ini'"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just
    # replace "false" with the main program this formula installs, but
    # it'd be nice if you were more thorough. Test the test with
    # `brew test CouchbasePhpExtCouchbase`. Remove this comment before submitting
    # your pull request!
    system "false"
  end
end
