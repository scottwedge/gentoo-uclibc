# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Enumeratees for the incremental conversion of builders to bytestrings"
HOMEPAGE="https://github.com/meiersi/blaze-builder-enumerator"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE="+newbuilder"

RDEPEND=">=dev-haskell/enumerator-0.4.3.1:=[profile?] <dev-haskell/enumerator-0.5:=[profile?]
	>=dev-haskell/streaming-commons-0.1.10:=[profile?] <dev-haskell/streaming-commons-0.2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	newbuilder? ( >=dev-haskell/blaze-builder-0.4:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
			>=dev-haskell/bytestring-builder-0.10.4:=[profile?] <dev-haskell/bytestring-builder-0.11:=[profile?] )
	!newbuilder? ( >=dev-haskell/blaze-builder-0.2.1.4:=[profile?] <dev-haskell/blaze-builder-0.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag newbuilder newbuilder)
}
