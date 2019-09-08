	.file	"isatty.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.globl	_isatty
	.type	_isatty, @function
_isatty:
.LFB0:
	.file 1 "libraries/n22/stubs/isatty.c"
	.loc 1 5 21
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 6 8
	lw	a4,-20(s0)
	li	a5,1
	beq	a4,a5,.L2
	.loc 1 6 28 discriminator 1
	lw	a4,-20(s0)
	li	a5,2
	bne	a4,a5,.L3
.L2:
	.loc 1 7 16
	li	a5,1
	j	.L4
.L3:
	.loc 1 9 12
	li	a5,0
.L4:
	.loc 1 10 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	_isatty, .-_isatty
.Letext0:
	.file 2 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/unistd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF908
	.byte	0xc
	.4byte	.LASF909
	.4byte	.LASF910
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF891
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF892
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF893
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF894
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF895
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF896
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF897
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF898
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF899
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF900
	.byte	0x4
	.byte	0x4
	.4byte	0x7c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF901
	.byte	0x5
	.4byte	.LASF902
	.byte	0x2
	.byte	0x10
	.byte	0xf
	.4byte	0x8f
	.byte	0x4
	.byte	0x4
	.4byte	0x76
	.byte	0x5
	.4byte	.LASF903
	.byte	0x2
	.byte	0xfc
	.byte	0xe
	.4byte	0x76
	.byte	0x5
	.4byte	.LASF904
	.byte	0x2
	.byte	0xfd
	.byte	0xc
	.4byte	0x61
	.byte	0x5
	.4byte	.LASF905
	.byte	0x2
	.byte	0xfd
	.byte	0x14
	.4byte	0x61
	.byte	0x5
	.4byte	.LASF906
	.byte	0x2
	.byte	0xfd
	.byte	0x1c
	.4byte	0x61
	.byte	0x5
	.4byte	.LASF907
	.byte	0x2
	.byte	0xff
	.byte	0xc
	.4byte	0x61
	.byte	0x6
	.4byte	.LASF911
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.4byte	0x61
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x7
	.string	"fd"
	.byte	0x1
	.byte	0x5
	.byte	0x11
	.4byte	0x61
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.file 3 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/unistd.h"
	.byte	0x3
	.byte	0x3
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.4byte	.LASF318
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.4byte	.LASF319
	.file 4 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/_ansi.h"
	.byte	0x3
	.byte	0x8
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.4byte	.LASF320
	.file 5 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/newlib.h"
	.byte	0x3
	.byte	0xa
	.byte	0x5
	.byte	0x5
	.byte	0x8
	.4byte	.LASF321
	.file 6 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/_newlib_version.h"
	.byte	0x3
	.byte	0xe
	.byte	0x6
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 7 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/config.h"
	.byte	0x3
	.byte	0xb
	.byte	0x7
	.byte	0x5
	.byte	0x2
	.4byte	.LASF340
	.file 8 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/ieeefp.h"
	.byte	0x3
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 9 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h"
	.byte	0x3
	.byte	0x5
	.byte	0x9
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.file 10 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/cdefs.h"
	.byte	0x3
	.byte	0xb
	.byte	0xa
	.byte	0x5
	.byte	0x29
	.4byte	.LASF382
	.file 11 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h"
	.byte	0x3
	.byte	0x2b
	.byte	0xb
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 12 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/lib/gcc/riscv-none-embed/8.2.0/include/stddef.h"
	.byte	0x3
	.byte	0x2d
	.byte	0xc
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.file 13 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/types.h"
	.byte	0x3
	.byte	0xc
	.byte	0xd
	.file 14 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_types.h"
	.byte	0x3
	.byte	0x16
	.byte	0xe
	.byte	0x5
	.byte	0x6
	.4byte	.LASF545
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x3
	.byte	0x3e
	.byte	0xc
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.file 15 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_types.h"
	.byte	0x3
	.byte	0x3f
	.byte	0xf
	.byte	0x5
	.byte	0x14
	.4byte	.LASF572
	.file 16 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/lock.h"
	.byte	0x3
	.byte	0x19
	.byte	0x10
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x3
	.byte	0x9f,0x1
	.byte	0xc
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x4
	.file 17 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_stdint.h"
	.byte	0x3
	.byte	0x40
	.byte	0x11
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.file 18 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/endian.h"
	.byte	0x3
	.byte	0x43
	.byte	0x12
	.byte	0x5
	.byte	0x2
	.4byte	.LASF614
	.file 19 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_endian.h"
	.byte	0x3
	.byte	0x6
	.byte	0x13
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x4
	.file 20 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/select.h"
	.byte	0x3
	.byte	0x44
	.byte	0x14
	.byte	0x5
	.byte	0xd
	.4byte	.LASF632
	.file 21 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_sigset.h"
	.byte	0x3
	.byte	0x19
	.byte	0x15
	.byte	0x5
	.byte	0x27
	.4byte	.LASF633
	.byte	0x4
	.file 22 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_timeval.h"
	.byte	0x3
	.byte	0x1a
	.byte	0x16
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.file 23 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/timespec.h"
	.byte	0x3
	.byte	0x1b
	.byte	0x17
	.byte	0x5
	.byte	0x23
	.4byte	.LASF644
	.file 24 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_timespec.h"
	.byte	0x3
	.byte	0x26
	.byte	0x18
	.byte	0x5
	.byte	0x23
	.4byte	.LASF645
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro24
	.file 25 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_pthreadtypes.h"
	.byte	0x3
	.byte	0xef,0x1
	.byte	0x19
	.byte	0x5
	.byte	0x13
	.4byte	.LASF690
	.file 26 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/sched.h"
	.byte	0x3
	.byte	0x17
	.byte	0x1a
	.byte	0x7
	.4byte	.Ldebug_macro25
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro26
	.byte	0x4
	.file 27 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/types.h"
	.byte	0x3
	.byte	0xf0,0x1
	.byte	0x1b
	.byte	0x4
	.byte	0x6
	.byte	0xf4,0x1
	.4byte	.LASF704
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0xc
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro27
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._newlib_version.h.4.875b979a44719054cd750d0952ad3fd6,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	.LASF322
	.byte	0x5
	.byte	0x6
	.4byte	.LASF323
	.byte	0x5
	.byte	0x7
	.4byte	.LASF324
	.byte	0x5
	.byte	0x8
	.4byte	.LASF325
	.byte	0x5
	.byte	0x9
	.4byte	.LASF326
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.newlib.h.18.cf6bb52154a7abac63b0afb962204a67,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x12
	.4byte	.LASF327
	.byte	0x5
	.byte	0x15
	.4byte	.LASF328
	.byte	0x5
	.byte	0x18
	.4byte	.LASF329
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF330
	.byte	0x5
	.byte	0x28
	.4byte	.LASF331
	.byte	0x5
	.byte	0x32
	.4byte	.LASF332
	.byte	0x5
	.byte	0x39
	.4byte	.LASF333
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF334
	.byte	0x5
	.byte	0x42
	.4byte	.LASF335
	.byte	0x5
	.byte	0x45
	.4byte	.LASF336
	.byte	0x5
	.byte	0x48
	.4byte	.LASF337
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF338
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF339
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ieeefp.h.193.a04996ad6548b0579a40a1f708027f95,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF341
	.byte	0x5
	.byte	0xc3,0x3
	.4byte	.LASF342
	.byte	0x5
	.byte	0xc6,0x3
	.4byte	.LASF343
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.22.fad1cec3bc7ff06488171438dbdcfd02,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x16
	.4byte	.LASF344
	.byte	0x5
	.byte	0x21
	.4byte	.LASF345
	.byte	0x5
	.byte	0x28
	.4byte	.LASF346
	.byte	0x6
	.byte	0x83,0x1
	.4byte	.LASF347
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF348
	.byte	0x6
	.byte	0x88,0x1
	.4byte	.LASF349
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF350
	.byte	0x6
	.byte	0x8a,0x1
	.4byte	.LASF351
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF352
	.byte	0x6
	.byte	0x9e,0x1
	.4byte	.LASF353
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF354
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF355
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF356
	.byte	0x5
	.byte	0x85,0x2
	.4byte	.LASF357
	.byte	0x5
	.byte	0x8a,0x2
	.4byte	.LASF358
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF359
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF360
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF361
	.byte	0x5
	.byte	0xaf,0x2
	.4byte	.LASF362
	.byte	0x5
	.byte	0xbf,0x2
	.4byte	.LASF363
	.byte	0x5
	.byte	0xca,0x2
	.4byte	.LASF364
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.79.b548f69d9f69fceadec535dc005f68c6,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF365
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF366
	.byte	0x6
	.byte	0xe2,0x1
	.4byte	.LASF367
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF368
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF369
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF370
	.byte	0x5
	.byte	0x87,0x2
	.4byte	.LASF371
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._ansi.h.31.de524f58584151836e90d8620a16f8e8,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF372
	.byte	0x5
	.byte	0x20
	.4byte	.LASF373
	.byte	0x5
	.byte	0x21
	.4byte	.LASF374
	.byte	0x5
	.byte	0x25
	.4byte	.LASF375
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF376
	.byte	0x5
	.byte	0x45
	.4byte	.LASF377
	.byte	0x5
	.byte	0x49
	.4byte	.LASF378
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF379
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.unistd.h.9.2709ac388e61c5728907bf928c890ff7,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x9
	.4byte	.LASF380
	.byte	0x5
	.byte	0xa
	.4byte	.LASF381
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._default_types.h.6.959254cf5f09734ea7516c89e8bb21bd,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x6
	.4byte	.LASF383
	.byte	0x5
	.byte	0xf
	.4byte	.LASF384
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF385
	.byte	0x5
	.byte	0x21
	.4byte	.LASF386
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF387
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF388
	.byte	0x5
	.byte	0x53
	.4byte	.LASF389
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF390
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF391
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF392
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF393
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF394
	.byte	0x6
	.byte	0xf4,0x1
	.4byte	.LASF395
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.137.87f4223e19f53e7620a07a017dcd2e0a,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF396
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF397
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF398
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF399
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF400
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF401
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF402
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF403
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF404
	.byte	0x6
	.byte	0xa1,0x1
	.4byte	.LASF405
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF406
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF407
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF408
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF409
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF410
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF411
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF412
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF413
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF414
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF415
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF416
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF417
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF418
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF419
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF420
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF421
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF422
	.byte	0x6
	.byte	0xee,0x1
	.4byte	.LASF423
	.byte	0x6
	.byte	0x9c,0x3
	.4byte	.LASF424
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.47.9b1aff81ebf9fd459c1248694f70fc96,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF425
	.byte	0x5
	.byte	0x30
	.4byte	.LASF426
	.byte	0x5
	.byte	0x31
	.4byte	.LASF427
	.byte	0x5
	.byte	0x34
	.4byte	.LASF428
	.byte	0x5
	.byte	0x37
	.4byte	.LASF429
	.byte	0x5
	.byte	0x38
	.4byte	.LASF430
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF431
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF432
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF433
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF434
	.byte	0x5
	.byte	0x40
	.4byte	.LASF435
	.byte	0x5
	.byte	0x41
	.4byte	.LASF436
	.byte	0x5
	.byte	0x42
	.4byte	.LASF437
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF438
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF439
	.byte	0x5
	.byte	0x55
	.4byte	.LASF440
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF441
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF442
	.byte	0x5
	.byte	0x69
	.4byte	.LASF443
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF444
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF445
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF446
	.byte	0x5
	.byte	0x70
	.4byte	.LASF447
	.byte	0x5
	.byte	0x73
	.4byte	.LASF448
	.byte	0x5
	.byte	0x76
	.4byte	.LASF449
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF450
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF451
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF452
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF453
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF454
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF455
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF456
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF457
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF458
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF459
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF460
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF461
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF462
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF463
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF464
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF465
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF466
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF467
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF468
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF469
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF470
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF471
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF472
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF473
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF474
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF475
	.byte	0x5
	.byte	0xfe,0x1
	.4byte	.LASF476
	.byte	0x5
	.byte	0xff,0x1
	.4byte	.LASF477
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF478
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF479
	.byte	0x5
	.byte	0x82,0x2
	.4byte	.LASF480
	.byte	0x5
	.byte	0x85,0x2
	.4byte	.LASF481
	.byte	0x5
	.byte	0x8a,0x2
	.4byte	.LASF482
	.byte	0x5
	.byte	0xe4,0x2
	.4byte	.LASF483
	.byte	0x5
	.byte	0xf6,0x2
	.4byte	.LASF484
	.byte	0x5
	.byte	0xfc,0x2
	.4byte	.LASF485
	.byte	0x5
	.byte	0xfd,0x2
	.4byte	.LASF486
	.byte	0x5
	.byte	0x84,0x3
	.4byte	.LASF487
	.byte	0x5
	.byte	0x8a,0x3
	.4byte	.LASF488
	.byte	0x5
	.byte	0x90,0x3
	.4byte	.LASF489
	.byte	0x5
	.byte	0x91,0x3
	.4byte	.LASF490
	.byte	0x5
	.byte	0x98,0x3
	.4byte	.LASF491
	.byte	0x5
	.byte	0x99,0x3
	.4byte	.LASF492
	.byte	0x5
	.byte	0xa0,0x3
	.4byte	.LASF493
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF494
	.byte	0x5
	.byte	0xba,0x3
	.4byte	.LASF495
	.byte	0x5
	.byte	0xdb,0x3
	.4byte	.LASF496
	.byte	0x5
	.byte	0xdc,0x3
	.4byte	.LASF497
	.byte	0x5
	.byte	0xe3,0x3
	.4byte	.LASF498
	.byte	0x5
	.byte	0xe4,0x3
	.4byte	.LASF499
	.byte	0x5
	.byte	0xe7,0x3
	.4byte	.LASF500
	.byte	0x5
	.byte	0xf1,0x3
	.4byte	.LASF501
	.byte	0x5
	.byte	0xf2,0x3
	.4byte	.LASF502
	.byte	0x5
	.byte	0xfc,0x3
	.4byte	.LASF503
	.byte	0x5
	.byte	0x92,0x4
	.4byte	.LASF504
	.byte	0x5
	.byte	0x94,0x4
	.4byte	.LASF505
	.byte	0x5
	.byte	0x96,0x4
	.4byte	.LASF506
	.byte	0x5
	.byte	0x97,0x4
	.4byte	.LASF507
	.byte	0x5
	.byte	0x99,0x4
	.4byte	.LASF508
	.byte	0x5
	.byte	0xa3,0x4
	.4byte	.LASF509
	.byte	0x5
	.byte	0xa8,0x4
	.4byte	.LASF510
	.byte	0x5
	.byte	0xad,0x4
	.4byte	.LASF511
	.byte	0x5
	.byte	0xb0,0x4
	.4byte	.LASF512
	.byte	0x5
	.byte	0xb4,0x4
	.4byte	.LASF513
	.byte	0x5
	.byte	0xb6,0x4
	.4byte	.LASF514
	.byte	0x5
	.byte	0xd9,0x4
	.4byte	.LASF515
	.byte	0x5
	.byte	0xdd,0x4
	.4byte	.LASF516
	.byte	0x5
	.byte	0xe1,0x4
	.4byte	.LASF517
	.byte	0x5
	.byte	0xe5,0x4
	.4byte	.LASF518
	.byte	0x5
	.byte	0xe9,0x4
	.4byte	.LASF519
	.byte	0x5
	.byte	0xed,0x4
	.4byte	.LASF520
	.byte	0x5
	.byte	0xf1,0x4
	.4byte	.LASF521
	.byte	0x5
	.byte	0xf5,0x4
	.4byte	.LASF522
	.byte	0x5
	.byte	0xfc,0x4
	.4byte	.LASF523
	.byte	0x5
	.byte	0xfd,0x4
	.4byte	.LASF524
	.byte	0x5
	.byte	0xfe,0x4
	.4byte	.LASF525
	.byte	0x5
	.byte	0xff,0x4
	.4byte	.LASF526
	.byte	0x5
	.byte	0x80,0x5
	.4byte	.LASF527
	.byte	0x5
	.byte	0x95,0x5
	.4byte	.LASF528
	.byte	0x5
	.byte	0x96,0x5
	.4byte	.LASF529
	.byte	0x5
	.byte	0xa8,0x5
	.4byte	.LASF530
	.byte	0x5
	.byte	0xae,0x5
	.4byte	.LASF531
	.byte	0x5
	.byte	0xb1,0x5
	.4byte	.LASF532
	.byte	0x5
	.byte	0xb3,0x5
	.4byte	.LASF533
	.byte	0x5
	.byte	0xb7,0x5
	.4byte	.LASF534
	.byte	0x5
	.byte	0xb9,0x5
	.4byte	.LASF535
	.byte	0x5
	.byte	0xbd,0x5
	.4byte	.LASF536
	.byte	0x5
	.byte	0xc0,0x5
	.4byte	.LASF537
	.byte	0x5
	.byte	0xc2,0x5
	.4byte	.LASF538
	.byte	0x5
	.byte	0xc6,0x5
	.4byte	.LASF539
	.byte	0x5
	.byte	0xc8,0x5
	.4byte	.LASF540
	.byte	0x5
	.byte	0xca,0x5
	.4byte	.LASF541
	.byte	0x5
	.byte	0xce,0x5
	.4byte	.LASF542
	.byte	0x5
	.byte	0xd1,0x5
	.4byte	.LASF543
	.byte	0x5
	.byte	0xd2,0x5
	.4byte	.LASF544
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.40.e8c16e7ec36ba55f133d0616070e25fc,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x28
	.4byte	.LASF546
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF547
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.79ae3d254e9e71fbd4877f77aa50f4ea,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x27
	.4byte	.LASF548
	.byte	0x5
	.byte	0x28
	.4byte	.LASF549
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF550
	.byte	0x6
	.byte	0xa1,0x1
	.4byte	.LASF405
	.byte	0x6
	.byte	0xee,0x1
	.4byte	.LASF423
	.byte	0x5
	.byte	0x8b,0x2
	.4byte	.LASF551
	.byte	0x5
	.byte	0x8c,0x2
	.4byte	.LASF552
	.byte	0x5
	.byte	0x8d,0x2
	.4byte	.LASF553
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF554
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF555
	.byte	0x5
	.byte	0x90,0x2
	.4byte	.LASF556
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF557
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF558
	.byte	0x5
	.byte	0x93,0x2
	.4byte	.LASF559
	.byte	0x5
	.byte	0x94,0x2
	.4byte	.LASF560
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF561
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF562
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF563
	.byte	0x5
	.byte	0x98,0x2
	.4byte	.LASF564
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF565
	.byte	0x6
	.byte	0xa6,0x2
	.4byte	.LASF566
	.byte	0x6
	.byte	0xdb,0x2
	.4byte	.LASF567
	.byte	0x6
	.byte	0x91,0x3
	.4byte	.LASF568
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF569
	.byte	0x6
	.byte	0x9c,0x3
	.4byte	.LASF424
	.byte	0x5
	.byte	0xa1,0x3
	.4byte	.LASF570
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF571
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.2.1461d1fff82dffe8bfddc23307f6484f,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LASF573
	.byte	0x5
	.byte	0x23
	.4byte	.LASF574
	.byte	0x5
	.byte	0x25
	.4byte	.LASF575
	.byte	0x5
	.byte	0x27
	.4byte	.LASF576
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF577
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF578
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF579
	.byte	0x5
	.byte	0x30
	.4byte	.LASF580
	.byte	0x5
	.byte	0x32
	.4byte	.LASF581
	.byte	0x5
	.byte	0x34
	.4byte	.LASF582
	.byte	0x5
	.byte	0x36
	.4byte	.LASF583
	.byte	0x5
	.byte	0x38
	.4byte	.LASF584
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF585
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF586
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.125.5cf8a495f1f7ef36777ad868a1e32068,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x7d
	.4byte	.LASF587
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF588
	.byte	0x6
	.byte	0x92,0x1
	.4byte	.LASF589
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF590
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.161.5349cb105733e8777bfb0cf53c4e3f34,comdat
.Ldebug_macro16:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.byte	0xa1,0x1
	.4byte	.LASF405
	.byte	0x6
	.byte	0xee,0x1
	.4byte	.LASF423
	.byte	0x6
	.byte	0xdb,0x2
	.4byte	.LASF567
	.byte	0x5
	.byte	0xe0,0x2
	.4byte	.LASF591
	.byte	0x6
	.byte	0xe7,0x2
	.4byte	.LASF592
	.byte	0x6
	.byte	0x91,0x3
	.4byte	.LASF568
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF569
	.byte	0x6
	.byte	0x9c,0x3
	.4byte	.LASF424
	.byte	0x5
	.byte	0xa1,0x3
	.4byte	.LASF570
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.184.7120b8bb2e0149e2359704f4e2251b68,comdat
.Ldebug_macro17:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF593
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF594
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF595
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF596
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841,comdat
.Ldebug_macro18:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xa
	.4byte	.LASF597
	.byte	0x5
	.byte	0x15
	.4byte	.LASF598
	.byte	0x5
	.byte	0x19
	.4byte	.LASF599
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF600
	.byte	0x5
	.byte	0x21
	.4byte	.LASF601
	.byte	0x5
	.byte	0x25
	.4byte	.LASF602
	.byte	0x5
	.byte	0x27
	.4byte	.LASF603
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF604
	.byte	0x5
	.byte	0x31
	.4byte	.LASF605
	.byte	0x5
	.byte	0x33
	.4byte	.LASF606
	.byte	0x5
	.byte	0x39
	.4byte	.LASF607
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF608
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF609
	.byte	0x5
	.byte	0x44
	.4byte	.LASF610
	.byte	0x5
	.byte	0x49
	.4byte	.LASF611
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF612
	.byte	0x5
	.byte	0x53
	.4byte	.LASF613
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._endian.h.18.1bf9649e8e5bbc91042012680270b9ed,comdat
.Ldebug_macro19:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x12
	.4byte	.LASF615
	.byte	0x5
	.byte	0x16
	.4byte	.LASF616
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF617
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF618
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.9.49f3a4695c1b61e8a0808de3c4a106cb,comdat
.Ldebug_macro20:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x9
	.4byte	.LASF619
	.byte	0x5
	.byte	0xa
	.4byte	.LASF620
	.byte	0x5
	.byte	0x11
	.4byte	.LASF621
	.byte	0x5
	.byte	0x12
	.4byte	.LASF622
	.byte	0x5
	.byte	0x13
	.4byte	.LASF623
	.byte	0x5
	.byte	0x14
	.4byte	.LASF624
	.byte	0x5
	.byte	0x18
	.4byte	.LASF625
	.byte	0x5
	.byte	0x19
	.4byte	.LASF626
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF627
	.byte	0x5
	.byte	0x39
	.4byte	.LASF628
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF629
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF630
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF631
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._timeval.h.30.0e8bfd94e85db17dda3286ee81496fe6,comdat
.Ldebug_macro21:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF634
	.byte	0x5
	.byte	0x24
	.4byte	.LASF635
	.byte	0x5
	.byte	0x29
	.4byte	.LASF636
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF637
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF638
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF639
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF640
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF641
	.byte	0x5
	.byte	0x42
	.4byte	.LASF642
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF643
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.timespec.h.41.d855182eb0e690443ab8651bcedca6e1,comdat
.Ldebug_macro22:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x29
	.4byte	.LASF646
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF647
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.select.h.30.bbece7fa40993a78092dcc5805132560,comdat
.Ldebug_macro23:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF648
	.byte	0x5
	.byte	0x22
	.4byte	.LASF649
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF650
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF651
	.byte	0x5
	.byte	0x30
	.4byte	.LASF652
	.byte	0x5
	.byte	0x39
	.4byte	.LASF653
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF654
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF655
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF656
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF657
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.69.ed3eae3cf73030a737515151ebcab7a1,comdat
.Ldebug_macro24:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x45
	.4byte	.LASF658
	.byte	0x5
	.byte	0x46
	.4byte	.LASF659
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF660
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF661
	.byte	0x5
	.byte	0x58
	.4byte	.LASF662
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF663
	.byte	0x5
	.byte	0x60
	.4byte	.LASF664
	.byte	0x5
	.byte	0x64
	.4byte	.LASF665
	.byte	0x5
	.byte	0x66
	.4byte	.LASF666
	.byte	0x5
	.byte	0x72
	.4byte	.LASF667
	.byte	0x5
	.byte	0x77
	.4byte	.LASF668
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF669
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF670
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF671
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF672
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF673
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF674
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF675
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF676
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF677
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF678
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF679
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF680
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF681
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF682
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF683
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF684
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF685
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF686
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF687
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF688
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF689
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sched.h.22.c60982713a5c428609783c78f9c78d95,comdat
.Ldebug_macro25:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x16
	.4byte	.LASF691
	.byte	0x5
	.byte	0x23
	.4byte	.LASF692
	.byte	0x5
	.byte	0x26
	.4byte	.LASF693
	.byte	0x5
	.byte	0x27
	.4byte	.LASF694
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._pthreadtypes.h.36.fcee9961c35163dde6267ef772ad1972,comdat
.Ldebug_macro26:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF695
	.byte	0x5
	.byte	0x25
	.4byte	.LASF696
	.byte	0x5
	.byte	0x28
	.4byte	.LASF697
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF698
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF699
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF700
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF701
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF702
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF703
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.unistd.h.170.da6e816043042c61475c2b1f58468b37,comdat
.Ldebug_macro27:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF705
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF706
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF707
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF708
	.byte	0x5
	.byte	0xc4,0x2
	.4byte	.LASF709
	.byte	0x5
	.byte	0xc5,0x2
	.4byte	.LASF710
	.byte	0x5
	.byte	0xc6,0x2
	.4byte	.LASF711
	.byte	0x5
	.byte	0xc7,0x2
	.4byte	.LASF712
	.byte	0x5
	.byte	0xc9,0x2
	.4byte	.LASF713
	.byte	0x5
	.byte	0xca,0x2
	.4byte	.LASF714
	.byte	0x5
	.byte	0xcb,0x2
	.4byte	.LASF715
	.byte	0x5
	.byte	0xcf,0x2
	.4byte	.LASF716
	.byte	0x5
	.byte	0xd0,0x2
	.4byte	.LASF717
	.byte	0x5
	.byte	0xd1,0x2
	.4byte	.LASF718
	.byte	0x5
	.byte	0xd7,0x2
	.4byte	.LASF719
	.byte	0x5
	.byte	0xd8,0x2
	.4byte	.LASF720
	.byte	0x5
	.byte	0xd9,0x2
	.4byte	.LASF721
	.byte	0x5
	.byte	0xda,0x2
	.4byte	.LASF722
	.byte	0x5
	.byte	0xdb,0x2
	.4byte	.LASF723
	.byte	0x5
	.byte	0xdc,0x2
	.4byte	.LASF724
	.byte	0x5
	.byte	0xdd,0x2
	.4byte	.LASF725
	.byte	0x5
	.byte	0xde,0x2
	.4byte	.LASF726
	.byte	0x5
	.byte	0xdf,0x2
	.4byte	.LASF727
	.byte	0x5
	.byte	0xe0,0x2
	.4byte	.LASF728
	.byte	0x5
	.byte	0xe3,0x2
	.4byte	.LASF729
	.byte	0x5
	.byte	0xe4,0x2
	.4byte	.LASF730
	.byte	0x5
	.byte	0xe5,0x2
	.4byte	.LASF731
	.byte	0x5
	.byte	0xe6,0x2
	.4byte	.LASF732
	.byte	0x5
	.byte	0xe8,0x2
	.4byte	.LASF733
	.byte	0x5
	.byte	0xe9,0x2
	.4byte	.LASF734
	.byte	0x5
	.byte	0xea,0x2
	.4byte	.LASF735
	.byte	0x5
	.byte	0xeb,0x2
	.4byte	.LASF736
	.byte	0x5
	.byte	0xec,0x2
	.4byte	.LASF737
	.byte	0x5
	.byte	0xed,0x2
	.4byte	.LASF738
	.byte	0x5
	.byte	0xee,0x2
	.4byte	.LASF739
	.byte	0x5
	.byte	0xef,0x2
	.4byte	.LASF740
	.byte	0x5
	.byte	0xf0,0x2
	.4byte	.LASF741
	.byte	0x5
	.byte	0xf1,0x2
	.4byte	.LASF742
	.byte	0x5
	.byte	0xf2,0x2
	.4byte	.LASF743
	.byte	0x5
	.byte	0xf3,0x2
	.4byte	.LASF744
	.byte	0x5
	.byte	0xf4,0x2
	.4byte	.LASF745
	.byte	0x5
	.byte	0xf5,0x2
	.4byte	.LASF746
	.byte	0x5
	.byte	0xf6,0x2
	.4byte	.LASF747
	.byte	0x5
	.byte	0xf7,0x2
	.4byte	.LASF748
	.byte	0x5
	.byte	0xf8,0x2
	.4byte	.LASF749
	.byte	0x5
	.byte	0xf9,0x2
	.4byte	.LASF750
	.byte	0x5
	.byte	0xfa,0x2
	.4byte	.LASF751
	.byte	0x5
	.byte	0xfb,0x2
	.4byte	.LASF752
	.byte	0x5
	.byte	0xfc,0x2
	.4byte	.LASF753
	.byte	0x5
	.byte	0xfd,0x2
	.4byte	.LASF754
	.byte	0x5
	.byte	0xfe,0x2
	.4byte	.LASF755
	.byte	0x5
	.byte	0xff,0x2
	.4byte	.LASF756
	.byte	0x5
	.byte	0x80,0x3
	.4byte	.LASF757
	.byte	0x5
	.byte	0x81,0x3
	.4byte	.LASF758
	.byte	0x5
	.byte	0x82,0x3
	.4byte	.LASF759
	.byte	0x5
	.byte	0x83,0x3
	.4byte	.LASF760
	.byte	0x5
	.byte	0x84,0x3
	.4byte	.LASF761
	.byte	0x5
	.byte	0x85,0x3
	.4byte	.LASF762
	.byte	0x5
	.byte	0x86,0x3
	.4byte	.LASF763
	.byte	0x5
	.byte	0x87,0x3
	.4byte	.LASF764
	.byte	0x5
	.byte	0x88,0x3
	.4byte	.LASF765
	.byte	0x5
	.byte	0x89,0x3
	.4byte	.LASF766
	.byte	0x5
	.byte	0x8b,0x3
	.4byte	.LASF767
	.byte	0x5
	.byte	0x8c,0x3
	.4byte	.LASF768
	.byte	0x5
	.byte	0x8d,0x3
	.4byte	.LASF769
	.byte	0x5
	.byte	0x8e,0x3
	.4byte	.LASF770
	.byte	0x5
	.byte	0x8f,0x3
	.4byte	.LASF771
	.byte	0x5
	.byte	0x90,0x3
	.4byte	.LASF772
	.byte	0x5
	.byte	0x91,0x3
	.4byte	.LASF773
	.byte	0x5
	.byte	0x92,0x3
	.4byte	.LASF774
	.byte	0x5
	.byte	0x93,0x3
	.4byte	.LASF775
	.byte	0x5
	.byte	0x94,0x3
	.4byte	.LASF776
	.byte	0x5
	.byte	0x95,0x3
	.4byte	.LASF777
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF778
	.byte	0x5
	.byte	0x97,0x3
	.4byte	.LASF779
	.byte	0x5
	.byte	0x98,0x3
	.4byte	.LASF780
	.byte	0x5
	.byte	0x99,0x3
	.4byte	.LASF781
	.byte	0x5
	.byte	0x9a,0x3
	.4byte	.LASF782
	.byte	0x5
	.byte	0x9b,0x3
	.4byte	.LASF783
	.byte	0x5
	.byte	0x9c,0x3
	.4byte	.LASF784
	.byte	0x5
	.byte	0x9d,0x3
	.4byte	.LASF785
	.byte	0x5
	.byte	0x9e,0x3
	.4byte	.LASF786
	.byte	0x5
	.byte	0x9f,0x3
	.4byte	.LASF787
	.byte	0x5
	.byte	0xa0,0x3
	.4byte	.LASF788
	.byte	0x5
	.byte	0xa1,0x3
	.4byte	.LASF789
	.byte	0x5
	.byte	0xa2,0x3
	.4byte	.LASF790
	.byte	0x5
	.byte	0xa3,0x3
	.4byte	.LASF791
	.byte	0x5
	.byte	0xa4,0x3
	.4byte	.LASF792
	.byte	0x5
	.byte	0xa5,0x3
	.4byte	.LASF793
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF794
	.byte	0x5
	.byte	0xa7,0x3
	.4byte	.LASF795
	.byte	0x5
	.byte	0xa8,0x3
	.4byte	.LASF796
	.byte	0x5
	.byte	0xa9,0x3
	.4byte	.LASF797
	.byte	0x5
	.byte	0xaa,0x3
	.4byte	.LASF798
	.byte	0x5
	.byte	0xab,0x3
	.4byte	.LASF799
	.byte	0x5
	.byte	0xac,0x3
	.4byte	.LASF800
	.byte	0x5
	.byte	0xad,0x3
	.4byte	.LASF801
	.byte	0x5
	.byte	0xae,0x3
	.4byte	.LASF802
	.byte	0x5
	.byte	0xaf,0x3
	.4byte	.LASF803
	.byte	0x5
	.byte	0xb0,0x3
	.4byte	.LASF804
	.byte	0x5
	.byte	0xb1,0x3
	.4byte	.LASF805
	.byte	0x5
	.byte	0xb2,0x3
	.4byte	.LASF806
	.byte	0x5
	.byte	0xb3,0x3
	.4byte	.LASF807
	.byte	0x5
	.byte	0xb4,0x3
	.4byte	.LASF808
	.byte	0x5
	.byte	0xb5,0x3
	.4byte	.LASF809
	.byte	0x5
	.byte	0xb6,0x3
	.4byte	.LASF810
	.byte	0x5
	.byte	0xb7,0x3
	.4byte	.LASF811
	.byte	0x5
	.byte	0xb8,0x3
	.4byte	.LASF812
	.byte	0x5
	.byte	0xb9,0x3
	.4byte	.LASF813
	.byte	0x5
	.byte	0xba,0x3
	.4byte	.LASF814
	.byte	0x5
	.byte	0xbb,0x3
	.4byte	.LASF815
	.byte	0x5
	.byte	0xbc,0x3
	.4byte	.LASF816
	.byte	0x5
	.byte	0xbd,0x3
	.4byte	.LASF817
	.byte	0x5
	.byte	0xbe,0x3
	.4byte	.LASF818
	.byte	0x5
	.byte	0xbf,0x3
	.4byte	.LASF819
	.byte	0x5
	.byte	0xc0,0x3
	.4byte	.LASF820
	.byte	0x5
	.byte	0xc1,0x3
	.4byte	.LASF821
	.byte	0x5
	.byte	0xc2,0x3
	.4byte	.LASF822
	.byte	0x5
	.byte	0xc3,0x3
	.4byte	.LASF823
	.byte	0x5
	.byte	0xc4,0x3
	.4byte	.LASF824
	.byte	0x5
	.byte	0xc5,0x3
	.4byte	.LASF825
	.byte	0x5
	.byte	0xc6,0x3
	.4byte	.LASF826
	.byte	0x5
	.byte	0xc7,0x3
	.4byte	.LASF827
	.byte	0x5
	.byte	0xc8,0x3
	.4byte	.LASF828
	.byte	0x5
	.byte	0xc9,0x3
	.4byte	.LASF829
	.byte	0x5
	.byte	0xca,0x3
	.4byte	.LASF830
	.byte	0x5
	.byte	0xcb,0x3
	.4byte	.LASF831
	.byte	0x5
	.byte	0xcc,0x3
	.4byte	.LASF832
	.byte	0x5
	.byte	0xcd,0x3
	.4byte	.LASF833
	.byte	0x5
	.byte	0xce,0x3
	.4byte	.LASF834
	.byte	0x5
	.byte	0xcf,0x3
	.4byte	.LASF835
	.byte	0x5
	.byte	0xd0,0x3
	.4byte	.LASF836
	.byte	0x5
	.byte	0xd1,0x3
	.4byte	.LASF837
	.byte	0x5
	.byte	0xd2,0x3
	.4byte	.LASF838
	.byte	0x5
	.byte	0xd3,0x3
	.4byte	.LASF839
	.byte	0x5
	.byte	0xd4,0x3
	.4byte	.LASF840
	.byte	0x5
	.byte	0xd5,0x3
	.4byte	.LASF841
	.byte	0x5
	.byte	0xd6,0x3
	.4byte	.LASF842
	.byte	0x5
	.byte	0xd7,0x3
	.4byte	.LASF843
	.byte	0x5
	.byte	0xd8,0x3
	.4byte	.LASF844
	.byte	0x5
	.byte	0xd9,0x3
	.4byte	.LASF845
	.byte	0x5
	.byte	0xda,0x3
	.4byte	.LASF846
	.byte	0x5
	.byte	0xdb,0x3
	.4byte	.LASF847
	.byte	0x5
	.byte	0xdc,0x3
	.4byte	.LASF848
	.byte	0x5
	.byte	0xdd,0x3
	.4byte	.LASF849
	.byte	0x5
	.byte	0xde,0x3
	.4byte	.LASF850
	.byte	0x5
	.byte	0xdf,0x3
	.4byte	.LASF851
	.byte	0x5
	.byte	0xe0,0x3
	.4byte	.LASF852
	.byte	0x5
	.byte	0xe1,0x3
	.4byte	.LASF853
	.byte	0x5
	.byte	0xe2,0x3
	.4byte	.LASF854
	.byte	0x5
	.byte	0xe3,0x3
	.4byte	.LASF855
	.byte	0x5
	.byte	0xe4,0x3
	.4byte	.LASF856
	.byte	0x5
	.byte	0xe5,0x3
	.4byte	.LASF857
	.byte	0x5
	.byte	0xe6,0x3
	.4byte	.LASF858
	.byte	0x5
	.byte	0xe7,0x3
	.4byte	.LASF859
	.byte	0x5
	.byte	0xe8,0x3
	.4byte	.LASF860
	.byte	0x5
	.byte	0xe9,0x3
	.4byte	.LASF861
	.byte	0x5
	.byte	0xea,0x3
	.4byte	.LASF862
	.byte	0x5
	.byte	0xeb,0x3
	.4byte	.LASF863
	.byte	0x5
	.byte	0xec,0x3
	.4byte	.LASF864
	.byte	0x5
	.byte	0xed,0x3
	.4byte	.LASF865
	.byte	0x5
	.byte	0xee,0x3
	.4byte	.LASF866
	.byte	0x5
	.byte	0xef,0x3
	.4byte	.LASF867
	.byte	0x5
	.byte	0xf0,0x3
	.4byte	.LASF868
	.byte	0x5
	.byte	0xf1,0x3
	.4byte	.LASF869
	.byte	0x5
	.byte	0xf7,0x3
	.4byte	.LASF870
	.byte	0x5
	.byte	0xf8,0x3
	.4byte	.LASF871
	.byte	0x5
	.byte	0xf9,0x3
	.4byte	.LASF872
	.byte	0x5
	.byte	0xfa,0x3
	.4byte	.LASF873
	.byte	0x5
	.byte	0xfb,0x3
	.4byte	.LASF874
	.byte	0x5
	.byte	0xfc,0x3
	.4byte	.LASF875
	.byte	0x5
	.byte	0xfd,0x3
	.4byte	.LASF876
	.byte	0x5
	.byte	0xfe,0x3
	.4byte	.LASF877
	.byte	0x5
	.byte	0xff,0x3
	.4byte	.LASF878
	.byte	0x5
	.byte	0x80,0x4
	.4byte	.LASF879
	.byte	0x5
	.byte	0x81,0x4
	.4byte	.LASF880
	.byte	0x5
	.byte	0x82,0x4
	.4byte	.LASF881
	.byte	0x5
	.byte	0x83,0x4
	.4byte	.LASF882
	.byte	0x5
	.byte	0x84,0x4
	.4byte	.LASF883
	.byte	0x5
	.byte	0x85,0x4
	.4byte	.LASF884
	.byte	0x5
	.byte	0x86,0x4
	.4byte	.LASF885
	.byte	0x5
	.byte	0x87,0x4
	.4byte	.LASF886
	.byte	0x5
	.byte	0x88,0x4
	.4byte	.LASF887
	.byte	0x5
	.byte	0x89,0x4
	.4byte	.LASF888
	.byte	0x5
	.byte	0x8a,0x4
	.4byte	.LASF889
	.byte	0x5
	.byte	0x8b,0x4
	.4byte	.LASF890
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF447:
	.string	"__GNUCLIKE___SECTION 1"
