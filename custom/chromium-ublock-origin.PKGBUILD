# Maintainer: Jonas Strassel <info@jonas-strassel.de>

_id=cjpalhdlnbpafiamejdnhcphjbkeiagm
pkgname=chromium-ublock-origin
pkgrel=1
pkgver=20201224120806
arch=('any')
license=('ISC')

pkgver() {
    date +"%Y%m%d%H%M%S"
}

prepare() {
    # Create extension json
    cat << EOF > "${_id}".json
{
    "external_update_url": "https://clients2.google.com/service/update2/crx"
}
EOF
}

package() {
    install -Dm644 -t "${pkgdir}/usr/share/chromium/extensions/" "${_id}.json"
}