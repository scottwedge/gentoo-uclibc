# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils kodi-addon

DESCRIPTION="Fische visualizer for Kodi"
HOMEPAGE="https://github.com/notspiff/visualization.fishbmc"
SRC_URI=""

case ${PV} in
9999)
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/notspiff/visualization.fishbmc.git"
	inherit git-r3
	;;
*)
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/notspiff/visualization.fishbmc/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/visualization.fishbmc-${PV}"
	;;
esac

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="
	=media-tv/kodi-17*
	virtual/opengl
	"

RDEPEND="
	${DEPEND}
	"
