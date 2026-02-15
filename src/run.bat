@echo off
make kernel
cd /d "C:\Program Files\qemu"
qemu-system-riscv32.exe -machine virt -bios default -nographic -serial mon:stdio --no-reboot -drive id=drive0,file=disk.tar,format=raw,if=none -device virtio-blk-device,drive=drive0,bus=virtio-mmio-bus.0 -kernel %~dp0kernel.elf


