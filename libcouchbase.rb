require 'formula'

class Libcouchbase < Formula
  homepage ''
  url 'http://packages.couchbase.com/clients/c/libcouchbase-1.0.1.tar.gz'
  md5 '5bd14a57bec8b7ee562eee85933dff7e'

  depends_on 'libevent'
  depends_on 'libvbucket'
  depends_on 'memcached'
  depends_on 'libmemcached'

  def install
    system "rm -rf memcached ; wget -O memcached.tgz https://github.com/memcached/memcached/zipball/engine-pu && tar xzvf memcached.tgz memcached-memcached-e70f5ac/include/memcached/ && mv memcached-memcached-e70f5ac/include/memcached memcached && rm -rf memcached-memcached-e70f5ac && rm memcached.tgz"

    ENV.append 'CFLAGS', '-I.'

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "cbc-version"
  end
end
