	.file	"sbrk.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.sdata,"aw"
	.align	2
	.type	curbrk.1525, @object
	.size	curbrk.1525, 4
curbrk.1525:
	.word	_end
	.text
	.align	1
	.globl	_sbrk
	.type	_sbrk, @function
_sbrk:
.LFB0:
	.file 1 "libraries/n22/stubs/sbrk.c"
	.loc 1 5 29
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 11 17
	lla	a5,curbrk.1525
	lw	a4,0(a5)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 11 8
	lla	a5,_end
	bltu	a4,a5,.L2
	.loc 1 11 43 discriminator 1
	lla	a5,curbrk.1525
	lw	a4,0(a5)
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 1 11 32 discriminator 1
	lla	a5,_heap_end
	bleu	a4,a5,.L3
.L2:
	.loc 1 15 20
	li	a5,-1
	j	.L4
.L3:
	.loc 1 17 12
	lla	a5,curbrk.1525
	lw	a4,0(a5)
	lw	a5,-20(s0)
	add	a4,a4,a5
	lla	a5,curbrk.1525
	sw	a4,0(a5)
	.loc 1 18 19
	lla	a5,curbrk.1525
	lw	a4,0(a5)
	lw	a5,-20(s0)
	neg	a5,a5
	add	a5,a4,a5
.L4:
	.loc 1 19 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	_sbrk, .-_sbrk
