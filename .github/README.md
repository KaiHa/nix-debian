Debian package of the nix package manager
=========================================

Packaging of the [nix package manager][1] for Debian. Ultimate goal is
to get _nix_ included into Debian.

[Help][2] is welcome :)


Building the Debian Package
---------------------------

We use `git-buildpackage` for the build.

```bash
gbp buildpackage --git-pbuilder
```

For this to work `git-buildpackage` must be installed and a
`cowbuilder` _basepath_ must be available. The default options for
`gbp` are found in `debian/gbp.conf`.


Building from the source tar-ball
---------------------------------

Alternatively `pdebuild` can be used to build from source tar-ball.

```bash
uscan -ddd
pdebuild --buildresult ..
# or something more complicated like:
# pdebuild --buildresult .. --pbuilder cowbuilder -- --basepath /var/cache/pbuilder/base.cow
apt install ../nix_<VERSION>.deb
```


Running the tests
-----------------

Some `autopkgtest` are available and can be used to test the created
Debian package.

```bash
sudo autopkgtest -B ../nix.deb-export/nix_<VERSION>_amd64.deb . -- lxc autopkgtest-sid
```


Current Weather
---------------

| _Status_                                                                                                                      | _Branch and Environment_                                                                 |
|:-----------------------------------------------------------------------------------------------------------------------------:|------------------------------------------------------------------------------------------|
| [![Build Status](https://travis-ci.org/KaiHa/nix-debian.svg?branch=debian%2Fstretch)](https://travis-ci.org/KaiHa/nix-debian) | branch `debian/stretch` on amd64 Debian 9 (_Stretch_)                                    |
| [![Build Status](https://travis-ci.org/KaiHa/nix-debian.svg?branch=master)](https://travis-ci.org/KaiHa/nix-debian)           | branch `master` on amd64 Debian _testing_, Debian _unstable_ and Ubuntu 18.10 (_Cosmic_) |
| [![Build Status](https://travis-ci.org/KaiHa/nix-debian.svg?branch=ubuntu%2Fxenial)](https://travis-ci.org/KaiHa/nix-debian)  | branch `ubuntu/xenial` on amd64 Ubuntu 16.04 (_Xenial_)                                  |


[1]: https://nixos.org/nix/
[2]: https://github.com/KaiHa/nix-debian/issues
