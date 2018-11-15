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


Building from git repository
----------------------------

```bash
git clone https://github.com/NixOS/nix.git
cd nix
git remote add debian https://github.com/KaiHa/nix-debian.git
git fetch
gbp buildpackage --git-pbuilder --git-upstream-branch=origin/master --git-debian-branch=debian/master --git-upstream-tree=BRANCH
```


Running the tests
-----------------

```bash
sudo autopkgtest -B ../nix_<VERSION>_amd64.deb . -- lxc autopkgtest-sid
```


[1]: https://nixos.org/nix/
[2]: https://github.com/KaiHa/nix-debian/issues