.Letext0:
	.file 2 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/lib/gcc/riscv-none-embed/8.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF377
	.byte	0xc
	.4byte	.LASF378
	.4byte	.LASF379
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.byte	0x2
	.4byte	.LASF380
	.byte	0x2
	.byte	0x95
	.byte	0xd
	.4byte	0x35
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF371
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF372
	.byte	0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF373
	.byte	0x5
	.4byte	.LASF381
	.byte	0x1
	.byte	0x5
	.byte	0x7
	.4byte	0xa5
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0xa5
	.byte	0x6
	.4byte	.LASF382
	.byte	0x1
	.byte	0x5
	.byte	0x17
	.4byte	0x29
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF374
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0xa7
	.byte	0x8
	.4byte	.LASF383
	.byte	0x1
	.byte	0x8
	.byte	0x12
	.4byte	0xb9
	.byte	0x5
	.byte	0x3
	.4byte	curbrk.1525
	.byte	0x7
	.4byte	.LASF375
	.byte	0x1
	.byte	0xa
	.byte	0x11
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0xa
	.4byte	0xb2
	.4byte	0xb2
	.byte	0xb
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF376
	.byte	0xc
	.byte	0x4
	.4byte	0xb2
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x10
	.byte	0x17
	.byte	0x99,0x42
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.byte	0
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.4byte	.LASF0
	.byte	0x5
	.byte	0x2
	.4byte	.LASF1
	.byte	0x5
	.byte	0x3
	.4byte	.LASF2
	.byte	0x5
	.byte	0x4
	.4byte	.LASF3
	.byte	0x5
	.byte	0x5
	.4byte	.LASF4
	.byte	0x5
	.byte	0x6
	.4byte	.LASF5
	.byte	0x5
	.byte	0x7
	.4byte	.LASF6
	.byte	0x5
	.byte	0x8
	.4byte	.LASF7
	.byte	0x5
	.byte	0x9
	.4byte	.LASF8
	.byte	0x5
	.byte	0xa
	.4byte	.LASF9
	.byte	0x5
	.byte	0xb
	.4byte	.LASF10
	.byte	0x5
	.byte	0xc
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd
	.4byte	.LASF12
	.byte	0x5
	.byte	0xe
	.4byte	.LASF13
	.byte	0x5
	.byte	0xf
	.4byte	.LASF14
	.byte	0x5
	.byte	0x10
	.4byte	.LASF15
	.byte	0x5
	.byte	0x11
	.4byte	.LASF16
	.byte	0x5
	.byte	0x12
	.4byte	.LASF17
	.byte	0x5
	.byte	0x13
	.4byte	.LASF18
	.byte	0x5
	.byte	0x14
	.4byte	.LASF19
	.byte	0x5
	.byte	0x15
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.4byte	.LASF21
	.byte	0x5
	.byte	0x17
	.4byte	.LASF22
	.byte	0x5
	.byte	0x18
	.4byte	.LASF23
	.byte	0x5
	.byte	0x19
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF26
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF29
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF30
	.byte	0x5
	.byte	0x20
	.4byte	.LASF31
	.byte	0x5
	.byte	0x21
	.4byte	.LASF32
	.byte	0x5
	.byte	0x22
	.4byte	.LASF33
	.byte	0x5
	.byte	0x23
	.4byte	.LASF34
	.byte	0x5
	.byte	0x24
	.4byte	.LASF35
	.byte	0x5
	.byte	0x25
	.4byte	.LASF36
	.byte	0x5
	.byte	0x26
	.4byte	.LASF37
	.byte	0x5
	.byte	0x27
	.4byte	.LASF38
	.byte	0x5
	.byte	0x28
	.4byte	.LASF39
	.byte	0x5
	.byte	0x29
	.4byte	.LASF40
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF42
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF43
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF44
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF45
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF46
	.byte	0x5
	.byte	0x30
	.4byte	.LASF47
	.byte	0x5
	.byte	0x31
	.4byte	.LASF48
	.byte	0x5
	.byte	0x32
	.4byte	.LASF49
	.byte	0x5
	.byte	0x33
	.4byte	.LASF50
	.byte	0x5
	.byte	0x34
	.4byte	.LASF51
	.byte	0x5
	.byte	0x35
	.4byte	.LASF52
	.byte	0x5
	.byte	0x36
	.4byte	.LASF53
	.byte	0x5
	.byte	0x37
	.4byte	.LASF54
	.byte	0x5
	.byte	0x38
	.4byte	.LASF55
	.byte	0x5
	.byte	0x39
	.4byte	.LASF56
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF57
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF58
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF59
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF60
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF61
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF62
	.byte	0x5
	.byte	0x40
	.4byte	.LASF63
	.byte	0x5
	.byte	0x41
	.4byte	.LASF64
	.byte	0x5
	.byte	0x42
	.4byte	.LASF65
	.byte	0x5
	.byte	0x43
	.4byte	.LASF66
	.byte	0x5
	.byte	0x44
	.4byte	.LASF67
	.byte	0x5
	.byte	0x45
	.4byte	.LASF68
	.byte	0x5
	.byte	0x46
	.4byte	.LASF69
	.byte	0x5
	.byte	0x47
	.4byte	.LASF70
	.byte	0x5
	.byte	0x48
	.4byte	.LASF71
	.byte	0x5
	.byte	0x49
	.4byte	.LASF72
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF73
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF74
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF75
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF76
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF77
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF78
	.byte	0x5
	.byte	0x50
	.4byte	.LASF79
	.byte	0x5
	.byte	0x51
	.4byte	.LASF80
	.byte	0x5
	.byte	0x52
	.4byte	.LASF81
	.byte	0x5
	.byte	0x53
	.4byte	.LASF82
	.byte	0x5
	.byte	0x54
	.4byte	.LASF83
	.byte	0x5
	.byte	0x55
	.4byte	.LASF84
	.byte	0x5
	.byte	0x56
	.4byte	.LASF85
	.byte	0x5
	.byte	0x57
	.4byte	.LASF86
	.byte	0x5
	.byte	0x58
	.4byte	.LASF87
	.byte	0x5
	.byte	0x59
	.4byte	.LASF88
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF89
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF90
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF91
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF92
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF93
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF94
	.byte	0x5
	.byte	0x60
	.4byte	.LASF95
	.byte	0x5
	.byte	0x61
	.4byte	.LASF96
	.byte	0x5
	.byte	0x62
	.4byte	.LASF97
	.byte	0x5
	.byte	0x63
	.4byte	.LASF98
	.byte	0x5
	.byte	0x64
	.4byte	.LASF99
	.byte	0x5
	.byte	0x65
	.4byte	.LASF100
	.byte	0x5
	.byte	0x66
	.4byte	.LASF101
	.byte	0x5
	.byte	0x67
	.4byte	.LASF102
	.byte	0x5
	.byte	0x68
	.4byte	.LASF103
	.byte	0x5
	.byte	0x69
	.4byte	.LASF104
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF105
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF106
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF107
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF108
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF109
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF110
	.byte	0x5
	.byte	0x70
	.4byte	.LASF111
	.byte	0x5
	.byte	0x71
	.4byte	.LASF112
	.byte	0x5
	.byte	0x72
	.4byte	.LASF113
	.byte	0x5
	.byte	0x73
	.4byte	.LASF114
	.byte	0x5
	.byte	0x74
	.4byte	.LASF115
	.byte	0x5
	.byte	0x75
	.4byte	.LASF116
	.byte	0x5
	.byte	0x76
	.4byte	.LASF117
	.byte	0x5
	.byte	0x77
	.4byte	.LASF118
	.byte	0x5
	.byte	0x78
	.4byte	.LASF119
	.byte	0x5
	.byte	0x79
	.4byte	.LASF120
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF121
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF122
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF123
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF124
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF125
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF126
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF127
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF128
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF129
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF130
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF131
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF132
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF133
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF134
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF135
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF136
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF137
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF138
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF139
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF140
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF141
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF142
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF143
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF144
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF145
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF146
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF147
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF148
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF149
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF150
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF151
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF152
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF153
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF154
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF155
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF156
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF157
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF158
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF159
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF160
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF161
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF162
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF163
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF164
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF165
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF166
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF167
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF168
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF169
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF170
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF171
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF172
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF173
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF174
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF175
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF176
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF177
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF178
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF179
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF180
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF181
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF182
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF183
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF184
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF185
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF186
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF187
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF188
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF189
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF190
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF191
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF192
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF193
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF194
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF195
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF196
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF197
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF198
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF199
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF200
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF201
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF202
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF203
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF204
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF205
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF206
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF207
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF208
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF209
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF210
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF211
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF212
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF213
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF214
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF215
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF216
	.byte	0x5
	.byte	0xda,0x1
	.4byte	.LASF217
	.byte	0x5
	.byte	0xdb,0x1
	.4byte	.LASF218
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF219
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF220
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF221
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF222
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF223
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF224
	.byte	0x5
	.byte	0xe2,0x1
	.4byte	.LASF225
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF226
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF227
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF228
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF229
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF230
	.byte	0x5
	.byte	0xe8,0x1
	.4byte	.LASF231
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF232
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF233
	.byte	0x5
	.byte	0xeb,0x1
	.4byte	.LASF234
	.byte	0x5
	.byte	0xec,0x1
	.4byte	.LASF235
	.byte	0x5
	.byte	0xed,0x1
	.4byte	.LASF236
	.byte	0x5
	.byte	0xee,0x1
	.4byte	.LASF237
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF238
	.byte	0x5
	.byte	0xf0,0x1
	.4byte	.LASF239
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF240
	.byte	0x5
	.byte	0xf2,0x1
	.4byte	.LASF241
	.byte	0x5
	.byte	0xf3,0x1
	.4byte	.LASF242
	.byte	0x5
	.byte	0xf4,0x1
	.4byte	.LASF243
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF244
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF245
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF246
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF247
	.byte	0x5
	.byte	0xf9,0x1
	.4byte	.LASF248
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF249
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF250
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF251
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF252
	.byte	0x5
	.byte	0xfe,0x1
	.4byte	.LASF253
	.byte	0x5
	.byte	0xff,0x1
	.4byte	.LASF254
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF255
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF256
	.byte	0x5
	.byte	0x82,0x2
	.4byte	.LASF257
	.byte	0x5
	.byte	0x83,0x2
	.4byte	.LASF258
	.byte	0x5
	.byte	0x84,0x2
	.4byte	.LASF259
	.byte	0x5
	.byte	0x85,0x2
	.4byte	.LASF260
	.byte	0x5
	.byte	0x86,0x2
	.4byte	.LASF261
	.byte	0x5
	.byte	0x87,0x2
	.4byte	.LASF262
	.byte	0x5
	.byte	0x88,0x2
	.4byte	.LASF263
	.byte	0x5
	.byte	0x89,0x2
	.4byte	.LASF264
	.byte	0x5
	.byte	0x8a,0x2
	.4byte	.LASF265
	.byte	0x5
	.byte	0x8b,0x2
	.4byte	.LASF266
	.byte	0x5
	.byte	0x8c,0x2
	.4byte	.LASF267
	.byte	0x5
	.byte	0x8d,0x2
	.4byte	.LASF268
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF269
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF270
	.byte	0x5
	.byte	0x90,0x2
	.4byte	.LASF271
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF272
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF273
	.byte	0x5
	.byte	0x93,0x2
	.4byte	.LASF274
	.byte	0x5
	.byte	0x94,0x2
	.4byte	.LASF275
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF276
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF277
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF278
	.byte	0x5
	.byte	0x98,0x2
	.4byte	.LASF279
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF280
	.byte	0x5
	.byte	0x9a,0x2
	.4byte	.LASF281
	.byte	0x5
	.byte	0x9b,0x2
	.4byte	.LASF282
	.byte	0x5
	.byte	0x9c,0x2
	.4byte	.LASF283
	.byte	0x5
	.byte	0x9d,0x2
	.4byte	.LASF284
	.byte	0x5
	.byte	0x9e,0x2
	.4byte	.LASF285
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF286
	.byte	0x5
	.byte	0xa0,0x2
	.4byte	.LASF287
	.byte	0x5
	.byte	0xa1,0x2
	.4byte	.LASF288
	.byte	0x5
	.byte	0xa2,0x2
	.4byte	.LASF289
	.byte	0x5
	.byte	0xa3,0x2
	.4byte	.LASF290
	.byte	0x5
	.byte	0xa4,0x2
	.4byte	.LASF291
	.byte	0x5
	.byte	0xa5,0x2
	.4byte	.LASF292
	.byte	0x5
	.byte	0xa6,0x2
	.4byte	.LASF293
	.byte	0x5
	.byte	0xa7,0x2
	.4byte	.LASF294
	.byte	0x5
	.byte	0xa8,0x2
	.4byte	.LASF295
	.byte	0x5
	.byte	0xa9,0x2
	.4byte	.LASF296
	.byte	0x5
	.byte	0xaa,0x2
	.4byte	.LASF297
	.byte	0x5
	.byte	0xab,0x2
	.4byte	.LASF298
	.byte	0x5
	.byte	0xac,0x2
	.4byte	.LASF299
	.byte	0x5
	.byte	0xad,0x2
	.4byte	.LASF300
	.byte	0x5
	.byte	0xae,0x2
	.4byte	.LASF301
	.byte	0x5
	.byte	0xaf,0x2
	.4byte	.LASF302
	.byte	0x5
	.byte	0xb0,0x2
	.4byte	.LASF303
	.byte	0x5
	.byte	0xb1,0x2
	.4byte	.LASF304
	.byte	0x5
	.byte	0xb2,0x2
	.4byte	.LASF305
	.byte	0x5
	.byte	0xb3,0x2
	.4byte	.LASF306
	.byte	0x5
	.byte	0xb4,0x2
	.4byte	.LASF307
	.byte	0x5
	.byte	0xb5,0x2
	.4byte	.LASF308
	.byte	0x5
	.byte	0xb6,0x2
	.4byte	.LASF309
	.byte	0x5
	.byte	0xb7,0x2
	.4byte	.LASF310
	.byte	0x5
	.byte	0xb8,0x2
	.4byte	.LASF311
	.byte	0x5
	.byte	0xb9,0x2
	.4byte	.LASF312
	.byte	0x5
	.byte	0x1
	.4byte	.LASF313
	.byte	0x5
	.byte	0x2
	.4byte	.LASF314
	.byte	0x5
	.byte	0x3
	.4byte	.LASF315
	.byte	0x5
	.byte	0x4
	.4byte	.LASF316
	.byte	0x5
	.byte	0x5
	.4byte	.LASF317
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.a38874c8f8a57e66301090908ec2a69f,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x27
	.4byte	.LASF318
	.byte	0x5
	.byte	0x28
	.4byte	.LASF319
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF320
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF321
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF322
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF323
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF324
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF325
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF326
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF327
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF328
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF329
	.byte	0x6
	.byte	0xa1,0x1
	.4byte	.LASF330
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF331
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF332
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF333
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF334
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF335
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF336
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF337
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF338
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF339
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF340
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF341
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF342
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF343
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF344
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF345
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF346
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF347
	.byte	0x6
	.byte	0xee,0x1
	.4byte	.LASF348
	.byte	0x5
	.byte	0x8b,0x2
	.4byte	.LASF349
	.byte	0x5
	.byte	0x8c,0x2
	.4byte	.LASF350
	.byte	0x5
	.byte	0x8d,0x2
	.4byte	.LASF351
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF352
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF353
	.byte	0x5
	.byte	0x90,0x2
	.4byte	.LASF354
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF355
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF356
	.byte	0x5
	.byte	0x93,0x2
	.4byte	.LASF357
	.byte	0x5
	.byte	0x94,0x2
	.4byte	.LASF358
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF359
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF360
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF361
	.byte	0x5
	.byte	0x98,0x2
	.4byte	.LASF362
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF363
	.byte	0x6
	.byte	0xa6,0x2
	.4byte	.LASF364
	.byte	0x6
	.byte	0xdb,0x2
	.4byte	.LASF365
	.byte	0x6
	.byte	0x91,0x3
	.4byte	.LASF366
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF367
	.byte	0x6
	.byte	0x9c,0x3
	.4byte	.LASF368
	.byte	0x5
	.byte	0xa1,0x3
	.4byte	.LASF369
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF370
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF338:
	.string	"_SIZE_T_ "
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF217:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF273:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF202:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF361:
	.string	"__INT_WCHAR_T_H "
