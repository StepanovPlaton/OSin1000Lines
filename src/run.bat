@echo off
make kernel
cd /d "C:\Program Files\qemu"
qemu-system-riscv32.exe -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel %~dp0kernel.elf