# Installation Instructions

## If using an Ubuntu 18.04+ version
```
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libcurl4:i386 \
libgtk-3-0:i386 libgdk-pixbuf2.0-0:i386
```

## Installation on GNU/Linux
### Get the Red Interpreter + CLI Console
`wget https://static.red-lang.org/dl/auto/linux/red-08nov24-fc80690c2`

### Give permissions
Now do a: chmod u+x <red-binary> which will make sure that Red can be run on your computer.

`chmod +x red-08nov24-fc80690c2`

### Run the executable
After that simply run Red using ./<red-binary>. This will open the Red console.

`./red-08nov24-fc80690c2`