.LASF61:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF208:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF256:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF236:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF123:
	.string	"__UINT32_C(c) c ## UL"
.LASF255:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF272:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF171:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF190:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF359:
	.string	"_WCHAR_T_H "
.LASF218:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF175:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF318:
	.string	"_STDDEF_H "
.LASF311:
	.string	"__riscv_cmodel_medany 1"
.LASF238:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF163:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF289:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF68:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF239:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF301:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF302:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF333:
	.string	"_SIZE_T "
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF364:
	.string	"_BSD_WCHAR_T_"
.LASF181:
	.string	"__DECIMAL_DIG__ 36"
.LASF345:
	.string	"_GCC_SIZE_T "
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF371:
	.string	"unsigned int"
.LASF212:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF330:
	.string	"__need_ptrdiff_t"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF38:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF5:
	.string	"__GNUC__ 8"
.LASF337:
	.string	"__SIZE_T "
.LASF161:
	.string	"__DBL_MANT_DIG__ 53"
.LASF56:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF197:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF33:
	.string	"__PTRDIFF_TYPE__ int"
.LASF285:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF42:
	.string	"__INT16_TYPE__ short int"
.LASF265:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF343:
	.string	"_SIZE_T_DECLARED "
.LASF329:
	.string	"_PTRDIFF_T_DECLARED "