.LASF749:
	.string	"_SC_REALTIME_SIGNALS 29"
.LASF703:
	.string	"_PTHREAD_ONCE_INIT { 1, 0 }"
.LASF362:
	.string	"__SVID_VISIBLE 1"
.LASF303:
	.string	"__riscv 1"
.LASF221:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF279:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF310:
	.string	"__riscv_float_abi_soft 1"
.LASF739:
	.string	"_SC_TIMER_MAX 19"
.LASF291:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF285:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF805:
	.string	"_SC_TRACE_EVENT_FILTER 84"
.LASF617:
	.string	"_PDP_ENDIAN 3412"
.LASF224:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF216:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF113:
	.string	"__INT32_C(c) c ## L"
.LASF689:
	.string	"_USECONDS_T_DECLARED "
.LASF575:
	.string	"__LOCK_INIT(class,lock) extern struct __lock __lock_ ## lock; class _LOCK_T lock = &__lock_ ## lock"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF375:
	.string	"_LONG_DOUBLE long double"
.LASF91:
	.string	"__INTMAX_C(c) c ## LL"
.LASF605:
	.string	"_UINT32_T_DECLARED "
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF266:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF713:
	.string	"SEEK_SET 0"
.LASF604:
	.string	"_INT32_T_DECLARED "
