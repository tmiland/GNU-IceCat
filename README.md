# GNU-IceCat

[GNU-IceCat](https://www.gnu.org/software/gnuzilla/) package for Debian based distro's.

Tested and working on Ubuntu 19.10

![screenshot](https://raw.githubusercontent.com/tmiland/GNU-IceCat/master/img/icecat.png)

### Install on Debian/Ubuntu

Make sure you have the "menu" package and git:

```shell
sudo apt-get install menu && sudo apt-get install git
```

Using git, grab the latest code for the GNU-IceCat browser package builder:

```shell
git clone https://github.com/tmiland/GNU-IceCat.git
```

CD into the newly cloned git folder, and execute the build tool to generate a new package.

```shell
cd GNU-IceCat
```

```shell
sh package.sh
```

Package.sh will build a DEB package according to your Architecture Type.

Use the dpkg command in terminal to install:

```
sudo dpkg -i gnu-icecat_amd64.deb
```

or

```
sudo dpkg -i gnu-icecat_i386.deb
```

Uninstall the GNU IceCat browser with:

```
sudo apt-get remove gnu-icecat
```

Alternatively download deb packages here: https://github.com/tmiland/GNU-IceCat/releases