.LASF250:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF49:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF93:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF184:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF193:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF306:
	.string	"__riscv_mul 1"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF186:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF280:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF308:
	.string	"__riscv_muldiv 1"
.LASF205:
	.string	"__FLT64_DIG__ 15"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF51:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF377:
	.string	"GNU C17 8.2.0 -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit= 8 -g3 -O0"
.LASF8:
	.string	"__VERSION__ \"8.2.0\""
.LASF244:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF60:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF225:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF313:
	.string	"USE_PLIC 1"
.LASF335:
	.string	"_T_SIZE_ "
.LASF66:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF201:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF375:
	.string	"_heap_end"
.LASF248:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF339:
	.string	"_BSD_SIZE_T_ "
.LASF362:
	.string	"_GCC_WCHAR_T "
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF263:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF220:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF203:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF342:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF196:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF176:
	.string	"__LDBL_DIG__ 33"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF275:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF34:
	.string	"__WCHAR_TYPE__ int"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF279:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF222:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF242:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF174:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF57:
	.string	"__INT_FAST8_TYPE__ int"
.LASF216:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF179:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF271:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF293:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF379:
	.string	"/home/tang/workspace/RISC-V/GD32VF103C-START"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF253:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF209:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF350:
	.string	"__WCHAR_T__ "