.LASF697:
	.string	"PTHREAD_INHERIT_SCHED 1"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF650:
	.string	"FD_SETSIZE 64"
.LASF247:
	.string	"__FLT64X_DIG__ 33"
.LASF255:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF812:
	.string	"_SC_TYPED_MEMORY_OBJECTS 91"
.LASF445:
	.string	"__GNUCLIKE___TYPEOF 1"
.LASF813:
	.string	"_SC_V7_ILP32_OFF32 92"
.LASF878:
	.string	"_PC_VDISABLE 8"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF166:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF517:
	.string	"__RCSID_SOURCE(s) struct __hack"
.LASF839:
	.string	"_SC_2_FORT_DEV 110"
.LASF361:
	.string	"__POSIX_VISIBLE 200809"
.LASF510:
	.string	"__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))"
.LASF263:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF32:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF269:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF497:
	.string	"__predict_false(exp) __builtin_expect((exp), 0)"
.LASF41:
	.string	"__INT8_TYPE__ signed char"
.LASF783:
	.string	"_SC_COLL_WEIGHTS_MAX 62"
.LASF849:
	.string	"_SC_2_UPE 120"
.LASF879:
	.string	"_PC_ASYNC_IO 9"
.LASF196:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF252:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF728:
	.string	"_SC_PAGE_SIZE _SC_PAGESIZE"
