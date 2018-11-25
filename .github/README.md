Debian package of the nix package manager
=========================================

Packaging of the [nix package manager][1] for Debian. Ultimate goal is
to get _nix_ included into Debian.

[Help][2] is welcome :)


Building from the source tar-ball
---------------------------------

```bash
uscan -ddd
pdebuild --buildresult ..
# or something more complicated like:
# pdebuild --buildresult .. --pbuilder cowbuilder -- --basepath /var/cache/pbuilder/base.cow
apt install ../nix_<VERSION>.deb
```


Building from _nix_ git repository
----------------------------------

```bash
git clone https://github.com/NixOS/nix.git
cd nix
git remote add debian https://github.com/KaiHa/nix-debian.git
git fetch
gbp buildpackage --git-upstream-branch=origin/master --git-debian-branch=debian/master
```

For this to work `git-buildpackage` must be installed and a
`cowbuilder` _basepath_ must be available. The default options for
`gbp` are found in `debian/gbp.conf`.


Running the tests
-----------------

```bash
sudo autopkgtest -B ../nix_<VERSION>_amd64.deb . -- lxc autopkgtest-sid
```

Current Weather
---------------

| _Status_                                                                                                                      | _Branch and Environment_                         |
|:-----------------------------------------------------------------------------------------------------------------------------:|--------------------------------------------------|
| [![Build Status](https://travis-ci.org/KaiHa/nix-debian.svg?branch=debian%2Fstretch)](https://travis-ci.org/KaiHa/nix-debian) | branch `debian/stretch` on amd64 Debian _stretch_|
| [![Build Status](https://travis-ci.org/KaiHa/nix-debian.svg?branch=master)](https://travis-ci.org/KaiHa/nix-debian)           | branch `master` on amd64 Debian _testing_        |

[1]: https://nixos.org/nix/
[2]: https://github.com/KaiHa/nix-debian/issues