.LASF274:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF324:
	.string	"__PTRDIFF_T "
.LASF247:
	.string	"__FLT64X_DIG__ 33"
.LASF257:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF262:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF207:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF349:
	.string	"__wchar_t__ "
.LASF249:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF366:
	.string	"NULL"
.LASF223:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF226:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF304:
	.string	"__riscv_compressed 1"
.LASF316:
	.string	"HAVE_CCONFIG_H 1"
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF168:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF58:
	.string	"__INT_FAST16_TYPE__ int"
.LASF219:
	.string	"__FLT128_DIG__ 33"
.LASF46:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF183:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF283:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF54:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF185:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF241:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF367:
	.string	"NULL ((void *)0)"
.LASF382:
	.string	"incr"
.LASF284:
	.string	"__NO_INLINE__ 1"
.LASF309:
	.string	"__riscv_xlen 32"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF210:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF286:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF355:
	.string	"_WCHAR_T_ "
.LASF192:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF62:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF164:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF376:
	.string	"char"
.LASF69:
	.string	"__GXX_ABI_VERSION 1013"
.LASF230:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF191:
	.string	"__FLT32_DIG__ 6"
.LASF215:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF243:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF380:
	.string	"ptrdiff_t"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF381:
	.string	"_sbrk"
.LASF291:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF332:
	.string	"__SIZE_T__ "
