# cutoff-bash

## Calculate Cut off Marks Using Bash Script

A Simple to Script to Calculate the Cut of Marks for Engineering, MBBS, Pure Science & Agriculture.

Cut off Calculator Shell script for Linux and Android 🎛

## Requirements

- Linux Based System
- Android (Use Termux Android Terminal Emulator - Get it from Google Play store)
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

- Run this Below command to Get the info & usage about this Cutoff Shell Script

```
bash cutoff.sh
```

### Engineering

```
bash eng.sh
```

### Medical

```
bash mbbs.sh
```

### Pure Science

```
bash purescience.sh
```

### Agriculture

```
bash agriculture.sh
```

### Using on Android?

- Down Termux From Google Play store - https://play.google.com/store/apps/details?id=com.termux&hl=en
- After Installing this App Update the Packages & Install Git, & Enable Device Storage permission for Termux
- Update packages

```
apt update && apt upgrade
```

- Install Git (For cloning this Project Respo on your Android device)

```
pkg install git
```

- Enable Termux Storage Permission (https://termux.com/storage.html)

```
termux-setup-storage
```

## Contribute

Just Fork & Send Pull Request

## Donate

If you like My work donate some bitcoins 💖 it will Boost me ☺ to develop more open source Projects.

## License

MIT