.LASF877:
	.string	"_PC_NO_TRUNC 7"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF42:
	.string	"__INT16_TYPE__ short int"
.LASF479:
	.string	"__aligned(x) __attribute__((__aligned__(x)))"
.LASF231:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF873:
	.string	"_PC_NAME_MAX 3"
.LASF734:
	.string	"_SC_MQ_PRIO_MAX 14"
.LASF642:
	.string	"timeradd(tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec + (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec + (uvp)->tv_usec; if ((vvp)->tv_usec >= 1000000) { (vvp)->tv_sec++; (vvp)->tv_usec -= 1000000; } } while (0)"
.LASF811:
	.string	"_SC_TRACE_USER_EVENT_MAX 90"
.LASF680:
	.string	"_PID_T_DECLARED "
.LASF253:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF181:
	.string	"__DECIMAL_DIG__ 36"
.LASF648:
	.string	"_SIGSET_T_DECLARED "
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF481:
	.string	"__alloc_size(x) __attribute__((__alloc_size__ x))"
.LASF60:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF546:
	.string	"__BIT_TYPES_DEFINED__ 1"
.LASF407:
	.string	"__SIZE_T__ "
.LASF198:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF384:
	.string	"__EXP(x) __ ##x ##__"
.LASF867:
	.string	"_SC_LEVEL4_CACHE_ASSOC 138"