.LASF305:
	.string	"__riscv_atomic 1"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF346:
	.string	"_SIZET_ "
.LASF327:
	.string	"___int_ptrdiff_t_h "
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF264:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF141:
	.string	"__GCC_IEC_559 0"
.LASF50:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF194:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF328:
	.string	"_GCC_PTRDIFF_T "
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF365:
	.string	"__need_wchar_t"
.LASF162:
	.string	"__DBL_DIG__ 15"
.LASF294:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF233:
	.string	"__FLT32X_DIG__ 15"
.LASF232:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF351:
	.string	"_WCHAR_T "
.LASF354:
	.string	"__WCHAR_T "
.LASF372:
	.string	"long long int"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF169:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF139:
	.string	"__INTPTR_WIDTH__ 32"
.LASF53:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF340:
	.string	"_SIZE_T_DEFINED_ "
.LASF211:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF358:
	.string	"_WCHAR_T_DEFINED "
.LASF312:
	.string	"__ELF__ 1"
.LASF240:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF296:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF298:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF266:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF259:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF159:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF47:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF0:
	.string	"__STDC__ 1"
.LASF17:
	.string	"__SIZEOF_LONG__ 4"
.LASF165:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF347:
	.string	"__size_t "
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF321:
	.string	"_PTRDIFF_T "
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF246:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF35:
	.string	"__WINT_TYPE__ unsigned int"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF178:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF44:
	.string	"__INT64_TYPE__ long long int"
