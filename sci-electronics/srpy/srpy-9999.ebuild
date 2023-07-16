# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

inherit cmake
inherit git-r3

PYTHON_COMPAT=( python3_{10..12} )
inherit python-single-r1

DESCRIPTION="Sigrok pybind11 bindings"
HOMEPAGE="https://github.com/drdbrr/srpy.git"
EGIT_REPO_URI="https://github.com/drdbrr/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64 ~arm"


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
    local PYTHON_PATH=""
    PYTHON_PATH=${EPYTHON}
    local mycmakeargs=(
        -DDISABLE_WERROR=TRUE
        -DPYTHON_PATH=${PYTHON_PATH}
    )
    cmake_src_configure
}