.LASF195:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF676:
	.string	"_OFF_T_DECLARED "
.LASF767:
	.string	"_SC_THREAD_PRIO_PROTECT 47"
.LASF684:
	.string	"_NLINK_T_DECLARED "
.LASF889:
	.string	"_PC_REC_XFER_ALIGN 19"
.LASF671:
	.string	"__daddr_t_defined "
.LASF859:
	.string	"_SC_LEVEL1_DCACHE_LINESIZE 130"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF567:
	.string	"__need_wchar_t"
.LASF192:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF492:
	.string	"__result_use_check __attribute__((__warn_unused_result__))"
.LASF401:
	.string	"_BSD_PTRDIFF_T_ "
.LASF910:
	.string	"/home/tang/workspace/RISC-V/GD32VF103C-START"
.LASF760:
	.string	"_SC_THREAD_THREADS_MAX 40"
.LASF207:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF422:
	.string	"__size_t "
.LASF435:
	.string	"__bounded "
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF210:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF562:
	.string	"___int_wchar_t_h "
.LASF466:
	.string	"__CONCAT1(x,y) x ## y"
.LASF411:
	.string	"_T_SIZE "
.LASF164:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF644:
	.string	"_SYS_TIMESPEC_H_ "
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF862:
	.string	"_SC_LEVEL2_CACHE_LINESIZE 133"
.LASF716:
	.string	"STDIN_FILENO 0"
.LASF681:
	.string	"_KEY_T_DECLARED "
.LASF630:
	.string	"__ntohl(_x) __bswap32(_x)"
.LASF311:
	.string	"__riscv_cmodel_medany 1"
.LASF597:
	.string	"_SYS__STDINT_H "
.LASF206:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF864:
	.string	"_SC_LEVEL3_CACHE_ASSOC 135"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF717:
	.string	"STDOUT_FILENO 1"
.LASF511:
	.string	"__weak_reference(sym,alias) __asm__(\".weak \" #alias); __asm__(\".equ \" #alias \", \" #sym)"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF374:
	.string	"_NOTHROW "
.LASF265:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF438:
	.string	"__has_extension __has_feature"
.LASF568:
	.string	"NULL"
.LASF52:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF251:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF321:
	.string	"__NEWLIB_H__ 1"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF725:
	.string	"_SC_SAVED_IDS 6"
.LASF748:
	.string	"_SC_PRIORITIZED_IO 28"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF647:
	.string	"TIMESPEC_TO_TIMEVAL(tv,ts) do { (tv)->tv_sec = (ts)->tv_sec; (tv)->tv_usec = (ts)->tv_nsec / 1000; } while (0)"
.LASF367:
	.string	"__RAND_MAX"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF777:
	.string	"_SC_BARRIERS 56"
.LASF500:
	.string	"__hidden __attribute__((__visibility__(\"hidden\")))"
.LASF319:
	.string	"_SYS_UNISTD_H "
.LASF432:
	.string	"__attribute_pure__ "
.LASF523:
	.string	"_Nonnull "
.LASF345:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF652:
	.string	"_howmany(x,y) (((x)+((y)-1))/(y))"
.LASF612:
	.string	"_INTPTR_T_DECLARED "
.LASF328:
	.string	"_WANT_IO_LONG_LONG 1"
.LASF244:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF711:
	.string	"W_OK 2"
.LASF53:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF532:
	.string	"__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))"
.LASF585:
	.string	"__lock_release(lock) __retarget_lock_release(lock)"
.LASF308:
	.string	"__riscv_muldiv 1"
.LASF895:
	.string	"long int"
.LASF577:
	.string	"__lock_init(lock) __retarget_lock_init(&lock)"
.LASF740:
	.string	"_SC_TZNAME_MAX 20"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF238:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF245:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF392:
	.string	"___int_least16_t_defined 1"
.LASF754:
	.string	"_SC_AIO_LISTIO_MAX 34"
.LASF275:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF57:
	.string	"__INT_FAST8_TYPE__ int"
.LASF378:
	.string	"_NOINLINE __attribute__ ((__noinline__))"
.LASF400:
	.string	"_PTRDIFF_T_ "
.LASF406:
	.string	"__size_t__ "
.LASF220:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF93:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF332:
	.string	"HAVE_INITFINI_ARRAY 1"
.LASF31:
	.string	"__SIZEOF_POINTER__ 4"
.LASF49:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF287:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF257:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF194:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF622:
	.string	"BIG_ENDIAN _BIG_ENDIAN"
.LASF186:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF470:
	.string	"__const const"
.LASF645:
	.string	"_SYS__TIMESPEC_H_ "
.LASF418:
	.string	"_SIZE_T_DECLARED "
.LASF39:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF352:
	.string	"_POSIX_C_SOURCE 200809L"
.LASF464:
	.string	"__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF524:
	.string	"_Nullable "
.LASF307:
	.string	"__riscv_div 1"
.LASF714:
	.string	"SEEK_CUR 1"
.LASF371:
	.string	"_READ_WRITE_BUFSIZE_TYPE int"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF593:
	.string	"_CLOCK_T_ unsigned long"
.LASF594:
	.string	"_TIME_T_ __int_least64_t"
.LASF180:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF774:
	.string	"_SC_THREAD_DESTRUCTOR_ITERATIONS 53"
.LASF762:
	.string	"_SC_THREADS 42"
.LASF753:
	.string	"_SC_TIMERS 33"
.LASF359:
	.string	"__LARGEFILE_VISIBLE 0"
.LASF727:
	.string	"_SC_PAGESIZE 8"
.LASF324:
	.string	"__NEWLIB__ 3"
.LASF911:
	.string	"_isatty"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF428:
	.string	"__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF599:
	.string	"_UINT8_T_DECLARED "
.LASF823:
	.string	"_SC_V6_LPBIG_OFFBIG _SC_V7_LPBIG_OFFBIG"
.LASF891:
	.string	"signed char"
.LASF537:
	.string	"__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))"
.LASF698:
	.string	"PTHREAD_EXPLICIT_SCHED 2"
.LASF200:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF429:
	.string	"__ptr_t void *"
.LASF493:
	.string	"__returns_twice __attribute__((__returns_twice__))"
.LASF542:
	.string	"__no_lock_analysis __lock_annotate(no_thread_safety_analysis)"
.LASF908:
	.string	"GNU C17 8.2.0 -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit= 8 -g3 -O0"
.LASF160:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF290:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF536:
	.string	"__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))"
.LASF1:
	.string	"__STDC_VERSION__ 201710L"
.LASF496:
	.string	"__predict_true(exp) __builtin_expect((exp), 1)"
.LASF848:
	.string	"_SC_2_SW_DEV 119"
.LASF586:
	.string	"__lock_release_recursive(lock) __retarget_lock_release_recursive(lock)"
.LASF209:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF662:
	.string	"__u_char_defined "
.LASF433:
	.string	"__attribute_format_strfmon__(a,b) "
.LASF417:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF902:
	.string	"environ"
.LASF63:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF419:
	.string	"___int_size_t_h "
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF199:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF456:
	.string	"__GNUCLIKE_MATH_BUILTIN_RELOPS "
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF425:
	.string	"__PMT(args) args"
.LASF661:
	.string	"_IN_PORT_T_DECLARED "
.LASF276:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF141:
	.string	"__GCC_IEC_559 0"
.LASF628:
	.string	"__htonl(_x) __bswap32(_x)"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF729:
	.string	"_SC_NPROCESSORS_CONF 9"
.LASF865:
	.string	"_SC_LEVEL3_CACHE_LINESIZE 136"
.LASF677:
	.string	"_DEV_T_DECLARED "
.LASF847:
	.string	"_SC_2_PBS_TRACK 118"
.LASF742:
	.string	"_SC_FSYNC 22"
.LASF177:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF514:
	.string	"__sym_default(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@@\" #verid)"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF885:
	.string	"_PC_ALLOC_SIZE_MIN 15"
.LASF857:
	.string	"_SC_LEVEL1_DCACHE_SIZE 128"
.LASF333:
	.string	"_HAVE_LONG_DOUBLE 1"
.LASF659:
	.string	"quad quad_t"
.LASF179:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF850:
	.string	"_SC_2_VERSION 121"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF465:
	.string	"__P(protos) protos"
.LASF709:
	.string	"F_OK 0"
.LASF765:
	.string	"_SC_THREAD_PRIORITY_SCHEDULING 45"
.LASF344:
	.string	"_SYS_FEATURES_H "
.LASF791:
	.string	"_SC_RAW_SOCKETS 70"
.LASF488:
	.string	"__noinline __attribute__ ((__noinline__))"
.LASF792:
	.string	"_SC_READER_WRITER_LOCKS 71"
.LASF455:
	.string	"__GNUCLIKE_BUILTIN_NEXT_ARG 1"
.LASF226:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF299:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF17:
	.string	"__SIZEOF_LONG__ 4"
.LASF901:
	.string	"char"
.LASF730:
	.string	"_SC_NPROCESSORS_ONLN 10"
.LASF737:
	.string	"_SC_SEM_VALUE_MAX 17"
.LASF793:
	.string	"_SC_REGEXP 72"
.LASF620:
	.string	"_QUAD_LOWWORD 0"
.LASF751:
	.string	"_SC_SHARED_MEMORY_OBJECTS 31"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF64:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF750:
	.string	"_SC_SEMAPHORES 30"
.LASF591:
	.string	"_WINT_T "
.LASF818:
	.string	"_SC_XBS5_ILP32_OFFBIG _SC_V7_ILP32_OFFBIG"
.LASF380:
	.string	"__need_size_t "
.LASF726:
	.string	"_SC_VERSION 7"
.LASF712:
	.string	"X_OK 1"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF702:
	.string	"_PTHREAD_COND_INITIALIZER ((pthread_cond_t) 0xFFFFFFFF)"
.LASF837:
	.string	"_SC_2_C_BIND 108"
.LASF649:
	.string	"_SYS_TYPES_FD_SET "
.LASF844:
	.string	"_SC_2_PBS_CHECKPOINT 115"
.LASF695:
	.string	"PTHREAD_SCOPE_PROCESS 0"
.LASF829:
	.string	"_SC_STREAM_MAX 100"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF582:
	.string	"__lock_acquire_recursive(lock) __retarget_lock_acquire_recursive(lock)"
.LASF156:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF439:
	.string	"__has_feature(x) 0"
.LASF499:
	.string	"__exported __attribute__((__visibility__(\"default\")))"
.LASF600:
	.string	"__int8_t_defined 1"
.LASF172:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF584:
	.string	"__lock_try_acquire_recursive(lock) __retarget_lock_try_acquire_recursive(lock)"
.LASF766:
	.string	"_SC_THREAD_PRIO_INHERIT 46"
.LASF331:
	.string	"_MB_LEN_MAX 1"
.LASF69:
	.string	"__GXX_ABI_VERSION 1013"
