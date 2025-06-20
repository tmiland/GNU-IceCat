# GNU-IceCat

[GNU-IceCat](https://www.gnu.org/software/gnuzilla/) package for Debian based distro's.

## FOR BUG REPORTS, VISIT: [bug-gnuzilla](https://lists.gnu.org/mailman/listinfo/bug-gnuzilla)

Tested and working on Debian 12 - Version 128.9.0
- (20.06.2025)

![screenshot](https://raw.githubusercontent.com/tmiland/GNU-IceCat/master/img/icecat.png)

### Install on Debian/Ubuntu

***Should work on other Debian based distro's, such as Linux Mint.***

### Repository

```shell
$ sudo curl -SsL -o /etc/apt/sources.list.d/tmiland.list https://deb.tmiland.com/debian/tmiland.list
```

```shell
$ curl -SsL https://deb.tmiland.com/debian/KEY.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/tmiland.gpg >/dev/null
```

```shell
$ sudo apt update
```

```shell
$ sudo apt install gnu-icecat
```
**Note**
Package ```icecat``` has changed to ```gnu-icecat```

To reinstall:

```shell
$ sudo apt remove icecat && sudo apt install gnu-icecat
```

**For most recent version, use the repo**

~~IceCat hasn't been uploaded to their repo since 2019, and the repo option will install from [icecat from home:losuler:icecat project](https://software.opensuse.org//download.html?project=home%3Alosuler%3Aicecat&package=icecat)~~

IceCat will be downloaded from [icecatbrowser.org](https://icecatbrowser.org)

Repo: [deb.tmiland.com](https://github.com/tmiland/deb.tmiland.com)

### Manual install

Make sure you have the "menu" package and git:

```shell
$ sudo apt-get install menu && sudo apt-get install git
```

Using git, grab the latest code for the GNU-IceCat browser package builder:

```shell
$ git clone https://github.com/tmiland/GNU-IceCat.git
```

CD into the newly cloned git folder, and execute the build tool to generate a new package.

```shell
$ cd GNU-IceCat
```

```shell
$ ./package.sh
```

Package.sh will build a DEB package.

Use the dpkg command in terminal to install:

```shell
$ sudo dpkg -i icecat_[<version>]_amd64.deb
```

Uninstall the GNU IceCat browser with:

```shell
$ sudo apt-get remove gnu-icecat
```
