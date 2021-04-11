# GNU-IceCat

[GNU-IceCat](https://www.gnu.org/software/gnuzilla/) package for Debian based distro's.

Tested and working on Ubuntu 19.10

![screenshot](https://raw.githubusercontent.com/tmiland/GNU-IceCat/master/img/icecat.png)

### Install on Debian/Ubuntu

***Should work on other Debian based distro's, such as Linux Mint.***

### Repository

```shell
$ sudo curl -SsL -o /etc/apt/sources.list.d/tmiland.list https://deb.tmiland.com/debian/tmiland.list
```

```shell
$ curl -SsL https://deb.tmiland.com/debian/KEY.gpg | sudo apt-key add -
```

```shell
$ sudo apt update
```

```shell
$ sudo apt install icecat
```
**Note**
Package ```gnu-icecat``` has changed to ```icecat```

To reinstall:

sudo apt remove ```gnu-icecat``` && sudo apt install ```icecat```

**For most recent version, use the repo**

IceCat hasn't been uploaded to their repo since 2019, and the repo option will install from [icecat from home:losuler:icecat project](https://software.opensuse.org//download.html?project=home%3Alosuler%3Aicecat&package=icecat)

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

Package.sh will build a DEB package according to your Architecture Type.

Use the dpkg command in terminal to install:

```shell
$ sudo dpkg -i gnu-icecat_amd64.deb
```

or

```shell
$ sudo dpkg -i gnu-icecat_i386.deb
```

Uninstall the GNU IceCat browser with:

```shell
$ sudo apt-get remove gnu-icecat
```