.LASF861:
	.string	"_SC_LEVEL2_CACHE_ASSOC 132"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF909:
	.string	"libraries/n22/stubs/isatty.c"
.LASF222:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF707:
	.string	"F_TLOCK 2"
.LASF626:
	.string	"__bswap32(_x) __builtin_bswap32(_x)"
.LASF540:
	.string	"__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))"
.LASF373:
	.string	"_END_STD_C "
.LASF809:
	.string	"_SC_TRACE_NAME_MAX 88"
.LASF68:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF547:
	.string	"_SYS_TYPES_H "
.LASF123:
	.string	"__UINT32_C(c) c ## UL"
.LASF785:
	.string	"_SC_EXPR_NEST_MAX 64"
.LASF907:
	.string	"optreset"
.LASF638:
	.string	"_TIMEVAL_DEFINED "
.LASF806:
	.string	"_SC_TRACE_EVENT_NAME_MAX 85"
.LASF469:
	.string	"__XSTRING(x) __STRING(x)"
.LASF495:
	.string	"__restrict restrict"
.LASF663:
	.string	"__u_short_defined "
.LASF450:
	.string	"__GNUCLIKE_BUILTIN_VARARGS 1"
.LASF292:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF634:
	.string	"_SYS__TIMEVAL_H_ "
.LASF423:
	.string	"__need_size_t"
.LASF377:
	.string	"_ELIDABLE_INLINE static __inline__"
.LASF854:
	.string	"_SC_LEVEL1_ICACHE_SIZE 125"
.LASF672:
	.string	"__caddr_t_defined "
.LASF572:
	.string	"_SYS__TYPES_H "
.LASF759:
	.string	"_SC_THREAD_STACK_MIN 39"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF203:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF720:
	.string	"_SC_CHILD_MAX 1"
.LASF343:
	.string	"__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT"
.LASF188:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF738:
	.string	"_SC_SIGQUEUE_MAX 18"
.LASF264:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF458:
	.string	"__CC_SUPPORTS_INLINE 1"
.LASF876:
	.string	"_PC_CHOWN_RESTRICTED 6"
.LASF819:
	.string	"_SC_V7_LP64_OFF64 94"
.LASF176:
	.string	"__LDBL_DIG__ 33"
.LASF443:
	.string	"__GNUCLIKE_ASM 3"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF483:
	.string	"__generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)"
.LASF558:
	.string	"_BSD_WCHAR_T_ "
.LASF668:
	.string	"_BLKSIZE_T_DECLARED "
.LASF705:
	.string	"F_ULOCK 0"
.LASF758:
	.string	"_SC_THREAD_KEYS_MAX 38"
.LASF258:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF719:
	.string	"_SC_ARG_MAX 0"
.LASF168:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF601:
	.string	"_INT16_T_DECLARED "
.LASF835:
	.string	"_SC_XOPEN_VERSION 106"
.LASF673:
	.string	"_FSBLKCNT_T_DECLARED "
.LASF789:
	.string	"_SC_LINE_MAX 68"
.LASF735:
	.string	"_SC_RTSIG_MAX 15"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF890:
	.string	"_PC_TIMESTAMP_RESOLUTION 20"
.LASF323:
	.string	"_NEWLIB_VERSION \"3.0.0\""
.LASF273:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF569:
	.string	"NULL ((void *)0)"
.LASF393:
	.string	"___int_least32_t_defined 1"
.LASF424:
	.string	"__need_NULL"
.LASF683:
	.string	"_MODE_T_DECLARED "
.LASF318:
	.string	"_UNISTD_H_ "
.LASF282:
	.string	"__USER_LABEL_PREFIX__ "
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF838:
	.string	"_SC_2_C_DEV 109"
.LASF353:
	.string	"_ATFILE_SOURCE"
.LASF535:
	.string	"__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF297:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF624:
	.string	"BYTE_ORDER _BYTE_ORDER"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF892:
	.string	"unsigned char"
.LASF588:
	.string	"unsigned signed"
.LASF904:
	.string	"optind"
.LASF627:
	.string	"__bswap64(_x) __builtin_bswap64(_x)"
.LASF236:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF67:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF874:
	.string	"_PC_PATH_MAX 4"
.LASF314:
	.string	"USE_M_TIME 1"
.LASF250:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF755:
	.string	"_SC_AIO_MAX 35"
.LASF480:
	.string	"__section(x) __attribute__((__section__(x)))"
.LASF836:
	.string	"_SC_2_CHAR_TERM 107"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF159:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF700:
	.string	"PTHREAD_CREATE_JOINABLE 1"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF298:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF387:
	.string	"___int8_t_defined 1"
.LASF896:
	.string	"long unsigned int"
.LASF62:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF501:
	.string	"__offsetof(type,field) offsetof(type, field)"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF242:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF490:
	.string	"__nonnull_all __attribute__((__nonnull__))"
.LASF5:
	.string	"__GNUC__ 8"
.LASF46:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF349:
	.string	"_POSIX_SOURCE"
.LASF182:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF249:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF606:
	.string	"__int32_t_defined 1"
.LASF262:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF410:
	.string	"_T_SIZE_ "
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF185:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF61:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF580:
	.string	"__lock_close_recursive(lock) __retarget_lock_close_recursive(lock)"
.LASF846:
	.string	"_SC_2_PBS_MESSAGE 117"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF484:
	.string	"__min_size(x) static (x)"
.LASF658:
	.string	"physadr physadr_t"
.LASF903:
	.string	"optarg"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF498:
	.string	"__null_sentinel __attribute__((__sentinel__))"
.LASF775:
	.string	"_SC_ADVISORY_INFO 54"
.LASF348:
	.string	"_DEFAULT_SOURCE 1"
.LASF278:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF491:
	.string	"__fastcall __attribute__((__fastcall__))"
.LASF816:
	.string	"_SC_V7_ILP32_OFFBIG 93"
.LASF570:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF56:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF797:
	.string	"_SC_SPIN_LOCKS 76"
.LASF246:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF289:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF625:
	.string	"__bswap16(_x) __builtin_bswap16(_x)"
.LASF347:
	.string	"_DEFAULT_SOURCE"
.LASF526:
	.string	"__NULLABILITY_PRAGMA_PUSH "
.LASF165:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF779:
	.string	"_SC_BC_DIM_MAX 58"
.LASF243:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF59:
	.string	"__INT_FAST32_TYPE__ int"
.LASF402:
	.string	"___int_ptrdiff_t_h "
.LASF664:
	.string	"__u_int_defined "
.LASF461:
	.string	"__CC_SUPPORTS___FUNC__ 1"
.LASF843:
	.string	"_SC_2_PBS_ACCOUNTING 114"
.LASF364:
	.string	"__SSP_FORTIFY_LEVEL 0"
.LASF444:
	.string	"__GNUCLIKE_MATH_BUILTIN_CONSTANTS "
.LASF212:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF397:
	.string	"_T_PTRDIFF_ "
.LASF316:
	.string	"HAVE_CCONFIG_H 1"
.LASF693:
	.string	"SCHED_FIFO 1"
.LASF851:
	.string	"_SC_THREAD_ROBUST_PRIO_INHERIT 122"
.LASF369:
	.string	"__EXPORT "
.LASF764:
	.string	"_SC_THREAD_ATTR_STACKSIZE 44"
.LASF603:
	.string	"__int16_t_defined 1"
.LASF235:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF550:
	.string	"_ANSI_STDDEF_H "
.LASF880:
	.string	"_PC_PRIO_IO 10"
.LASF592:
	.string	"__need_wint_t"
.LASF820:
	.string	"_SC_V6_LP64_OFF64 _SC_V7_LP64_OFF64"
.LASF615:
	.string	"_LITTLE_ENDIAN 1234"
.LASF229:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF405:
	.string	"__need_ptrdiff_t"
.LASF866:
	.string	"_SC_LEVEL4_CACHE_SIZE 137"
.LASF84:
	.string	"__LONG_WIDTH__ 32"
.LASF554:
	.string	"_T_WCHAR_ "
.LASF512:
	.string	"__warn_references(sym,msg) __asm__(\".section .gnu.warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\"\"); __asm__(\".previous\")"
.LASF431:
	.string	"__attribute_malloc__ "
.LASF237:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF826:
	.string	"_SC_XOPEN_ENH_I18N 97"
.LASF158:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF271:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF322:
	.string	"_NEWLIB_VERSION_H__ 1"
.LASF294:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF747:
	.string	"_SC_MESSAGE_PASSING 27"
.LASF442:
	.string	"__END_DECLS "
.LASF881:
	.string	"_PC_SYNC_IO 11"
.LASF721:
	.string	"_SC_CLK_TCK 2"
.LASF706:
	.string	"F_LOCK 1"
.LASF413:
	.string	"_SIZE_T_ "
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF788:
	.string	"_SC_IPV6 67"
.LASF897:
	.string	"long long int"
.LASF409:
	.string	"_SYS_SIZE_T_H "
.LASF831:
	.string	"_SC_XOPEN_REALTIME_THREADS 102"
.LASF782:
	.string	"_SC_CLOCK_SELECTION 61"
.LASF796:
	.string	"_SC_SPAWN 75"
.LASF551:
	.string	"__wchar_t__ "
.LASF872:
	.string	"_PC_MAX_INPUT 2"
.LASF189:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF396:
	.string	"_PTRDIFF_T "
.LASF852:
	.string	"_SC_THREAD_ROBUST_PRIO_PROTECT 123"
.LASF853:
	.string	"_SC_XOPEN_UUCP 124"
.LASF139:
	.string	"__INTPTR_WIDTH__ 32"
.LASF295:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF856:
	.string	"_SC_LEVEL1_ICACHE_LINESIZE 127"
.LASF639:
	.string	"timerclear(tvp) ((tvp)->tv_sec = (tvp)->tv_usec = 0)"
.LASF704:
	.string	"__need_inttypes"
.LASF208:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF556:
	.string	"__WCHAR_T "
.LASF340:
	.string	"__SYS_CONFIG_H__ "
.LASF715:
	.string	"SEEK_END 2"
.LASF389:
	.string	"___int32_t_defined 1"
.LASF334:
	.string	"_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF44:
	.string	"__INT64_TYPE__ long long int"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF300:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF794:
	.string	"_SC_RE_DUP_MAX 73"
.LASF356:
	.string	"__BSD_VISIBLE 1"
.LASF832:
	.string	"_SC_XOPEN_SHM 103"
.LASF798:
	.string	"_SC_SPORADIC_SERVER 77"
.LASF306:
	.string	"__riscv_mul 1"
.LASF637:
	.string	"_TIME_T_DECLARED "
.LASF427:
	.string	"__THROW "
.LASF354:
	.string	"_ATFILE_SOURCE 1"
.LASF685:
	.string	"__clockid_t_defined "
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF34:
	.string	"__WCHAR_TYPE__ int"
.LASF320:
	.string	"_ANSIDECL_H_ "
.LASF643:
	.string	"timersub(tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec - (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec - (uvp)->tv_usec; if ((vvp)->tv_usec < 0) { (vvp)->tv_sec--; (vvp)->tv_usec += 1000000; } } while (0)"
.LASF35:
	.string	"__WINT_TYPE__ unsigned int"