.LASF276:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF368:
	.string	"__need_NULL"
.LASF314:
	.string	"USE_M_TIME 1"
.LASF326:
	.string	"_BSD_PTRDIFF_T_ "
.LASF188:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF251:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF300:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF221:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF89:
	.string	"__SIZE_WIDTH__ 32"
.LASF260:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF200:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF268:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF84:
	.string	"__LONG_WIDTH__ 32"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF39:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF373:
	.string	"long double"
.LASF282:
	.string	"__USER_LABEL_PREFIX__ "
.LASF348:
	.string	"__need_size_t"
.LASF55:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF37:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF360:
	.string	"___int_wchar_t_h "
.LASF352:
	.string	"_T_WCHAR_ "
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF315:
	.string	"NO_INIT 1"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF177:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF254:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF281:
	.string	"__REGISTER_PREFIX__ "
.LASF199:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF363:
	.string	"_WCHAR_T_DECLARED "
.LASF231:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF269:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF43:
	.string	"__INT32_TYPE__ long int"
.LASF235:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF63:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF258:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF277:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF234:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF307:
	.string	"__riscv_div 1"
.LASF189:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF41:
	.string	"__INT8_TYPE__ signed char"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF172:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF378:
	.string	"libraries/n22/stubs/sbrk.c"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF116:
	.string	"__INT64_C(c) c ## LL"
.LASF227:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF45:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF336:
	.string	"_T_SIZE "
.LASF52:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF374:
	.string	"_end"
.LASF31:
	.string	"__SIZEOF_POINTER__ 4"
.LASF213:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF157:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF341:
	.string	"_SIZE_T_DEFINED "
.LASF224:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF297:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF125:
	.string	"__UINT64_C(c) c ## ULL"
.LASF310:
	.string	"__riscv_float_abi_soft 1"
.LASF1:
	.string	"__STDC_VERSION__ 201710L"
.LASF290:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF317:
	.string	"RT_USING_NEWLIB 1"
.LASF357:
	.string	"_WCHAR_T_DEFINED_ "
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF344:
	.string	"___int_size_t_h "
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF353:
	.string	"_T_WCHAR "
.LASF67:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF295:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF64:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF261:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF155:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF65:
	.string	"__INTPTR_TYPE__ int"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF182:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF356:
	.string	"_BSD_WCHAR_T_ "
.LASF32:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF322:
	.string	"_T_PTRDIFF_ "
.LASF319:
	.string	"_STDDEF_H_ "
.LASF292:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF383:
	.string	"curbrk"
.LASF156:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF206:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF173:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF59:
	.string	"__INT_FAST32_TYPE__ int"
.LASF160:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF36:
	.string	"__INTMAX_TYPE__ long long int"
.LASF303:
	.string	"__riscv 1"
.LASF91:
	.string	"__INTMAX_C(c) c ## LL"
.LASF369:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF48:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF245:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF166:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF323:
	.string	"_T_PTRDIFF "
.LASF288:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF228:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF334:
	.string	"_SYS_SIZE_T_H "
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF325:
	.string	"_PTRDIFF_T_ "
.LASF287:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF278:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF113:
	.string	"__INT32_C(c) c ## L"
.LASF252:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF237:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF370:
	.string	"_GCC_MAX_ALIGN_T "
.LASF195:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF214:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF320:
	.string	"_ANSI_STDDEF_H "
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF180:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF270:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF198:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF170:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF299:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF40:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF229:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF187:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF331:
	.string	"__size_t__ "
.LASF204:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF267:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF158:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF167:
	.string	"__DBL_DECIMAL_DIG__ 17"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
