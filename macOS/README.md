<div align='center'>
    <h1>macOS</h1><br>
</div>

I am currently running a dual-boot macOS/arch linux on my ThinkPad X1 Carbon 5th Generation.
My system specs are as follows:

* `OS`: macOS Sierra 10.12.6 
* `Model`: Lenovo ThinkPad X1 Carbon 5th Generation
* `CPU`: Intel i7-7600U @ 3.9GHz
* `GPU`: Intel HD Graphics 620
* `Memory`: 16GB
* `Storage`: 500GB Samsung 850 SATA SSD
* `Wifi-Card`: Broadcom BCM94352Z DW1560

I use arch linux as my main OS and reserve macOS for compatibilty tasks such as 
Microsoft Office, XCode, and presentations.

To achieve this dual boot, I am using a dual EFI System partition setup.
I use [Clover](https://clover-wiki.zetam.org/home) to launch macOS and GRUB to launch arch linux.
The system defaults to launching GRUB, where I can boot into either arch linux directly
or into Clover, from where I can then launch macOS.

```
System Bootloader -> GRUB -> CLOVER -> macOS
                      |
                      V
                  arch linux
```

To achieve this chainloading, I am using the 40_custom defined in this directory.
