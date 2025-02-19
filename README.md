# HelloWorldBootloader
A simple USB Bootloader that prints Hello World to the screen.


//TEST on Linux Debian

-sudo apt install nasm
-sudo apt install qemu-system

1-IF YOU ARE NOT USING MAKE, OPEN TERMINAL:

-nasm -f bin ./boot.asm -o ./boot.bin
-qemu-system-x86_64 -hda ./boot.bin


2-IF YOU ARE USING MY MAKE FILE: (ON TERMINAL)
-make
-make run


//REALTIME BOOT
-Flash the boot.bin that you get from nasm into a usb stick, plug it into your computer, restart the system and hit the key for boot menu.
- For example, msi uses f11 for boot section.
- Choose the USB Stick and the bootloader is active running as an indie-kernel on your machine, thumbs up!
