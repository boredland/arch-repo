# Maintainer: Jonas Strassel <info@jonas-strassel.de>

_id=gbbacdmgjdfajabgglpjifcedoajdimg
pkgname=chromium-theme-oceanic
pkgrel=1
pkgver=1
arch=('any')
license=('ISC')

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