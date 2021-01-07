# Maintainer: Jonas Strassel <info@jonas-strassel.de>
pkgname=ttf-material-design-icons-webfont
pkgver=5.8.55
pkgrel=1
pkgdesc="Material Design Icons Web Font"
arch=('any')
url='https://materialdesignicons.com'
licence=('SIL OPEN FONT LICENSE Version 1.1')
makedepends=('git')
source=("$pkgname-$pkgver.tar.gz::https://github.com/Templarian/MaterialDesign-Webfont/archive/v$pkgver.tar.gz")
md5sums=('44868090fda5355e2941fb6366016784')
conflicts=('ttf-material-design-icons' 'ttf-material-design-icons-git')

package() {
    cd $srcdir/MaterialDesign-Webfont-$pkgver/fonts
    install -D -m644 "materialdesignicons-webfont.ttf" "${pkgdir}/usr/share/fonts/TTF/MaterialDesignIcons.ttf"
}
