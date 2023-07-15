 extemp
=============

Gentoo [srpy](https://github.com/drdbrr/srpy) ebuild repository.

Usage
-----

Add this gentoo repository to system:
* Remote URL:
```bash
eselect repository add extemp git https://github.com/drdbrr/extemp.git
```
* Or add to local config:
```bash
echo """[extemp]
location = /var/db/repos/extemp
sync-type = git
sync-uri = https://github.com/drdbrr/extemp.git
""" >> /etc/portage/repos.conf/extemp.conf
```

License
-------

This repository is provided under the GNU General Public License v2. See [LICENSE](LICENSE).