.LASF457:
	.string	"__GNUCLIKE_BUILTIN_MEMCPY 1"
.LASF8:
	.string	"__VERSION__ \"8.2.0\""
.LASF773:
	.string	"_SC_LOGIN_NAME_MAX 52"
.LASF675:
	.string	"_INO_T_DECLARED "
.LASF899:
	.string	"unsigned int"
.LASF415:
	.string	"_SIZE_T_DEFINED_ "
.LASF325:
	.string	"__NEWLIB_MINOR__ 0"
.LASF678:
	.string	"_UID_T_DECLARED "
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF217:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF213:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF768:
	.string	"_SC_THREAD_PRIO_CEILING _SC_THREAD_PRIO_PROTECT"
.LASF239:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF215:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF37:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF335:
	.string	"_FVWRITE_IN_STREAMIO 1"
.LASF565:
	.string	"_WCHAR_T_DECLARED "
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF763:
	.string	"_SC_THREAD_ATTR_STACKADDR 43"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF395:
	.string	"__EXP"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF227:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF781:
	.string	"_SC_BC_STRING_MAX 60"
.LASF795:
	.string	"_SC_SHELL 74"
.LASF398:
	.string	"_T_PTRDIFF "
.LASF223:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF574:
	.string	"_LOCK_RECURSIVE_T _LOCK_T"
.LASF541:
	.string	"__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))"
.LASF786:
	.string	"_SC_HOST_NAME_MAX 65"
.LASF302:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF404:
	.string	"_PTRDIFF_T_DECLARED "
.LASF391:
	.string	"___int_least8_t_defined 1"
.LASF632:
	.string	"_SYS_SELECT_H "
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF312:
	.string	"__ELF__ 1"
.LASF743:
	.string	"_SC_MAPPED_FILES 23"
.LASF183:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF40:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF342:
	.string	"__OBSOLETE_MATH_DEFAULT 1"
.LASF518:
	.string	"__SCCSID(s) struct __hack"
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF274:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF338:
	.string	"_UNBUF_STREAM_OPT 1"
.LASF370:
	.string	"__IMPORT "
.LASF472:
	.string	"__volatile volatile"
.LASF731:
	.string	"_SC_PHYS_PAGES 11"
.LASF341:
	.string	"__IEEE_LITTLE_ENDIAN "
.LASF157:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF234:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF288:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF355:
	.string	"__ATFILE_VISIBLE 1"
.LASF841:
	.string	"_SC_2_LOCALEDEF 112"
.LASF772:
	.string	"_SC_GETPW_R_SIZE_MAX 51"
.LASF527:
	.string	"__NULLABILITY_PRAGMA_POP "
.LASF372:
	.string	"_BEGIN_STD_C "
.LASF485:
	.string	"__malloc_like __attribute__((__malloc__))"
.LASF468:
	.string	"__STRING(x) #x"
.LASF366:
	.string	"_POINTER_INT long"
.LASF619:
	.string	"_QUAD_HIGHWORD 1"
.LASF170:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF687:
	.string	"__timer_t_defined "
.LASF193:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF368:
	.string	"__RAND_MAX 0x7fffffff"
.LASF358:
	.string	"__ISO_C_VISIBLE 2011"
.LASF553:
	.string	"_WCHAR_T "
.LASF515:
	.string	"__FBSDID(s) struct __hack"
.LASF260:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF631:
	.string	"__ntohs(_x) __bswap16(_x)"
.LASF640:
	.string	"timerisset(tvp) ((tvp)->tv_sec || (tvp)->tv_usec)"
.LASF383:
	.string	"_MACHINE__DEFAULT_TYPES_H "
.LASF621:
	.string	"LITTLE_ENDIAN _LITTLE_ENDIAN"
.LASF403:
	.string	"_GCC_PTRDIFF_T "
.LASF175:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF868:
	.string	"_SC_LEVEL4_CACHE_LINESIZE 139"
.LASF886:
	.string	"_PC_REC_INCR_XFER_SIZE 16"
.LASF408:
	.string	"_SIZE_T "
.LASF561:
	.string	"_WCHAR_T_H "
.LASF691:
	.string	"_SYS_SCHED_H_ "
.LASF636:
	.string	"__time_t_defined "
.LASF830:
	.string	"_SC_PRIORITY_SCHEDULING 101"
.LASF882:
	.string	"_PC_FILESIZEBITS 12"
.LASF670:
	.string	"_CLOCK_T_DECLARED "
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF336:
	.string	"_FSEEK_OPTIMIZATION 1"
.LASF900:
	.string	"long double"
.LASF528:
	.string	"__arg_type_tag(arg_kind,arg_idx,type_tag_idx) "
.LASF780:
	.string	"_SC_BC_SCALE_MAX 59"
.LASF519:
	.string	"__COPYRIGHT(s) struct __hack"
.LASF596:
	.string	"_TIMER_T_ unsigned long"
.LASF259:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF219:
	.string	"__FLT128_DIG__ 33"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF505:
	.string	"__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))"
.LASF197:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF549:
	.string	"_STDDEF_H_ "
.LASF256:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF163:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF412:
	.string	"__SIZE_T "
.LASF771:
	.string	"_SC_GETGR_R_SIZE_MAX 50"
.LASF509:
	.string	"__printf0like(fmtarg,firstvararg) "
.LASF800:
	.string	"_SC_SYMLOOP_MAX 79"
.LASF248:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF191:
	.string	"__FLT32_DIG__ 6"
.LASF474:
	.string	"__dead2 __attribute__((__noreturn__))"
.LASF821:
	.string	"_SC_XBS5_LP64_OFF64 _SC_V7_LP64_OFF64"
.LASF360:
	.string	"__MISC_VISIBLE 1"
.LASF618:
	.string	"_BYTE_ORDER _LITTLE_ENDIAN"
.LASF390:
	.string	"___int64_t_defined 1"
.LASF187:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF286:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF240:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF441:
	.string	"__BEGIN_DECLS "
.LASF125:
	.string	"__UINT64_C(c) c ## ULL"
.LASF696:
	.string	"PTHREAD_SCOPE_SYSTEM 1"
.LASF453:
	.string	"__GNUC_VA_LIST_COMPATIBILITY 1"
.LASF845:
	.string	"_SC_2_PBS_LOCATE 116"
.LASF51:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF817:
	.string	"_SC_V6_ILP32_OFFBIG _SC_V7_ILP32_OFFBIG"
.LASF906:
	.string	"optopt"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF230:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF214:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF326:
	.string	"__NEWLIB_PATCHLEVEL__ 0"
.LASF581:
	.string	"__lock_acquire(lock) __retarget_lock_acquire(lock)"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF587:
	.string	"__size_t"
.LASF477:
	.string	"__used __attribute__((__used__))"
.LASF426:
	.string	"__DOTS , ..."
.LASF267:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF898:
	.string	"long long unsigned int"
.LASF746:
	.string	"_SC_MEMORY_PROTECTION 26"
.LASF449:
	.string	"__GNUCLIKE_BUILTIN_CONSTANT_P 1"
.LASF525:
	.string	"_Null_unspecified "
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF33:
	.string	"__PTRDIFF_TYPE__ int"
.LASF416:
	.string	"_SIZE_T_DEFINED "
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF357:
	.string	"__GNU_VISIBLE 0"
.LASF399:
	.string	"__PTRDIFF_T "
.LASF769:
	.string	"_SC_THREAD_PROCESS_SHARED 48"
.LASF58:
	.string	"__INT_FAST16_TYPE__ int"
.LASF611:
	.string	"_UINTMAX_T_DECLARED "
.LASF54:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF674:
	.string	"_ID_T_DECLARED "
.LASF610:
	.string	"_INTMAX_T_DECLARED "
.LASF38:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF233:
	.string	"__FLT32X_DIG__ 15"
.LASF471:
	.string	"__signed signed"
.LASF646:
	.string	"TIMEVAL_TO_TIMESPEC(tv,ts) do { (ts)->tv_sec = (tv)->tv_sec; (ts)->tv_nsec = (tv)->tv_usec * 1000; } while (0)"
.LASF667:
	.string	"_BLKCNT_T_DECLARED "
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF385:
	.string	"__have_longlong64 1"
.LASF394:
	.string	"___int_least64_t_defined 1"
.LASF317:
	.string	"RT_USING_NEWLIB 1"
.LASF309:
	.string	"__riscv_xlen 32"
.LASF669:
	.string	"__clock_t_defined "
.LASF583:
	.string	"__lock_try_acquire(lock) __retarget_lock_try_acquire(lock)"
.LASF613:
	.string	"_UINTPTR_T_DECLARED "
.LASF560:
	.string	"_WCHAR_T_DEFINED "
.LASF534:
	.string	"__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))"
.LASF629:
	.string	"__htons(_x) __bswap16(_x)"
.LASF905:
	.string	"opterr"
.LASF778:
	.string	"_SC_BC_BASE_MAX 57"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF503:
	.string	"__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})"
.LASF414:
	.string	"_BSD_SIZE_T_ "
.LASF756:
	.string	"_SC_AIO_PRIO_DELTA_MAX 36"
.LASF190:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF557:
	.string	"_WCHAR_T_ "
.LASF607:
	.string	"_INT64_T_DECLARED "
.LASF842:
	.string	"_SC_2_PBS 113"
.LASF555:
	.string	"_T_WCHAR "
.LASF825:
	.string	"_SC_XOPEN_CRYPT 96"
.LASF802:
	.string	"_SC_THREAD_SPORADIC_SERVER 81"
.LASF784:
	.string	"_SC_CPUTIME 63"
.LASF801:
	.string	"_SC_THREAD_CPUTIME 80"
.LASF595:
	.string	"_CLOCKID_T_ unsigned long"
.LASF679:
	.string	"_GID_T_DECLARED "
.LASF440:
	.string	"__has_builtin(x) 0"
.LASF563:
	.string	"__INT_WCHAR_T_H "
.LASF388:
	.string	"___int16_t_defined 1"
.LASF745:
	.string	"_SC_MEMLOCK_RANGE 25"
.LASF327:
	.string	"_WANT_IO_C99_FORMATS 1"
.LASF564:
	.string	"_GCC_WCHAR_T "
.LASF736:
	.string	"_SC_SEM_NSEMS_MAX 16"
.LASF169:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF305:
	.string	"__riscv_atomic 1"
.LASF254:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF840:
	.string	"_SC_2_FORT_RUN 111"
.LASF807:
	.string	"_SC_TRACE_INHERIT 86"
.LASF576:
	.string	"__LOCK_INIT_RECURSIVE(class,lock) __LOCK_INIT(class,lock)"
.LASF827:
	.string	"_SC_XOPEN_LEGACY 98"
.LASF810:
	.string	"_SC_TRACE_SYS_MAX 89"
.LASF337:
	.string	"_WIDE_ORIENT 1"
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF55:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF178:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF539:
	.string	"__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))"
.LASF36:
	.string	"__INTMAX_TYPE__ long long int"
.LASF293:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF808:
	.string	"_SC_TRACE_LOG 87"
.LASF241:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF682:
	.string	"_SSIZE_T_DECLARED "
.LASF571:
	.string	"_GCC_MAX_ALIGN_T "
.LASF421:
	.string	"_SIZET_ "
