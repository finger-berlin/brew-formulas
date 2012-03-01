require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class PhpMemcached < Formula
  version 'latest'
  homepage ''
  url 'https://github.com/php-memcached-dev/php-memcached/zipball/master'
  md5 '80af50bb4657666fb5ac58a17cc6bcdc'

  depends_on 'php'

  def install
    system "phpize"
    system "./configure", "--enable-memcached-igbinary", "--enable-memcached-json", "--enable-memcached", 
                          "--prefix=#{prefix}"
    system "make install"
    system "echo add 'extension=memcached.so' to your php.ini"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test php-memcached`.
    system "false"
  end
end
