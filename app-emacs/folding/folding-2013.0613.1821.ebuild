# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit elisp

DESCRIPTION="A folding-editor-like Emacs minor mode"
HOMEPAGE="https://www.emacswiki.org/emacs/FoldingMode"
# taken from http://git.savannah.gnu.org/cgit/emacs-tiny-tools.git
SRC_URI="https://dev.gentoo.org/~ulm/distfiles/${P}.el.xz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="alpha amd64 x86"

SITEFILE="50${PN}-gentoo.el"
