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

## Installation on Windows
### Get the Red Interpreter/Toolchain + GUI Console
From https://www.red-lang.org/p/download.html, download "Red Toolchain" for compiling Red program files, and either "GUI Red" or "CLI Red" to run as a Red REPL.
You may want to rename the toolchain file; from here on out it will be referred to as "redc.exe"

### Optional: Add redc.exe to PATH
Move the Red compiler/toolchain, redc.exe, file to its own folder. Search "env" in the Windows search bar to find your environment variables menu. Edit the Path variable (under either your user or the system), then add redc.exe's folder to the PATH variable.

### Compile RED program files
To run a .red source file (say, "hello.red"):
`redc.exe -c hello.red`
The first time you run redc.exe, it may take a little while.
After compiling, run the output file, in this case "hello.exe"
./hello.exe

### IMPORTANT NOTE
Some antivirus softwares, particularly notably Windows Defender in this case, mark the Red toolchain/REPL files as viruses. To download these files on Windows, you may need to attempt downloading them once, open the Windows Security program after the download fails, and navigate to "Protection History". Here, mark the blocked Red downloads as "allow", then redownload them from the website.