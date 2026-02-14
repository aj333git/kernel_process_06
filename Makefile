KDIR := /lib/modules/$(shell uname -r)/build
PWD  := $(shell pwd)

obj-m += unified_vma_inspector.o

all: unified_vma_inspector_1_1.ko unified_vma_inspector_1_2.ko

unified_vma_inspector_1_1.ko: unified_vma_inspector_v1_1.c
	@cp $< unified_vma_inspector.c
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	@mv unified_vma_inspector.ko $@
	@rm -f unified_vma_inspector.c

unified_vma_inspector_1_2.ko: unified_vma_inspector_v1_2.c
	@cp $< unified_vma_inspector.c
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	@mv unified_vma_inspector.ko $@
	@rm -f unified_vma_inspector.c

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
	rm -f unified_vma_inspector_*.ko unified_vma_inspector.c
