#!/bin/bash
set -xue

make kernel && qemu-system-riscv32 -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel kernel.elf
