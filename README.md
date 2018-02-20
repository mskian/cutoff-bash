# Cut off Calculator

## Calculate Cut off Marks CLI

[![Build Status](https://travis-ci.org/mskian/cutoff-bash.svg?branch=master)](https://travis-ci.org/mskian/cutoff-bash)  <a target="_blank" href="https://github.com/mskian/cutoff-bash/blob/master/LICENSE" title="License: GPL"><img src="https://img.shields.io/badge/License-MIT-orange.svg"></a>

> Calculate Cut off Marks Using Shell Script

A Simple Script to Calculate the Cut off Marks for Engineering, MBBS, Pure Science & Agriculture.

Cut off Calculator CLI for Linux and Android 📝

## Requirements

- Linux Based System
- Android (Use Termux Android Terminal Emulator - Download it from Google Play store)
- bc - Arbitrary Precision Calculator language (For Cut off Calculation)

Ubuntu (Linux)

```
sudo apt-get update
sudo apt-get install bc
```

Termux (Android)

```
pkg install bc
```

## How to use?

- Use git to clone this respo

```
git clone https://github.com/mskian/cutoff-bash.git
```

- open the cutoff-bash Folder

```
cd cutoff-bash
```

- Run this Below commands to Get the info & usage about this Cutoff Shell Script

```
chmod +x cutoff.sh
./cutoff.sh -h
```

### Engineering

```
cutoff.sh -e
```

### Medical

```
cutoff.sh -m
```

### Pure Science

```
cutoff.sh -p
```

### Agriculture

```
cutoff.sh -a
```

### Helo

```
cutoff.sh -h
```

### Using on Android?

- Down Termux From Google Play store - https://play.google.com/store/apps/details?id=com.termux&hl=en
- After Installing this App Update the Packages, Install Git & Enable Device Storage permission for Termux
- Update packages

```
apt update && apt upgrade
```

- Install Git (For cloning this Project Respo on your Android device)

```
pkg install git
```

(or)

- Install wget (Directly download the Cut off Calculator bash script)

```
pkg install wget
```

- Enable Termux Storage Permission (https://termux.com/storage.html)

```
termux-setup-storage
```

### Other Download Options

- Install via cURL

```
curl -O https://download.mskian.com/files/cutoff.sh
```

- install via wget

```
wget https://download.mskian.com/files/cutoff.sh
```


## Contribute

Just Fork & Send Pull Request

## License

MIT