.LASF174:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF437:
	.string	"__ptrvalue "
.LASF379:
	.string	"_NOINLINE_STATIC _NOINLINE static"
.LASF761:
	.string	"_SC_TTY_NAME_MAX 41"
.LASF171:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF635:
	.string	"_SUSECONDS_T_DECLARED "
.LASF228:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF833:
	.string	"_SC_XOPEN_STREAMS 104"
.LASF870:
	.string	"_PC_LINK_MAX 0"
.LASF65:
	.string	"__INTPTR_TYPE__ int"
.LASF504:
	.string	"__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))"
.LASF66:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF803:
	.string	"_SC_TIMEOUTS 82"
.LASF888:
	.string	"_PC_REC_MIN_XFER_SIZE 18"
.LASF281:
	.string	"__REGISTER_PREFIX__ "
.LASF280:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF162:
	.string	"__DBL_DIG__ 15"
.LASF602:
	.string	"_UINT16_T_DECLARED "
.LASF516:
	.string	"__RCSID(s) struct __hack"
.LASF381:
	.string	"__need_ptrdiff_t "
.LASF834:
	.string	"_SC_XOPEN_UNIX 105"
.LASF633:
	.string	"_SYS__SIGSET_H_ "
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF824:
	.string	"_SC_XBS5_LPBIG_OFFBIG _SC_V7_LPBIG_OFFBIG"
.LASF884:
	.string	"_PC_SYMLINK_MAX 14"
.LASF330:
	.string	"_WANT_IO_LONG_DOUBLE 1"
.LASF277:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF116:
	.string	"__INT64_C(c) c ## LL"
.LASF448:
	.string	"__GNUCLIKE_CTOR_SECTION_HANDLING 1"
.LASF531:
	.string	"__lockable __lock_annotate(lockable)"
.LASF482:
	.string	"__alloc_align(x) __attribute__((__alloc_align__ x))"
.LASF657:
	.string	"FD_ZERO(p) (__extension__ (void)({ size_t __i; char *__tmp = (char *)p; for (__i = 0; __i < sizeof (*(p)); ++__i) *__tmp++ = 0; }))"
.LASF614:
	.string	"__MACHINE_ENDIAN_H__ "
.LASF744:
	.string	"_SC_MEMLOCK 24"
.LASF653:
	.string	"fd_set _types_fd_set"
.LASF589:
	.string	"unsigned"
.LASF692:
	.string	"SCHED_OTHER 0"
.LASF893:
	.string	"short int"
.LASF548:
	.string	"_STDDEF_H "
.LASF544:
	.string	"__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))"
.LASF543:
	.string	"__guarded_by(x) __lock_annotate(guarded_by(x))"
.LASF446:
	.string	"__GNUCLIKE___OFFSETOF 1"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF365:
	.string	"_READ_WRITE_RETURN_TYPE _ssize_t"
.LASF460:
	.string	"__CC_SUPPORTS___INLINE__ 1"
.LASF804:
	.string	"_SC_TRACE 83"
.LASF655:
	.string	"FD_CLR(n,p) ((p)->fds_bits[(n)/NFDBITS] &= ~(1L << ((n) % NFDBITS)))"
.LASF284:
	.string	"__NO_INLINE__ 1"
.LASF776:
	.string	"_SC_ATEXIT_MAX 55"
.LASF530:
	.string	"__lock_annotate(x) "
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF376:
	.string	"_ATTRIBUTE(attrs) __attribute__ (attrs)"
.LASF173:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF204:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF828:
	.string	"_SC_XOPEN_REALTIME 99"
.LASF339:
	.string	"_RETARGETABLE_LOCKING 1"
.LASF502:
	.string	"__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))"
.LASF473:
	.string	"__weak_symbol __attribute__((__weak__))"
.LASF598:
	.string	"_INT8_T_DECLARED "
.LASF270:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF699:
	.string	"PTHREAD_CREATE_DETACHED 0"
.LASF167:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF787:
	.string	"_SC_IOV_MAX 66"
.LASF386:
	.string	"__have_long32 1"
.LASF701:
	.string	"_PTHREAD_MUTEX_INITIALIZER ((pthread_mutex_t) 0xFFFFFFFF)"
.LASF434:
	.string	"__flexarr [0]"
.LASF732:
	.string	"_SC_AVPHYS_PAGES 12"
.LASF609:
	.string	"__int64_t_defined 1"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF329:
	.string	"_WANT_REGISTER_FINI 1"
.LASF521:
	.string	"__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))"
.LASF552:
	.string	"__WCHAR_T__ "
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF451:
	.string	"__GNUCLIKE_BUILTIN_STDARG 1"
.LASF363:
	.string	"__XSI_VISIBLE 0"
.LASF218:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF507:
	.string	"__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))"
.LASF296:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF346:
	.string	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)"
.LASF475:
	.string	"__pure2 __attribute__((__const__))"
.LASF718:
	.string	"STDERR_FILENO 2"
.LASF608:
	.string	"_UINT64_T_DECLARED "
.LASF494:
	.string	"__unreachable() __builtin_unreachable()"
.LASF623:
	.string	"PDP_ENDIAN _PDP_ENDIAN"
.LASF301:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF0:
	.string	"__STDC__ 1"
.LASF533:
	.string	"__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))"
.LASF476:
	.string	"__unused __attribute__((__unused__))"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF201:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF869:
	.string	"_SC_POSIX_26_VERSION 140"
.LASF261:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF545:
	.string	"_MACHINE__TYPES_H "
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF382:
	.string	"_SYS_CDEFS_H_ "
.LASF875:
	.string	"_PC_PIPE_BUF 5"
.LASF452:
	.string	"__GNUCLIKE_BUILTIN_VAALIST 1"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF513:
	.string	"__sym_compat(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@\" #verid)"
.LASF741:
	.string	"_SC_ASYNCHRONOUS_IO 21"
.LASF225:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF47:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF722:
	.string	"_SC_NGROUPS_MAX 3"
.LASF651:
	.string	"NFDBITS (sizeof (fd_mask) * 8)"
.LASF486:
	.string	"__pure __attribute__((__pure__))"
.LASF211:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF420:
	.string	"_GCC_SIZE_T "
.LASF462:
	.string	"__CC_SUPPORTS_WARNING 1"
.LASF579:
	.string	"__lock_close(lock) __retarget_lock_close(lock)"
.LASF666:
	.string	"_BSDTYPES_DEFINED "
.LASF656:
	.string	"FD_ISSET(n,p) ((p)->fds_bits[(n)/NFDBITS] & (1L << ((n) % NFDBITS)))"
.LASF883:
	.string	"_PC_2_SYMLINKS 13"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF566:
	.string	"_BSD_WCHAR_T_"
.LASF463:
	.string	"__CC_SUPPORTS_VARADIC_XXX 1"
.LASF871:
	.string	"_PC_MAX_CANON 1"
.LASF688:
	.string	"_TIMER_T_DECLARED "
.LASF459:
	.string	"__CC_SUPPORTS___INLINE 1"
.LASF313:
	.string	"USE_PLIC 1"
.LASF350:
	.string	"_POSIX_SOURCE 1"
.LASF184:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF520:
	.string	"__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))"
.LASF283:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF590:
	.string	"__need_wint_t "
.LASF724:
	.string	"_SC_JOB_CONTROL 5"
.LASF89:
	.string	"__SIZE_WIDTH__ 32"
.LASF733:
	.string	"_SC_MQ_OPEN_MAX 13"
.LASF757:
	.string	"_SC_DELAYTIMER_MAX 37"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF770:
	.string	"_SC_THREAD_SAFE_FUNCTIONS 49"
.LASF205:
	.string	"__FLT64_DIG__ 15"
.LASF272:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF686:
	.string	"_CLOCKID_T_DECLARED "
.LASF155:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF430:
	.string	"__long_double_t long double"
.LASF50:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF855:
	.string	"_SC_LEVEL1_ICACHE_ASSOC 126"
.LASF894:
	.string	"short unsigned int"
.LASF202:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF815:
	.string	"_SC_XBS5_ILP32_OFF32 _SC_V7_ILP32_OFF32"
.LASF814:
	.string	"_SC_V6_ILP32_OFF32 _SC_V7_ILP32_OFF32"
.LASF616:
	.string	"_BIG_ENDIAN 4321"
.LASF304:
	.string	"__riscv_compressed 1"
.LASF506:
	.string	"__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))"
.LASF454:
	.string	"__compiler_membar() __asm __volatile(\" \" : : : \"memory\")"
.LASF710:
	.string	"R_OK 4"
.LASF529:
	.string	"__datatype_type_tag(kind,type) "
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF660:
	.string	"_IN_ADDR_T_DECLARED "
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF641:
	.string	"timercmp(tvp,uvp,cmp) (((tvp)->tv_sec == (uvp)->tv_sec) ? ((tvp)->tv_usec cmp (uvp)->tv_usec) : ((tvp)->tv_sec cmp (uvp)->tv_sec))"
.LASF315:
	.string	"NO_INIT 1"
.LASF489:
	.string	"__nonnull(x) __attribute__((__nonnull__ x))"
.LASF860:
	.string	"_SC_LEVEL2_CACHE_SIZE 131"
.LASF694:
	.string	"SCHED_RR 2"
.LASF45:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF232:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF654:
	.string	"FD_SET(n,p) ((p)->fds_bits[(n)/NFDBITS] |= (1L << ((n) % NFDBITS)))"
.LASF858:
	.string	"_SC_LEVEL1_DCACHE_ASSOC 129"
.LASF467:
	.string	"__CONCAT(x,y) __CONCAT1(x,y)"
.LASF690:
	.string	"_SYS__PTHREADTYPES_H_ "
.LASF110:
	.string	"__INT16_C(c) c"
.LASF822:
	.string	"_SC_V7_LPBIG_OFFBIG 95"
.LASF508:
	.string	"__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))"
.LASF268:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF790:
	.string	"_SC_MONOTONIC_CLOCK 69"
.LASF522:
	.string	"__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))"
.LASF863:
	.string	"_SC_LEVEL3_CACHE_SIZE 134"
.LASF578:
	.string	"__lock_init_recursive(lock) __retarget_lock_init_recursive(&lock)"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF723:
	.string	"_SC_OPEN_MAX 4"
.LASF43:
	.string	"__INT32_TYPE__ long int"
.LASF478:
	.string	"__packed __attribute__((__packed__))"
.LASF559:
	.string	"_WCHAR_T_DEFINED_ "
.LASF752:
	.string	"_SC_SYNCHRONIZED_IO 32"
.LASF887:
	.string	"_PC_REC_MAX_XFER_SIZE 17"
.LASF538:
	.string	"__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))"
.LASF573:
	.string	"__SYS_LOCK_H__ "
.LASF351:
	.string	"_POSIX_C_SOURCE"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF161:
	.string	"__DBL_MANT_DIG__ 53"
.LASF436:
	.string	"__unbounded "
.LASF799:
	.string	"_SC_SS_REPL_MAX 78"
.LASF665:
	.string	"__u_long_defined "
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF48:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF487:
	.string	"__always_inline __inline__ __attribute__((__always_inline__))"
.LASF708:
	.string	"F_TEST 3"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
