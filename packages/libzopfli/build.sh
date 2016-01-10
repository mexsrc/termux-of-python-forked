TERMUX_PKG_HOMEPAGE=https://github.com/google/zopfli
TERMUX_PKG_DESCRIPTION="New zlib compatible compressor library"
TERMUX_PKG_VERSION=1.0.1
TERMUX_PKG_SRCURL=https://github.com/google/zopfli/archive/zopfli-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_FOLDERNAME=zopfli-zopfli-${TERMUX_PKG_VERSION}
TERMUX_PKG_BUILD_IN_SRC=yes

termux_step_post_make_install () {
	mkdir -p $TERMUX_PREFIX/include/zopfli/
	cp $TERMUX_PKG_SRCDIR/src/zopfli/*h $TERMUX_PREFIX/include/zopfli/
}
