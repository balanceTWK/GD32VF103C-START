BSP_ROOT ?= /home/tang/workspace/temp/GD32VF103C-START
RTT_ROOT ?= /home/tang/workspace/temp/GD32VF103C-START/rt-thread

CROSS_COMPILE ?=/home/tang/workspace/temp/GD32VF103C-START/riscv-none-gcc/8.2.0-2.2-20190521-0004/bin/riscv-none-embed-

CFLAGS := -march=rv32imac -mabi=ilp32 -DUSE_PLIC -DUSE_M_TIME -DNO_INIT -mcmodel=medany -msmall-data-limit=8 -L.  -nostartfiles  -lc  -save-temps=obj -Os
AFLAGS :=-c -march=rv32imac -mabi=ilp32 -DUSE_PLIC -DUSE_M_TIME -DNO_INIT -mcmodel=medany -msmall-data-limit=8 -L.  -nostartfiles  -lc  -x assembler-with-cpp -Iplatform -Ilibraries/n200/include -Ilibraries/n200/env_Eclipse
LFLAGS := -march=rv32imac -mabi=ilp32 -DUSE_PLIC -DUSE_M_TIME -DNO_INIT -mcmodel=medany -msmall-data-limit=8 -L.  -nostartfiles  -lc  -Wl,--gc-sections,-cref,-Map=rtthread.map -T ./libraries/n200/env_Eclipse/GD32VF103xB.lds -Wl,-wrap=memset

CPPPATHS :=-I$(BSP_ROOT) \
	-I$(BSP_ROOT)/applications \
	-I$(BSP_ROOT)/board \
	-I$(BSP_ROOT)/drivers \
	-I$(BSP_ROOT)/libraries/GD32VF103_standard_peripheral \
	-I$(BSP_ROOT)/libraries/GD32VF103_standard_peripheral/Include \
	-I$(BSP_ROOT)/libraries/n200/drivers \
	-I$(BSP_ROOT)/libraries/n200/stubs \
	-I$(RTT_ROOT)/components/drivers/include \
	-I$(RTT_ROOT)/components/finsh \
	-I$(RTT_ROOT)/components/libc/compilers/newlib \
	-I$(RTT_ROOT)/include \
	-I$(RTT_ROOT)/libcpu/risc-v/bumblebee \
	-I$(RTT_ROOT)/libcpu/risc-v/common 

DEFINES := -DHAVE_CCONFIG_H -DRT_USING_NEWLIB
