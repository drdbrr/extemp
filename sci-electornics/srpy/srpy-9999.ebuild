# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

inherit cmake

#EGIT_REPO_URI="git://sigrok.org/${PN}"
SRC_URI="https://sigrok.org/download/source/${PN}/${P}.tar.gz"
inherit git-r3
KEYWORDS="~amd64 ~x86 ~arm64 ~arm"




DESCRIPTION="Sigrok pybind11 bindings"

LICENSE="GPL-3"
SLOT="0"

BDEPEND="
    virtual/pkgconfig
"
RDEPEND="
    dev-libs/glib
    dev-cpp/glibmm
    dev-libs/boost
    sci-libs/libsigrok:=[cxx]
    sci-libs/libsigrokdecode
"

DEPEND="${RDEPEND}"

DOCS=( README )

src_prepare() {
    cmake_src_prepare
}

src_configure() {
    local mycmakeargs=(
        -DDISABLE_WERROR=TRUE
    )
    cmake_src_configure
}
