Debian package of the nix package manager
=========================================

Packaging of the [nix package manager][1] for Debian. Ultimate goal is
to get _nix_ included into Debian.

Currently there is at least [one blocker][2] that will prevent
inclusion into Debian.

Help welcome :)

Building the package
--------------------

```bash
uscan -ddd
pdebuild --buildresult ..
# or something more complicated like:
# pdebuild --buildresult .. --pbuilder cowbuilder -- --distribution stretch --basepath /var/cache/pbuilder/stretch.cow
apt install ../nix_<VERSION>.deb
```

[1]: https://nixos.org/nix/
[2]: https://github.com/KaiHa/nix-debian/issues/2
