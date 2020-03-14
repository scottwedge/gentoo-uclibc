# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="lib for D-Bus daemon messages, querying HAL or PolicyKit privileges"
HOMEPAGE="https://freedesktop.org/wiki/Software/liblazy"
SRC_URI="https://people.freedesktop.org/~homac/${PN}/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="sys-apps/dbus"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_configure() {
	econf --disable-dependency-tracking
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc AUTHORS NEWS README
}
