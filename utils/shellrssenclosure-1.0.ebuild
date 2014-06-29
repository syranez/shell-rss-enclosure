# Ebuild for shell-rss-enclosure

EAPI=4

inherit eutils git-2

DESCRIPTION="Extracts enclosure-URIs from RSS-Feeds"
HOMEPAGE="https://github.com/syranez/shell-rss-enclosure"
EGIT_PROJECT='shell-rss-enclosure'
EGIT_REPO_URI="https://github.com/syranez/shell-rss-enclosure"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
    dobin src/rss-enclosure.sh
}
