# Linux Kernel VMA Inspector

A Linux kernel module that inspects and reports Virtual Memory Areas (VMAs)
of a given process inside the Linux kernel.

This module demonstrates practical exploration of:

- mm_struct
- vm_area_struct
- Process memory layout
- Kernel-level traversal of VMAs

---

## 🧠 Background

In Linux, every process has an `mm_struct` that contains a linked list (or RB-tree in newer kernels)
of `vm_area_struct` objects representing memory regions.

This module walks through a process's VMA list and prints:

- Start address
- End address
- Permissions
- Region size

---

## 🧪 Kernel Version Tested

Tested on:

Linux 6.x (Ubuntu)

You can verify your version with:

```bash
uname -r


What This Demonstrates

Kernel module development

Safe access to task_struct

Traversal of mm_struct

Understanding of process virtual memory layout

Low-level debugging using dmesg

⚠️ Disclaimer

This module is for educational and systems exploration purposes only.
Do not use in production systems.


---

# ✅ Step 3 — Commit It

```bash
git add README.md
git commit -m "Add structured README with usage and kernel details"
git push


commands:-

make
secure boot
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
    ~/kernel_keys/MOK.key \
    ~/kernel_keys/MOK.crt \
    unified_vma_inspector.ko
    
    
    load the module
   sudo insmod unified_vma_inspector.ko target_pid=1


watch kernel log live
dmesg -w

remove themodule
sudo rmmod unified_vma_inspector
confirm
dmesg | tail

make clean



versions 1.1
make VERSION=1.1
or
make VERSION=1.1 SRC=unified_vma_inspector.c

mv unified_vma_inspector.ko unified_vma_inspector_1.1.ko

mv unified_vma_inspector_1_1.ko unified_vma_inspector_1_2.ko
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
    ~/kernel_keys/MOK.key \
    ~/kernel_keys/MOK.crt \
    unified_vma_inspector_1.1.ko
    
    or 
    
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
    ~/kernel_keys/MOK.key \
    ~/kernel_keys/MOK.crt \
    unified_vma_inspector_1_1.ko
    
    
    sudo insmod unified_vma_inspector_1.1.ko target_pid=1
    or
    sudo insmod unified_vma_inspector_1_1.ko target_pid=1
    confirm it loaded 
    lsmod | grep unified_vma_inspector

    watch kernel log live
dmesg -w
    sudo rmmod unified_vma_inspector_1.1
    or 
    sudo rmmod unified_vma_inspector
    
    
    
    
    
    version1.2
    
    mv unified_vma_inspector_1_1.ko unified_vma_inspector_1_2.ko
    
    sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
    ~/kernel_keys/MOK.key \
    ~/kernel_keys/MOK.crt \
    unified_vma_inspector_1_2.ko
    
     sudo insmod unified_vma_inspector_1_2.ko target_pid=1
confirm it loaded 
    lsmod | grep unified_vma_inspector

    watch kernel log live
dmesg -w

sudo rmmod unified_vma_inspector











make                  # builds both versions
make all              # same

# Or build only one version if you prefer:
make unified_vma_inspector_1_1.ko
make unified_vma_inspector_1_2.ko
