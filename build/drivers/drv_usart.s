	.file	"drv_usart.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.string	"uart0"
	.data
	.align	2
	.type	usart_config, @object
	.size	usart_config, 120
usart_config:
	.word	.LC0
	.word	1073821696
	.word	1550
	.word	1538
	.word	1073809408
	.word	512
	.word	1024
	.word	56
	.zero	88
	.section	.rodata
	.align	2
.LC1:
	.string	"serial != RT_NULL"
	.align	2
.LC2:
	.string	"cfg != RT_NULL"
	.align	2
.LC3:
	.string	"usart != RT_NULL"
	.text
	.align	1
	.type	gd32_configure, @function
gd32_configure:
.LFB21:
	.file 1 "drivers/drv_usart.c"
	.loc 1 53 39
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 55 8
	lw	a5,-36(s0)
	bnez	a5,.L2
	.loc 1 55 29 discriminator 1
	li	a2,55
	lla	a1,__FUNCTION__.5237
	lla	a0,.LC1
	call	rt_assert_handler
.L2:
	.loc 1 56 8
	lw	a5,-40(s0)
	bnez	a5,.L3
	.loc 1 56 26 discriminator 1
	li	a2,56
	lla	a1,__FUNCTION__.5237
	lla	a0,.LC2
	call	rt_assert_handler
.L3:
	.loc 1 58 11
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 1 59 8
	lw	a5,-20(s0)
	bnez	a5,.L4
	.loc 1 59 28 discriminator 1
	li	a2,59
	lla	a1,__FUNCTION__.5237
	lla	a0,.LC3
	call	rt_assert_handler
.L4:
	.loc 1 62 34
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 62 5
	mv	a0,a5
	call	rcu_periph_clock_enable
	.loc 1 64 34
	lw	a5,-20(s0)
	lw	a5,8(a5)
	.loc 1 64 5
	mv	a0,a5
	call	rcu_periph_clock_enable
	.loc 1 66 20
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 67 18
	lw	a5,-20(s0)
	lw	a5,20(a5)
	.loc 1 66 5
	mv	a3,a5
	li	a2,3
	li	a1,24
	mv	a0,a4
	call	gpio_init
	.loc 1 69 20
	lw	a5,-20(s0)
	lw	a4,16(a5)
	.loc 1 70 18
	lw	a5,-20(s0)
	lw	a5,24(a5)
	.loc 1 69 5
	mv	a3,a5
	li	a2,3
	li	a1,4
	mv	a0,a4
	call	gpio_init
	.loc 1 72 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 72 5
	mv	a0,a5
	call	usart_deinit
	.loc 1 73 29
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 73 46
	lw	a5,-40(s0)
	lw	a5,0(a5)
	.loc 1 73 5
	mv	a1,a5
	mv	a0,a4
	call	usart_baudrate_set
	.loc 1 75 16
	lw	a5,-40(s0)
	lw	a5,4(a5)
	andi	a5,a5,15
	andi	a5,a5,0xff
	li	a4,8
	beq	a5,a4,.L5
	li	a4,9
	beq	a5,a4,.L6
	j	.L18
.L5:
	.loc 1 77 36
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 77 9
	li	a1,0
	mv	a0,a5
	call	usart_word_length_set
	.loc 1 78 9
	j	.L8
.L6:
	.loc 1 81 36
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 81 9
	li	a1,4096
	mv	a0,a5
	call	usart_word_length_set
	.loc 1 82 9
	j	.L8
.L18:
	.loc 1 84 36
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 84 9
	li	a1,0
	mv	a0,a5
	call	usart_word_length_set
	.loc 1 85 9
	nop
.L8:
	.loc 1 88 16
	lw	a5,-40(s0)
	lw	a5,4(a5)
	srli	a5,a5,4
	andi	a5,a5,3
	andi	a5,a5,0xff
	beqz	a5,.L9
	li	a4,1
	beq	a5,a4,.L10
	j	.L19
.L9:
	.loc 1 90 33
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 90 9
	li	a1,0
	mv	a0,a5
	call	usart_stop_bit_set
	.loc 1 91 9
	j	.L12
.L10:
	.loc 1 93 33
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 93 9
	li	a1,8192
	mv	a0,a5
	call	usart_stop_bit_set
	.loc 1 94 9
	j	.L12
.L19:
	.loc 1 96 33
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 96 9
	li	a1,0
	mv	a0,a5
	call	usart_stop_bit_set
	.loc 1 97 9
	nop
.L12:
	.loc 1 100 16
	lw	a5,-40(s0)
	lw	a5,4(a5)
	srli	a5,a5,6
	andi	a5,a5,3
	andi	a5,a5,0xff
	li	a4,1
	beq	a5,a4,.L13
	li	a4,2
	beq	a5,a4,.L14
	bnez	a5,.L15
	.loc 1 102 34
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 102 9
	li	a1,0
	mv	a0,a5
	call	usart_parity_config
	.loc 1 103 9
	j	.L16
.L13:
	.loc 1 105 34
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 105 9
	li	a1,1536
	mv	a0,a5
	call	usart_parity_config
	.loc 1 106 9
	j	.L16
.L14:
	.loc 1 108 34
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 108 9
	li	a1,1024
	mv	a0,a5
	call	usart_parity_config
	.loc 1 109 9
	j	.L16
.L15:
	.loc 1 111 34
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 111 9
	li	a1,0
	mv	a0,a5
	call	usart_parity_config
	.loc 1 112 9
	nop
.L16:
	.loc 1 114 41
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 114 5
	li	a1,0
	mv	a0,a5
	call	usart_hardware_flow_rts_config
	.loc 1 115 41
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 115 5
	li	a1,0
	mv	a0,a5
	call	usart_hardware_flow_cts_config
	.loc 1 116 31
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 116 5
	li	a1,4
	mv	a0,a5
	call	usart_receive_config
	.loc 1 117 32
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 117 5
	li	a1,8
	mv	a0,a5
	call	usart_transmit_config
	.loc 1 118 23
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 118 5
	mv	a0,a5
	call	usart_enable
	.loc 1 120 12
	li	a5,0
	.loc 1 121 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE21:
	.size	gd32_configure, .-gd32_configure
	.align	1
	.type	gd32_control, @function
gd32_control:
.LFB22:
	.loc 1 124 20
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 127 8
	lw	a5,-36(s0)
	bnez	a5,.L21
	.loc 1 127 29 discriminator 1
	li	a2,127
	lla	a1,__FUNCTION__.5257
	lla	a0,.LC1
	call	rt_assert_handler
.L21:
	.loc 1 128 11
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 1 129 8
	lw	a5,-20(s0)
	bnez	a5,.L22
	.loc 1 129 28 discriminator 1
	li	a2,129
	lla	a1,__FUNCTION__.5257
	lla	a0,.LC3
	call	rt_assert_handler
.L22:
	lw	a4,-40(s0)
	li	a5,16
	beq	a4,a5,.L23
	lw	a4,-40(s0)
	li	a5,17
	bne	a4,a5,.L24
	.loc 1 133 32
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 133 9
	mv	a0,a5
	call	eclic_irq_disable
	.loc 1 134 38
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 134 9
	li	a1,773
	mv	a0,a5
	call	usart_interrupt_disable
	.loc 1 135 9
	j	.L24
.L23:
	.loc 1 137 9
	li	a0,3
	call	eclic_set_nlbits
	.loc 1 138 31
	lw	a5,-20(s0)
	lw	a5,28(a5)
	.loc 1 138 9
	li	a2,0
	li	a1,1
	mv	a0,a5
	call	eclic_irq_enable
	.loc 1 140 37
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 140 9
	li	a1,773
	mv	a0,a5
	call	usart_interrupt_enable
	.loc 1 141 9
	nop
.L24:
	.loc 1 144 12
	li	a5,0
	.loc 1 145 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE22:
	.size	gd32_control, .-gd32_control
	.align	1
	.type	gd32_putc, @function
gd32_putc:
.LFB23:
	.loc 1 147 64
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 150 8
	lw	a5,-36(s0)
	bnez	a5,.L27
	.loc 1 150 29 discriminator 1
	li	a2,150
	lla	a1,__FUNCTION__.5266
	lla	a0,.LC1
	call	rt_assert_handler
.L27:
	.loc 1 151 11
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 1 152 8
	lw	a5,-20(s0)
	bnez	a5,.L28
	.loc 1 152 28 discriminator 1
	li	a2,152
	lla	a1,__FUNCTION__.5266
	lla	a0,.LC3
	call	rt_assert_handler
.L28:
	.loc 1 154 30
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 154 5
	lbu	a4,-37(s0)
	mv	a1,a4
	mv	a0,a5
	call	usart_data_transmit
	.loc 1 155 11
	nop
.L29:
	.loc 1 155 32 discriminator 1
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 155 12 discriminator 1
	li	a1,7
	mv	a0,a5
	call	usart_flag_get
	mv	a5,a0
	.loc 1 155 11 discriminator 1
	beqz	a5,.L29
	.loc 1 158 12
	li	a5,1
	.loc 1 159 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE23:
	.size	gd32_putc, .-gd32_putc
	.align	1
	.type	gd32_getc, @function
gd32_getc:
.LFB24:
	.loc 1 161 55
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 165 8
	lw	a5,-36(s0)
	bnez	a5,.L32
	.loc 1 165 29 discriminator 1
	li	a2,165
	lla	a1,__FUNCTION__.5275
	lla	a0,.LC1
	call	rt_assert_handler
.L32:
	.loc 1 166 11
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-24(s0)
	.loc 1 167 8
	lw	a5,-24(s0)
	bnez	a5,.L33
	.loc 1 167 28 discriminator 1
	li	a2,167
	lla	a1,__FUNCTION__.5275
	lla	a0,.LC3
	call	rt_assert_handler
.L33:
	.loc 1 169 8
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 170 38
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 170 18
	li	a1,5
	mv	a0,a5
	call	usart_flag_get
	mv	a5,a0
	.loc 1 170 8
	beqz	a5,.L34
	.loc 1 171 38
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 171 14
	mv	a0,a5
	call	usart_data_receive
	mv	a5,a0
	.loc 1 171 12
	andi	a5,a5,255
	sw	a5,-20(s0)
.L34:
	.loc 1 174 12
	lw	a5,-20(s0)
	.loc 1 175 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE24:
	.size	gd32_getc, .-gd32_getc
	.section	.rodata
	.align	2
	.type	gd32_usart_ops, @object
	.size	gd32_usart_ops, 20
gd32_usart_ops:
	.word	gd32_configure
	.word	gd32_control
	.word	gd32_putc
	.word	gd32_getc
	.word	0
	.text
	.align	1
	.type	usart_isr, @function
usart_isr:
.LFB25:
	.loc 1 181 56
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 184 8
	lw	a5,-36(s0)
	bnez	a5,.L37
	.loc 1 184 29 discriminator 1
	li	a2,184
	lla	a1,__FUNCTION__.5281
	lla	a0,.LC1
	call	rt_assert_handler
.L37:
	.loc 1 186 11
	lw	a5,-36(s0)
	lw	a5,64(a5)
	sw	a5,-20(s0)
	.loc 1 187 8
	lw	a5,-20(s0)
	bnez	a5,.L38
	.loc 1 187 28 discriminator 1
	li	a2,187
	lla	a1,__FUNCTION__.5281
	lla	a0,.LC3
	call	rt_assert_handler
.L38:
	.loc 1 189 40
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 189 10
	li	a5,327680
	addi	a1,a5,773
	mv	a0,a4
	call	usart_interrupt_flag_get
	mv	a5,a0
	.loc 1 189 8
	beqz	a5,.L39
	.loc 1 191 46
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 191 26
	li	a1,5
	mv	a0,a5
	call	usart_flag_get
	mv	a5,a0
	.loc 1 191 13
	beqz	a5,.L39
	.loc 1 192 9
	li	a1,1
	lw	a0,-36(s0)
	call	rt_hw_serial_isr
	.loc 1 193 41
	lw	a5,-20(s0)
	lw	a4,4(a5)
	.loc 1 193 9
	li	a5,327680
	addi	a1,a5,773
	mv	a0,a4
	call	usart_interrupt_flag_clear
	.loc 1 194 31
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 194 9
	li	a1,5
	mv	a0,a5
	call	usart_flag_clear
	.loc 1 208 1
	j	.L43
.L39:
	.loc 1 196 33
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 196 13
	li	a1,9
	mv	a0,a5
	call	usart_flag_get
	mv	a5,a0
	.loc 1 196 12
	beqz	a5,.L41
	.loc 1 197 35
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 197 13
	li	a1,9
	mv	a0,a5
	call	usart_flag_clear
.L41:
	.loc 1 200 33
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 200 13
	li	a1,8
	mv	a0,a5
	call	usart_flag_get
	mv	a5,a0
	.loc 1 200 12
	beqz	a5,.L42
	.loc 1 201 35
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 201 13
	li	a1,8
	mv	a0,a5
	call	usart_flag_clear
.L42:
	.loc 1 204 33
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 204 13
	li	a1,6
	mv	a0,a5
	call	usart_flag_get
	mv	a5,a0
	.loc 1 204 12
	beqz	a5,.L43
	.loc 1 205 35
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 205 13
	li	a1,6
	mv	a0,a5
	call	usart_flag_clear
.L43:
	.loc 1 208 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE25:
	.size	usart_isr, .-usart_isr
	.align	1
	.globl	USART0_IRQHandler
	.type	USART0_IRQHandler, @function
USART0_IRQHandler:
.LFB26:
	.loc 1 211 30
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 212 5
	call	rt_interrupt_enter
	.loc 1 214 5
	lla	a0,usart_config+32
	call	usart_isr
	.loc 1 216 5
	call	rt_interrupt_leave
	.loc 1 217 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE26:
	.size	USART0_IRQHandler, .-USART0_IRQHandler
	.section	.rodata
	.align	2
.LC4:
	.string	"result == RT_EOK"
	.text
	.align	1
	.globl	rt_hw_usart_init
	.type	rt_hw_usart_init, @function
rt_hw_usart_init:
.LFB27:
	.loc 1 221 28
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 225 13
	li	a5,1
	sw	a5,-28(s0)
	.loc 1 226 29
	li	a5,114688
	addi	a5,a5,512
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	andi	a5,a5,-16
	ori	a5,a5,8
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	andi	a5,a5,-49
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	andi	a5,a5,-193
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	andi	a5,a5,-257
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	andi	a5,a5,-513
	sw	a5,-32(s0)
	lw	a4,-32(s0)
	li	a5,-67108864
	addi	a5,a5,1023
	and	a4,a4,a5
	li	a5,65536
	or	a5,a4,a5
	sw	a5,-32(s0)
	lw	a4,-32(s0)
	li	a5,67108864
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-32(s0)
	.loc 1 227 14
	sw	zero,-24(s0)
	.loc 1 229 16
	sw	zero,-20(s0)
	.loc 1 229 5
	j	.L46
.L48:
	.loc 1 230 40
	lla	a3,usart_config
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lla	a4,gd32_usart_ops
	sw	a4,100(a5)
	.loc 1 231 43
	lla	a3,usart_config
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a4,-36(s0)
	sw	a4,104(a5)
	lw	a4,-32(s0)
	sw	a4,108(a5)
	.loc 1 234 18
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,3
	addi	a4,a5,32
	lla	a5,usart_config
	add	a0,a4,a5
	.loc 1 235 36
	lla	a3,usart_config
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a1,0(a5)
	.loc 1 237 34
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,3
	lla	a4,usart_config
	add	a5,a5,a4
	.loc 1 234 18
	mv	a3,a5
	li	a2,1283
	call	rt_hw_serial_register
	sw	a0,-24(s0)
	.loc 1 238 12
	lw	a5,-24(s0)
	beqz	a5,.L47
	.loc 1 238 31 discriminator 1
	li	a2,238
	lla	a1,__FUNCTION__.5292
	lla	a0,.LC4
	call	rt_assert_handler
.L47:
	.loc 1 229 43 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L46:
	.loc 1 229 27 discriminator 1
	lw	a5,-20(s0)
	.loc 1 229 5 discriminator 1
	lw	a4,-28(s0)
	bgtu	a4,a5,.L48
	.loc 1 241 12
	lw	a5,-24(s0)
	.loc 1 242 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE27:
	.size	rt_hw_usart_init, .-rt_hw_usart_init
	.section	.rodata
	.align	2
	.type	__FUNCTION__.5237, @object
	.size	__FUNCTION__.5237, 15
__FUNCTION__.5237:
	.string	"gd32_configure"
	.align	2
	.type	__FUNCTION__.5257, @object
	.size	__FUNCTION__.5257, 13
__FUNCTION__.5257:
	.string	"gd32_control"
	.align	2
	.type	__FUNCTION__.5266, @object
	.size	__FUNCTION__.5266, 10
__FUNCTION__.5266:
	.string	"gd32_putc"
	.align	2
	.type	__FUNCTION__.5275, @object
	.size	__FUNCTION__.5275, 10
__FUNCTION__.5275:
	.string	"gd32_getc"
	.align	2
	.type	__FUNCTION__.5281, @object
	.size	__FUNCTION__.5281, 10
__FUNCTION__.5281:
	.string	"usart_isr"
	.align	2
	.type	__FUNCTION__.5292, @object
	.size	__FUNCTION__.5292, 17
__FUNCTION__.5292:
	.string	"rt_hw_usart_init"
	.text
.Letext0:
	.file 2 "rt-thread/include/rtdef.h"
	.file 3 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h"
	.file 4 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/lock.h"
	.file 5 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_types.h"
	.file 6 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/lib/gcc/riscv-none-embed/8.2.0/include/stddef.h"
	.file 7 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/reent.h"
	.file 8 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_stdint.h"
	.file 9 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/time.h"
	.file 10 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/errno.h"
	.file 11 "rt-thread/include/rtthread.h"
	.file 12 "rt-thread/components/finsh/finsh_api.h"
	.file 13 "rt-thread/components/drivers/include/drivers/serial.h"
	.file 14 "libraries/GD32VF103_standard_peripheral/gd32vf103.h"
	.file 15 "libraries/GD32VF103_standard_peripheral/system_gd32vf103.h"
	.file 16 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_rcu.h"
	.file 17 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_usart.h"
	.file 18 "board/board.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16ab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF4674
	.byte	0xc
	.4byte	.LASF4675
	.4byte	.LASF4676
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4305
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4306
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF4308
	.byte	0x2
	.byte	0x42
	.byte	0x17
	.4byte	0x4a
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4307
	.byte	0x4
	.4byte	.LASF4309
	.byte	0x2
	.byte	0x43
	.byte	0x18
	.4byte	0x5d
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4310
	.byte	0x4
	.4byte	.LASF4311
	.byte	0x2
	.byte	0x44
	.byte	0x16
	.4byte	0x70
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4312
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4313
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF4314
	.byte	0x4
	.4byte	.LASF4315
	.byte	0x2
	.byte	0x50
	.byte	0xe
	.4byte	0x91
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4316
	.byte	0x4
	.4byte	.LASF4317
	.byte	0x2
	.byte	0x51
	.byte	0x17
	.4byte	0xa4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4318
	.byte	0x4
	.4byte	.LASF4319
	.byte	0x2
	.byte	0x53
	.byte	0x13
	.4byte	0x85
	.byte	0x4
	.4byte	.LASF4320
	.byte	0x2
	.byte	0x57
	.byte	0x14
	.4byte	0x98
	.byte	0x4
	.4byte	.LASF4321
	.byte	0x2
	.byte	0x59
	.byte	0x13
	.4byte	0x85
	.byte	0x5
	.4byte	.LASF4325
	.byte	0x8
	.byte	0x2
	.2byte	0x138
	.byte	0x8
	.4byte	0xfa
	.byte	0x6
	.4byte	.LASF4322
	.byte	0x2
	.2byte	0x13a
	.byte	0x1a
	.4byte	0xfa
	.byte	0
	.byte	0x6
	.4byte	.LASF4323
	.byte	0x2
	.2byte	0x13b
	.byte	0x1a
	.4byte	0xfa
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xcf
	.byte	0x8
	.4byte	.LASF4324
	.byte	0x2
	.2byte	0x13d
	.byte	0x1d
	.4byte	0xcf
	.byte	0x5
	.4byte	.LASF4326
	.byte	0x14
	.byte	0x2
	.2byte	0x156
	.byte	0x8
	.4byte	0x154
	.byte	0x6
	.4byte	.LASF4327
	.byte	0x2
	.2byte	0x158
	.byte	0xa
	.4byte	0x154
	.byte	0
	.byte	0x6
	.4byte	.LASF4328
	.byte	0x2
	.2byte	0x159
	.byte	0x10
	.4byte	0x3e
	.byte	0x8
	.byte	0x6
	.4byte	.LASF4329
	.byte	0x2
	.2byte	0x15a
	.byte	0x10
	.4byte	0x3e
	.byte	0x9
	.byte	0x6
	.4byte	.LASF4330
	.byte	0x2
	.2byte	0x15f
	.byte	0xf
	.4byte	0x100
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x164
	.4byte	0x164
	.byte	0xa
	.4byte	0x70
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1584
	.byte	0xb
	.4byte	0x164
	.byte	0xc
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x3e
	.byte	0xd
	.4byte	.LASF4514
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x2
	.2byte	0x343
	.byte	0x6
	.4byte	0x210
	.byte	0xe
	.4byte	.LASF4331
	.byte	0
	.byte	0xe
	.4byte	.LASF4332
	.byte	0x1
	.byte	0xe
	.4byte	.LASF4333
	.byte	0x2
	.byte	0xe
	.4byte	.LASF4334
	.byte	0x3
	.byte	0xe
	.4byte	.LASF4335
	.byte	0x4
	.byte	0xe
	.4byte	.LASF4336
	.byte	0x5
	.byte	0xe
	.4byte	.LASF4337
	.byte	0x6
	.byte	0xe
	.4byte	.LASF4338
	.byte	0x7
	.byte	0xe
	.4byte	.LASF4339
	.byte	0x8
	.byte	0xe
	.4byte	.LASF4340
	.byte	0x9
	.byte	0xe
	.4byte	.LASF4341
	.byte	0xa
	.byte	0xe
	.4byte	.LASF4342
	.byte	0xb
	.byte	0xe
	.4byte	.LASF4343
	.byte	0xc
	.byte	0xe
	.4byte	.LASF4344
	.byte	0xd
	.byte	0xe
	.4byte	.LASF4345
	.byte	0xe
	.byte	0xe
	.4byte	.LASF4346
	.byte	0xf
	.byte	0xe
	.4byte	.LASF4347
	.byte	0x10
	.byte	0xe
	.4byte	.LASF4348
	.byte	0x11
	.byte	0xe
	.4byte	.LASF4349
	.byte	0x12
	.byte	0xe
	.4byte	.LASF4350
	.byte	0x13
	.byte	0xe
	.4byte	.LASF4351
	.byte	0x14
	.byte	0xe
	.4byte	.LASF4352
	.byte	0x15
	.byte	0
	.byte	0x8
	.4byte	.LASF4353
	.byte	0x2
	.2byte	0x392
	.byte	0x1b
	.4byte	0x21d
	.byte	0x7
	.byte	0x4
	.4byte	0x223
	.byte	0x5
	.4byte	.LASF4354
	.byte	0x44
	.byte	0x2
	.2byte	0x3ae
	.byte	0x8
	.4byte	0x304
	.byte	0x6
	.4byte	.LASF4355
	.byte	0x2
	.2byte	0x3b0
	.byte	0x16
	.4byte	0x10d
	.byte	0
	.byte	0x6
	.4byte	.LASF4328
	.byte	0x2
	.2byte	0x3b2
	.byte	0x1f
	.4byte	0x178
	.byte	0x14
	.byte	0x6
	.4byte	.LASF4329
	.byte	0x2
	.2byte	0x3b3
	.byte	0x11
	.4byte	0x51
	.byte	0x18
	.byte	0x6
	.4byte	.LASF4356
	.byte	0x2
	.2byte	0x3b4
	.byte	0x11
	.4byte	0x51
	.byte	0x1a
	.byte	0x6
	.4byte	.LASF4357
	.byte	0x2
	.2byte	0x3b6
	.byte	0x10
	.4byte	0x3e
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF4358
	.byte	0x2
	.2byte	0x3b7
	.byte	0x10
	.4byte	0x3e
	.byte	0x1d
	.byte	0x6
	.4byte	.LASF4359
	.byte	0x2
	.2byte	0x3ba
	.byte	0x10
	.4byte	0x3b5
	.byte	0x20
	.byte	0x6
	.4byte	.LASF4360
	.byte	0x2
	.2byte	0x3bb
	.byte	0x10
	.4byte	0x3cf
	.byte	0x24
	.byte	0x6
	.4byte	.LASF4361
	.byte	0x2
	.2byte	0x3c1
	.byte	0x10
	.4byte	0x313
	.byte	0x28
	.byte	0x6
	.4byte	.LASF4362
	.byte	0x2
	.2byte	0x3c2
	.byte	0x10
	.4byte	0x32d
	.byte	0x2c
	.byte	0x6
	.4byte	.LASF4363
	.byte	0x2
	.2byte	0x3c3
	.byte	0x10
	.4byte	0x313
	.byte	0x30
	.byte	0x6
	.4byte	.LASF4364
	.byte	0x2
	.2byte	0x3c4
	.byte	0x11
	.4byte	0x351
	.byte	0x34
	.byte	0x6
	.4byte	.LASF4365
	.byte	0x2
	.2byte	0x3c5
	.byte	0x11
	.4byte	0x37c
	.byte	0x38
	.byte	0x6
	.4byte	.LASF4366
	.byte	0x2
	.2byte	0x3c6
	.byte	0x10
	.4byte	0x39b
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF4367
	.byte	0x2
	.2byte	0x3ce
	.byte	0xb
	.4byte	0x170
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	0xab
	.4byte	0x313
	.byte	0x10
	.4byte	0x210
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x304
	.byte	0xf
	.4byte	0xab
	.4byte	0x32d
	.byte	0x10
	.4byte	0x210
	.byte	0x10
	.4byte	0x51
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x319
	.byte	0xf
	.4byte	0xb7
	.4byte	0x351
	.byte	0x10
	.4byte	0x210
	.byte	0x10
	.4byte	0xc3
	.byte	0x10
	.4byte	0x170
	.byte	0x10
	.4byte	0xb7
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x333
	.byte	0xf
	.4byte	0xb7
	.4byte	0x375
	.byte	0x10
	.4byte	0x210
	.byte	0x10
	.4byte	0xc3
	.byte	0x10
	.4byte	0x375
	.byte	0x10
	.4byte	0xb7
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x37b
	.byte	0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x357
	.byte	0xf
	.4byte	0xab
	.4byte	0x39b
	.byte	0x10
	.4byte	0x210
	.byte	0x10
	.4byte	0x37
	.byte	0x10
	.4byte	0x170
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x382
	.byte	0xf
	.4byte	0xab
	.4byte	0x3b5
	.byte	0x10
	.4byte	0x210
	.byte	0x10
	.4byte	0xb7
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x3a1
	.byte	0xf
	.4byte	0xab
	.4byte	0x3cf
	.byte	0x10
	.4byte	0x210
	.byte	0x10
	.4byte	0x170
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x3bb
	.byte	0x7
	.byte	0x4
	.4byte	0x16b
	.byte	0xb
	.4byte	0x3d5
	.byte	0x7
	.byte	0x4
	.4byte	0x164
	.byte	0x4
	.4byte	.LASF4368
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x4a
	.byte	0x4
	.4byte	.LASF4369
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0xa4
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF4370
	.byte	0x4
	.4byte	.LASF4371
	.byte	0x4
	.byte	0x22
	.byte	0x19
	.4byte	0x411
	.byte	0x7
	.byte	0x4
	.4byte	0x417
	.byte	0x12
	.4byte	.LASF4478
	.byte	0x4
	.4byte	.LASF4372
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x91
	.byte	0x4
	.4byte	.LASF4373
	.byte	0x5
	.byte	0x72
	.byte	0xe
	.4byte	0x91
	.byte	0x4
	.4byte	.LASF4374
	.byte	0x5
	.byte	0x91
	.byte	0x14
	.4byte	0x37
	.byte	0x8
	.4byte	.LASF4375
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x70
	.byte	0x13
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.4byte	0x46f
	.byte	0x14
	.4byte	.LASF4376
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0x440
	.byte	0x14
	.4byte	.LASF4377
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x46f
	.byte	0
	.byte	0x9
	.4byte	0x4a
	.4byte	0x47f
	.byte	0xa
	.4byte	0x70
	.byte	0x3
	.byte	0
	.byte	0x15
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x4a3
	.byte	0x16
	.4byte	.LASF4378
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.4byte	0x37
	.byte	0
	.byte	0x16
	.4byte	.LASF4379
	.byte	0x5
	.byte	0xaa
	.byte	0x5
	.4byte	0x44d
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF4380
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x47f
	.byte	0x4
	.4byte	.LASF4381
	.byte	0x5
	.byte	0xaf
	.byte	0x11
	.4byte	0x405
	.byte	0x4
	.4byte	.LASF4382
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0xa4
	.byte	0x17
	.4byte	.LASF4383
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x521
	.byte	0x16
	.4byte	.LASF4384
	.byte	0x7
	.byte	0x31
	.byte	0x13
	.4byte	0x521
	.byte	0
	.byte	0x18
	.string	"_k"
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.4byte	0x37
	.byte	0x4
	.byte	0x16
	.4byte	.LASF4385
	.byte	0x7
	.byte	0x32
	.byte	0xb
	.4byte	0x37
	.byte	0x8
	.byte	0x16
	.4byte	.LASF4386
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.4byte	0x37
	.byte	0xc
	.byte	0x16
	.4byte	.LASF4387
	.byte	0x7
	.byte	0x32
	.byte	0x1b
	.4byte	0x37
	.byte	0x10
	.byte	0x18
	.string	"_x"
	.byte	0x7
	.byte	0x33
	.byte	0xb
	.4byte	0x527
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4c7
	.byte	0x9
	.4byte	0x4bb
	.4byte	0x537
	.byte	0xa
	.4byte	0x70
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF4388
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.byte	0x8
	.4byte	0x5ba
	.byte	0x16
	.4byte	.LASF4389
	.byte	0x7
	.byte	0x39
	.byte	0x7
	.4byte	0x37
	.byte	0
	.byte	0x16
	.4byte	.LASF4390
	.byte	0x7
	.byte	0x3a
	.byte	0x7
	.4byte	0x37
	.byte	0x4
	.byte	0x16
	.4byte	.LASF4391
	.byte	0x7
	.byte	0x3b
	.byte	0x7
	.4byte	0x37
	.byte	0x8
	.byte	0x16
	.4byte	.LASF4392
	.byte	0x7
	.byte	0x3c
	.byte	0x7
	.4byte	0x37
	.byte	0xc
	.byte	0x16
	.4byte	.LASF4393
	.byte	0x7
	.byte	0x3d
	.byte	0x7
	.4byte	0x37
	.byte	0x10
	.byte	0x16
	.4byte	.LASF4394
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x37
	.byte	0x14
	.byte	0x16
	.4byte	.LASF4395
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x37
	.byte	0x18
	.byte	0x16
	.4byte	.LASF4396
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x37
	.byte	0x1c
	.byte	0x16
	.4byte	.LASF4397
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x37
	.byte	0x20
	.byte	0
	.byte	0x19
	.4byte	.LASF4398
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.byte	0x8
	.4byte	0x5ff
	.byte	0x16
	.4byte	.LASF4399
	.byte	0x7
	.byte	0x4b
	.byte	0x9
	.4byte	0x5ff
	.byte	0
	.byte	0x16
	.4byte	.LASF4400
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x5ff
	.byte	0x80
	.byte	0x1a
	.4byte	.LASF4401
	.byte	0x7
	.byte	0x4e
	.byte	0xa
	.4byte	0x4bb
	.2byte	0x100
	.byte	0x1a
	.4byte	.LASF4402
	.byte	0x7
	.byte	0x51
	.byte	0xa
	.4byte	0x4bb
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x170
	.4byte	0x60f
	.byte	0xa
	.4byte	0x70
	.byte	0x1f
	.byte	0
	.byte	0x19
	.4byte	.LASF4403
	.2byte	0x190
	.byte	0x7
	.byte	0x5d
	.byte	0x8
	.4byte	0x652
	.byte	0x16
	.4byte	.LASF4384
	.byte	0x7
	.byte	0x5e
	.byte	0x12
	.4byte	0x652
	.byte	0
	.byte	0x16
	.4byte	.LASF4404
	.byte	0x7
	.byte	0x5f
	.byte	0x6
	.4byte	0x37
	.byte	0x4
	.byte	0x16
	.4byte	.LASF4405
	.byte	0x7
	.byte	0x61
	.byte	0x9
	.4byte	0x658
	.byte	0x8
	.byte	0x16
	.4byte	.LASF4398
	.byte	0x7
	.byte	0x62
	.byte	0x1e
	.4byte	0x5ba
	.byte	0x88
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x60f
	.byte	0x9
	.4byte	0x668
	.4byte	0x668
	.byte	0xa
	.4byte	0x70
	.byte	0x1f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x66e
	.byte	0x1b
	.byte	0x17
	.4byte	.LASF4406
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.byte	0x8
	.4byte	0x697
	.byte	0x16
	.4byte	.LASF4407
	.byte	0x7
	.byte	0x76
	.byte	0x11
	.4byte	0x697
	.byte	0
	.byte	0x16
	.4byte	.LASF4408
	.byte	0x7
	.byte	0x77
	.byte	0x6
	.4byte	0x37
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4a
	.byte	0x17
	.4byte	.LASF4409
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.byte	0x8
	.4byte	0x7e0
	.byte	0x18
	.string	"_p"
	.byte	0x7
	.byte	0xb6
	.byte	0x12
	.4byte	0x697
	.byte	0
	.byte	0x18
	.string	"_r"
	.byte	0x7
	.byte	0xb7
	.byte	0x7
	.4byte	0x37
	.byte	0x4
	.byte	0x18
	.string	"_w"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x37
	.byte	0x8
	.byte	0x16
	.4byte	.LASF4410
	.byte	0x7
	.byte	0xb9
	.byte	0x9
	.4byte	0x30
	.byte	0xc
	.byte	0x16
	.4byte	.LASF4411
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x30
	.byte	0xe
	.byte	0x18
	.string	"_bf"
	.byte	0x7
	.byte	0xbb
	.byte	0x11
	.4byte	0x66f
	.byte	0x10
	.byte	0x16
	.4byte	.LASF4412
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x37
	.byte	0x18
	.byte	0x16
	.4byte	.LASF4413
	.byte	0x7
	.byte	0xc3
	.byte	0xa
	.4byte	0x170
	.byte	0x1c
	.byte	0x16
	.4byte	.LASF4414
	.byte	0x7
	.byte	0xc5
	.byte	0xe
	.4byte	0x952
	.byte	0x20
	.byte	0x16
	.4byte	.LASF4415
	.byte	0x7
	.byte	0xc7
	.byte	0xe
	.4byte	0x976
	.byte	0x24
	.byte	0x16
	.4byte	.LASF4416
	.byte	0x7
	.byte	0xca
	.byte	0xd
	.4byte	0x99a
	.byte	0x28
	.byte	0x16
	.4byte	.LASF4417
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b4
	.byte	0x2c
	.byte	0x18
	.string	"_ub"
	.byte	0x7
	.byte	0xce
	.byte	0x11
	.4byte	0x66f
	.byte	0x30
	.byte	0x18
	.string	"_up"
	.byte	0x7
	.byte	0xcf
	.byte	0x12
	.4byte	0x697
	.byte	0x38
	.byte	0x18
	.string	"_ur"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x37
	.byte	0x3c
	.byte	0x16
	.4byte	.LASF4418
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x9ba
	.byte	0x40
	.byte	0x16
	.4byte	.LASF4419
	.byte	0x7
	.byte	0xd4
	.byte	0x11
	.4byte	0x9ca
	.byte	0x43
	.byte	0x18
	.string	"_lb"
	.byte	0x7
	.byte	0xd7
	.byte	0x11
	.4byte	0x66f
	.byte	0x44
	.byte	0x16
	.4byte	.LASF4420
	.byte	0x7
	.byte	0xda
	.byte	0x7
	.4byte	0x37
	.byte	0x4c
	.byte	0x16
	.4byte	.LASF4421
	.byte	0x7
	.byte	0xdb
	.byte	0xa
	.4byte	0x41c
	.byte	0x50
	.byte	0x16
	.4byte	.LASF4422
	.byte	0x7
	.byte	0xde
	.byte	0x12
	.4byte	0x7fe
	.byte	0x54
	.byte	0x16
	.4byte	.LASF4423
	.byte	0x7
	.byte	0xe2
	.byte	0xc
	.4byte	0x4af
	.byte	0x58
	.byte	0x16
	.4byte	.LASF4424
	.byte	0x7
	.byte	0xe4
	.byte	0xe
	.4byte	0x4a3
	.byte	0x5c
	.byte	0x16
	.4byte	.LASF4425
	.byte	0x7
	.byte	0xe5
	.byte	0x7
	.4byte	0x37
	.byte	0x64
	.byte	0
	.byte	0xf
	.4byte	0x434
	.4byte	0x7fe
	.byte	0x10
	.4byte	0x7fe
	.byte	0x10
	.4byte	0x170
	.byte	0x10
	.4byte	0x3e0
	.byte	0x10
	.4byte	0x37
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x809
	.byte	0xb
	.4byte	0x7fe
	.byte	0x1c
	.4byte	.LASF4426
	.2byte	0x428
	.byte	0x7
	.2byte	0x239
	.byte	0x8
	.4byte	0x952
	.byte	0x6
	.4byte	.LASF4427
	.byte	0x7
	.2byte	0x23b
	.byte	0x7
	.4byte	0x37
	.byte	0
	.byte	0x6
	.4byte	.LASF4428
	.byte	0x7
	.2byte	0x240
	.byte	0xb
	.4byte	0xa26
	.byte	0x4
	.byte	0x6
	.4byte	.LASF4429
	.byte	0x7
	.2byte	0x240
	.byte	0x14
	.4byte	0xa26
	.byte	0x8
	.byte	0x6
	.4byte	.LASF4430
	.byte	0x7
	.2byte	0x240
	.byte	0x1e
	.4byte	0xa26
	.byte	0xc
	.byte	0x6
	.4byte	.LASF4431
	.byte	0x7
	.2byte	0x242
	.byte	0x7
	.4byte	0x37
	.byte	0x10
	.byte	0x6
	.4byte	.LASF4432
	.byte	0x7
	.2byte	0x243
	.byte	0x8
	.4byte	0xc16
	.byte	0x14
	.byte	0x6
	.4byte	.LASF4433
	.byte	0x7
	.2byte	0x246
	.byte	0x7
	.4byte	0x37
	.byte	0x30
	.byte	0x6
	.4byte	.LASF4434
	.byte	0x7
	.2byte	0x247
	.byte	0x16
	.4byte	0xc2b
	.byte	0x34
	.byte	0x6
	.4byte	.LASF4435
	.byte	0x7
	.2byte	0x249
	.byte	0x7
	.4byte	0x37
	.byte	0x38
	.byte	0x6
	.4byte	.LASF4436
	.byte	0x7
	.2byte	0x24b
	.byte	0xa
	.4byte	0xc3c
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF4437
	.byte	0x7
	.2byte	0x24e
	.byte	0x13
	.4byte	0x521
	.byte	0x40
	.byte	0x6
	.4byte	.LASF4438
	.byte	0x7
	.2byte	0x24f
	.byte	0x7
	.4byte	0x37
	.byte	0x44
	.byte	0x6
	.4byte	.LASF4439
	.byte	0x7
	.2byte	0x250
	.byte	0x13
	.4byte	0x521
	.byte	0x48
	.byte	0x6
	.4byte	.LASF4440
	.byte	0x7
	.2byte	0x251
	.byte	0x14
	.4byte	0xc42
	.byte	0x4c
	.byte	0x6
	.4byte	.LASF4441
	.byte	0x7
	.2byte	0x254
	.byte	0x7
	.4byte	0x37
	.byte	0x50
	.byte	0x6
	.4byte	.LASF4442
	.byte	0x7
	.2byte	0x255
	.byte	0x9
	.4byte	0x3e0
	.byte	0x54
	.byte	0x6
	.4byte	.LASF4443
	.byte	0x7
	.2byte	0x278
	.byte	0x7
	.4byte	0xbf1
	.byte	0x58
	.byte	0x1d
	.4byte	.LASF4403
	.byte	0x7
	.2byte	0x27c
	.byte	0x13
	.4byte	0x652
	.2byte	0x148
	.byte	0x1d
	.4byte	.LASF4444
	.byte	0x7
	.2byte	0x27d
	.byte	0x12
	.4byte	0x60f
	.2byte	0x14c
	.byte	0x1d
	.4byte	.LASF4445
	.byte	0x7
	.2byte	0x281
	.byte	0xc
	.4byte	0xc53
	.2byte	0x2dc
	.byte	0x1d
	.4byte	.LASF4446
	.byte	0x7
	.2byte	0x286
	.byte	0x10
	.4byte	0x9e7
	.2byte	0x2e0
	.byte	0x1d
	.4byte	.LASF4447
	.byte	0x7
	.2byte	0x288
	.byte	0xa
	.4byte	0xc5f
	.2byte	0x2ec
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x7e0
	.byte	0xf
	.4byte	0x434
	.4byte	0x976
	.byte	0x10
	.4byte	0x7fe
	.byte	0x10
	.4byte	0x170
	.byte	0x10
	.4byte	0x3d5
	.byte	0x10
	.4byte	0x37
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x958
	.byte	0xf
	.4byte	0x428
	.4byte	0x99a
	.byte	0x10
	.4byte	0x7fe
	.byte	0x10
	.4byte	0x170
	.byte	0x10
	.4byte	0x428
	.byte	0x10
	.4byte	0x37
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x97c
	.byte	0xf
	.4byte	0x37
	.4byte	0x9b4
	.byte	0x10
	.4byte	0x7fe
	.byte	0x10
	.4byte	0x170
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x9a0
	.byte	0x9
	.4byte	0x4a
	.4byte	0x9ca
	.byte	0xa
	.4byte	0x70
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x4a
	.4byte	0x9da
	.byte	0xa
	.4byte	0x70
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF4448
	.byte	0x7
	.2byte	0x11f
	.byte	0x18
	.4byte	0x69d
	.byte	0x5
	.4byte	.LASF4449
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.byte	0x8
	.4byte	0xa20
	.byte	0x6
	.4byte	.LASF4384
	.byte	0x7
	.2byte	0x125
	.byte	0x11
	.4byte	0xa20
	.byte	0
	.byte	0x6
	.4byte	.LASF4450
	.byte	0x7
	.2byte	0x126
	.byte	0x7
	.4byte	0x37
	.byte	0x4
	.byte	0x6
	.4byte	.LASF4451
	.byte	0x7
	.2byte	0x127
	.byte	0xb
	.4byte	0xa26
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x9e7
	.byte	0x7
	.byte	0x4
	.4byte	0x9da
	.byte	0x5
	.4byte	.LASF4452
	.byte	0xe
	.byte	0x7
	.2byte	0x13f
	.byte	0x8
	.4byte	0xa65
	.byte	0x6
	.4byte	.LASF4453
	.byte	0x7
	.2byte	0x140
	.byte	0x12
	.4byte	0xa65
	.byte	0
	.byte	0x6
	.4byte	.LASF4454
	.byte	0x7
	.2byte	0x141
	.byte	0x12
	.4byte	0xa65
	.byte	0x6
	.byte	0x6
	.4byte	.LASF4455
	.byte	0x7
	.2byte	0x142
	.byte	0x12
	.4byte	0x5d
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x5d
	.4byte	0xa75
	.byte	0xa
	.4byte	0x70
	.byte	0x2
	.byte	0
	.byte	0x1e
	.byte	0xd0
	.byte	0x7
	.2byte	0x259
	.byte	0x7
	.4byte	0xb8a
	.byte	0x6
	.4byte	.LASF4456
	.byte	0x7
	.2byte	0x25b
	.byte	0x18
	.4byte	0x70
	.byte	0
	.byte	0x6
	.4byte	.LASF4457
	.byte	0x7
	.2byte	0x25c
	.byte	0x12
	.4byte	0x3e0
	.byte	0x4
	.byte	0x6
	.4byte	.LASF4458
	.byte	0x7
	.2byte	0x25d
	.byte	0x10
	.4byte	0xb8a
	.byte	0x8
	.byte	0x6
	.4byte	.LASF4459
	.byte	0x7
	.2byte	0x25e
	.byte	0x17
	.4byte	0x537
	.byte	0x24
	.byte	0x6
	.4byte	.LASF4460
	.byte	0x7
	.2byte	0x25f
	.byte	0xf
	.4byte	0x37
	.byte	0x48
	.byte	0x6
	.4byte	.LASF4461
	.byte	0x7
	.2byte	0x260
	.byte	0x2c
	.4byte	0x7e
	.byte	0x50
	.byte	0x6
	.4byte	.LASF4462
	.byte	0x7
	.2byte	0x261
	.byte	0x1a
	.4byte	0xa2c
	.byte	0x58
	.byte	0x6
	.4byte	.LASF4463
	.byte	0x7
	.2byte	0x262
	.byte	0x16
	.4byte	0x4a3
	.byte	0x68
	.byte	0x6
	.4byte	.LASF4464
	.byte	0x7
	.2byte	0x263
	.byte	0x16
	.4byte	0x4a3
	.byte	0x70
	.byte	0x6
	.4byte	.LASF4465
	.byte	0x7
	.2byte	0x264
	.byte	0x16
	.4byte	0x4a3
	.byte	0x78
	.byte	0x6
	.4byte	.LASF4466
	.byte	0x7
	.2byte	0x265
	.byte	0x10
	.4byte	0x154
	.byte	0x80
	.byte	0x6
	.4byte	.LASF4467
	.byte	0x7
	.2byte	0x266
	.byte	0x10
	.4byte	0xb9a
	.byte	0x88
	.byte	0x6
	.4byte	.LASF4468
	.byte	0x7
	.2byte	0x267
	.byte	0xf
	.4byte	0x37
	.byte	0xa0
	.byte	0x6
	.4byte	.LASF4469
	.byte	0x7
	.2byte	0x268
	.byte	0x16
	.4byte	0x4a3
	.byte	0xa4
	.byte	0x6
	.4byte	.LASF4470
	.byte	0x7
	.2byte	0x269
	.byte	0x16
	.4byte	0x4a3
	.byte	0xac
	.byte	0x6
	.4byte	.LASF4471
	.byte	0x7
	.2byte	0x26a
	.byte	0x16
	.4byte	0x4a3
	.byte	0xb4
	.byte	0x6
	.4byte	.LASF4472
	.byte	0x7
	.2byte	0x26b
	.byte	0x16
	.4byte	0x4a3
	.byte	0xbc
	.byte	0x6
	.4byte	.LASF4473
	.byte	0x7
	.2byte	0x26c
	.byte	0x16
	.4byte	0x4a3
	.byte	0xc4
	.byte	0x6
	.4byte	.LASF4474
	.byte	0x7
	.2byte	0x26d
	.byte	0x8
	.4byte	0x37
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x164
	.4byte	0xb9a
	.byte	0xa
	.4byte	0x70
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x164
	.4byte	0xbaa
	.byte	0xa
	.4byte	0x70
	.byte	0x17
	.byte	0
	.byte	0x1e
	.byte	0xf0
	.byte	0x7
	.2byte	0x272
	.byte	0x7
	.4byte	0xbd1
	.byte	0x6
	.4byte	.LASF4475
	.byte	0x7
	.2byte	0x275
	.byte	0x1b
	.4byte	0xbd1
	.byte	0
	.byte	0x6
	.4byte	.LASF4476
	.byte	0x7
	.2byte	0x276
	.byte	0x18
	.4byte	0xbe1
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x697
	.4byte	0xbe1
	.byte	0xa
	.4byte	0x70
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x70
	.4byte	0xbf1
	.byte	0xa
	.4byte	0x70
	.byte	0x1d
	.byte	0
	.byte	0x1f
	.byte	0xf0
	.byte	0x7
	.2byte	0x257
	.byte	0x3
	.4byte	0xc16
	.byte	0x20
	.4byte	.LASF4426
	.byte	0x7
	.2byte	0x26e
	.byte	0xb
	.4byte	0xa75
	.byte	0x20
	.4byte	.LASF4477
	.byte	0x7
	.2byte	0x277
	.byte	0xb
	.4byte	0xbaa
	.byte	0
	.byte	0x9
	.4byte	0x164
	.4byte	0xc26
	.byte	0xa
	.4byte	0x70
	.byte	0x18
	.byte	0
	.byte	0x12
	.4byte	.LASF4479
	.byte	0x7
	.byte	0x4
	.4byte	0xc26
	.byte	0x21
	.4byte	0xc3c
	.byte	0x10
	.4byte	0x7fe
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc31
	.byte	0x7
	.byte	0x4
	.4byte	0x521
	.byte	0x21
	.4byte	0xc53
	.byte	0x10
	.4byte	0x37
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc59
	.byte	0x7
	.byte	0x4
	.4byte	0xc48
	.byte	0x9
	.4byte	0x9da
	.4byte	0xc6f
	.byte	0xa
	.4byte	0x70
	.byte	0x2
	.byte	0
	.byte	0x22
	.4byte	.LASF4480
	.byte	0x7
	.2byte	0x307
	.byte	0x17
	.4byte	0x7fe
	.byte	0x22
	.4byte	.LASF4481
	.byte	0x7
	.2byte	0x308
	.byte	0x1d
	.4byte	0x804
	.byte	0x4
	.4byte	.LASF4482
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x3e6
	.byte	0x4
	.4byte	.LASF4483
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x3f2
	.byte	0x23
	.4byte	.LASF4484
	.byte	0x9
	.byte	0x9a
	.byte	0xd
	.4byte	0x91
	.byte	0x23
	.4byte	.LASF4485
	.byte	0x9
	.byte	0x9b
	.byte	0xc
	.4byte	0x37
	.byte	0x9
	.4byte	0x3e0
	.4byte	0xcc9
	.byte	0xa
	.4byte	0x70
	.byte	0x1
	.byte	0
	.byte	0x23
	.4byte	.LASF4486
	.byte	0x9
	.byte	0x9e
	.byte	0xe
	.4byte	0xcb9
	.byte	0x9
	.4byte	0x3db
	.4byte	0xce0
	.byte	0x24
	.byte	0
	.byte	0xb
	.4byte	0xcd5
	.byte	0x23
	.4byte	.LASF4487
	.byte	0xa
	.byte	0x14
	.byte	0x1b
	.4byte	0xce0
	.byte	0x23
	.4byte	.LASF4488
	.byte	0xa
	.byte	0x15
	.byte	0xc
	.4byte	0x37
	.byte	0x21
	.4byte	0xd12
	.byte	0x10
	.4byte	0x3d5
	.byte	0x10
	.4byte	0x3d5
	.byte	0x10
	.4byte	0xb7
	.byte	0
	.byte	0x22
	.4byte	.LASF4489
	.byte	0xb
	.2byte	0x218
	.byte	0xf
	.4byte	0xd1f
	.byte	0x7
	.byte	0x4
	.4byte	0xcfd
	.byte	0x4
	.4byte	.LASF4490
	.byte	0xc
	.byte	0x12
	.byte	0x10
	.4byte	0xd31
	.byte	0x7
	.byte	0x4
	.4byte	0xd37
	.byte	0x25
	.4byte	0x91
	.byte	0x17
	.4byte	.LASF4491
	.byte	0xc
	.byte	0xc
	.byte	0x15
	.byte	0x8
	.4byte	0xd71
	.byte	0x16
	.4byte	.LASF4327
	.byte	0xc
	.byte	0x17
	.byte	0x11
	.4byte	0x3d5
	.byte	0
	.byte	0x16
	.4byte	.LASF4492
	.byte	0xc
	.byte	0x19
	.byte	0x11
	.4byte	0x3d5
	.byte	0x4
	.byte	0x16
	.4byte	.LASF4493
	.byte	0xc
	.byte	0x1b
	.byte	0x12
	.4byte	0xd25
	.byte	0x8
	.byte	0
	.byte	0x23
	.4byte	.LASF4494
	.byte	0xc
	.byte	0x1d
	.byte	0x1e
	.4byte	0xd7d
	.byte	0x7
	.byte	0x4
	.4byte	0xd3c
	.byte	0x23
	.4byte	.LASF4495
	.byte	0xc
	.byte	0x1d
	.byte	0x35
	.4byte	0xd7d
	.byte	0x17
	.4byte	.LASF4496
	.byte	0x8
	.byte	0xd
	.byte	0x5d
	.byte	0x8
	.4byte	0xe1a
	.byte	0x16
	.4byte	.LASF4497
	.byte	0xd
	.byte	0x5f
	.byte	0x11
	.4byte	0x64
	.byte	0
	.byte	0x26
	.4byte	.LASF4498
	.byte	0xd
	.byte	0x61
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x26
	.4byte	.LASF4499
	.byte	0xd
	.byte	0x62
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x4
	.byte	0x26
	.4byte	.LASF4500
	.byte	0xd
	.byte	0x63
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x4
	.byte	0x26
	.4byte	.LASF4501
	.byte	0xd
	.byte	0x64
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x4
	.byte	0x26
	.4byte	.LASF4502
	.byte	0xd
	.byte	0x65
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x4
	.byte	0x26
	.4byte	.LASF4503
	.byte	0xd
	.byte	0x66
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.byte	0x4
	.byte	0x26
	.4byte	.LASF4504
	.byte	0xd
	.byte	0x67
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0x17
	.4byte	.LASF4505
	.byte	0x58
	.byte	0xd
	.byte	0x8a
	.byte	0x8
	.4byte	0xe69
	.byte	0x16
	.4byte	.LASF4355
	.byte	0xd
	.byte	0x8c
	.byte	0x16
	.4byte	0x223
	.byte	0
	.byte	0x18
	.string	"ops"
	.byte	0xd
	.byte	0x8e
	.byte	0x1f
	.4byte	0xebd
	.byte	0x44
	.byte	0x16
	.4byte	.LASF4506
	.byte	0xd
	.byte	0x8f
	.byte	0x1d
	.4byte	0xd8f
	.byte	0x48
	.byte	0x16
	.4byte	.LASF4507
	.byte	0xd
	.byte	0x91
	.byte	0xb
	.4byte	0x170
	.byte	0x50
	.byte	0x16
	.4byte	.LASF4508
	.byte	0xd
	.byte	0x92
	.byte	0xb
	.4byte	0x170
	.byte	0x54
	.byte	0
	.byte	0x17
	.4byte	.LASF4509
	.byte	0x14
	.byte	0xd
	.byte	0x99
	.byte	0x8
	.4byte	0xeb8
	.byte	0x16
	.4byte	.LASF4510
	.byte	0xd
	.byte	0x9b
	.byte	0x10
	.4byte	0xee3
	.byte	0
	.byte	0x16
	.4byte	.LASF4366
	.byte	0xd
	.byte	0x9c
	.byte	0x10
	.4byte	0xf02
	.byte	0x4
	.byte	0x16
	.4byte	.LASF4511
	.byte	0xd
	.byte	0x9e
	.byte	0xb
	.4byte	0xf1c
	.byte	0x8
	.byte	0x16
	.4byte	.LASF4512
	.byte	0xd
	.byte	0x9f
	.byte	0xb
	.4byte	0xf31
	.byte	0xc
	.byte	0x16
	.4byte	.LASF4513
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.4byte	0xf55
	.byte	0x10
	.byte	0
	.byte	0xb
	.4byte	0xe69
	.byte	0x7
	.byte	0x4
	.4byte	0xeb8
	.byte	0xf
	.4byte	0xab
	.4byte	0xed7
	.byte	0x10
	.4byte	0xed7
	.byte	0x10
	.4byte	0xedd
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xe1a
	.byte	0x7
	.byte	0x4
	.4byte	0xd8f
	.byte	0x7
	.byte	0x4
	.4byte	0xec3
	.byte	0xf
	.4byte	0xab
	.4byte	0xf02
	.byte	0x10
	.4byte	0xed7
	.byte	0x10
	.4byte	0x37
	.byte	0x10
	.4byte	0x170
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xee9
	.byte	0xf
	.4byte	0x37
	.4byte	0xf1c
	.byte	0x10
	.4byte	0xed7
	.byte	0x10
	.4byte	0x164
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf08
	.byte	0xf
	.4byte	0x37
	.4byte	0xf31
	.byte	0x10
	.4byte	0xed7
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf22
	.byte	0xf
	.4byte	0xb7
	.4byte	0xf55
	.byte	0x10
	.4byte	0xed7
	.byte	0x10
	.4byte	0x172
	.byte	0x10
	.4byte	0xb7
	.byte	0x10
	.4byte	0x37
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf37
	.byte	0x27
	.4byte	.LASF4515
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0xe
	.byte	0x56
	.byte	0xe
	.4byte	0x10fa
	.byte	0xe
	.4byte	.LASF4516
	.byte	0
	.byte	0xe
	.4byte	.LASF4517
	.byte	0x3
	.byte	0xe
	.4byte	.LASF4518
	.byte	0x7
	.byte	0xe
	.4byte	.LASF4519
	.byte	0x11
	.byte	0xe
	.4byte	.LASF4520
	.byte	0x12
	.byte	0xe
	.4byte	.LASF4521
	.byte	0x13
	.byte	0xe
	.4byte	.LASF4522
	.byte	0x14
	.byte	0xe
	.4byte	.LASF4523
	.byte	0x15
	.byte	0xe
	.4byte	.LASF4524
	.byte	0x16
	.byte	0xe
	.4byte	.LASF4525
	.byte	0x17
	.byte	0xe
	.4byte	.LASF4526
	.byte	0x18
	.byte	0xe
	.4byte	.LASF4527
	.byte	0x19
	.byte	0xe
	.4byte	.LASF4528
	.byte	0x1a
	.byte	0xe
	.4byte	.LASF4529
	.byte	0x1b
	.byte	0xe
	.4byte	.LASF4530
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF4531
	.byte	0x1d
	.byte	0xe
	.4byte	.LASF4532
	.byte	0x1e
	.byte	0xe
	.4byte	.LASF4533
	.byte	0x1f
	.byte	0xe
	.4byte	.LASF4534
	.byte	0x20
	.byte	0xe
	.4byte	.LASF4535
	.byte	0x21
	.byte	0xe
	.4byte	.LASF4536
	.byte	0x22
	.byte	0xe
	.4byte	.LASF4537
	.byte	0x23
	.byte	0xe
	.4byte	.LASF4538
	.byte	0x24
	.byte	0xe
	.4byte	.LASF4539
	.byte	0x25
	.byte	0xe
	.4byte	.LASF4540
	.byte	0x26
	.byte	0xe
	.4byte	.LASF4541
	.byte	0x27
	.byte	0xe
	.4byte	.LASF4542
	.byte	0x28
	.byte	0xe
	.4byte	.LASF4543
	.byte	0x29
	.byte	0xe
	.4byte	.LASF4544
	.byte	0x2a
	.byte	0xe
	.4byte	.LASF4545
	.byte	0x2b
	.byte	0xe
	.4byte	.LASF4546
	.byte	0x2c
	.byte	0xe
	.4byte	.LASF4547
	.byte	0x2d
	.byte	0xe
	.4byte	.LASF4548
	.byte	0x2e
	.byte	0xe
	.4byte	.LASF4549
	.byte	0x2f
	.byte	0xe
	.4byte	.LASF4550
	.byte	0x30
	.byte	0xe
	.4byte	.LASF4551
	.byte	0x31
	.byte	0xe
	.4byte	.LASF4552
	.byte	0x32
	.byte	0xe
	.4byte	.LASF4553
	.byte	0x33
	.byte	0xe
	.4byte	.LASF4554
	.byte	0x34
	.byte	0xe
	.4byte	.LASF4555
	.byte	0x35
	.byte	0xe
	.4byte	.LASF4556
	.byte	0x36
	.byte	0xe
	.4byte	.LASF4557
	.byte	0x37
	.byte	0xe
	.4byte	.LASF4558
	.byte	0x38
	.byte	0xe
	.4byte	.LASF4559
	.byte	0x39
	.byte	0xe
	.4byte	.LASF4560
	.byte	0x3a
	.byte	0xe
	.4byte	.LASF4561
	.byte	0x3b
	.byte	0xe
	.4byte	.LASF4562
	.byte	0x3c
	.byte	0xe
	.4byte	.LASF4563
	.byte	0x3d
	.byte	0xe
	.4byte	.LASF4564
	.byte	0x43
	.byte	0xe
	.4byte	.LASF4565
	.byte	0x45
	.byte	0xe
	.4byte	.LASF4566
	.byte	0x46
	.byte	0xe
	.4byte	.LASF4567
	.byte	0x47
	.byte	0xe
	.4byte	.LASF4568
	.byte	0x48
	.byte	0xe
	.4byte	.LASF4569
	.byte	0x49
	.byte	0xe
	.4byte	.LASF4570
	.byte	0x4a
	.byte	0xe
	.4byte	.LASF4571
	.byte	0x4b
	.byte	0xe
	.4byte	.LASF4572
	.byte	0x4c
	.byte	0xe
	.4byte	.LASF4573
	.byte	0x4d
	.byte	0xe
	.4byte	.LASF4574
	.byte	0x4e
	.byte	0xe
	.4byte	.LASF4575
	.byte	0x4f
	.byte	0xe
	.4byte	.LASF4576
	.byte	0x52
	.byte	0xe
	.4byte	.LASF4577
	.byte	0x53
	.byte	0xe
	.4byte	.LASF4578
	.byte	0x54
	.byte	0xe
	.4byte	.LASF4579
	.byte	0x55
	.byte	0xe
	.4byte	.LASF4580
	.byte	0x56
	.byte	0xe
	.4byte	.LASF4581
	.byte	0x57
	.byte	0
	.byte	0x4
	.4byte	.LASF4582
	.byte	0xe
	.byte	0xa0
	.byte	0x3
	.4byte	0xf5b
	.byte	0x23
	.4byte	.LASF4583
	.byte	0xf
	.byte	0x30
	.byte	0x11
	.4byte	0xc95
	.byte	0x28
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0xe
	.byte	0xa9
	.byte	0xe
	.4byte	0x1136
	.byte	0xe
	.4byte	.LASF4584
	.byte	0
	.byte	0x29
	.string	"SET"
	.byte	0x1
	.byte	0x2a
	.string	"MAX"
	.4byte	0x7fffffff
	.byte	0
	.byte	0x2b
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x10
	.2byte	0x105
	.byte	0xe
	.4byte	0x1249
	.byte	0x2c
	.4byte	.LASF4585
	.2byte	0x500
	.byte	0x2c
	.4byte	.LASF4586
	.2byte	0x501
	.byte	0x2c
	.4byte	.LASF4587
	.2byte	0x506
	.byte	0x2c
	.4byte	.LASF4588
	.2byte	0x508
	.byte	0x2c
	.4byte	.LASF4589
	.2byte	0x50c
	.byte	0x2c
	.4byte	.LASF4590
	.2byte	0x700
	.byte	0x2c
	.4byte	.LASF4591
	.2byte	0x701
	.byte	0x2c
	.4byte	.LASF4592
	.2byte	0x702
	.byte	0x2c
	.4byte	.LASF4593
	.2byte	0x703
	.byte	0x2c
	.4byte	.LASF4594
	.2byte	0x704
	.byte	0x2c
	.4byte	.LASF4595
	.2byte	0x705
	.byte	0x2c
	.4byte	.LASF4596
	.2byte	0x70b
	.byte	0x2c
	.4byte	.LASF4597
	.2byte	0x70e
	.byte	0x2c
	.4byte	.LASF4598
	.2byte	0x70f
	.byte	0x2c
	.4byte	.LASF4599
	.2byte	0x711
	.byte	0x2c
	.4byte	.LASF4600
	.2byte	0x712
	.byte	0x2c
	.4byte	.LASF4601
	.2byte	0x713
	.byte	0x2c
	.4byte	.LASF4602
	.2byte	0x714
	.byte	0x2c
	.4byte	.LASF4603
	.2byte	0x715
	.byte	0x2c
	.4byte	.LASF4604
	.2byte	0x716
	.byte	0x2c
	.4byte	.LASF4605
	.2byte	0x719
	.byte	0x2c
	.4byte	.LASF4606
	.2byte	0x71a
	.byte	0x2c
	.4byte	.LASF4607
	.2byte	0x71b
	.byte	0x2c
	.4byte	.LASF4608
	.2byte	0x71c
	.byte	0x2c
	.4byte	.LASF4609
	.2byte	0x71d
	.byte	0x2c
	.4byte	.LASF4610
	.2byte	0x80f
	.byte	0x2c
	.4byte	.LASF4611
	.2byte	0x600
	.byte	0x2c
	.4byte	.LASF4612
	.2byte	0x602
	.byte	0x2c
	.4byte	.LASF4613
	.2byte	0x603
	.byte	0x2c
	.4byte	.LASF4614
	.2byte	0x604
	.byte	0x2c
	.4byte	.LASF4615
	.2byte	0x605
	.byte	0x2c
	.4byte	.LASF4616
	.2byte	0x606
	.byte	0x2c
	.4byte	.LASF4617
	.2byte	0x609
	.byte	0x2c
	.4byte	.LASF4618
	.2byte	0x60a
	.byte	0x2c
	.4byte	.LASF4619
	.2byte	0x60b
	.byte	0x2c
	.4byte	.LASF4620
	.2byte	0x60c
	.byte	0x2c
	.4byte	.LASF4621
	.2byte	0x60e
	.byte	0
	.byte	0x28
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x11
	.byte	0x8a
	.byte	0x1
	.4byte	0x1294
	.byte	0xe
	.4byte	.LASF4622
	.byte	0x9
	.byte	0xe
	.4byte	.LASF4623
	.byte	0x8
	.byte	0xe
	.4byte	.LASF4624
	.byte	0x7
	.byte	0xe
	.4byte	.LASF4625
	.byte	0x6
	.byte	0xe
	.4byte	.LASF4626
	.byte	0x5
	.byte	0xe
	.4byte	.LASF4627
	.byte	0x4
	.byte	0xe
	.4byte	.LASF4628
	.byte	0x3
	.byte	0xe
	.4byte	.LASF4629
	.byte	0x2
	.byte	0xe
	.4byte	.LASF4630
	.byte	0x1
	.byte	0xe
	.4byte	.LASF4631
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x11
	.byte	0x9a
	.byte	0x1
	.4byte	0x1304
	.byte	0x2c
	.4byte	.LASF4632
	.2byte	0x308
	.byte	0x2d
	.4byte	.LASF4633
	.4byte	0x70307
	.byte	0x2d
	.4byte	.LASF4634
	.4byte	0x60306
	.byte	0x2d
	.4byte	.LASF4635
	.4byte	0x50305
	.byte	0x2d
	.4byte	.LASF4636
	.4byte	0x30305
	.byte	0x2d
	.4byte	.LASF4637
	.4byte	0x40304
	.byte	0x2d
	.4byte	.LASF4638
	.4byte	0x80406
	.byte	0x2d
	.4byte	.LASF4639
	.4byte	0x9050a
	.byte	0x2d
	.4byte	.LASF4640
	.4byte	0x30500
	.byte	0x2d
	.4byte	.LASF4641
	.4byte	0x20500
	.byte	0x2d
	.4byte	.LASF4642
	.4byte	0x10500
	.byte	0
	.byte	0x28
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x11
	.byte	0xad
	.byte	0x1
	.4byte	0x134b
	.byte	0x2c
	.4byte	.LASF4643
	.2byte	0x308
	.byte	0x2c
	.4byte	.LASF4644
	.2byte	0x307
	.byte	0x2c
	.4byte	.LASF4645
	.2byte	0x306
	.byte	0x2c
	.4byte	.LASF4646
	.2byte	0x305
	.byte	0x2c
	.4byte	.LASF4647
	.2byte	0x304
	.byte	0x2c
	.4byte	.LASF4648
	.2byte	0x406
	.byte	0x2c
	.4byte	.LASF4649
	.2byte	0x50a
	.byte	0x2c
	.4byte	.LASF4650
	.2byte	0x500
	.byte	0
	.byte	0x23
	.4byte	.LASF4651
	.byte	0x12
	.byte	0x10
	.byte	0xe
	.4byte	0x170
	.byte	0x23
	.4byte	.LASF4652
	.byte	0x12
	.byte	0x11
	.byte	0xe
	.4byte	0x170
	.byte	0x17
	.4byte	.LASF4653
	.byte	0x78
	.byte	0x1
	.byte	0x15
	.byte	0x8
	.4byte	0x13e6
	.byte	0x16
	.4byte	.LASF4327
	.byte	0x1
	.byte	0x16
	.byte	0xb
	.4byte	0x3e0
	.byte	0
	.byte	0x16
	.4byte	.LASF4654
	.byte	0x1
	.byte	0x17
	.byte	0x11
	.4byte	0x64
	.byte	0x4
	.byte	0x16
	.4byte	.LASF4655
	.byte	0x1
	.byte	0x18
	.byte	0x11
	.4byte	0x64
	.byte	0x8
	.byte	0x16
	.4byte	.LASF4656
	.byte	0x1
	.byte	0x19
	.byte	0x11
	.4byte	0x64
	.byte	0xc
	.byte	0x16
	.4byte	.LASF4657
	.byte	0x1
	.byte	0x1a
	.byte	0x11
	.4byte	0x64
	.byte	0x10
	.byte	0x16
	.4byte	.LASF4658
	.byte	0x1
	.byte	0x1b
	.byte	0x11
	.4byte	0x64
	.byte	0x14
	.byte	0x16
	.4byte	.LASF4659
	.byte	0x1
	.byte	0x1c
	.byte	0x11
	.4byte	0x64
	.byte	0x18
	.byte	0x16
	.4byte	.LASF4660
	.byte	0x1
	.byte	0x1d
	.byte	0xf
	.4byte	0x10fa
	.byte	0x1c
	.byte	0x16
	.4byte	.LASF4661
	.byte	0x1
	.byte	0x1e
	.byte	0x1d
	.4byte	0xe1a
	.byte	0x20
	.byte	0
	.byte	0x28
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0x13fb
	.byte	0xe
	.4byte	.LASF4662
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x1363
	.4byte	0x140b
	.byte	0xa
	.4byte	0x70
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF4663
	.byte	0x1
	.byte	0x27
	.byte	0x1a
	.4byte	0x13fb
	.byte	0x5
	.byte	0x3
	.4byte	usart_config
	.byte	0x2e
	.4byte	.LASF4664
	.byte	0x1
	.byte	0xb1
	.byte	0x21
	.4byte	0xeb8
	.byte	0x5
	.byte	0x3
	.4byte	gd32_usart_ops
	.byte	0x2f
	.4byte	.LASF4677
	.byte	0x1
	.byte	0xdd
	.byte	0x5
	.4byte	0x37
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x1495
	.byte	0x2e
	.4byte	.LASF4665
	.byte	0x1
	.byte	0xde
	.byte	0xf
	.4byte	0xb7
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2e
	.4byte	.LASF4666
	.byte	0x1
	.byte	0xdf
	.byte	0x9
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2e
	.4byte	.LASF4506
	.byte	0x1
	.byte	0xe2
	.byte	0x1d
	.4byte	0xd8f
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2e
	.4byte	.LASF4667
	.byte	0x1
	.byte	0xe3
	.byte	0xe
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x30
	.4byte	.LASF4669
	.4byte	0x14a5
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.5292
	.byte	0
	.byte	0x9
	.4byte	0x16b
	.4byte	0x14a5
	.byte	0xa
	.4byte	0x70
	.byte	0x10
	.byte	0
	.byte	0xb
	.4byte	0x1495
	.byte	0x31
	.4byte	.LASF4678
	.byte	0x1
	.byte	0xd3
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.byte	0x32
	.4byte	.LASF4679
	.byte	0x1
	.byte	0xb5
	.byte	0xd
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x1500
	.byte	0x33
	.4byte	.LASF4661
	.byte	0x1
	.byte	0xb5
	.byte	0x30
	.4byte	0xed7
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2e
	.4byte	.LASF4668
	.byte	0x1
	.byte	0xb6
	.byte	0x18
	.4byte	0x1500
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x30
	.4byte	.LASF4669
	.4byte	0x1516
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.5281
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1363
	.byte	0x9
	.4byte	0x16b
	.4byte	0x1516
	.byte	0xa
	.4byte	0x70
	.byte	0x9
	.byte	0
	.byte	0xb
	.4byte	0x1506
	.byte	0x34
	.4byte	.LASF4670
	.byte	0x1
	.byte	0xa1
	.byte	0xc
	.4byte	0x37
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x1571
	.byte	0x33
	.4byte	.LASF4661
	.byte	0x1
	.byte	0xa1
	.byte	0x2f
	.4byte	0xed7
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x35
	.string	"ch"
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2e
	.4byte	.LASF4668
	.byte	0x1
	.byte	0xa3
	.byte	0x18
	.4byte	0x1500
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x30
	.4byte	.LASF4669
	.4byte	0x1516
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.5275
	.byte	0
	.byte	0x34
	.4byte	.LASF4671
	.byte	0x1
	.byte	0x93
	.byte	0xc
	.4byte	0x37
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x15c7
	.byte	0x33
	.4byte	.LASF4661
	.byte	0x1
	.byte	0x93
	.byte	0x2f
	.4byte	0xed7
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x36
	.string	"ch"
	.byte	0x1
	.byte	0x93
	.byte	0x3c
	.4byte	0x164
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0x2e
	.4byte	.LASF4668
	.byte	0x1
	.byte	0x94
	.byte	0x18
	.4byte	0x1500
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x30
	.4byte	.LASF4669
	.4byte	0x1516
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.5266
	.byte	0
	.byte	0x34
	.4byte	.LASF4672
	.byte	0x1
	.byte	0x7b
	.byte	0x11
	.4byte	0xab
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x162d
	.byte	0x33
	.4byte	.LASF4661
	.byte	0x1
	.byte	0x7b
	.byte	0x37
	.4byte	0xed7
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x36
	.string	"cmd"
	.byte	0x1
	.byte	0x7b
	.byte	0x43
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x36
	.string	"arg"
	.byte	0x1
	.byte	0x7c
	.byte	0xf
	.4byte	0x170
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2e
	.4byte	.LASF4668
	.byte	0x1
	.byte	0x7d
	.byte	0x18
	.4byte	0x1500
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x30
	.4byte	.LASF4669
	.4byte	0x163d
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.5257
	.byte	0
	.byte	0x9
	.4byte	0x16b
	.4byte	0x163d
	.byte	0xa
	.4byte	0x70
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0x162d
	.byte	0x34
	.4byte	.LASF4673
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.4byte	0xab
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x1699
	.byte	0x33
	.4byte	.LASF4661
	.byte	0x1
	.byte	0x34
	.byte	0x39
	.4byte	0xed7
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x36
	.string	"cfg"
	.byte	0x1
	.byte	0x35
	.byte	0x22
	.4byte	0xedd
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x2e
	.4byte	.LASF4668
	.byte	0x1
	.byte	0x36
	.byte	0x18
	.4byte	0x1500
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x30
	.4byte	.LASF4669
	.4byte	0x16a9
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.5237
	.byte	0
	.byte	0x9
	.4byte	0x16b
	.4byte	0x16a9
	.byte	0xa
	.4byte	0x70
	.byte	0xe
	.byte	0
	.byte	0xb
	.4byte	0x1699
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
	.byte	0x5
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xd
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
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xd
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
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0xd
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x2e
	.byte	0
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x2e
	.byte	0x1
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x34
	.byte	0x2e
	.byte	0x1
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x34
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
	.byte	0x36
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
	.file 19 "drivers/drv_usart.h"
	.byte	0x3
	.byte	0xb
	.byte	0x13
	.byte	0x5
	.byte	0x2
	.4byte	.LASF318
	.byte	0x3
	.byte	0x4
	.byte	0xb
	.byte	0x5
	.byte	0x14
	.4byte	.LASF319
	.file 20 "./rtconfig.h"
	.byte	0x3
	.byte	0x16
	.byte	0x14
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.file 21 "rt-thread/include/rtdebug.h"
	.byte	0x3
	.byte	0x17
	.byte	0x15
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x7
	.4byte	.Ldebug_macro4
	.file 22 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/lib/gcc/riscv-none-embed/8.2.0/include/stdarg.h"
	.byte	0x3
	.byte	0x89,0x1
	.byte	0x16
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.file 23 "rt-thread/include/rtlibc.h"
	.byte	0x3
	.byte	0xba,0x8
	.byte	0x17
	.byte	0x5
	.byte	0xc
	.4byte	.LASF536
	.file 24 "rt-thread/include/libc/libc_stat.h"
	.byte	0x3
	.byte	0xf
	.byte	0x18
	.byte	0x5
	.byte	0x8
	.4byte	.LASF537
	.file 25 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/stat.h"
	.byte	0x3
	.byte	0xe
	.byte	0x19
	.byte	0x5
	.byte	0x2
	.4byte	.LASF538
	.file 26 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/_ansi.h"
	.byte	0x3
	.byte	0x8
	.byte	0x1a
	.byte	0x5
	.byte	0x8
	.4byte	.LASF539
	.file 27 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/newlib.h"
	.byte	0x3
	.byte	0xa
	.byte	0x1b
	.byte	0x5
	.byte	0x8
	.4byte	.LASF540
	.file 28 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/_newlib_version.h"
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 29 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/config.h"
	.byte	0x3
	.byte	0xb
	.byte	0x1d
	.byte	0x5
	.byte	0x2
	.4byte	.LASF559
	.file 30 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/ieeefp.h"
	.byte	0x3
	.byte	0x4
	.byte	0x1e
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 31 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h"
	.byte	0x3
	.byte	0x5
	.byte	0x1f
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x9
	.byte	0x5
	.byte	0x8
	.4byte	.LASF599
	.byte	0x3
	.byte	0xa
	.byte	0x1a
	.byte	0x4
	.file 32 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/cdefs.h"
	.byte	0x3
	.byte	0xb
	.byte	0x20
	.byte	0x5
	.byte	0x29
	.4byte	.LASF600
	.byte	0x3
	.byte	0x2b
	.byte	0x3
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x3
	.byte	0x2d
	.byte	0x6
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0x7
	.byte	0x5
	.byte	0xb
	.4byte	.LASF787
	.byte	0x3
	.byte	0xe
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0xf
	.byte	0x5
	.byte	0x5
	.byte	0x14
	.4byte	.LASF788
	.file 33 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_types.h"
	.byte	0x3
	.byte	0x18
	.byte	0x21
	.byte	0x5
	.byte	0x6
	.4byte	.LASF789
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x3
	.byte	0x9f,0x1
	.byte	0x6
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x3
	.byte	0x10
	.byte	0x6
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.file 34 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/time.h"
	.byte	0x3
	.byte	0x13
	.byte	0x22
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro24
	.file 35 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/types.h"
	.byte	0x3
	.byte	0x1c
	.byte	0x23
	.byte	0x7
	.4byte	.Ldebug_macro25
	.byte	0x3
	.byte	0x3e
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0x40
	.byte	0x8
	.byte	0x7
	.4byte	.Ldebug_macro26
	.byte	0x4
	.file 36 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/endian.h"
	.byte	0x3
	.byte	0x43
	.byte	0x24
	.byte	0x5
	.byte	0x2
	.4byte	.LASF896
	.file 37 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_endian.h"
	.byte	0x3
	.byte	0x6
	.byte	0x25
	.byte	0x7
	.4byte	.Ldebug_macro27
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro28
	.byte	0x4
	.file 38 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/select.h"
	.byte	0x3
	.byte	0x44
	.byte	0x26
	.byte	0x5
	.byte	0xd
	.4byte	.LASF914
	.file 39 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_sigset.h"
	.byte	0x3
	.byte	0x19
	.byte	0x27
	.byte	0x5
	.byte	0x27
	.4byte	.LASF915
	.byte	0x4
	.file 40 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_timeval.h"
	.byte	0x3
	.byte	0x1a
	.byte	0x28
	.byte	0x7
	.4byte	.Ldebug_macro29
	.byte	0x4
	.file 41 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/timespec.h"
	.byte	0x3
	.byte	0x1b
	.byte	0x29
	.byte	0x5
	.byte	0x23
	.4byte	.LASF926
	.file 42 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_timespec.h"
	.byte	0x3
	.byte	0x26
	.byte	0x2a
	.byte	0x5
	.byte	0x23
	.4byte	.LASF927
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro30
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro31
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro32
	.file 43 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_pthreadtypes.h"
	.byte	0x3
	.byte	0xef,0x1
	.byte	0x2b
	.byte	0x5
	.byte	0x13
	.4byte	.LASF972
	.file 44 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/sched.h"
	.byte	0x3
	.byte	0x17
	.byte	0x2c
	.byte	0x7
	.4byte	.Ldebug_macro33
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro34
	.byte	0x4
	.file 45 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/types.h"
	.byte	0x3
	.byte	0xf0,0x1
	.byte	0x2d
	.byte	0x4
	.byte	0x6
	.byte	0xf4,0x1
	.4byte	.LASF986
	.byte	0x4
	.file 46 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/xlocale.h"
	.byte	0x3
	.byte	0x20
	.byte	0x2e
	.byte	0x5
	.byte	0x4
	.4byte	.LASF987
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro35
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro36
	.byte	0x4
	.byte	0x4
	.file 47 "rt-thread/include/libc/libc_errno.h"
	.byte	0x3
	.byte	0x10
	.byte	0x2f
	.byte	0x5
	.byte	0xc
	.4byte	.LASF1041
	.file 48 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/errno.h"
	.byte	0x3
	.byte	0x12
	.byte	0x30
	.byte	0x7
	.4byte	.Ldebug_macro37
	.byte	0x3
	.byte	0x9
	.byte	0xa
	.byte	0x7
	.4byte	.Ldebug_macro38
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF1133
	.byte	0x4
	.file 49 "rt-thread/include/libc/libc_fcntl.h"
	.byte	0x3
	.byte	0x12
	.byte	0x31
	.byte	0x5
	.byte	0x11
	.4byte	.LASF1134
	.file 50 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/fcntl.h"
	.byte	0x3
	.byte	0x14
	.byte	0x32
	.file 51 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/fcntl.h"
	.byte	0x3
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.byte	0x2
	.4byte	.LASF1135
	.file 52 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_default_fcntl.h"
	.byte	0x3
	.byte	0x3
	.byte	0x34
	.byte	0x7
	.4byte	.Ldebug_macro39
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro40
	.byte	0x4
	.file 53 "rt-thread/include/libc/libc_ioctl.h"
	.byte	0x3
	.byte	0x13
	.byte	0x35
	.byte	0x7
	.4byte	.Ldebug_macro41
	.byte	0x4
	.file 54 "rt-thread/include/libc/libc_dirent.h"
	.byte	0x3
	.byte	0x14
	.byte	0x36
	.byte	0x7
	.4byte	.Ldebug_macro42
	.byte	0x4
	.file 55 "rt-thread/include/libc/libc_signal.h"
	.byte	0x3
	.byte	0x15
	.byte	0x37
	.byte	0x5
	.byte	0xc
	.4byte	.LASF1397
	.file 56 "./cconfig.h"
	.byte	0x3
	.byte	0x13
	.byte	0x38
	.byte	0x7
	.4byte	.Ldebug_macro43
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro44
	.file 57 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/signal.h"
	.byte	0x3
	.byte	0x43
	.byte	0x39
	.byte	0x7
	.4byte	.Ldebug_macro45
	.file 58 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/signal.h"
	.byte	0x3
	.byte	0xf2,0x2
	.byte	0x3a
	.byte	0x5
	.byte	0x2
	.4byte	.LASF1473
	.byte	0x3
	.byte	0x6
	.byte	0x39
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro46
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 59 "rt-thread/include/libc/libc_fdset.h"
	.byte	0x3
	.byte	0x16
	.byte	0x3b
	.byte	0x5
	.byte	0x10
	.4byte	.LASF1477
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 60 "rt-thread/include/rtservice.h"
	.byte	0x3
	.byte	0x19
	.byte	0x3c
	.byte	0x7
	.4byte	.Ldebug_macro47
	.byte	0x4
	.file 61 "rt-thread/include/rtm.h"
	.byte	0x3
	.byte	0x1a
	.byte	0x3d
	.byte	0x5
	.byte	0x8
	.4byte	.LASF1493
	.byte	0x3
	.byte	0xb
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.byte	0x28
	.4byte	.LASF1494
	.byte	0x4
	.byte	0x3
	.byte	0x9f,0x4
	.byte	0xc
	.byte	0x7
	.4byte	.Ldebug_macro48
	.byte	0x4
	.byte	0x4
	.file 62 "rt-thread/components/drivers/include/rtdevice.h"
	.byte	0x3
	.byte	0x5
	.byte	0x3e
	.byte	0x5
	.byte	0xd
	.4byte	.LASF1502
	.file 63 "rt-thread/components/drivers/include/ipc/ringbuffer.h"
	.byte	0x3
	.byte	0x11
	.byte	0x3f
	.byte	0x7
	.4byte	.Ldebug_macro49
	.byte	0x4
	.file 64 "rt-thread/components/drivers/include/ipc/completion.h"
	.byte	0x3
	.byte	0x12
	.byte	0x40
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1505
	.byte	0x4
	.file 65 "rt-thread/components/drivers/include/ipc/dataqueue.h"
	.byte	0x3
	.byte	0x13
	.byte	0x41
	.byte	0x7
	.4byte	.Ldebug_macro50
	.byte	0x4
	.file 66 "rt-thread/components/drivers/include/ipc/workqueue.h"
	.byte	0x3
	.byte	0x14
	.byte	0x42
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1513
	.byte	0x4
	.file 67 "rt-thread/components/drivers/include/ipc/waitqueue.h"
	.byte	0x3
	.byte	0x15
	.byte	0x43
	.byte	0x7
	.4byte	.Ldebug_macro51
	.byte	0x4
	.file 68 "rt-thread/components/drivers/include/ipc/pipe.h"
	.byte	0x3
	.byte	0x16
	.byte	0x44
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1519
	.byte	0x3
	.byte	0x10
	.byte	0x3e
	.byte	0x4
	.byte	0x5
	.byte	0x15
	.4byte	.LASF1520
	.byte	0x4
	.file 69 "rt-thread/components/drivers/include/ipc/poll.h"
	.byte	0x3
	.byte	0x17
	.byte	0x45
	.byte	0x5
	.byte	0xc
	.4byte	.LASF1521
	.byte	0x4
	.file 70 "rt-thread/components/drivers/include/ipc/ringblk_buf.h"
	.byte	0x3
	.byte	0x18
	.byte	0x46
	.byte	0x5
	.byte	0xc
	.4byte	.LASF1522
	.byte	0x4
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF1523
	.byte	0x3
	.byte	0x3c
	.byte	0xd
	.byte	0x7
	.4byte	.Ldebug_macro52
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.byte	0xd
	.4byte	.LASF1568
	.byte	0x3
	.byte	0xe
	.byte	0xe
	.byte	0x7
	.4byte	.Ldebug_macro53
	.byte	0x3
	.byte	0xa3,0x1
	.byte	0xf
	.byte	0x5
	.byte	0x27
	.4byte	.LASF1579
	.file 71 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h"
	.byte	0x3
	.byte	0x2d
	.byte	0x47
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1580
	.file 72 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h"
	.byte	0x3
	.byte	0xd
	.byte	0x48
	.byte	0x7
	.4byte	.Ldebug_macro54
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro55
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro56
	.file 73 "board/gd32vf103_libopt.h"
	.byte	0x3
	.byte	0xe0,0x1
	.byte	0x49
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1714
	.file 74 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_adc.h"
	.byte	0x3
	.byte	0x26
	.byte	0x4a
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1715
	.byte	0x3
	.byte	0x26
	.byte	0xe
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro57
	.byte	0x4
	.file 75 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_bkp.h"
	.byte	0x3
	.byte	0x27
	.byte	0x4b
	.byte	0x7
	.4byte	.Ldebug_macro58
	.byte	0x4
	.file 76 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_can.h"
	.byte	0x3
	.byte	0x28
	.byte	0x4c
	.byte	0x7
	.4byte	.Ldebug_macro59
	.byte	0x4
	.file 77 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_crc.h"
	.byte	0x3
	.byte	0x29
	.byte	0x4d
	.byte	0x7
	.4byte	.Ldebug_macro60
	.byte	0x4
	.file 78 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dac.h"
	.byte	0x3
	.byte	0x2a
	.byte	0x4e
	.byte	0x7
	.4byte	.Ldebug_macro61
	.byte	0x4
	.file 79 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dma.h"
	.byte	0x3
	.byte	0x2b
	.byte	0x4f
	.byte	0x7
	.4byte	.Ldebug_macro62
	.byte	0x4
	.file 80 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_eclic.h"
	.byte	0x3
	.byte	0x2c
	.byte	0x50
	.byte	0x7
	.4byte	.Ldebug_macro63
	.byte	0x4
	.file 81 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_exmc.h"
	.byte	0x3
	.byte	0x2d
	.byte	0x51
	.byte	0x7
	.4byte	.Ldebug_macro64
	.byte	0x4
	.file 82 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_exti.h"
	.byte	0x3
	.byte	0x2e
	.byte	0x52
	.byte	0x7
	.4byte	.Ldebug_macro65
	.byte	0x4
	.file 83 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_fmc.h"
	.byte	0x3
	.byte	0x2f
	.byte	0x53
	.byte	0x7
	.4byte	.Ldebug_macro66
	.byte	0x4
	.file 84 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_gpio.h"
	.byte	0x3
	.byte	0x30
	.byte	0x54
	.byte	0x7
	.4byte	.Ldebug_macro67
	.byte	0x4
	.file 85 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_i2c.h"
	.byte	0x3
	.byte	0x31
	.byte	0x55
	.byte	0x7
	.4byte	.Ldebug_macro68
	.byte	0x4
	.file 86 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_fwdgt.h"
	.byte	0x3
	.byte	0x32
	.byte	0x56
	.byte	0x7
	.4byte	.Ldebug_macro69
	.byte	0x4
	.file 87 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dbg.h"
	.byte	0x3
	.byte	0x33
	.byte	0x57
	.byte	0x7
	.4byte	.Ldebug_macro70
	.byte	0x4
	.file 88 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_pmu.h"
	.byte	0x3
	.byte	0x34
	.byte	0x58
	.byte	0x7
	.4byte	.Ldebug_macro71
	.byte	0x4
	.byte	0x3
	.byte	0x35
	.byte	0x10
	.byte	0x7
	.4byte	.Ldebug_macro72
	.byte	0x4
	.file 89 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_rtc.h"
	.byte	0x3
	.byte	0x36
	.byte	0x59
	.byte	0x7
	.4byte	.Ldebug_macro73
	.byte	0x4
	.file 90 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_spi.h"
	.byte	0x3
	.byte	0x37
	.byte	0x5a
	.byte	0x7
	.4byte	.Ldebug_macro74
	.byte	0x4
	.file 91 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_timer.h"
	.byte	0x3
	.byte	0x38
	.byte	0x5b
	.byte	0x7
	.4byte	.Ldebug_macro75
	.byte	0x4
	.byte	0x3
	.byte	0x39
	.byte	0x11
	.byte	0x7
	.4byte	.Ldebug_macro76
	.byte	0x4
	.file 92 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_wwdgt.h"
	.byte	0x3
	.byte	0x3a
	.byte	0x5c
	.byte	0x7
	.4byte	.Ldebug_macro77
	.byte	0x4
	.file 93 "libraries/n22/drivers/n22_func.h"
	.byte	0x3
	.byte	0x3b
	.byte	0x5d
	.byte	0x5
	.byte	0x4
	.4byte	.LASF4261
	.file 94 "libraries/n22/drivers/n22_tmr.h"
	.byte	0x3
	.byte	0x7
	.byte	0x5e
	.byte	0x7
	.4byte	.Ldebug_macro78
	.byte	0x4
	.file 95 "libraries/n22/drivers/n22_eclic.h"
	.byte	0x3
	.byte	0x8
	.byte	0x5f
	.byte	0x5
	.byte	0x4
	.4byte	.LASF4272
	.file 96 "libraries/n22/drivers/riscv_const.h"
	.byte	0x3
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.4byte	.Ldebug_macro79
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro80
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro81
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro82
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.rtconfig.h.2.cb7266e25e825657e4cb9e513842a8b3,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LASF320
	.byte	0x5
	.byte	0x9
	.4byte	.LASF321
	.byte	0x5
	.byte	0xa
	.4byte	.LASF322
	.byte	0x5
	.byte	0xb
	.4byte	.LASF323
	.byte	0x5
	.byte	0xc
	.4byte	.LASF324
	.byte	0x5
	.byte	0xd
	.4byte	.LASF325
	.byte	0x5
	.byte	0xe
	.4byte	.LASF326
	.byte	0x5
	.byte	0xf
	.4byte	.LASF327
	.byte	0x5
	.byte	0x10
	.4byte	.LASF328
	.byte	0x5
	.byte	0x11
	.4byte	.LASF329
	.byte	0x5
	.byte	0x12
	.4byte	.LASF330
	.byte	0x5
	.byte	0x13
	.4byte	.LASF331
	.byte	0x5
	.byte	0x14
	.4byte	.LASF332
	.byte	0x5
	.byte	0x15
	.4byte	.LASF333
	.byte	0x5
	.byte	0x16
	.4byte	.LASF334
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF335
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF336
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF337
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF338
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF339
	.byte	0x5
	.byte	0x22
	.4byte	.LASF340
	.byte	0x5
	.byte	0x23
	.4byte	.LASF341
	.byte	0x5
	.byte	0x24
	.4byte	.LASF342
	.byte	0x5
	.byte	0x28
	.4byte	.LASF343
	.byte	0x5
	.byte	0x29
	.4byte	.LASF344
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF345
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF346
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF347
	.byte	0x5
	.byte	0x30
	.4byte	.LASF348
	.byte	0x5
	.byte	0x31
	.4byte	.LASF349
	.byte	0x5
	.byte	0x32
	.4byte	.LASF350
	.byte	0x5
	.byte	0x33
	.4byte	.LASF351
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF352
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF353
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF354
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF355
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF356
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF357
	.byte	0x5
	.byte	0x40
	.4byte	.LASF358
	.byte	0x5
	.byte	0x41
	.4byte	.LASF359
	.byte	0x5
	.byte	0x42
	.4byte	.LASF360
	.byte	0x5
	.byte	0x43
	.4byte	.LASF361
	.byte	0x5
	.byte	0x44
	.4byte	.LASF362
	.byte	0x5
	.byte	0x45
	.4byte	.LASF363
	.byte	0x5
	.byte	0x46
	.4byte	.LASF364
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF365
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF366
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF367
	.byte	0x5
	.byte	0x50
	.4byte	.LASF368
	.byte	0x5
	.byte	0x57
	.4byte	.LASF369
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF370
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF371
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF372
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF373
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.rtdebug.h.8.9c5232d4d5c4edff3685d9dd29c74ce2,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	.LASF374
	.byte	0x5
	.byte	0x23
	.4byte	.LASF375
	.byte	0x5
	.byte	0x27
	.4byte	.LASF376
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF377
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF378
	.byte	0x5
	.byte	0x33
	.4byte	.LASF379
	.byte	0x5
	.byte	0x37
	.4byte	.LASF380
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF381
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF382
	.byte	0x5
	.byte	0x43
	.4byte	.LASF383
	.byte	0x5
	.byte	0x47
	.4byte	.LASF384
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF385
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF386
	.byte	0x5
	.byte	0x57
	.4byte	.LASF387
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF388
	.byte	0x5
	.byte	0x71
	.4byte	.LASF389
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.rtdef.h.37.872c0065ccd3e90258b761e6be215d27,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x25
	.4byte	.LASF390
	.byte	0x5
	.byte	0x35
	.4byte	.LASF391
	.byte	0x5
	.byte	0x36
	.4byte	.LASF392
	.byte	0x5
	.byte	0x37
	.4byte	.LASF393
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF394
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF395
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF396
	.byte	0x5
	.byte	0x62
	.4byte	.LASF397
	.byte	0x5
	.byte	0x63
	.4byte	.LASF398
	.byte	0x5
	.byte	0x64
	.4byte	.LASF399
	.byte	0x5
	.byte	0x65
	.4byte	.LASF400
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.31.b55da1089056868966f25de5dbfc7d3c,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF401
	.byte	0x5
	.byte	0x20
	.4byte	.LASF402
	.byte	0x6
	.byte	0x22
	.4byte	.LASF403
	.byte	0x5
	.byte	0x27
	.4byte	.LASF404
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF405
	.byte	0x5
	.byte	0x30
	.4byte	.LASF406
	.byte	0x5
	.byte	0x31
	.4byte	.LASF407
	.byte	0x5
	.byte	0x34
	.4byte	.LASF408
	.byte	0x5
	.byte	0x36
	.4byte	.LASF409
	.byte	0x5
	.byte	0x69
	.4byte	.LASF410
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF411
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF412
	.byte	0x5
	.byte	0x72
	.4byte	.LASF413
	.byte	0x5
	.byte	0x75
	.4byte	.LASF414
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.rtdef.h.147.003c61734b9f85fe53f33998204afab8,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF415
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF416
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF417
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF418
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF419
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF420
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF421
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF422
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF423
	.byte	0x5
	.byte	0xdb,0x1
	.4byte	.LASF424
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF425
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF426
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF427
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF428
	.byte	0x5
	.byte	0xf2,0x1
	.4byte	.LASF429
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF430
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF431
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF432
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF433
	.byte	0x5
	.byte	0xff,0x1
	.4byte	.LASF434
	.byte	0x5
	.byte	0x83,0x2
	.4byte	.LASF435
	.byte	0x5
	.byte	0x8d,0x2
	.4byte	.LASF436
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF437
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF438
	.byte	0x5
	.byte	0x90,0x2
	.4byte	.LASF439
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF440
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF441
	.byte	0x5
	.byte	0x93,0x2
	.4byte	.LASF442
	.byte	0x5
	.byte	0x94,0x2
	.4byte	.LASF443
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF444
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF445
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF446
	.byte	0x5
	.byte	0xa2,0x2
	.4byte	.LASF447
	.byte	0x5
	.byte	0xab,0x2
	.4byte	.LASF448
	.byte	0x5
	.byte	0xb3,0x2
	.4byte	.LASF449
	.byte	0x5
	.byte	0xd1,0x2
	.4byte	.LASF450
	.byte	0x5
	.byte	0x94,0x3
	.4byte	.LASF451
	.byte	0x5
	.byte	0xa5,0x3
	.4byte	.LASF452
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF453
	.byte	0x5
	.byte	0xa7,0x3
	.4byte	.LASF454
	.byte	0x5
	.byte	0xa8,0x3
	.4byte	.LASF455
	.byte	0x5
	.byte	0xaa,0x3
	.4byte	.LASF456
	.byte	0x5
	.byte	0xab,0x3
	.4byte	.LASF457
	.byte	0x5
	.byte	0xad,0x3
	.4byte	.LASF458
	.byte	0x5
	.byte	0xae,0x3
	.4byte	.LASF459
	.byte	0x5
	.byte	0xaf,0x3
	.4byte	.LASF460
	.byte	0x5
	.byte	0xb0,0x3
	.4byte	.LASF461
	.byte	0x5
	.byte	0xb3,0x3
	.4byte	.LASF462
	.byte	0x5
	.byte	0xb8,0x3
	.4byte	.LASF463
	.byte	0x5
	.byte	0xe8,0x3
	.4byte	.LASF464
	.byte	0x5
	.byte	0xe9,0x3
	.4byte	.LASF465
	.byte	0x5
	.byte	0xea,0x3
	.4byte	.LASF466
	.byte	0x5
	.byte	0xeb,0x3
	.4byte	.LASF467
	.byte	0x5
	.byte	0xec,0x3
	.4byte	.LASF468
	.byte	0x5
	.byte	0xed,0x3
	.4byte	.LASF469
	.byte	0x5
	.byte	0xee,0x3
	.4byte	.LASF470
	.byte	0x5
	.byte	0xf0,0x3
	.4byte	.LASF471
	.byte	0x5
	.byte	0xf1,0x3
	.4byte	.LASF472
	.byte	0x5
	.byte	0xf2,0x3
	.4byte	.LASF473
	.byte	0x5
	.byte	0xf3,0x3
	.4byte	.LASF474
	.byte	0x5
	.byte	0xf4,0x3
	.4byte	.LASF475
	.byte	0x5
	.byte	0xf9,0x3
	.4byte	.LASF476
	.byte	0x5
	.byte	0xfa,0x3
	.4byte	.LASF477
	.byte	0x5
	.byte	0xfb,0x3
	.4byte	.LASF478
	.byte	0x5
	.byte	0xfc,0x3
	.4byte	.LASF479
	.byte	0x5
	.byte	0xfd,0x3
	.4byte	.LASF480
	.byte	0x5
	.byte	0xfb,0x4
	.4byte	.LASF481
	.byte	0x5
	.byte	0xfc,0x4
	.4byte	.LASF482
	.byte	0x5
	.byte	0xfe,0x4
	.4byte	.LASF483
	.byte	0x5
	.byte	0xff,0x4
	.4byte	.LASF484
	.byte	0x5
	.byte	0x81,0x5
	.4byte	.LASF485
	.byte	0x5
	.byte	0x82,0x5
	.4byte	.LASF486
	.byte	0x5
	.byte	0xb2,0x5
	.4byte	.LASF487
	.byte	0x5
	.byte	0xb3,0x5
	.4byte	.LASF488
	.byte	0x5
	.byte	0xb4,0x5
	.4byte	.LASF489
	.byte	0x5
	.byte	0xe0,0x6
	.4byte	.LASF490
	.byte	0x5
	.byte	0xe2,0x6
	.4byte	.LASF491
	.byte	0x5
	.byte	0xe3,0x6
	.4byte	.LASF492
	.byte	0x5
	.byte	0xe4,0x6
	.4byte	.LASF493
	.byte	0x5
	.byte	0xe6,0x6
	.4byte	.LASF494
	.byte	0x5
	.byte	0xe7,0x6
	.4byte	.LASF495
	.byte	0x5
	.byte	0xe8,0x6
	.4byte	.LASF496
	.byte	0x5
	.byte	0xe9,0x6
	.4byte	.LASF497
	.byte	0x5
	.byte	0xea,0x6
	.4byte	.LASF498
	.byte	0x5
	.byte	0xec,0x6
	.4byte	.LASF499
	.byte	0x5
	.byte	0xed,0x6
	.4byte	.LASF500
	.byte	0x5
	.byte	0xee,0x6
	.4byte	.LASF501
	.byte	0x5
	.byte	0xef,0x6
	.4byte	.LASF502
	.byte	0x5
	.byte	0xf1,0x6
	.4byte	.LASF503
	.byte	0x5
	.byte	0xf2,0x6
	.4byte	.LASF504
	.byte	0x5
	.byte	0xf3,0x6
	.4byte	.LASF505
	.byte	0x5
	.byte	0xf4,0x6
	.4byte	.LASF506
	.byte	0x5
	.byte	0xf5,0x6
	.4byte	.LASF507
	.byte	0x5
	.byte	0xf6,0x6
	.4byte	.LASF508
	.byte	0x5
	.byte	0xfb,0x6
	.4byte	.LASF509
	.byte	0x5
	.byte	0xfc,0x6
	.4byte	.LASF510
	.byte	0x5
	.byte	0xfd,0x6
	.4byte	.LASF511
	.byte	0x5
	.byte	0xff,0x6
	.4byte	.LASF512
	.byte	0x5
	.byte	0x80,0x7
	.4byte	.LASF513
	.byte	0x5
	.byte	0x81,0x7
	.4byte	.LASF514
	.byte	0x5
	.byte	0x86,0x7
	.4byte	.LASF515
	.byte	0x5
	.byte	0x87,0x7
	.4byte	.LASF516
	.byte	0x5
	.byte	0x88,0x7
	.4byte	.LASF517
	.byte	0x5
	.byte	0x89,0x7
	.4byte	.LASF518
	.byte	0x5
	.byte	0x8a,0x7
	.4byte	.LASF519
	.byte	0x5
	.byte	0x8b,0x7
	.4byte	.LASF520
	.byte	0x5
	.byte	0x8c,0x7
	.4byte	.LASF521
	.byte	0x5
	.byte	0x8d,0x7
	.4byte	.LASF522
	.byte	0x5
	.byte	0x8e,0x7
	.4byte	.LASF523
	.byte	0x5
	.byte	0x8f,0x7
	.4byte	.LASF524
	.byte	0x5
	.byte	0x90,0x7
	.4byte	.LASF525
	.byte	0x5
	.byte	0xe7,0x7
	.4byte	.LASF526
	.byte	0x5
	.byte	0xe8,0x7
	.4byte	.LASF527
	.byte	0x5
	.byte	0xed,0x7
	.4byte	.LASF528
	.byte	0x5
	.byte	0xee,0x7
	.4byte	.LASF529
	.byte	0x5
	.byte	0xef,0x7
	.4byte	.LASF530
	.byte	0x5
	.byte	0xf0,0x7
	.4byte	.LASF531
	.byte	0x5
	.byte	0xf1,0x7
	.4byte	.LASF532
	.byte	0x5
	.byte	0xf2,0x7
	.4byte	.LASF533
	.byte	0x5
	.byte	0x8b,0x8
	.4byte	.LASF534
	.byte	0x5
	.byte	0xb4,0x8
	.4byte	.LASF535
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._newlib_version.h.4.875b979a44719054cd750d0952ad3fd6,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	.LASF541
	.byte	0x5
	.byte	0x6
	.4byte	.LASF542
	.byte	0x5
	.byte	0x7
	.4byte	.LASF543
	.byte	0x5
	.byte	0x8
	.4byte	.LASF544
	.byte	0x5
	.byte	0x9
	.4byte	.LASF545
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.newlib.h.18.cf6bb52154a7abac63b0afb962204a67,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x12
	.4byte	.LASF546
	.byte	0x5
	.byte	0x15
	.4byte	.LASF547
	.byte	0x5
	.byte	0x18
	.4byte	.LASF548
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF549
	.byte	0x5
	.byte	0x28
	.4byte	.LASF550
	.byte	0x5
	.byte	0x32
	.4byte	.LASF551
	.byte	0x5
	.byte	0x39
	.4byte	.LASF552
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF553
	.byte	0x5
	.byte	0x42
	.4byte	.LASF554
	.byte	0x5
	.byte	0x45
	.4byte	.LASF555
	.byte	0x5
	.byte	0x48
	.4byte	.LASF556
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF557
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF558
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ieeefp.h.193.a04996ad6548b0579a40a1f708027f95,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF560
	.byte	0x5
	.byte	0xc3,0x3
	.4byte	.LASF561
	.byte	0x5
	.byte	0xc6,0x3
	.4byte	.LASF562
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.22.fad1cec3bc7ff06488171438dbdcfd02,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x16
	.4byte	.LASF563
	.byte	0x5
	.byte	0x21
	.4byte	.LASF564
	.byte	0x5
	.byte	0x28
	.4byte	.LASF565
	.byte	0x6
	.byte	0x83,0x1
	.4byte	.LASF566
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF567
	.byte	0x6
	.byte	0x88,0x1
	.4byte	.LASF568
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF569
	.byte	0x6
	.byte	0x8a,0x1
	.4byte	.LASF570
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF571
	.byte	0x6
	.byte	0x9e,0x1
	.4byte	.LASF572
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF573
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF574
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF575
	.byte	0x5
	.byte	0x85,0x2
	.4byte	.LASF576
	.byte	0x5
	.byte	0x8a,0x2
	.4byte	.LASF577
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF578
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF579
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF580
	.byte	0x5
	.byte	0xaf,0x2
	.4byte	.LASF581
	.byte	0x5
	.byte	0xbf,0x2
	.4byte	.LASF582
	.byte	0x5
	.byte	0xca,0x2
	.4byte	.LASF583
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.79.b548f69d9f69fceadec535dc005f68c6,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF584
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF585
	.byte	0x6
	.byte	0xe2,0x1
	.4byte	.LASF586
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF587
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF588
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF589
	.byte	0x5
	.byte	0x87,0x2
	.4byte	.LASF590
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._ansi.h.31.de524f58584151836e90d8620a16f8e8,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF591
	.byte	0x5
	.byte	0x20
	.4byte	.LASF592
	.byte	0x5
	.byte	0x21
	.4byte	.LASF593
	.byte	0x5
	.byte	0x25
	.4byte	.LASF594
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF595
	.byte	0x5
	.byte	0x45
	.4byte	.LASF596
	.byte	0x5
	.byte	0x49
	.4byte	.LASF597
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF598
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._default_types.h.6.959254cf5f09734ea7516c89e8bb21bd,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x6
	.4byte	.LASF601
	.byte	0x5
	.byte	0xf
	.4byte	.LASF602
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF603
	.byte	0x5
	.byte	0x21
	.4byte	.LASF604
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF605
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF606
	.byte	0x5
	.byte	0x53
	.4byte	.LASF607
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF608
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF609
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF610
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF611
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF612
	.byte	0x6
	.byte	0xf4,0x1
	.4byte	.LASF613
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.a38874c8f8a57e66301090908ec2a69f,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x27
	.4byte	.LASF614
	.byte	0x5
	.byte	0x28
	.4byte	.LASF615
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF616
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF617
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF618
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF619
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF620
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF621
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF622
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF623
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF624
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF625
	.byte	0x6
	.byte	0xa1,0x1
	.4byte	.LASF626
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF627
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF628
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF629
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF630
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF631
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF632
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF633
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF634
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF635
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF636
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF637
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF638
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF639
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF640
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF641
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF642
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF643
	.byte	0x6
	.byte	0xee,0x1
	.4byte	.LASF644
	.byte	0x5
	.byte	0x8b,0x2
	.4byte	.LASF645
	.byte	0x5
	.byte	0x8c,0x2
	.4byte	.LASF646
	.byte	0x5
	.byte	0x8d,0x2
	.4byte	.LASF647
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF648
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF649
	.byte	0x5
	.byte	0x90,0x2
	.4byte	.LASF650
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF651
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF652
	.byte	0x5
	.byte	0x93,0x2
	.4byte	.LASF653
	.byte	0x5
	.byte	0x94,0x2
	.4byte	.LASF654
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF655
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF656
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF657
	.byte	0x5
	.byte	0x98,0x2
	.4byte	.LASF658
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF659
	.byte	0x6
	.byte	0xa6,0x2
	.4byte	.LASF660
	.byte	0x6
	.byte	0xdb,0x2
	.4byte	.LASF661
	.byte	0x6
	.byte	0x91,0x3
	.4byte	.LASF662
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF663
	.byte	0x6
	.byte	0x9c,0x3
	.4byte	.LASF664
	.byte	0x5
	.byte	0xa1,0x3
	.4byte	.LASF665
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF666
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.47.9b1aff81ebf9fd459c1248694f70fc96,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF667
	.byte	0x5
	.byte	0x30
	.4byte	.LASF668
	.byte	0x5
	.byte	0x31
	.4byte	.LASF669
	.byte	0x5
	.byte	0x34
	.4byte	.LASF670
	.byte	0x5
	.byte	0x37
	.4byte	.LASF671
	.byte	0x5
	.byte	0x38
	.4byte	.LASF672
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF673
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF674
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF675
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF676
	.byte	0x5
	.byte	0x40
	.4byte	.LASF677
	.byte	0x5
	.byte	0x41
	.4byte	.LASF678
	.byte	0x5
	.byte	0x42
	.4byte	.LASF679
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF680
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF681
	.byte	0x5
	.byte	0x55
	.4byte	.LASF682
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF683
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF684
	.byte	0x5
	.byte	0x69
	.4byte	.LASF685
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF686
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF687
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF688
	.byte	0x5
	.byte	0x70
	.4byte	.LASF689
	.byte	0x5
	.byte	0x73
	.4byte	.LASF690
	.byte	0x5
	.byte	0x76
	.4byte	.LASF691
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF692
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF693
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF694
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF695
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF696
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF697
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF698
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF699
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF700
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF701
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF702
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF703
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF704
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF705
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF706
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF707
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF708
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF709
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF710
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF711
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF712
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF713
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF714
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF715
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF716
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF717
	.byte	0x5
	.byte	0xfe,0x1
	.4byte	.LASF718
	.byte	0x5
	.byte	0xff,0x1
	.4byte	.LASF719
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF720
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF721
	.byte	0x5
	.byte	0x82,0x2
	.4byte	.LASF722
	.byte	0x5
	.byte	0x85,0x2
	.4byte	.LASF723
	.byte	0x5
	.byte	0x8a,0x2
	.4byte	.LASF724
	.byte	0x5
	.byte	0xe4,0x2
	.4byte	.LASF725
	.byte	0x5
	.byte	0xf6,0x2
	.4byte	.LASF726
	.byte	0x5
	.byte	0xfc,0x2
	.4byte	.LASF727
	.byte	0x5
	.byte	0xfd,0x2
	.4byte	.LASF728
	.byte	0x5
	.byte	0x84,0x3
	.4byte	.LASF729
	.byte	0x5
	.byte	0x8a,0x3
	.4byte	.LASF730
	.byte	0x5
	.byte	0x90,0x3
	.4byte	.LASF731
	.byte	0x5
	.byte	0x91,0x3
	.4byte	.LASF732
	.byte	0x5
	.byte	0x98,0x3
	.4byte	.LASF733
	.byte	0x5
	.byte	0x99,0x3
	.4byte	.LASF734
	.byte	0x5
	.byte	0xa0,0x3
	.4byte	.LASF735
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF736
	.byte	0x5
	.byte	0xba,0x3
	.4byte	.LASF737
	.byte	0x5
	.byte	0xdb,0x3
	.4byte	.LASF738
	.byte	0x5
	.byte	0xdc,0x3
	.4byte	.LASF739
	.byte	0x5
	.byte	0xe3,0x3
	.4byte	.LASF740
	.byte	0x5
	.byte	0xe4,0x3
	.4byte	.LASF741
	.byte	0x5
	.byte	0xe7,0x3
	.4byte	.LASF742
	.byte	0x5
	.byte	0xf1,0x3
	.4byte	.LASF743
	.byte	0x5
	.byte	0xf2,0x3
	.4byte	.LASF744
	.byte	0x5
	.byte	0xfc,0x3
	.4byte	.LASF745
	.byte	0x5
	.byte	0x92,0x4
	.4byte	.LASF746
	.byte	0x5
	.byte	0x94,0x4
	.4byte	.LASF747
	.byte	0x5
	.byte	0x96,0x4
	.4byte	.LASF748
	.byte	0x5
	.byte	0x97,0x4
	.4byte	.LASF749
	.byte	0x5
	.byte	0x99,0x4
	.4byte	.LASF750
	.byte	0x5
	.byte	0xa3,0x4
	.4byte	.LASF751
	.byte	0x5
	.byte	0xa8,0x4
	.4byte	.LASF752
	.byte	0x5
	.byte	0xad,0x4
	.4byte	.LASF753
	.byte	0x5
	.byte	0xb0,0x4
	.4byte	.LASF754
	.byte	0x5
	.byte	0xb4,0x4
	.4byte	.LASF755
	.byte	0x5
	.byte	0xb6,0x4
	.4byte	.LASF756
	.byte	0x5
	.byte	0xd9,0x4
	.4byte	.LASF757
	.byte	0x5
	.byte	0xdd,0x4
	.4byte	.LASF758
	.byte	0x5
	.byte	0xe1,0x4
	.4byte	.LASF759
	.byte	0x5
	.byte	0xe5,0x4
	.4byte	.LASF760
	.byte	0x5
	.byte	0xe9,0x4
	.4byte	.LASF761
	.byte	0x5
	.byte	0xed,0x4
	.4byte	.LASF762
	.byte	0x5
	.byte	0xf1,0x4
	.4byte	.LASF763
	.byte	0x5
	.byte	0xf5,0x4
	.4byte	.LASF764
	.byte	0x5
	.byte	0xfc,0x4
	.4byte	.LASF765
	.byte	0x5
	.byte	0xfd,0x4
	.4byte	.LASF766
	.byte	0x5
	.byte	0xfe,0x4
	.4byte	.LASF767
	.byte	0x5
	.byte	0xff,0x4
	.4byte	.LASF768
	.byte	0x5
	.byte	0x80,0x5
	.4byte	.LASF769
	.byte	0x5
	.byte	0x95,0x5
	.4byte	.LASF770
	.byte	0x5
	.byte	0x96,0x5
	.4byte	.LASF771
	.byte	0x5
	.byte	0xa8,0x5
	.4byte	.LASF772
	.byte	0x5
	.byte	0xae,0x5
	.4byte	.LASF773
	.byte	0x5
	.byte	0xb1,0x5
	.4byte	.LASF774
	.byte	0x5
	.byte	0xb3,0x5
	.4byte	.LASF775
	.byte	0x5
	.byte	0xb7,0x5
	.4byte	.LASF776
	.byte	0x5
	.byte	0xb9,0x5
	.4byte	.LASF777
	.byte	0x5
	.byte	0xbd,0x5
	.4byte	.LASF778
	.byte	0x5
	.byte	0xc0,0x5
	.4byte	.LASF779
	.byte	0x5
	.byte	0xc2,0x5
	.4byte	.LASF780
	.byte	0x5
	.byte	0xc6,0x5
	.4byte	.LASF781
	.byte	0x5
	.byte	0xc8,0x5
	.4byte	.LASF782
	.byte	0x5
	.byte	0xca,0x5
	.4byte	.LASF783
	.byte	0x5
	.byte	0xce,0x5
	.4byte	.LASF784
	.byte	0x5
	.byte	0xd1,0x5
	.4byte	.LASF785
	.byte	0x5
	.byte	0xd2,0x5
	.4byte	.LASF786
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.2.1461d1fff82dffe8bfddc23307f6484f,comdat
.Ldebug_macro16:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LASF790
	.byte	0x5
	.byte	0x23
	.4byte	.LASF791
	.byte	0x5
	.byte	0x25
	.4byte	.LASF792
	.byte	0x5
	.byte	0x27
	.4byte	.LASF793
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF794
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF795
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF796
	.byte	0x5
	.byte	0x30
	.4byte	.LASF797
	.byte	0x5
	.byte	0x32
	.4byte	.LASF798
	.byte	0x5
	.byte	0x34
	.4byte	.LASF799
	.byte	0x5
	.byte	0x36
	.4byte	.LASF800
	.byte	0x5
	.byte	0x38
	.4byte	.LASF801
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF802
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF803
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.125.5cf8a495f1f7ef36777ad868a1e32068,comdat
.Ldebug_macro17:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x7d
	.4byte	.LASF804
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF805
	.byte	0x6
	.byte	0x92,0x1
	.4byte	.LASF806
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF807
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.161.5349cb105733e8777bfb0cf53c4e3f34,comdat
.Ldebug_macro18:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.byte	0xa1,0x1
	.4byte	.LASF626
	.byte	0x6
	.byte	0xee,0x1
	.4byte	.LASF644
	.byte	0x6
	.byte	0xdb,0x2
	.4byte	.LASF661
	.byte	0x5
	.byte	0xe0,0x2
	.4byte	.LASF808
	.byte	0x6
	.byte	0xe7,0x2
	.4byte	.LASF809
	.byte	0x6
	.byte	0x91,0x3
	.4byte	.LASF662
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF663
	.byte	0x6
	.byte	0x9c,0x3
	.4byte	.LASF664
	.byte	0x5
	.byte	0xa1,0x3
	.4byte	.LASF665
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.184.7120b8bb2e0149e2359704f4e2251b68,comdat
.Ldebug_macro19:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF810
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF811
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF812
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF813
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reent.h.17.87376802c2b370b32a762f0a30482d9e,comdat
.Ldebug_macro20:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x11
	.4byte	.LASF814
	.byte	0x5
	.byte	0x15
	.4byte	.LASF815
	.byte	0x5
	.byte	0x48
	.4byte	.LASF816
	.byte	0x5
	.byte	0x64
	.4byte	.LASF817
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF818
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF819
	.byte	0x5
	.byte	0xb8,0x2
	.4byte	.LASF820
	.byte	0x5
	.byte	0xb9,0x2
	.4byte	.LASF821
	.byte	0x5
	.byte	0xba,0x2
	.4byte	.LASF822
	.byte	0x5
	.byte	0xbb,0x2
	.4byte	.LASF823
	.byte	0x5
	.byte	0xbc,0x2
	.4byte	.LASF824
	.byte	0x5
	.byte	0xbd,0x2
	.4byte	.LASF825
	.byte	0x5
	.byte	0xbe,0x2
	.4byte	.LASF826
	.byte	0x5
	.byte	0xca,0x2
	.4byte	.LASF827
	.byte	0x5
	.byte	0xcb,0x2
	.4byte	.LASF828
	.byte	0x5
	.byte	0xcc,0x2
	.4byte	.LASF829
	.byte	0x5
	.byte	0xf4,0x4
	.4byte	.LASF830
	.byte	0x5
	.byte	0x90,0x5
	.4byte	.LASF831
	.byte	0x5
	.byte	0x93,0x5
	.4byte	.LASF832
	.byte	0x5
	.byte	0xc3,0x5
	.4byte	.LASF833
	.byte	0x5
	.byte	0xd1,0x5
	.4byte	.LASF834
	.byte	0x5
	.byte	0xd2,0x5
	.4byte	.LASF835
	.byte	0x5
	.byte	0xd3,0x5
	.4byte	.LASF836
	.byte	0x5
	.byte	0xd4,0x5
	.4byte	.LASF837
	.byte	0x5
	.byte	0xd5,0x5
	.4byte	.LASF838
	.byte	0x5
	.byte	0xd6,0x5
	.4byte	.LASF839
	.byte	0x5
	.byte	0xd7,0x5
	.4byte	.LASF840
	.byte	0x5
	.byte	0xd9,0x5
	.4byte	.LASF841
	.byte	0x5
	.byte	0xda,0x5
	.4byte	.LASF842
	.byte	0x5
	.byte	0xdb,0x5
	.4byte	.LASF843
	.byte	0x5
	.byte	0xdc,0x5
	.4byte	.LASF844
	.byte	0x5
	.byte	0xdd,0x5
	.4byte	.LASF845
	.byte	0x5
	.byte	0xde,0x5
	.4byte	.LASF846
	.byte	0x5
	.byte	0xdf,0x5
	.4byte	.LASF847
	.byte	0x5
	.byte	0xe0,0x5
	.4byte	.LASF848
	.byte	0x5
	.byte	0xe1,0x5
	.4byte	.LASF849
	.byte	0x5
	.byte	0xe2,0x5
	.4byte	.LASF850
	.byte	0x5
	.byte	0xe3,0x5
	.4byte	.LASF851
	.byte	0x5
	.byte	0xe4,0x5
	.4byte	.LASF852
	.byte	0x5
	.byte	0xe5,0x5
	.4byte	.LASF853
	.byte	0x5
	.byte	0xe6,0x5
	.4byte	.LASF854
	.byte	0x5
	.byte	0xe7,0x5
	.4byte	.LASF855
	.byte	0x5
	.byte	0xe8,0x5
	.4byte	.LASF856
	.byte	0x5
	.byte	0xe9,0x5
	.4byte	.LASF857
	.byte	0x5
	.byte	0xea,0x5
	.4byte	.LASF858
	.byte	0x5
	.byte	0xeb,0x5
	.4byte	.LASF859
	.byte	0x5
	.byte	0xec,0x5
	.4byte	.LASF860
	.byte	0x5
	.byte	0xed,0x5
	.4byte	.LASF861
	.byte	0x5
	.byte	0xee,0x5
	.4byte	.LASF862
	.byte	0x5
	.byte	0xef,0x5
	.4byte	.LASF863
	.byte	0x5
	.byte	0xf0,0x5
	.4byte	.LASF864
	.byte	0x5
	.byte	0xf4,0x5
	.4byte	.LASF865
	.byte	0x5
	.byte	0xfc,0x5
	.4byte	.LASF866
	.byte	0x5
	.byte	0x84,0x6
	.4byte	.LASF867
	.byte	0x5
	.byte	0x94,0x6
	.4byte	.LASF868
	.byte	0x5
	.byte	0x97,0x6
	.4byte	.LASF869
	.byte	0x5
	.byte	0x9d,0x6
	.4byte	.LASF870
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time.h.14.849270cc7997ccc4e05edd146e568a9f,comdat
.Ldebug_macro21:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xe
	.4byte	.LASF871
	.byte	0x5
	.byte	0xf
	.4byte	.LASF872
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.161.19e15733342b50ead2919490b095303e,comdat
.Ldebug_macro22:
	.2byte	0x4
	.byte	0
	.byte	0x6
	.byte	0xa1,0x1
	.4byte	.LASF626
	.byte	0x6
	.byte	0xee,0x1
	.4byte	.LASF644
	.byte	0x6
	.byte	0xdb,0x2
	.4byte	.LASF661
	.byte	0x6
	.byte	0x91,0x3
	.4byte	.LASF662
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF663
	.byte	0x6
	.byte	0x9c,0x3
	.4byte	.LASF664
	.byte	0x5
	.byte	0xa1,0x3
	.4byte	.LASF665
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time.h.2.2a9bb4e458da4ea34ffea78824e2e6f7,comdat
.Ldebug_macro23:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LASF873
	.byte	0x5
	.byte	0x5
	.4byte	.LASF874
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time.h.25.0e6a0fdbc9955f5707ed54246ed2e089,comdat
.Ldebug_macro24:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x19
	.4byte	.LASF875
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF876
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.40.e8c16e7ec36ba55f133d0616070e25fc,comdat
.Ldebug_macro25:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x28
	.4byte	.LASF877
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF878
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841,comdat
.Ldebug_macro26:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xa
	.4byte	.LASF879
	.byte	0x5
	.byte	0x15
	.4byte	.LASF880
	.byte	0x5
	.byte	0x19
	.4byte	.LASF881
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF882
	.byte	0x5
	.byte	0x21
	.4byte	.LASF883
	.byte	0x5
	.byte	0x25
	.4byte	.LASF884
	.byte	0x5
	.byte	0x27
	.4byte	.LASF885
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF886
	.byte	0x5
	.byte	0x31
	.4byte	.LASF887
	.byte	0x5
	.byte	0x33
	.4byte	.LASF888
	.byte	0x5
	.byte	0x39
	.4byte	.LASF889
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF890
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF891
	.byte	0x5
	.byte	0x44
	.4byte	.LASF892
	.byte	0x5
	.byte	0x49
	.4byte	.LASF893
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF894
	.byte	0x5
	.byte	0x53
	.4byte	.LASF895
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._endian.h.18.1bf9649e8e5bbc91042012680270b9ed,comdat
.Ldebug_macro27:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x12
	.4byte	.LASF897
	.byte	0x5
	.byte	0x16
	.4byte	.LASF898
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF899
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF900
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.9.49f3a4695c1b61e8a0808de3c4a106cb,comdat
.Ldebug_macro28:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x9
	.4byte	.LASF901
	.byte	0x5
	.byte	0xa
	.4byte	.LASF902
	.byte	0x5
	.byte	0x11
	.4byte	.LASF903
	.byte	0x5
	.byte	0x12
	.4byte	.LASF904
	.byte	0x5
	.byte	0x13
	.4byte	.LASF905
	.byte	0x5
	.byte	0x14
	.4byte	.LASF906
	.byte	0x5
	.byte	0x18
	.4byte	.LASF907
	.byte	0x5
	.byte	0x19
	.4byte	.LASF908
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF909
	.byte	0x5
	.byte	0x39
	.4byte	.LASF910
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF911
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF912
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF913
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._timeval.h.30.0e8bfd94e85db17dda3286ee81496fe6,comdat
.Ldebug_macro29:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF916
	.byte	0x5
	.byte	0x24
	.4byte	.LASF917
	.byte	0x5
	.byte	0x29
	.4byte	.LASF918
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF919
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF920
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF921
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF922
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF923
	.byte	0x5
	.byte	0x42
	.4byte	.LASF924
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF925
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.timespec.h.41.d855182eb0e690443ab8651bcedca6e1,comdat
.Ldebug_macro30:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x29
	.4byte	.LASF928
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF929
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.select.h.30.bbece7fa40993a78092dcc5805132560,comdat
.Ldebug_macro31:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF930
	.byte	0x5
	.byte	0x22
	.4byte	.LASF931
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF932
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF933
	.byte	0x5
	.byte	0x30
	.4byte	.LASF934
	.byte	0x5
	.byte	0x39
	.4byte	.LASF935
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF936
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF937
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF938
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF939
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.69.ed3eae3cf73030a737515151ebcab7a1,comdat
.Ldebug_macro32:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x45
	.4byte	.LASF940
	.byte	0x5
	.byte	0x46
	.4byte	.LASF941
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF942
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF943
	.byte	0x5
	.byte	0x58
	.4byte	.LASF944
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF945
	.byte	0x5
	.byte	0x60
	.4byte	.LASF946
	.byte	0x5
	.byte	0x64
	.4byte	.LASF947
	.byte	0x5
	.byte	0x66
	.4byte	.LASF948
	.byte	0x5
	.byte	0x72
	.4byte	.LASF949
	.byte	0x5
	.byte	0x77
	.4byte	.LASF950
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF951
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF952
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF953
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF954
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF955
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF956
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF957
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF958
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF959
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF960
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF961
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF962
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF963
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF964
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF965
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF966
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF967
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF968
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF969
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF970
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF971
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.sched.h.22.c60982713a5c428609783c78f9c78d95,comdat
.Ldebug_macro33:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x16
	.4byte	.LASF973
	.byte	0x5
	.byte	0x23
	.4byte	.LASF974
	.byte	0x5
	.byte	0x26
	.4byte	.LASF975
	.byte	0x5
	.byte	0x27
	.4byte	.LASF976
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._pthreadtypes.h.36.fcee9961c35163dde6267ef772ad1972,comdat
.Ldebug_macro34:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF977
	.byte	0x5
	.byte	0x25
	.4byte	.LASF978
	.byte	0x5
	.byte	0x28
	.4byte	.LASF979
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF980
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF981
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF982
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF983
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF984
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF985
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time.h.162.117026b75cfaa0f83901a5f301a8b4f7,comdat
.Ldebug_macro35:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF988
	.byte	0x5
	.byte	0xf0,0x1
	.4byte	.LASF989
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF990
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF991
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF992
	.byte	0x5
	.byte	0xfe,0x1
	.4byte	.LASF993
	.byte	0x5
	.byte	0x83,0x2
	.4byte	.LASF994
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stat.h.71.d65ac61ff88c651e198008cfb38bda9c,comdat
.Ldebug_macro36:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x47
	.4byte	.LASF995
	.byte	0x5
	.byte	0x48
	.4byte	.LASF996
	.byte	0x5
	.byte	0x49
	.4byte	.LASF997
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF998
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF999
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF1000
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF1001
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF1002
	.byte	0x5
	.byte	0x50
	.4byte	.LASF1003
	.byte	0x5
	.byte	0x52
	.4byte	.LASF1004
	.byte	0x5
	.byte	0x53
	.4byte	.LASF1005
	.byte	0x5
	.byte	0x54
	.4byte	.LASF1006
	.byte	0x5
	.byte	0x56
	.4byte	.LASF1007
	.byte	0x5
	.byte	0x57
	.4byte	.LASF1008
	.byte	0x5
	.byte	0x58
	.4byte	.LASF1009
	.byte	0x5
	.byte	0x59
	.4byte	.LASF1010
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF1011
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF1012
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF1013
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF1014
	.byte	0x5
	.byte	0x60
	.4byte	.LASF1015
	.byte	0x5
	.byte	0x61
	.4byte	.LASF1016
	.byte	0x5
	.byte	0x62
	.4byte	.LASF1017
	.byte	0x5
	.byte	0x63
	.4byte	.LASF1018
	.byte	0x5
	.byte	0x72
	.4byte	.LASF1019
	.byte	0x5
	.byte	0x73
	.4byte	.LASF1020
	.byte	0x5
	.byte	0x74
	.4byte	.LASF1021
	.byte	0x5
	.byte	0x75
	.4byte	.LASF1022
	.byte	0x5
	.byte	0x76
	.4byte	.LASF1023
	.byte	0x5
	.byte	0x77
	.4byte	.LASF1024
	.byte	0x5
	.byte	0x78
	.4byte	.LASF1025
	.byte	0x5
	.byte	0x79
	.4byte	.LASF1026
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF1027
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF1028
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF1029
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF1030
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF1031
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF1032
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF1033
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF1034
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF1035
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF1036
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF1037
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF1038
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF1039
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF1040
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.2.ba016d646105af6cad23be83630b6a3f,comdat
.Ldebug_macro37:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LASF1042
	.byte	0x5
	.byte	0x6
	.4byte	.LASF1043
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.errno.h.9.1ecd7b1049497a0ab61da0f6cbd4b0c6,comdat
.Ldebug_macro38:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x9
	.4byte	.LASF1044
	.byte	0x5
	.byte	0xe
	.4byte	.LASF1045
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF1046
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF1047
	.byte	0x5
	.byte	0x20
	.4byte	.LASF1048
	.byte	0x5
	.byte	0x21
	.4byte	.LASF1049
	.byte	0x5
	.byte	0x22
	.4byte	.LASF1050
	.byte	0x5
	.byte	0x23
	.4byte	.LASF1051
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1052
	.byte	0x5
	.byte	0x25
	.4byte	.LASF1053
	.byte	0x5
	.byte	0x26
	.4byte	.LASF1054
	.byte	0x5
	.byte	0x27
	.4byte	.LASF1055
	.byte	0x5
	.byte	0x28
	.4byte	.LASF1056
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1057
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF1058
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF1059
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF1060
	.byte	0x5
	.byte	0x30
	.4byte	.LASF1061
	.byte	0x5
	.byte	0x31
	.4byte	.LASF1062
	.byte	0x5
	.byte	0x32
	.4byte	.LASF1063
	.byte	0x5
	.byte	0x33
	.4byte	.LASF1064
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1065
	.byte	0x5
	.byte	0x35
	.4byte	.LASF1066
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1067
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1068
	.byte	0x5
	.byte	0x38
	.4byte	.LASF1069
	.byte	0x5
	.byte	0x39
	.4byte	.LASF1070
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF1071
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF1072
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF1073
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF1074
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1075
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1076
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1077
	.byte	0x5
	.byte	0x41
	.4byte	.LASF1078
	.byte	0x5
	.byte	0x42
	.4byte	.LASF1079
	.byte	0x5
	.byte	0x43
	.4byte	.LASF1080
	.byte	0x5
	.byte	0x44
	.4byte	.LASF1081
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF1082
	.byte	0x5
	.byte	0x50
	.4byte	.LASF1083
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF1084
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF1085
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF1086
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF1087
	.byte	0x5
	.byte	0x64
	.4byte	.LASF1088
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF1089
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF1090
	.byte	0x5
	.byte	0x70
	.4byte	.LASF1091
	.byte	0x5
	.byte	0x71
	.4byte	.LASF1092
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF1093
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF1094
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF1095
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF1096
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF1097
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF1098
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF1099
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF1100
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF1101
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF1102
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF1103
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF1104
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF1105
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF1106
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF1107
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF1108
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF1109
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF1110
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF1111
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF1112
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF1113
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF1114
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF1115
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF1116
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF1117
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF1118
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF1119
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF1120
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF1121
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF1122
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF1123
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF1124
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF1125
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF1126
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF1127
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF1128
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF1129
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF1130
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF1131
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF1132
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._default_fcntl.h.6.6460bee906b14bf62388713178ece422,comdat
.Ldebug_macro39:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x6
	.4byte	.LASF1136
	.byte	0x5
	.byte	0x9
	.4byte	.LASF1137
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1138
	.byte	0x5
	.byte	0xb
	.4byte	.LASF1139
	.byte	0x5
	.byte	0xc
	.4byte	.LASF1140
	.byte	0x5
	.byte	0xd
	.4byte	.LASF1141
	.byte	0x5
	.byte	0xe
	.4byte	.LASF1142
	.byte	0x5
	.byte	0xf
	.4byte	.LASF1143
	.byte	0x5
	.byte	0x10
	.4byte	.LASF1144
	.byte	0x5
	.byte	0x11
	.4byte	.LASF1145
	.byte	0x5
	.byte	0x12
	.4byte	.LASF1146
	.byte	0x5
	.byte	0x13
	.4byte	.LASF1147
	.byte	0x5
	.byte	0x14
	.4byte	.LASF1148
	.byte	0x5
	.byte	0x15
	.4byte	.LASF1149
	.byte	0x5
	.byte	0x16
	.4byte	.LASF1150
	.byte	0x5
	.byte	0x17
	.4byte	.LASF1151
	.byte	0x5
	.byte	0x18
	.4byte	.LASF1152
	.byte	0x5
	.byte	0x19
	.4byte	.LASF1153
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF1154
	.byte	0x5
	.byte	0x22
	.4byte	.LASF1155
	.byte	0x5
	.byte	0x23
	.4byte	.LASF1156
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1157
	.byte	0x5
	.byte	0x25
	.4byte	.LASF1158
	.byte	0x5
	.byte	0x26
	.4byte	.LASF1159
	.byte	0x5
	.byte	0x27
	.4byte	.LASF1160
	.byte	0x5
	.byte	0x28
	.4byte	.LASF1161
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1162
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF1163
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF1164
	.byte	0x5
	.byte	0x55
	.4byte	.LASF1165
	.byte	0x5
	.byte	0x56
	.4byte	.LASF1166
	.byte	0x5
	.byte	0x57
	.4byte	.LASF1167
	.byte	0x5
	.byte	0x58
	.4byte	.LASF1168
	.byte	0x5
	.byte	0x59
	.4byte	.LASF1169
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF1170
	.byte	0x5
	.byte	0x60
	.4byte	.LASF1171
	.byte	0x5
	.byte	0x61
	.4byte	.LASF1172
	.byte	0x5
	.byte	0x62
	.4byte	.LASF1173
	.byte	0x5
	.byte	0x63
	.4byte	.LASF1174
	.byte	0x5
	.byte	0x64
	.4byte	.LASF1175
	.byte	0x5
	.byte	0x65
	.4byte	.LASF1176
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF1177
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF1178
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF1179
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF1180
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF1181
	.byte	0x5
	.byte	0x73
	.4byte	.LASF1182
	.byte	0x5
	.byte	0x77
	.4byte	.LASF1183
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF1184
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF1185
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF1186
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF1187
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF1188
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF1189
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF1190
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF1191
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF1192
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF1193
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF1194
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF1195
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF1196
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF1197
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF1198
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF1199
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF1200
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF1201
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF1202
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF1203
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF1204
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF1205
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF1206
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF1207
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF1208
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF1209
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF1210
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF1211
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libc_fcntl.h.38.55c0c6ad0f01e1a882c47e9c90f77a03,comdat
.Ldebug_macro40:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x26
	.4byte	.LASF1212
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF1213
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libc_ioctl.h.16.af6b5c3019a69e73f7654992f392b9fb,comdat
.Ldebug_macro41:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x10
	.4byte	.LASF1214
	.byte	0x5
	.byte	0x12
	.4byte	.LASF1215
	.byte	0x5
	.byte	0x13
	.4byte	.LASF1216
	.byte	0x5
	.byte	0x14
	.4byte	.LASF1217
	.byte	0x5
	.byte	0x15
	.4byte	.LASF1218
	.byte	0x5
	.byte	0x18
	.4byte	.LASF1219
	.byte	0x5
	.byte	0x19
	.4byte	.LASF1220
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF1221
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF1222
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF1223
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF1224
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF1225
	.byte	0x5
	.byte	0x23
	.4byte	.LASF1226
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1227
	.byte	0x5
	.byte	0x25
	.4byte	.LASF1228
	.byte	0x5
	.byte	0x26
	.4byte	.LASF1229
	.byte	0x5
	.byte	0x27
	.4byte	.LASF1230
	.byte	0x5
	.byte	0x28
	.4byte	.LASF1231
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1232
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF1233
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF1234
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF1235
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF1236
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF1237
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF1238
	.byte	0x5
	.byte	0x30
	.4byte	.LASF1239
	.byte	0x5
	.byte	0x31
	.4byte	.LASF1240
	.byte	0x5
	.byte	0x32
	.4byte	.LASF1241
	.byte	0x5
	.byte	0x33
	.4byte	.LASF1242
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1243
	.byte	0x5
	.byte	0x35
	.4byte	.LASF1244
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1245
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1246
	.byte	0x5
	.byte	0x38
	.4byte	.LASF1247
	.byte	0x5
	.byte	0x39
	.4byte	.LASF1248
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF1249
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF1250
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF1251
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1252
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1253
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1254
	.byte	0x5
	.byte	0x41
	.4byte	.LASF1255
	.byte	0x5
	.byte	0x42
	.4byte	.LASF1256
	.byte	0x5
	.byte	0x43
	.4byte	.LASF1257
	.byte	0x5
	.byte	0x45
	.4byte	.LASF1258
	.byte	0x5
	.byte	0x46
	.4byte	.LASF1259
	.byte	0x5
	.byte	0x47
	.4byte	.LASF1260
	.byte	0x5
	.byte	0x48
	.4byte	.LASF1261
	.byte	0x5
	.byte	0x49
	.4byte	.LASF1262
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF1263
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF1264
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF1265
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF1266
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF1267
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF1268
	.byte	0x5
	.byte	0x50
	.4byte	.LASF1269
	.byte	0x5
	.byte	0x51
	.4byte	.LASF1270
	.byte	0x5
	.byte	0x52
	.4byte	.LASF1271
	.byte	0x5
	.byte	0x53
	.4byte	.LASF1272
	.byte	0x5
	.byte	0x54
	.4byte	.LASF1273
	.byte	0x5
	.byte	0x55
	.4byte	.LASF1274
	.byte	0x5
	.byte	0x56
	.4byte	.LASF1275
	.byte	0x5
	.byte	0x57
	.4byte	.LASF1276
	.byte	0x5
	.byte	0x58
	.4byte	.LASF1277
	.byte	0x5
	.byte	0x59
	.4byte	.LASF1278
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF1279
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF1280
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF1281
	.byte	0x5
	.byte	0x62
	.4byte	.LASF1282
	.byte	0x5
	.byte	0x63
	.4byte	.LASF1283
	.byte	0x5
	.byte	0x64
	.4byte	.LASF1284
	.byte	0x5
	.byte	0x65
	.4byte	.LASF1285
	.byte	0x5
	.byte	0x66
	.4byte	.LASF1286
	.byte	0x5
	.byte	0x67
	.4byte	.LASF1287
	.byte	0x5
	.byte	0x68
	.4byte	.LASF1288
	.byte	0x5
	.byte	0x69
	.4byte	.LASF1289
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF1290
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF1291
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF1292
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF1293
	.byte	0x5
	.byte	0x70
	.4byte	.LASF1294
	.byte	0x5
	.byte	0x71
	.4byte	.LASF1295
	.byte	0x5
	.byte	0x72
	.4byte	.LASF1296
	.byte	0x5
	.byte	0x73
	.4byte	.LASF1297
	.byte	0x5
	.byte	0x74
	.4byte	.LASF1298
	.byte	0x5
	.byte	0x75
	.4byte	.LASF1299
	.byte	0x5
	.byte	0x76
	.4byte	.LASF1300
	.byte	0x5
	.byte	0x77
	.4byte	.LASF1301
	.byte	0x5
	.byte	0x79
	.4byte	.LASF1302
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF1303
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF1304
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF1305
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF1306
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF1307
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF1308
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF1309
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF1310
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF1311
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF1312
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF1313
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF1314
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF1315
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF1316
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF1317
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF1318
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF1319
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF1320
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF1321
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF1322
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF1323
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF1324
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF1325
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF1326
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF1327
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF1328
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF1329
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF1330
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF1331
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF1332
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF1333
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF1334
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF1335
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF1336
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF1337
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF1338
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF1339
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF1340
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF1341
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF1342
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF1343
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF1344
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF1345
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF1346
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF1347
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF1348
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF1349
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF1350
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF1351
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF1352
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF1353
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF1354
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF1355
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF1356
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF1357
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF1358
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF1359
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF1360
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF1361
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF1362
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF1363
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF1364
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF1365
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF1366
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF1367
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF1368
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF1369
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF1370
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF1371
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF1372
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF1373
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF1374
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF1375
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF1376
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF1377
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF1378
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF1379
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF1380
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF1381
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF1382
	.byte	0x5
	.byte	0xda,0x1
	.4byte	.LASF1383
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF1384
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF1385
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF1386
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF1387
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF1388
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF1389
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF1390
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF1391
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF1392
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libc_dirent.h.8.ad85ccb9b304fc456a06537e0e44bc59,comdat
.Ldebug_macro42:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	.LASF1393
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1394
	.byte	0x5
	.byte	0xb
	.4byte	.LASF1395
	.byte	0x5
	.byte	0xc
	.4byte	.LASF1396
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cconfig.h.2.4770f3bd195ce4ad570e79169931e1f8,comdat
.Ldebug_macro43:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x2
	.4byte	.LASF1398
	.byte	0x5
	.byte	0x6
	.4byte	.LASF1399
	.byte	0x5
	.byte	0x7
	.4byte	.LASF1400
	.byte	0x5
	.byte	0x9
	.4byte	.LASF1401
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1402
	.byte	0x5
	.byte	0xb
	.4byte	.LASF1403
	.byte	0x5
	.byte	0xd
	.4byte	.LASF1404
	.byte	0x5
	.byte	0xe
	.4byte	.LASF1405
	.byte	0x5
	.byte	0xf
	.4byte	.LASF1406
	.byte	0x5
	.byte	0x10
	.4byte	.LASF1407
	.byte	0x5
	.byte	0x11
	.4byte	.LASF1408
	.byte	0x5
	.byte	0x12
	.4byte	.LASF1409
	.byte	0x5
	.byte	0x13
	.4byte	.LASF1410
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libc_signal.h.57.09759780a1583c3c080e4882e2c4b9cd,comdat
.Ldebug_macro44:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x39
	.4byte	.LASF1411
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF1412
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF1413
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF1414
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1415
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.signal.h.4.e9530ce8bb24acd4cee473059cec00b5,comdat
.Ldebug_macro45:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	.LASF1416
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF1417
	.byte	0x5
	.byte	0x20
	.4byte	.LASF1418
	.byte	0x5
	.byte	0x23
	.4byte	.LASF1419
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1420
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1421
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1422
	.byte	0x5
	.byte	0x41
	.4byte	.LASF1423
	.byte	0x5
	.byte	0x42
	.4byte	.LASF1424
	.byte	0x5
	.byte	0x75
	.4byte	.LASF1425
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF1426
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF1427
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF1428
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF1429
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF1430
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF1431
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF1432
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF1433
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF1434
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF1435
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF1436
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF1437
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF1438
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF1439
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF1440
	.byte	0x5
	.byte	0x98,0x2
	.4byte	.LASF1441
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF1442
	.byte	0x5
	.byte	0x9a,0x2
	.4byte	.LASF1443
	.byte	0x5
	.byte	0x9b,0x2
	.4byte	.LASF1444
	.byte	0x5
	.byte	0x9c,0x2
	.4byte	.LASF1445
	.byte	0x5
	.byte	0x9d,0x2
	.4byte	.LASF1446
	.byte	0x5
	.byte	0x9e,0x2
	.4byte	.LASF1447
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF1448
	.byte	0x5
	.byte	0xa0,0x2
	.4byte	.LASF1449
	.byte	0x5
	.byte	0xa1,0x2
	.4byte	.LASF1450
	.byte	0x5
	.byte	0xa2,0x2
	.4byte	.LASF1451
	.byte	0x5
	.byte	0xa3,0x2
	.4byte	.LASF1452
	.byte	0x5
	.byte	0xa4,0x2
	.4byte	.LASF1453
	.byte	0x5
	.byte	0xcf,0x2
	.4byte	.LASF1454
	.byte	0x5
	.byte	0xd0,0x2
	.4byte	.LASF1455
	.byte	0x5
	.byte	0xd1,0x2
	.4byte	.LASF1456
	.byte	0x5
	.byte	0xd2,0x2
	.4byte	.LASF1457
	.byte	0x5
	.byte	0xd3,0x2
	.4byte	.LASF1458
	.byte	0x5
	.byte	0xd4,0x2
	.4byte	.LASF1459
	.byte	0x5
	.byte	0xd5,0x2
	.4byte	.LASF1460
	.byte	0x5
	.byte	0xd6,0x2
	.4byte	.LASF1461
	.byte	0x5
	.byte	0xd7,0x2
	.4byte	.LASF1462
	.byte	0x5
	.byte	0xd8,0x2
	.4byte	.LASF1463
	.byte	0x5
	.byte	0xd9,0x2
	.4byte	.LASF1464
	.byte	0x5
	.byte	0xda,0x2
	.4byte	.LASF1465
	.byte	0x5
	.byte	0xdb,0x2
	.4byte	.LASF1466
	.byte	0x5
	.byte	0xdc,0x2
	.4byte	.LASF1467
	.byte	0x5
	.byte	0xdd,0x2
	.4byte	.LASF1468
	.byte	0x5
	.byte	0xde,0x2
	.4byte	.LASF1469
	.byte	0x5
	.byte	0xdf,0x2
	.4byte	.LASF1470
	.byte	0x5
	.byte	0xe0,0x2
	.4byte	.LASF1471
	.byte	0x5
	.byte	0xe1,0x2
	.4byte	.LASF1472
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.signal.h.18.14c8d0c03fc1e06775633fad7399cfc7,comdat
.Ldebug_macro46:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x12
	.4byte	.LASF1474
	.byte	0x5
	.byte	0x13
	.4byte	.LASF1475
	.byte	0x5
	.byte	0x14
	.4byte	.LASF1476
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.rtservice.h.17.23d37154bec68b3e84c125ac41e02a68,comdat
.Ldebug_macro47:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x11
	.4byte	.LASF1478
	.byte	0x5
	.byte	0x21
	.4byte	.LASF1479
	.byte	0x5
	.byte	0x28
	.4byte	.LASF1480
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF1481
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF1482
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF1483
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF1484
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF1485
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF1486
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF1487
	.byte	0x5
	.byte	0x89,0x2
	.4byte	.LASF1488
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF1489
	.byte	0x5
	.byte	0x9a,0x2
	.4byte	.LASF1490
	.byte	0x5
	.byte	0xa7,0x2
	.4byte	.LASF1491
	.byte	0x5
	.byte	0xb2,0x2
	.4byte	.LASF1492
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.finsh_api.h.11.3eb40b0db1648015a52521e804e34edc,comdat
.Ldebug_macro48:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xb
	.4byte	.LASF1495
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF1496
	.byte	0x5
	.byte	0x66
	.4byte	.LASF1497
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF1498
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF1499
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF1500
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF1501
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ringbuffer.h.10.17f6d203503703f87ed47610816804ee,comdat
.Ldebug_macro49:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1503
	.byte	0x5
	.byte	0x59
	.4byte	.LASF1504
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.dataqueue.h.10.c8599253731cdbead4d553f69a0f00bc,comdat
.Ldebug_macro50:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1506
	.byte	0x5
	.byte	0xe
	.4byte	.LASF1507
	.byte	0x5
	.byte	0xf
	.4byte	.LASF1508
	.byte	0x5
	.byte	0x10
	.4byte	.LASF1509
	.byte	0x5
	.byte	0x11
	.4byte	.LASF1510
	.byte	0x5
	.byte	0x14
	.4byte	.LASF1511
	.byte	0x5
	.byte	0x15
	.4byte	.LASF1512
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.waitqueue.h.13.e8c59148bef54c721ecd3f5874fac67d,comdat
.Ldebug_macro51:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xd
	.4byte	.LASF1514
	.byte	0x5
	.byte	0x11
	.4byte	.LASF1515
	.byte	0x5
	.byte	0x12
	.4byte	.LASF1516
	.byte	0x5
	.byte	0x30
	.4byte	.LASF1517
	.byte	0x5
	.byte	0x39
	.4byte	.LASF1518
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.serial.h.15.b617e6f0a4f18dc581cf647dfec57ee1,comdat
.Ldebug_macro52:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xf
	.4byte	.LASF1524
	.byte	0x5
	.byte	0x13
	.4byte	.LASF1525
	.byte	0x5
	.byte	0x14
	.4byte	.LASF1526
	.byte	0x5
	.byte	0x15
	.4byte	.LASF1527
	.byte	0x5
	.byte	0x16
	.4byte	.LASF1528
	.byte	0x5
	.byte	0x17
	.4byte	.LASF1529
	.byte	0x5
	.byte	0x18
	.4byte	.LASF1530
	.byte	0x5
	.byte	0x19
	.4byte	.LASF1531
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF1532
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF1533
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF1534
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF1535
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF1536
	.byte	0x5
	.byte	0x20
	.4byte	.LASF1537
	.byte	0x5
	.byte	0x21
	.4byte	.LASF1538
	.byte	0x5
	.byte	0x22
	.4byte	.LASF1539
	.byte	0x5
	.byte	0x23
	.4byte	.LASF1540
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1541
	.byte	0x5
	.byte	0x26
	.4byte	.LASF1542
	.byte	0x5
	.byte	0x27
	.4byte	.LASF1543
	.byte	0x5
	.byte	0x28
	.4byte	.LASF1544
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1545
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF1546
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF1547
	.byte	0x5
	.byte	0x30
	.4byte	.LASF1548
	.byte	0x5
	.byte	0x33
	.4byte	.LASF1549
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1550
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1551
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1552
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF1553
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1554
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1555
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1556
	.byte	0x5
	.byte	0x41
	.4byte	.LASF1557
	.byte	0x5
	.byte	0x43
	.4byte	.LASF1558
	.byte	0x5
	.byte	0x44
	.4byte	.LASF1559
	.byte	0x5
	.byte	0x46
	.4byte	.LASF1560
	.byte	0x5
	.byte	0x47
	.4byte	.LASF1561
	.byte	0x5
	.byte	0x49
	.4byte	.LASF1562
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF1563
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF1564
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF1565
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF1566
	.byte	0x5
	.byte	0x51
	.4byte	.LASF1567
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103.h.36.0bd306b6c85e7ed17a5ec594274a6d02,comdat
.Ldebug_macro53:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1569
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1570
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1571
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1572
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF1573
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1574
	.byte	0x5
	.byte	0x43
	.4byte	.LASF1575
	.byte	0x5
	.byte	0x48
	.4byte	.LASF1576
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF1577
	.byte	0x5
	.byte	0x52
	.4byte	.LASF1578
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._intsup.h.10.cce27fed8484c08a33f522034c30d2b5,comdat
.Ldebug_macro54:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xa
	.4byte	.LASF1581
	.byte	0x5
	.byte	0x10
	.4byte	.LASF1582
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF1583
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF806
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF1584
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF1585
	.byte	0x2
	.byte	0x2e
	.string	"int"
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF1586
	.byte	0x6
	.byte	0x30
	.4byte	.LASF1587
	.byte	0x5
	.byte	0x31
	.4byte	.LASF1588
	.byte	0x5
	.byte	0x32
	.4byte	.LASF1589
	.byte	0x5
	.byte	0x33
	.4byte	.LASF1590
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1591
	.byte	0x5
	.byte	0x35
	.4byte	.LASF1592
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1593
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1594
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1595
	.byte	0x5
	.byte	0x47
	.4byte	.LASF1596
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF1597
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF1598
	.byte	0x5
	.byte	0x65
	.4byte	.LASF1599
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF1600
	.byte	0x5
	.byte	0x75
	.4byte	.LASF1601
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF1602
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF1603
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF1604
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF1605
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF1606
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF1607
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF1608
	.byte	0x6
	.byte	0xb5,0x1
	.4byte	.LASF1583
	.byte	0x6
	.byte	0xb6,0x1
	.4byte	.LASF806
	.byte	0x6
	.byte	0xb7,0x1
	.4byte	.LASF1584
	.byte	0x6
	.byte	0xb8,0x1
	.4byte	.LASF1585
	.byte	0x2
	.byte	0xb9,0x1
	.string	"int"
	.byte	0x6
	.byte	0xba,0x1
	.4byte	.LASF1587
	.byte	0x6
	.byte	0xbf,0x1
	.4byte	.LASF1586
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.23.d53047a68f4a85177f80b422d52785ed,comdat
.Ldebug_macro55:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x17
	.4byte	.LASF1609
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF1610
	.byte	0x5
	.byte	0x23
	.4byte	.LASF1611
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1612
	.byte	0x5
	.byte	0x35
	.4byte	.LASF1613
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1614
	.byte	0x5
	.byte	0x49
	.4byte	.LASF1615
	.byte	0x5
	.byte	0x53
	.4byte	.LASF1616
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF1617
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF1618
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF1619
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF1620
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF1621
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF1622
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF1623
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF1624
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF1625
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF1626
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF1627
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF1628
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF1629
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF1630
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF1631
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF1632
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF1633
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF1634
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF1635
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF1636
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF1637
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF1638
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF1639
	.byte	0x5
	.byte	0xe8,0x1
	.4byte	.LASF1640
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF1641
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF1642
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF1643
	.byte	0x5
	.byte	0x86,0x2
	.4byte	.LASF1644
	.byte	0x5
	.byte	0x87,0x2
	.4byte	.LASF1645
	.byte	0x5
	.byte	0x88,0x2
	.4byte	.LASF1646
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF1647
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF1648
	.byte	0x5
	.byte	0x98,0x2
	.4byte	.LASF1649
	.byte	0x5
	.byte	0xa6,0x2
	.4byte	.LASF1650
	.byte	0x5
	.byte	0xa7,0x2
	.4byte	.LASF1651
	.byte	0x5
	.byte	0xa8,0x2
	.4byte	.LASF1652
	.byte	0x5
	.byte	0xb6,0x2
	.4byte	.LASF1653
	.byte	0x5
	.byte	0xb7,0x2
	.4byte	.LASF1654
	.byte	0x5
	.byte	0xb8,0x2
	.4byte	.LASF1655
	.byte	0x5
	.byte	0xc6,0x2
	.4byte	.LASF1656
	.byte	0x5
	.byte	0xc7,0x2
	.4byte	.LASF1657
	.byte	0x5
	.byte	0xcf,0x2
	.4byte	.LASF1658
	.byte	0x5
	.byte	0xd7,0x2
	.4byte	.LASF1659
	.byte	0x5
	.byte	0xdd,0x2
	.4byte	.LASF1660
	.byte	0x5
	.byte	0xde,0x2
	.4byte	.LASF1661
	.byte	0x5
	.byte	0xe2,0x2
	.4byte	.LASF1662
	.byte	0x5
	.byte	0xe6,0x2
	.4byte	.LASF1663
	.byte	0x5
	.byte	0xeb,0x2
	.4byte	.LASF1664
	.byte	0x5
	.byte	0xf6,0x2
	.4byte	.LASF1665
	.byte	0x5
	.byte	0x80,0x3
	.4byte	.LASF1666
	.byte	0x5
	.byte	0x85,0x3
	.4byte	.LASF1667
	.byte	0x5
	.byte	0x8c,0x3
	.4byte	.LASF1668
	.byte	0x5
	.byte	0x8d,0x3
	.4byte	.LASF1669
	.byte	0x5
	.byte	0x98,0x3
	.4byte	.LASF1670
	.byte	0x5
	.byte	0x99,0x3
	.4byte	.LASF1671
	.byte	0x5
	.byte	0xa4,0x3
	.4byte	.LASF1672
	.byte	0x5
	.byte	0xa5,0x3
	.4byte	.LASF1673
	.byte	0x5
	.byte	0xb1,0x3
	.4byte	.LASF1674
	.byte	0x5
	.byte	0xb2,0x3
	.4byte	.LASF1675
	.byte	0x5
	.byte	0xc1,0x3
	.4byte	.LASF1676
	.byte	0x5
	.byte	0xc2,0x3
	.4byte	.LASF1677
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103.h.173.18218ddadfaccf869d9b759508ae89e7,comdat
.Ldebug_macro56:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF1678
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF1679
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF1680
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF1681
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF1682
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF1683
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF1684
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF1685
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF1686
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF1687
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF1688
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF1689
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF1690
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF1691
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF1692
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF1693
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF1694
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF1695
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF1696
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF1697
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF1698
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF1699
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF1700
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF1701
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF1702
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF1703
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF1704
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF1705
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF1706
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF1707
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF1708
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF1709
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF1710
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF1711
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF1712
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF1713
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_adc.h.41.71dd14ee2e521ca82784515d9bc24d9c,comdat
.Ldebug_macro57:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1716
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF1717
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF1718
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF1719
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF1720
	.byte	0x5
	.byte	0x30
	.4byte	.LASF1721
	.byte	0x5
	.byte	0x31
	.4byte	.LASF1722
	.byte	0x5
	.byte	0x32
	.4byte	.LASF1723
	.byte	0x5
	.byte	0x33
	.4byte	.LASF1724
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1725
	.byte	0x5
	.byte	0x35
	.4byte	.LASF1726
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1727
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1728
	.byte	0x5
	.byte	0x38
	.4byte	.LASF1729
	.byte	0x5
	.byte	0x39
	.4byte	.LASF1730
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF1731
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF1732
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF1733
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF1734
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1735
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1736
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1737
	.byte	0x5
	.byte	0x41
	.4byte	.LASF1738
	.byte	0x5
	.byte	0x45
	.4byte	.LASF1739
	.byte	0x5
	.byte	0x46
	.4byte	.LASF1740
	.byte	0x5
	.byte	0x47
	.4byte	.LASF1741
	.byte	0x5
	.byte	0x48
	.4byte	.LASF1742
	.byte	0x5
	.byte	0x49
	.4byte	.LASF1743
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF1744
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF1745
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF1746
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF1747
	.byte	0x5
	.byte	0x50
	.4byte	.LASF1748
	.byte	0x5
	.byte	0x51
	.4byte	.LASF1749
	.byte	0x5
	.byte	0x52
	.4byte	.LASF1750
	.byte	0x5
	.byte	0x53
	.4byte	.LASF1751
	.byte	0x5
	.byte	0x54
	.4byte	.LASF1752
	.byte	0x5
	.byte	0x55
	.4byte	.LASF1753
	.byte	0x5
	.byte	0x56
	.4byte	.LASF1754
	.byte	0x5
	.byte	0x57
	.4byte	.LASF1755
	.byte	0x5
	.byte	0x58
	.4byte	.LASF1756
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF1757
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF1758
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF1759
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF1760
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF1761
	.byte	0x5
	.byte	0x60
	.4byte	.LASF1762
	.byte	0x5
	.byte	0x61
	.4byte	.LASF1763
	.byte	0x5
	.byte	0x62
	.4byte	.LASF1764
	.byte	0x5
	.byte	0x63
	.4byte	.LASF1765
	.byte	0x5
	.byte	0x64
	.4byte	.LASF1766
	.byte	0x5
	.byte	0x65
	.4byte	.LASF1767
	.byte	0x5
	.byte	0x66
	.4byte	.LASF1768
	.byte	0x5
	.byte	0x67
	.4byte	.LASF1769
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF1770
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF1771
	.byte	0x5
	.byte	0x70
	.4byte	.LASF1772
	.byte	0x5
	.byte	0x73
	.4byte	.LASF1773
	.byte	0x5
	.byte	0x76
	.4byte	.LASF1774
	.byte	0x5
	.byte	0x77
	.4byte	.LASF1775
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF1776
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF1777
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF1778
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF1779
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF1780
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF1781
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF1782
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF1783
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF1784
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF1785
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF1786
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF1787
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF1788
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF1789
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF1790
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF1791
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF1792
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF1793
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF1794
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF1795
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF1796
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF1797
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF1798
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF1799
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF1800
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF1801
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF1802
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF1803
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF1804
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF1805
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF1806
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF1807
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF1808
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF1809
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF1810
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF1811
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF1812
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF1813
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF1814
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF1815
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF1816
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF1817
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF1818
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF1819
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF1820
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF1821
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF1822
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF1823
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF1824
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF1825
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF1826
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF1827
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF1828
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF1829
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF1830
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF1831
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF1832
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF1833
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF1834
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF1835
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF1836
	.byte	0x5
	.byte	0xda,0x1
	.4byte	.LASF1837
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF1838
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF1839
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF1840
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF1841
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF1842
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF1843
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF1844
	.byte	0x5
	.byte	0xeb,0x1
	.4byte	.LASF1845
	.byte	0x5
	.byte	0xec,0x1
	.4byte	.LASF1846
	.byte	0x5
	.byte	0xed,0x1
	.4byte	.LASF1847
	.byte	0x5
	.byte	0xf0,0x1
	.4byte	.LASF1848
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF1849
	.byte	0x5
	.byte	0xf2,0x1
	.4byte	.LASF1850
	.byte	0x5
	.byte	0xf3,0x1
	.4byte	.LASF1851
	.byte	0x5
	.byte	0xf4,0x1
	.4byte	.LASF1852
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF1853
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF1854
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF1855
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF1856
	.byte	0x5
	.byte	0xf9,0x1
	.4byte	.LASF1857
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF1858
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF1859
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF1860
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF1861
	.byte	0x5
	.byte	0xfe,0x1
	.4byte	.LASF1862
	.byte	0x5
	.byte	0xff,0x1
	.4byte	.LASF1863
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF1864
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF1865
	.byte	0x5
	.byte	0x84,0x2
	.4byte	.LASF1866
	.byte	0x5
	.byte	0x85,0x2
	.4byte	.LASF1867
	.byte	0x5
	.byte	0x86,0x2
	.4byte	.LASF1868
	.byte	0x5
	.byte	0x89,0x2
	.4byte	.LASF1869
	.byte	0x5
	.byte	0x8a,0x2
	.4byte	.LASF1870
	.byte	0x5
	.byte	0x8b,0x2
	.4byte	.LASF1871
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF1872
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF1873
	.byte	0x5
	.byte	0x90,0x2
	.4byte	.LASF1874
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF1875
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF1876
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF1877
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF1878
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF1879
	.byte	0x5
	.byte	0x9a,0x2
	.4byte	.LASF1880
	.byte	0x5
	.byte	0x9b,0x2
	.4byte	.LASF1881
	.byte	0x5
	.byte	0x9c,0x2
	.4byte	.LASF1882
	.byte	0x5
	.byte	0x9d,0x2
	.4byte	.LASF1883
	.byte	0x5
	.byte	0x9e,0x2
	.4byte	.LASF1884
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF1885
	.byte	0x5
	.byte	0xa0,0x2
	.4byte	.LASF1886
	.byte	0x5
	.byte	0xa1,0x2
	.4byte	.LASF1887
	.byte	0x5
	.byte	0xa2,0x2
	.4byte	.LASF1888
	.byte	0x5
	.byte	0xa5,0x2
	.4byte	.LASF1889
	.byte	0x5
	.byte	0xa6,0x2
	.4byte	.LASF1890
	.byte	0x5
	.byte	0xa7,0x2
	.4byte	.LASF1891
	.byte	0x5
	.byte	0xa8,0x2
	.4byte	.LASF1892
	.byte	0x5
	.byte	0xa9,0x2
	.4byte	.LASF1893
	.byte	0x5
	.byte	0xaa,0x2
	.4byte	.LASF1894
	.byte	0x5
	.byte	0xab,0x2
	.4byte	.LASF1895
	.byte	0x5
	.byte	0xac,0x2
	.4byte	.LASF1896
	.byte	0x5
	.byte	0xad,0x2
	.4byte	.LASF1897
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_bkp.h.36.cc4e3242d1da3a8b7a5dc46a92447de9,comdat
.Ldebug_macro58:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1898
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1899
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF1900
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF1901
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF1902
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF1903
	.byte	0x5
	.byte	0x30
	.4byte	.LASF1904
	.byte	0x5
	.byte	0x31
	.4byte	.LASF1905
	.byte	0x5
	.byte	0x32
	.4byte	.LASF1906
	.byte	0x5
	.byte	0x33
	.4byte	.LASF1907
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1908
	.byte	0x5
	.byte	0x35
	.4byte	.LASF1909
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1910
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1911
	.byte	0x5
	.byte	0x38
	.4byte	.LASF1912
	.byte	0x5
	.byte	0x39
	.4byte	.LASF1913
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF1914
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF1915
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF1916
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF1917
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1918
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1919
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1920
	.byte	0x5
	.byte	0x41
	.4byte	.LASF1921
	.byte	0x5
	.byte	0x42
	.4byte	.LASF1922
	.byte	0x5
	.byte	0x43
	.4byte	.LASF1923
	.byte	0x5
	.byte	0x44
	.4byte	.LASF1924
	.byte	0x5
	.byte	0x45
	.4byte	.LASF1925
	.byte	0x5
	.byte	0x46
	.4byte	.LASF1926
	.byte	0x5
	.byte	0x47
	.4byte	.LASF1927
	.byte	0x5
	.byte	0x48
	.4byte	.LASF1928
	.byte	0x5
	.byte	0x49
	.4byte	.LASF1929
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF1930
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF1931
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF1932
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF1933
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF1934
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF1935
	.byte	0x5
	.byte	0x50
	.4byte	.LASF1936
	.byte	0x5
	.byte	0x51
	.4byte	.LASF1937
	.byte	0x5
	.byte	0x52
	.4byte	.LASF1938
	.byte	0x5
	.byte	0x53
	.4byte	.LASF1939
	.byte	0x5
	.byte	0x54
	.4byte	.LASF1940
	.byte	0x5
	.byte	0x55
	.4byte	.LASF1941
	.byte	0x5
	.byte	0x56
	.4byte	.LASF1942
	.byte	0x5
	.byte	0x57
	.4byte	.LASF1943
	.byte	0x5
	.byte	0x58
	.4byte	.LASF1944
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF1945
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF1946
	.byte	0x5
	.byte	0x60
	.4byte	.LASF1947
	.byte	0x5
	.byte	0x61
	.4byte	.LASF1948
	.byte	0x5
	.byte	0x62
	.4byte	.LASF1949
	.byte	0x5
	.byte	0x65
	.4byte	.LASF1950
	.byte	0x5
	.byte	0x66
	.4byte	.LASF1951
	.byte	0x5
	.byte	0x69
	.4byte	.LASF1952
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF1953
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF1954
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF1955
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF1956
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF1957
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF1958
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF1959
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF1960
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF1961
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF1962
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF1963
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF1964
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF1965
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF1966
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_can.h.36.d3e19b194e81bfadac7df7980840195d,comdat
.Ldebug_macro59:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF1967
	.byte	0x5
	.byte	0x29
	.4byte	.LASF1968
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF1969
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF1970
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF1971
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF1972
	.byte	0x5
	.byte	0x30
	.4byte	.LASF1973
	.byte	0x5
	.byte	0x31
	.4byte	.LASF1974
	.byte	0x5
	.byte	0x32
	.4byte	.LASF1975
	.byte	0x5
	.byte	0x33
	.4byte	.LASF1976
	.byte	0x5
	.byte	0x34
	.4byte	.LASF1977
	.byte	0x5
	.byte	0x35
	.4byte	.LASF1978
	.byte	0x5
	.byte	0x36
	.4byte	.LASF1979
	.byte	0x5
	.byte	0x37
	.4byte	.LASF1980
	.byte	0x5
	.byte	0x38
	.4byte	.LASF1981
	.byte	0x5
	.byte	0x39
	.4byte	.LASF1982
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF1983
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF1984
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF1985
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF1986
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF1987
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF1988
	.byte	0x5
	.byte	0x40
	.4byte	.LASF1989
	.byte	0x5
	.byte	0x41
	.4byte	.LASF1990
	.byte	0x5
	.byte	0x42
	.4byte	.LASF1991
	.byte	0x5
	.byte	0x43
	.4byte	.LASF1992
	.byte	0x5
	.byte	0x44
	.4byte	.LASF1993
	.byte	0x5
	.byte	0x45
	.4byte	.LASF1994
	.byte	0x5
	.byte	0x46
	.4byte	.LASF1995
	.byte	0x5
	.byte	0x47
	.4byte	.LASF1996
	.byte	0x5
	.byte	0x48
	.4byte	.LASF1997
	.byte	0x5
	.byte	0x49
	.4byte	.LASF1998
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF1999
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF2000
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF2001
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF2002
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF2003
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF2004
	.byte	0x5
	.byte	0x50
	.4byte	.LASF2005
	.byte	0x5
	.byte	0x51
	.4byte	.LASF2006
	.byte	0x5
	.byte	0x52
	.4byte	.LASF2007
	.byte	0x5
	.byte	0x53
	.4byte	.LASF2008
	.byte	0x5
	.byte	0x54
	.4byte	.LASF2009
	.byte	0x5
	.byte	0x55
	.4byte	.LASF2010
	.byte	0x5
	.byte	0x56
	.4byte	.LASF2011
	.byte	0x5
	.byte	0x57
	.4byte	.LASF2012
	.byte	0x5
	.byte	0x58
	.4byte	.LASF2013
	.byte	0x5
	.byte	0x59
	.4byte	.LASF2014
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF2015
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF2016
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF2017
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF2018
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF2019
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF2020
	.byte	0x5
	.byte	0x60
	.4byte	.LASF2021
	.byte	0x5
	.byte	0x61
	.4byte	.LASF2022
	.byte	0x5
	.byte	0x62
	.4byte	.LASF2023
	.byte	0x5
	.byte	0x63
	.4byte	.LASF2024
	.byte	0x5
	.byte	0x64
	.4byte	.LASF2025
	.byte	0x5
	.byte	0x65
	.4byte	.LASF2026
	.byte	0x5
	.byte	0x66
	.4byte	.LASF2027
	.byte	0x5
	.byte	0x67
	.4byte	.LASF2028
	.byte	0x5
	.byte	0x68
	.4byte	.LASF2029
	.byte	0x5
	.byte	0x69
	.4byte	.LASF2030
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF2031
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF2032
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF2033
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF2034
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF2035
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF2036
	.byte	0x5
	.byte	0x70
	.4byte	.LASF2037
	.byte	0x5
	.byte	0x71
	.4byte	.LASF2038
	.byte	0x5
	.byte	0x72
	.4byte	.LASF2039
	.byte	0x5
	.byte	0x73
	.4byte	.LASF2040
	.byte	0x5
	.byte	0x74
	.4byte	.LASF2041
	.byte	0x5
	.byte	0x75
	.4byte	.LASF2042
	.byte	0x5
	.byte	0x76
	.4byte	.LASF2043
	.byte	0x5
	.byte	0x77
	.4byte	.LASF2044
	.byte	0x5
	.byte	0x78
	.4byte	.LASF2045
	.byte	0x5
	.byte	0x79
	.4byte	.LASF2046
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF2047
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF2048
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF2049
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF2050
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF2051
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF2052
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF2053
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF2054
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF2055
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF2056
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF2057
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF2058
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF2059
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF2060
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF2061
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF2062
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF2063
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF2064
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF2065
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF2066
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF2067
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF2068
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF2069
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF2070
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF2071
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF2072
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF2073
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF2074
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF2075
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF2076
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF2077
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF2078
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF2079
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF2080
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF2081
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF2082
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF2083
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF2084
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF2085
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF2086
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF2087
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF2088
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF2089
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF2090
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF2091
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF2092
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF2093
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF2094
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF2095
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF2096
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF2097
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF2098
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF2099
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF2100
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF2101
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF2102
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF2103
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF2104
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF2105
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF2106
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF2107
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF2108
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF2109
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF2110
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF2111
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF2112
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF2113
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF2114
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF2115
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF2116
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF2117
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF2118
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF2119
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF2120
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF2121
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF2122
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF2123
	.byte	0x5
	.byte	0xda,0x1
	.4byte	.LASF2124
	.byte	0x5
	.byte	0xdb,0x1
	.4byte	.LASF2125
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF2126
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF2127
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF2128
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF2129
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF2130
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF2131
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF2132
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF2133
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF2134
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF2135
	.byte	0x5
	.byte	0xe8,0x1
	.4byte	.LASF2136
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF2137
	.byte	0x5
	.byte	0xec,0x1
	.4byte	.LASF2138
	.byte	0x5
	.byte	0xed,0x1
	.4byte	.LASF2139
	.byte	0x5
	.byte	0xee,0x1
	.4byte	.LASF2140
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF2141
	.byte	0x5
	.byte	0xf0,0x1
	.4byte	.LASF2142
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF2143
	.byte	0x5
	.byte	0xf4,0x1
	.4byte	.LASF2144
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF2145
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF2146
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF2147
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF2148
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF2149
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF2150
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF2151
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF2152
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF2153
	.byte	0x5
	.byte	0x82,0x2
	.4byte	.LASF2154
	.byte	0x5
	.byte	0x83,0x2
	.4byte	.LASF2155
	.byte	0x5
	.byte	0x86,0x2
	.4byte	.LASF2156
	.byte	0x5
	.byte	0x87,0x2
	.4byte	.LASF2157
	.byte	0x5
	.byte	0x88,0x2
	.4byte	.LASF2158
	.byte	0x5
	.byte	0x89,0x2
	.4byte	.LASF2159
	.byte	0x5
	.byte	0x8c,0x2
	.4byte	.LASF2160
	.byte	0x5
	.byte	0x8d,0x2
	.4byte	.LASF2161
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF2162
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF2163
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF2164
	.byte	0x5
	.byte	0x93,0x2
	.4byte	.LASF2165
	.byte	0x5
	.byte	0x94,0x2
	.4byte	.LASF2166
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF2167
	.byte	0x5
	.byte	0x98,0x2
	.4byte	.LASF2168
	.byte	0x5
	.byte	0x99,0x2
	.4byte	.LASF2169
	.byte	0x5
	.byte	0x9a,0x2
	.4byte	.LASF2170
	.byte	0x5
	.byte	0x9d,0x2
	.4byte	.LASF2171
	.byte	0x5
	.byte	0x9e,0x2
	.4byte	.LASF2172
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF2173
	.byte	0x5
	.byte	0xa0,0x2
	.4byte	.LASF2174
	.byte	0x5
	.byte	0xa3,0x2
	.4byte	.LASF2175
	.byte	0x5
	.byte	0xa4,0x2
	.4byte	.LASF2176
	.byte	0x5
	.byte	0xa7,0x2
	.4byte	.LASF2177
	.byte	0x5
	.byte	0xaa,0x2
	.4byte	.LASF2178
	.byte	0x5
	.byte	0xad,0x2
	.4byte	.LASF2179
	.byte	0x5
	.byte	0xb0,0x2
	.4byte	.LASF2180
	.byte	0x5
	.byte	0xb3,0x2
	.4byte	.LASF2181
	.byte	0x5
	.byte	0xb7,0x2
	.4byte	.LASF2182
	.byte	0x5
	.byte	0xb8,0x2
	.4byte	.LASF2183
	.byte	0x5
	.byte	0xb9,0x2
	.4byte	.LASF2184
	.byte	0x5
	.byte	0xbb,0x2
	.4byte	.LASF2185
	.byte	0x5
	.byte	0xbc,0x2
	.4byte	.LASF2186
	.byte	0x5
	.byte	0xbd,0x2
	.4byte	.LASF2187
	.byte	0x5
	.byte	0xbe,0x2
	.4byte	.LASF2188
	.byte	0x5
	.byte	0xc1,0x2
	.4byte	.LASF2189
	.byte	0x5
	.byte	0xc2,0x2
	.4byte	.LASF2190
	.byte	0x5
	.byte	0xc3,0x2
	.4byte	.LASF2191
	.byte	0x5
	.byte	0xc4,0x2
	.4byte	.LASF2192
	.byte	0x5
	.byte	0xc5,0x2
	.4byte	.LASF2193
	.byte	0x5
	.byte	0xbb,0x3
	.4byte	.LASF2194
	.byte	0x5
	.byte	0xbe,0x3
	.4byte	.LASF2195
	.byte	0x5
	.byte	0xc1,0x3
	.4byte	.LASF2196
	.byte	0x5
	.byte	0xc4,0x3
	.4byte	.LASF2197
	.byte	0x5
	.byte	0xc7,0x3
	.4byte	.LASF2198
	.byte	0x5
	.byte	0xca,0x3
	.4byte	.LASF2199
	.byte	0x5
	.byte	0xcd,0x3
	.4byte	.LASF2200
	.byte	0x5
	.byte	0xd0,0x3
	.4byte	.LASF2201
	.byte	0x5
	.byte	0xd3,0x3
	.4byte	.LASF2202
	.byte	0x5
	.byte	0xd6,0x3
	.4byte	.LASF2203
	.byte	0x5
	.byte	0xd9,0x3
	.4byte	.LASF2204
	.byte	0x5
	.byte	0xdc,0x3
	.4byte	.LASF2205
	.byte	0x5
	.byte	0xdf,0x3
	.4byte	.LASF2206
	.byte	0x5
	.byte	0xe2,0x3
	.4byte	.LASF2207
	.byte	0x5
	.byte	0xe5,0x3
	.4byte	.LASF2208
	.byte	0x5
	.byte	0xe8,0x3
	.4byte	.LASF2209
	.byte	0x5
	.byte	0xeb,0x3
	.4byte	.LASF2210
	.byte	0x5
	.byte	0xee,0x3
	.4byte	.LASF2211
	.byte	0x5
	.byte	0xf1,0x3
	.4byte	.LASF2212
	.byte	0x5
	.byte	0xf4,0x3
	.4byte	.LASF2213
	.byte	0x5
	.byte	0xf7,0x3
	.4byte	.LASF2214
	.byte	0x5
	.byte	0xfa,0x3
	.4byte	.LASF2215
	.byte	0x5
	.byte	0xfd,0x3
	.4byte	.LASF2216
	.byte	0x5
	.byte	0x80,0x4
	.4byte	.LASF2217
	.byte	0x5
	.byte	0x83,0x4
	.4byte	.LASF2218
	.byte	0x5
	.byte	0x86,0x4
	.4byte	.LASF2219
	.byte	0x5
	.byte	0x89,0x4
	.4byte	.LASF2220
	.byte	0x5
	.byte	0x8c,0x4
	.4byte	.LASF2221
	.byte	0x5
	.byte	0x8f,0x4
	.4byte	.LASF2222
	.byte	0x5
	.byte	0x92,0x4
	.4byte	.LASF2223
	.byte	0x5
	.byte	0x95,0x4
	.4byte	.LASF2224
	.byte	0x5
	.byte	0x98,0x4
	.4byte	.LASF2225
	.byte	0x5
	.byte	0x9b,0x4
	.4byte	.LASF2226
	.byte	0x5
	.byte	0x9e,0x4
	.4byte	.LASF2227
	.byte	0x5
	.byte	0x9f,0x4
	.4byte	.LASF2228
	.byte	0x5
	.byte	0xa0,0x4
	.4byte	.LASF2229
	.byte	0x5
	.byte	0xa1,0x4
	.4byte	.LASF2230
	.byte	0x5
	.byte	0xa2,0x4
	.4byte	.LASF2231
	.byte	0x5
	.byte	0xa3,0x4
	.4byte	.LASF2232
	.byte	0x5
	.byte	0xa4,0x4
	.4byte	.LASF2233
	.byte	0x5
	.byte	0xa5,0x4
	.4byte	.LASF2234
	.byte	0x5
	.byte	0xa6,0x4
	.4byte	.LASF2235
	.byte	0x5
	.byte	0xa8,0x4
	.4byte	.LASF2236
	.byte	0x5
	.byte	0xab,0x4
	.4byte	.LASF2237
	.byte	0x5
	.byte	0xac,0x4
	.4byte	.LASF2238
	.byte	0x5
	.byte	0xad,0x4
	.4byte	.LASF2239
	.byte	0x5
	.byte	0xae,0x4
	.4byte	.LASF2240
	.byte	0x5
	.byte	0xb1,0x4
	.4byte	.LASF2241
	.byte	0x5
	.byte	0xb2,0x4
	.4byte	.LASF2242
	.byte	0x5
	.byte	0xb3,0x4
	.4byte	.LASF2243
	.byte	0x5
	.byte	0xb4,0x4
	.4byte	.LASF2244
	.byte	0x5
	.byte	0xb7,0x4
	.4byte	.LASF2245
	.byte	0x5
	.byte	0xb8,0x4
	.4byte	.LASF2246
	.byte	0x5
	.byte	0xb9,0x4
	.4byte	.LASF2247
	.byte	0x5
	.byte	0xba,0x4
	.4byte	.LASF2248
	.byte	0x5
	.byte	0xbb,0x4
	.4byte	.LASF2249
	.byte	0x5
	.byte	0xbc,0x4
	.4byte	.LASF2250
	.byte	0x5
	.byte	0xbd,0x4
	.4byte	.LASF2251
	.byte	0x5
	.byte	0xbe,0x4
	.4byte	.LASF2252
	.byte	0x5
	.byte	0xbf,0x4
	.4byte	.LASF2253
	.byte	0x5
	.byte	0xc0,0x4
	.4byte	.LASF2254
	.byte	0x5
	.byte	0xc1,0x4
	.4byte	.LASF2255
	.byte	0x5
	.byte	0xc2,0x4
	.4byte	.LASF2256
	.byte	0x5
	.byte	0xc3,0x4
	.4byte	.LASF2257
	.byte	0x5
	.byte	0xc4,0x4
	.4byte	.LASF2258
	.byte	0x5
	.byte	0xc5,0x4
	.4byte	.LASF2259
	.byte	0x5
	.byte	0xc6,0x4
	.4byte	.LASF2260
	.byte	0x5
	.byte	0xc9,0x4
	.4byte	.LASF2261
	.byte	0x5
	.byte	0xca,0x4
	.4byte	.LASF2262
	.byte	0x5
	.byte	0xcb,0x4
	.4byte	.LASF2263
	.byte	0x5
	.byte	0xcc,0x4
	.4byte	.LASF2264
	.byte	0x5
	.byte	0xcd,0x4
	.4byte	.LASF2265
	.byte	0x5
	.byte	0xce,0x4
	.4byte	.LASF2266
	.byte	0x5
	.byte	0xcf,0x4
	.4byte	.LASF2267
	.byte	0x5
	.byte	0xd0,0x4
	.4byte	.LASF2268
	.byte	0x5
	.byte	0xd3,0x4
	.4byte	.LASF2269
	.byte	0x5
	.byte	0xd4,0x4
	.4byte	.LASF2270
	.byte	0x5
	.byte	0xd5,0x4
	.4byte	.LASF2271
	.byte	0x5
	.byte	0xd6,0x4
	.4byte	.LASF2272
	.byte	0x5
	.byte	0xd9,0x4
	.4byte	.LASF2273
	.byte	0x5
	.byte	0xda,0x4
	.4byte	.LASF2274
	.byte	0x5
	.byte	0xdd,0x4
	.4byte	.LASF2275
	.byte	0x5
	.byte	0xde,0x4
	.4byte	.LASF2276
	.byte	0x5
	.byte	0xe1,0x4
	.4byte	.LASF2277
	.byte	0x5
	.byte	0xe3,0x4
	.4byte	.LASF2278
	.byte	0x5
	.byte	0xe4,0x4
	.4byte	.LASF2279
	.byte	0x5
	.byte	0xe7,0x4
	.4byte	.LASF2280
	.byte	0x5
	.byte	0xe8,0x4
	.4byte	.LASF2281
	.byte	0x5
	.byte	0xe9,0x4
	.4byte	.LASF2282
	.byte	0x5
	.byte	0xec,0x4
	.4byte	.LASF2283
	.byte	0x5
	.byte	0xed,0x4
	.4byte	.LASF2284
	.byte	0x5
	.byte	0xf0,0x4
	.4byte	.LASF2285
	.byte	0x5
	.byte	0xf1,0x4
	.4byte	.LASF2286
	.byte	0x5
	.byte	0xf4,0x4
	.4byte	.LASF2287
	.byte	0x5
	.byte	0xf7,0x4
	.4byte	.LASF2288
	.byte	0x5
	.byte	0xf8,0x4
	.4byte	.LASF2289
	.byte	0x5
	.byte	0xfb,0x4
	.4byte	.LASF2290
	.byte	0x5
	.byte	0xfe,0x4
	.4byte	.LASF2291
	.byte	0x5
	.byte	0xff,0x4
	.4byte	.LASF2292
	.byte	0x5
	.byte	0x80,0x5
	.4byte	.LASF2293
	.byte	0x5
	.byte	0x81,0x5
	.4byte	.LASF2294
	.byte	0x5
	.byte	0x82,0x5
	.4byte	.LASF2295
	.byte	0x5
	.byte	0x83,0x5
	.4byte	.LASF2296
	.byte	0x5
	.byte	0x84,0x5
	.4byte	.LASF2297
	.byte	0x5
	.byte	0x85,0x5
	.4byte	.LASF2298
	.byte	0x5
	.byte	0x86,0x5
	.4byte	.LASF2299
	.byte	0x5
	.byte	0x87,0x5
	.4byte	.LASF2300
	.byte	0x5
	.byte	0x88,0x5
	.4byte	.LASF2301
	.byte	0x5
	.byte	0x89,0x5
	.4byte	.LASF2302
	.byte	0x5
	.byte	0x8a,0x5
	.4byte	.LASF2303
	.byte	0x5
	.byte	0x8b,0x5
	.4byte	.LASF2304
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_crc.h.37.f77f53f1516fc65e49eac544ab82df8c,comdat
.Ldebug_macro60:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x25
	.4byte	.LASF2305
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF2306
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF2307
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF2308
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF2309
	.byte	0x5
	.byte	0x33
	.4byte	.LASF2310
	.byte	0x5
	.byte	0x36
	.4byte	.LASF2311
	.byte	0x5
	.byte	0x39
	.4byte	.LASF2312
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_dac.h.36.8a255e6aed24c7a32ed7832b04a78db0,comdat
.Ldebug_macro61:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF2313
	.byte	0x5
	.byte	0x29
	.4byte	.LASF2314
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF2315
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF2316
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF2317
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF2318
	.byte	0x5
	.byte	0x30
	.4byte	.LASF2319
	.byte	0x5
	.byte	0x31
	.4byte	.LASF2320
	.byte	0x5
	.byte	0x32
	.4byte	.LASF2321
	.byte	0x5
	.byte	0x33
	.4byte	.LASF2322
	.byte	0x5
	.byte	0x34
	.4byte	.LASF2323
	.byte	0x5
	.byte	0x35
	.4byte	.LASF2324
	.byte	0x5
	.byte	0x36
	.4byte	.LASF2325
	.byte	0x5
	.byte	0x37
	.4byte	.LASF2326
	.byte	0x5
	.byte	0x38
	.4byte	.LASF2327
	.byte	0x5
	.byte	0x39
	.4byte	.LASF2328
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF2329
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF2330
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF2331
	.byte	0x5
	.byte	0x40
	.4byte	.LASF2332
	.byte	0x5
	.byte	0x41
	.4byte	.LASF2333
	.byte	0x5
	.byte	0x42
	.4byte	.LASF2334
	.byte	0x5
	.byte	0x43
	.4byte	.LASF2335
	.byte	0x5
	.byte	0x44
	.4byte	.LASF2336
	.byte	0x5
	.byte	0x45
	.4byte	.LASF2337
	.byte	0x5
	.byte	0x46
	.4byte	.LASF2338
	.byte	0x5
	.byte	0x47
	.4byte	.LASF2339
	.byte	0x5
	.byte	0x48
	.4byte	.LASF2340
	.byte	0x5
	.byte	0x49
	.4byte	.LASF2341
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF2342
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF2343
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF2344
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF2345
	.byte	0x5
	.byte	0x52
	.4byte	.LASF2346
	.byte	0x5
	.byte	0x55
	.4byte	.LASF2347
	.byte	0x5
	.byte	0x58
	.4byte	.LASF2348
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF2349
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF2350
	.byte	0x5
	.byte	0x61
	.4byte	.LASF2351
	.byte	0x5
	.byte	0x64
	.4byte	.LASF2352
	.byte	0x5
	.byte	0x65
	.4byte	.LASF2353
	.byte	0x5
	.byte	0x68
	.4byte	.LASF2354
	.byte	0x5
	.byte	0x69
	.4byte	.LASF2355
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF2356
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF2357
	.byte	0x5
	.byte	0x70
	.4byte	.LASF2358
	.byte	0x5
	.byte	0x73
	.4byte	.LASF2359
	.byte	0x5
	.byte	0x77
	.4byte	.LASF2360
	.byte	0x5
	.byte	0x78
	.4byte	.LASF2361
	.byte	0x5
	.byte	0x79
	.4byte	.LASF2362
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF2363
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF2364
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF2365
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF2366
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF2367
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF2368
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF2369
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF2370
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF2371
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF2372
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF2373
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF2374
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF2375
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF2376
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF2377
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF2378
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF2379
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF2380
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF2381
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF2382
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF2383
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF2384
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF2385
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF2386
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF2387
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF2388
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF2389
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF2390
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF2391
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF2392
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF2393
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF2394
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF2395
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF2396
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF2397
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF2398
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF2399
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF2400
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF2401
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF2402
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF2403
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF2404
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF2405
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF2406
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF2407
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF2408
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF2409
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF2410
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF2411
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF2412
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF2413
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_dma.h.36.4c722622491797e2acdb42e84d28c171,comdat
.Ldebug_macro62:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF2414
	.byte	0x5
	.byte	0x29
	.4byte	.LASF2415
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF2416
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF2417
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF2418
	.byte	0x5
	.byte	0x30
	.4byte	.LASF2419
	.byte	0x5
	.byte	0x31
	.4byte	.LASF2420
	.byte	0x5
	.byte	0x32
	.4byte	.LASF2421
	.byte	0x5
	.byte	0x33
	.4byte	.LASF2422
	.byte	0x5
	.byte	0x35
	.4byte	.LASF2423
	.byte	0x5
	.byte	0x36
	.4byte	.LASF2424
	.byte	0x5
	.byte	0x37
	.4byte	.LASF2425
	.byte	0x5
	.byte	0x38
	.4byte	.LASF2426
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF2427
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF2428
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF2429
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF2430
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF2431
	.byte	0x5
	.byte	0x40
	.4byte	.LASF2432
	.byte	0x5
	.byte	0x41
	.4byte	.LASF2433
	.byte	0x5
	.byte	0x42
	.4byte	.LASF2434
	.byte	0x5
	.byte	0x44
	.4byte	.LASF2435
	.byte	0x5
	.byte	0x45
	.4byte	.LASF2436
	.byte	0x5
	.byte	0x46
	.4byte	.LASF2437
	.byte	0x5
	.byte	0x47
	.4byte	.LASF2438
	.byte	0x5
	.byte	0x49
	.4byte	.LASF2439
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF2440
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF2441
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF2442
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF2443
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF2444
	.byte	0x5
	.byte	0x50
	.4byte	.LASF2445
	.byte	0x5
	.byte	0x51
	.4byte	.LASF2446
	.byte	0x5
	.byte	0x55
	.4byte	.LASF2447
	.byte	0x5
	.byte	0x56
	.4byte	.LASF2448
	.byte	0x5
	.byte	0x57
	.4byte	.LASF2449
	.byte	0x5
	.byte	0x58
	.4byte	.LASF2450
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF2451
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF2452
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF2453
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF2454
	.byte	0x5
	.byte	0x61
	.4byte	.LASF2455
	.byte	0x5
	.byte	0x62
	.4byte	.LASF2456
	.byte	0x5
	.byte	0x63
	.4byte	.LASF2457
	.byte	0x5
	.byte	0x64
	.4byte	.LASF2458
	.byte	0x5
	.byte	0x65
	.4byte	.LASF2459
	.byte	0x5
	.byte	0x66
	.4byte	.LASF2460
	.byte	0x5
	.byte	0x67
	.4byte	.LASF2461
	.byte	0x5
	.byte	0x68
	.4byte	.LASF2462
	.byte	0x5
	.byte	0x69
	.4byte	.LASF2463
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF2464
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF2465
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF2466
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF2467
	.byte	0x5
	.byte	0x72
	.4byte	.LASF2468
	.byte	0x5
	.byte	0x75
	.4byte	.LASF2469
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF2470
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF2471
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF2472
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF2473
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF2474
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF2475
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF2476
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF2477
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF2478
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF2479
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF2480
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF2481
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF2482
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF2483
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF2484
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF2485
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF2486
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF2487
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF2488
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF2489
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF2490
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF2491
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF2492
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF2493
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF2494
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF2495
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF2496
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF2497
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF2498
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF2499
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF2500
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF2501
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF2502
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF2503
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF2504
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF2505
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF2506
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF2507
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF2508
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF2509
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF2510
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF2511
	.byte	0x5
	.byte	0xdb,0x1
	.4byte	.LASF2512
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_eclic.h.36.7a79728d2dcd56e30c9004c87a2f4668,comdat
.Ldebug_macro63:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF2513
	.byte	0x5
	.byte	0x29
	.4byte	.LASF2514
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF2515
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF2516
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF2517
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF2518
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF2519
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_exmc.h.36.84c7baa5a246cf483b4540f4cf09cc4f,comdat
.Ldebug_macro64:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF2520
	.byte	0x5
	.byte	0x29
	.4byte	.LASF2521
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF2522
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF2523
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF2524
	.byte	0x5
	.byte	0x34
	.4byte	.LASF2525
	.byte	0x5
	.byte	0x35
	.4byte	.LASF2526
	.byte	0x5
	.byte	0x36
	.4byte	.LASF2527
	.byte	0x5
	.byte	0x37
	.4byte	.LASF2528
	.byte	0x5
	.byte	0x38
	.4byte	.LASF2529
	.byte	0x5
	.byte	0x39
	.4byte	.LASF2530
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF2531
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF2532
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF2533
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF2534
	.byte	0x5
	.byte	0x40
	.4byte	.LASF2535
	.byte	0x5
	.byte	0x41
	.4byte	.LASF2536
	.byte	0x5
	.byte	0x42
	.4byte	.LASF2537
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF2538
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF2539
	.byte	0x5
	.byte	0x61
	.4byte	.LASF2540
	.byte	0x5
	.byte	0x62
	.4byte	.LASF2541
	.byte	0x5
	.byte	0x63
	.4byte	.LASF2542
	.byte	0x5
	.byte	0x66
	.4byte	.LASF2543
	.byte	0x5
	.byte	0x67
	.4byte	.LASF2544
	.byte	0x5
	.byte	0x68
	.4byte	.LASF2545
	.byte	0x5
	.byte	0x69
	.4byte	.LASF2546
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF2547
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF2548
	.byte	0x5
	.byte	0x70
	.4byte	.LASF2549
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_exti.h.36.c0a54c5b80cc2edb44cb448061b4a7db,comdat
.Ldebug_macro65:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF2550
	.byte	0x5
	.byte	0x29
	.4byte	.LASF2551
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF2552
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF2553
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF2554
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF2555
	.byte	0x5
	.byte	0x30
	.4byte	.LASF2556
	.byte	0x5
	.byte	0x31
	.4byte	.LASF2557
	.byte	0x5
	.byte	0x35
	.4byte	.LASF2558
	.byte	0x5
	.byte	0x36
	.4byte	.LASF2559
	.byte	0x5
	.byte	0x37
	.4byte	.LASF2560
	.byte	0x5
	.byte	0x38
	.4byte	.LASF2561
	.byte	0x5
	.byte	0x39
	.4byte	.LASF2562
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF2563
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF2564
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF2565
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF2566
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF2567
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF2568
	.byte	0x5
	.byte	0x40
	.4byte	.LASF2569
	.byte	0x5
	.byte	0x41
	.4byte	.LASF2570
	.byte	0x5
	.byte	0x42
	.4byte	.LASF2571
	.byte	0x5
	.byte	0x43
	.4byte	.LASF2572
	.byte	0x5
	.byte	0x44
	.4byte	.LASF2573
	.byte	0x5
	.byte	0x45
	.4byte	.LASF2574
	.byte	0x5
	.byte	0x46
	.4byte	.LASF2575
	.byte	0x5
	.byte	0x47
	.4byte	.LASF2576
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF2577
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF2578
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF2579
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF2580
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF2581
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF2582
	.byte	0x5
	.byte	0x50
	.4byte	.LASF2583
	.byte	0x5
	.byte	0x51
	.4byte	.LASF2584
	.byte	0x5
	.byte	0x52
	.4byte	.LASF2585
	.byte	0x5
	.byte	0x53
	.4byte	.LASF2586
	.byte	0x5
	.byte	0x54
	.4byte	.LASF2587
	.byte	0x5
	.byte	0x55
	.4byte	.LASF2588
	.byte	0x5
	.byte	0x56
	.4byte	.LASF2589
	.byte	0x5
	.byte	0x57
	.4byte	.LASF2590
	.byte	0x5
	.byte	0x58
	.4byte	.LASF2591
	.byte	0x5
	.byte	0x59
	.4byte	.LASF2592
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF2593
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF2594
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF2595
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF2596
	.byte	0x5
	.byte	0x60
	.4byte	.LASF2597
	.byte	0x5
	.byte	0x61
	.4byte	.LASF2598
	.byte	0x5
	.byte	0x62
	.4byte	.LASF2599
	.byte	0x5
	.byte	0x63
	.4byte	.LASF2600
	.byte	0x5
	.byte	0x64
	.4byte	.LASF2601
	.byte	0x5
	.byte	0x65
	.4byte	.LASF2602
	.byte	0x5
	.byte	0x66
	.4byte	.LASF2603
	.byte	0x5
	.byte	0x67
	.4byte	.LASF2604
	.byte	0x5
	.byte	0x68
	.4byte	.LASF2605
	.byte	0x5
	.byte	0x69
	.4byte	.LASF2606
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF2607
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF2608
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF2609
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF2610
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF2611
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF2612
	.byte	0x5
	.byte	0x70
	.4byte	.LASF2613
	.byte	0x5
	.byte	0x71
	.4byte	.LASF2614
	.byte	0x5
	.byte	0x74
	.4byte	.LASF2615
	.byte	0x5
	.byte	0x75
	.4byte	.LASF2616
	.byte	0x5
	.byte	0x76
	.4byte	.LASF2617
	.byte	0x5
	.byte	0x77
	.4byte	.LASF2618
	.byte	0x5
	.byte	0x78
	.4byte	.LASF2619
	.byte	0x5
	.byte	0x79
	.4byte	.LASF2620
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF2621
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF2622
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF2623
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF2624
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF2625
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF2626
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF2627
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF2628
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF2629
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF2630
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF2631
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF2632
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF2633
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF2634
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF2635
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF2636
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF2637
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF2638
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF2639
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF2640
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF2641
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF2642
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF2643
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF2644
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF2645
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF2646
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF2647
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF2648
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF2649
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF2650
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF2651
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF2652
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF2653
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF2654
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF2655
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF2656
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF2657
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF2658
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF2659
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF2660
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF2661
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF2662
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF2663
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF2664
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF2665
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF2666
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF2667
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF2668
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF2669
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF2670
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF2671
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_fmc.h.36.b1ffadcb2ff102fff20858af6e524cbb,comdat
.Ldebug_macro66:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF2672
	.byte	0x5
	.byte	0x29
	.4byte	.LASF2673
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF2674
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF2675
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF2676
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF2677
	.byte	0x5
	.byte	0x30
	.4byte	.LASF2678
	.byte	0x5
	.byte	0x31
	.4byte	.LASF2679
	.byte	0x5
	.byte	0x32
	.4byte	.LASF2680
	.byte	0x5
	.byte	0x33
	.4byte	.LASF2681
	.byte	0x5
	.byte	0x34
	.4byte	.LASF2682
	.byte	0x5
	.byte	0x35
	.4byte	.LASF2683
	.byte	0x5
	.byte	0x37
	.4byte	.LASF2684
	.byte	0x5
	.byte	0x38
	.4byte	.LASF2685
	.byte	0x5
	.byte	0x39
	.4byte	.LASF2686
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF2687
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF2688
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF2689
	.byte	0x5
	.byte	0x40
	.4byte	.LASF2690
	.byte	0x5
	.byte	0x43
	.4byte	.LASF2691
	.byte	0x5
	.byte	0x46
	.4byte	.LASF2692
	.byte	0x5
	.byte	0x49
	.4byte	.LASF2693
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF2694
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF2695
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF2696
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF2697
	.byte	0x5
	.byte	0x50
	.4byte	.LASF2698
	.byte	0x5
	.byte	0x51
	.4byte	.LASF2699
	.byte	0x5
	.byte	0x52
	.4byte	.LASF2700
	.byte	0x5
	.byte	0x53
	.4byte	.LASF2701
	.byte	0x5
	.byte	0x54
	.4byte	.LASF2702
	.byte	0x5
	.byte	0x55
	.4byte	.LASF2703
	.byte	0x5
	.byte	0x56
	.4byte	.LASF2704
	.byte	0x5
	.byte	0x57
	.4byte	.LASF2705
	.byte	0x5
	.byte	0x58
	.4byte	.LASF2706
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF2707
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF2708
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF2709
	.byte	0x5
	.byte	0x60
	.4byte	.LASF2710
	.byte	0x5
	.byte	0x61
	.4byte	.LASF2711
	.byte	0x5
	.byte	0x64
	.4byte	.LASF2712
	.byte	0x5
	.byte	0x67
	.4byte	.LASF2713
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF2714
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF2715
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF2716
	.byte	0x5
	.byte	0x70
	.4byte	.LASF2717
	.byte	0x5
	.byte	0x71
	.4byte	.LASF2718
	.byte	0x5
	.byte	0x72
	.4byte	.LASF2719
	.byte	0x5
	.byte	0x73
	.4byte	.LASF2720
	.byte	0x5
	.byte	0x74
	.4byte	.LASF2721
	.byte	0x5
	.byte	0x75
	.4byte	.LASF2722
	.byte	0x5
	.byte	0x78
	.4byte	.LASF2723
	.byte	0x5
	.byte	0x79
	.4byte	.LASF2724
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF2725
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF2726
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF2727
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF2728
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF2729
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF2730
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF2731
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF2732
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF2733
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF2734
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF2735
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF2736
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF2737
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF2738
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF2739
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF2740
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF2741
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF2742
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF2743
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF2744
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF2745
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF2746
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF2747
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF2748
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF2749
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF2750
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF2751
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF2752
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF2753
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF2754
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF2755
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF2756
	.byte	0x5
	.byte	0xda,0x1
	.4byte	.LASF2757
	.byte	0x5
	.byte	0xdb,0x1
	.4byte	.LASF2758
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF2759
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF2760
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF2761
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF2762
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF2763
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF2764
	.byte	0x5
	.byte	0xe2,0x1
	.4byte	.LASF2765
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF2766
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF2767
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF2768
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF2769
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF2770
	.byte	0x5
	.byte	0xe8,0x1
	.4byte	.LASF2771
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF2772
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF2773
	.byte	0x5
	.byte	0xeb,0x1
	.4byte	.LASF2774
	.byte	0x5
	.byte	0xec,0x1
	.4byte	.LASF2775
	.byte	0x5
	.byte	0xed,0x1
	.4byte	.LASF2776
	.byte	0x5
	.byte	0xee,0x1
	.4byte	.LASF2777
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF2778
	.byte	0x5
	.byte	0xf0,0x1
	.4byte	.LASF2779
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF2780
	.byte	0x5
	.byte	0xf2,0x1
	.4byte	.LASF2781
	.byte	0x5
	.byte	0xf3,0x1
	.4byte	.LASF2782
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF2783
	.byte	0x5
	.byte	0xf9,0x1
	.4byte	.LASF2784
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF2785
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_gpio.h.36.fe5272fed26f94c2ec2088ce975ff6c7,comdat
.Ldebug_macro67:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF2786
	.byte	0x5
	.byte	0x29
	.4byte	.LASF2787
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF2788
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF2789
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF2790
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF2791
	.byte	0x5
	.byte	0x30
	.4byte	.LASF2792
	.byte	0x5
	.byte	0x35
	.4byte	.LASF2793
	.byte	0x5
	.byte	0x36
	.4byte	.LASF2794
	.byte	0x5
	.byte	0x37
	.4byte	.LASF2795
	.byte	0x5
	.byte	0x38
	.4byte	.LASF2796
	.byte	0x5
	.byte	0x39
	.4byte	.LASF2797
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF2798
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF2799
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF2800
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF2801
	.byte	0x5
	.byte	0x40
	.4byte	.LASF2802
	.byte	0x5
	.byte	0x41
	.4byte	.LASF2803
	.byte	0x5
	.byte	0x42
	.4byte	.LASF2804
	.byte	0x5
	.byte	0x43
	.4byte	.LASF2805
	.byte	0x5
	.byte	0x44
	.4byte	.LASF2806
	.byte	0x5
	.byte	0x48
	.4byte	.LASF2807
	.byte	0x5
	.byte	0x49
	.4byte	.LASF2808
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF2809
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF2810
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF2811
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF2812
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF2813
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF2814
	.byte	0x5
	.byte	0x50
	.4byte	.LASF2815
	.byte	0x5
	.byte	0x51
	.4byte	.LASF2816
	.byte	0x5
	.byte	0x52
	.4byte	.LASF2817
	.byte	0x5
	.byte	0x53
	.4byte	.LASF2818
	.byte	0x5
	.byte	0x54
	.4byte	.LASF2819
	.byte	0x5
	.byte	0x55
	.4byte	.LASF2820
	.byte	0x5
	.byte	0x56
	.4byte	.LASF2821
	.byte	0x5
	.byte	0x57
	.4byte	.LASF2822
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF2823
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF2824
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF2825
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF2826
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF2827
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF2828
	.byte	0x5
	.byte	0x60
	.4byte	.LASF2829
	.byte	0x5
	.byte	0x61
	.4byte	.LASF2830
	.byte	0x5
	.byte	0x62
	.4byte	.LASF2831
	.byte	0x5
	.byte	0x63
	.4byte	.LASF2832
	.byte	0x5
	.byte	0x64
	.4byte	.LASF2833
	.byte	0x5
	.byte	0x65
	.4byte	.LASF2834
	.byte	0x5
	.byte	0x66
	.4byte	.LASF2835
	.byte	0x5
	.byte	0x67
	.4byte	.LASF2836
	.byte	0x5
	.byte	0x68
	.4byte	.LASF2837
	.byte	0x5
	.byte	0x69
	.4byte	.LASF2838
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF2839
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF2840
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF2841
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF2842
	.byte	0x5
	.byte	0x70
	.4byte	.LASF2843
	.byte	0x5
	.byte	0x71
	.4byte	.LASF2844
	.byte	0x5
	.byte	0x72
	.4byte	.LASF2845
	.byte	0x5
	.byte	0x73
	.4byte	.LASF2846
	.byte	0x5
	.byte	0x74
	.4byte	.LASF2847
	.byte	0x5
	.byte	0x75
	.4byte	.LASF2848
	.byte	0x5
	.byte	0x76
	.4byte	.LASF2849
	.byte	0x5
	.byte	0x77
	.4byte	.LASF2850
	.byte	0x5
	.byte	0x78
	.4byte	.LASF2851
	.byte	0x5
	.byte	0x79
	.4byte	.LASF2852
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF2853
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF2854
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF2855
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF2856
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF2857
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF2858
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF2859
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF2860
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF2861
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF2862
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF2863
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF2864
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF2865
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF2866
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF2867
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF2868
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF2869
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF2870
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF2871
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF2872
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF2873
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF2874
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF2875
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF2876
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF2877
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF2878
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF2879
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF2880
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF2881
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF2882
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF2883
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF2884
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF2885
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF2886
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF2887
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF2888
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF2889
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF2890
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF2891
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF2892
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF2893
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF2894
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF2895
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF2896
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF2897
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF2898
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF2899
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF2900
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF2901
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF2902
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF2903
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF2904
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF2905
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF2906
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF2907
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF2908
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF2909
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF2910
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF2911
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF2912
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF2913
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF2914
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF2915
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF2916
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF2917
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF2918
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF2919
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF2920
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF2921
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF2922
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF2923
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF2924
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF2925
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF2926
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF2927
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF2928
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF2929
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF2930
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF2931
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF2932
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF2933
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF2934
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF2935
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF2936
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF2937
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF2938
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF2939
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF2940
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF2941
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF2942
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF2943
	.byte	0x5
	.byte	0xe2,0x1
	.4byte	.LASF2944
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF2945
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF2946
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF2947
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF2948
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF2949
	.byte	0x5
	.byte	0xe8,0x1
	.4byte	.LASF2950
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF2951
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF2952
	.byte	0x5
	.byte	0xeb,0x1
	.4byte	.LASF2953
	.byte	0x5
	.byte	0xee,0x1
	.4byte	.LASF2954
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF2955
	.byte	0x5
	.byte	0xf0,0x1
	.4byte	.LASF2956
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF2957
	.byte	0x5
	.byte	0xf4,0x1
	.4byte	.LASF2958
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF2959
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF2960
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF2961
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF2962
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF2963
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF2964
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF2965
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF2966
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF2967
	.byte	0x5
	.byte	0x82,0x2
	.4byte	.LASF2968
	.byte	0x5
	.byte	0x83,0x2
	.4byte	.LASF2969
	.byte	0x5
	.byte	0x86,0x2
	.4byte	.LASF2970
	.byte	0x5
	.byte	0x8c,0x2
	.4byte	.LASF2971
	.byte	0x5
	.byte	0x8d,0x2
	.4byte	.LASF2972
	.byte	0x5
	.byte	0x90,0x2
	.4byte	.LASF2973
	.byte	0x5
	.byte	0x91,0x2
	.4byte	.LASF2974
	.byte	0x5
	.byte	0x92,0x2
	.4byte	.LASF2975
	.byte	0x5
	.byte	0x93,0x2
	.4byte	.LASF2976
	.byte	0x5
	.byte	0x94,0x2
	.4byte	.LASF2977
	.byte	0x5
	.byte	0x95,0x2
	.4byte	.LASF2978
	.byte	0x5
	.byte	0x96,0x2
	.4byte	.LASF2979
	.byte	0x5
	.byte	0x97,0x2
	.4byte	.LASF2980
	.byte	0x5
	.byte	0x9a,0x2
	.4byte	.LASF2981
	.byte	0x5
	.byte	0x9b,0x2
	.4byte	.LASF2982
	.byte	0x5
	.byte	0x9c,0x2
	.4byte	.LASF2983
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF2984
	.byte	0x5
	.byte	0xa0,0x2
	.4byte	.LASF2985
	.byte	0x5
	.byte	0xa1,0x2
	.4byte	.LASF2986
	.byte	0x5
	.byte	0xa2,0x2
	.4byte	.LASF2987
	.byte	0x5
	.byte	0xa3,0x2
	.4byte	.LASF2988
	.byte	0x5
	.byte	0xa6,0x2
	.4byte	.LASF2989
	.byte	0x5
	.byte	0xa7,0x2
	.4byte	.LASF2990
	.byte	0x5
	.byte	0xa8,0x2
	.4byte	.LASF2991
	.byte	0x5
	.byte	0xa9,0x2
	.4byte	.LASF2992
	.byte	0x5
	.byte	0xaa,0x2
	.4byte	.LASF2993
	.byte	0x5
	.byte	0xad,0x2
	.4byte	.LASF2994
	.byte	0x5
	.byte	0xae,0x2
	.4byte	.LASF2995
	.byte	0x5
	.byte	0xaf,0x2
	.4byte	.LASF2996
	.byte	0x5
	.byte	0xb0,0x2
	.4byte	.LASF2997
	.byte	0x5
	.byte	0xb1,0x2
	.4byte	.LASF2998
	.byte	0x5
	.byte	0xb2,0x2
	.4byte	.LASF2999
	.byte	0x5
	.byte	0xb3,0x2
	.4byte	.LASF3000
	.byte	0x5
	.byte	0xb4,0x2
	.4byte	.LASF3001
	.byte	0x5
	.byte	0xb5,0x2
	.4byte	.LASF3002
	.byte	0x5
	.byte	0xb6,0x2
	.4byte	.LASF3003
	.byte	0x5
	.byte	0xb7,0x2
	.4byte	.LASF3004
	.byte	0x5
	.byte	0xb8,0x2
	.4byte	.LASF3005
	.byte	0x5
	.byte	0xb9,0x2
	.4byte	.LASF3006
	.byte	0x5
	.byte	0xba,0x2
	.4byte	.LASF3007
	.byte	0x5
	.byte	0xbb,0x2
	.4byte	.LASF3008
	.byte	0x5
	.byte	0xbc,0x2
	.4byte	.LASF3009
	.byte	0x5
	.byte	0xbf,0x2
	.4byte	.LASF3010
	.byte	0x5
	.byte	0xc0,0x2
	.4byte	.LASF3011
	.byte	0x5
	.byte	0xc1,0x2
	.4byte	.LASF3012
	.byte	0x5
	.byte	0xc2,0x2
	.4byte	.LASF3013
	.byte	0x5
	.byte	0xc3,0x2
	.4byte	.LASF3014
	.byte	0x5
	.byte	0xc4,0x2
	.4byte	.LASF3015
	.byte	0x5
	.byte	0xc5,0x2
	.4byte	.LASF3016
	.byte	0x5
	.byte	0xc6,0x2
	.4byte	.LASF3017
	.byte	0x5
	.byte	0xc7,0x2
	.4byte	.LASF3018
	.byte	0x5
	.byte	0xc8,0x2
	.4byte	.LASF3019
	.byte	0x5
	.byte	0xc9,0x2
	.4byte	.LASF3020
	.byte	0x5
	.byte	0xca,0x2
	.4byte	.LASF3021
	.byte	0x5
	.byte	0xcb,0x2
	.4byte	.LASF3022
	.byte	0x5
	.byte	0xcc,0x2
	.4byte	.LASF3023
	.byte	0x5
	.byte	0xcd,0x2
	.4byte	.LASF3024
	.byte	0x5
	.byte	0xce,0x2
	.4byte	.LASF3025
	.byte	0x5
	.byte	0xd1,0x2
	.4byte	.LASF3026
	.byte	0x5
	.byte	0xd2,0x2
	.4byte	.LASF3027
	.byte	0x5
	.byte	0xd3,0x2
	.4byte	.LASF3028
	.byte	0x5
	.byte	0xd4,0x2
	.4byte	.LASF3029
	.byte	0x5
	.byte	0xd5,0x2
	.4byte	.LASF3030
	.byte	0x5
	.byte	0xd6,0x2
	.4byte	.LASF3031
	.byte	0x5
	.byte	0xd7,0x2
	.4byte	.LASF3032
	.byte	0x5
	.byte	0xd8,0x2
	.4byte	.LASF3033
	.byte	0x5
	.byte	0xd9,0x2
	.4byte	.LASF3034
	.byte	0x5
	.byte	0xda,0x2
	.4byte	.LASF3035
	.byte	0x5
	.byte	0xdb,0x2
	.4byte	.LASF3036
	.byte	0x5
	.byte	0xdc,0x2
	.4byte	.LASF3037
	.byte	0x5
	.byte	0xdd,0x2
	.4byte	.LASF3038
	.byte	0x5
	.byte	0xde,0x2
	.4byte	.LASF3039
	.byte	0x5
	.byte	0xdf,0x2
	.4byte	.LASF3040
	.byte	0x5
	.byte	0xe0,0x2
	.4byte	.LASF3041
	.byte	0x5
	.byte	0xe1,0x2
	.4byte	.LASF3042
	.byte	0x5
	.byte	0xe4,0x2
	.4byte	.LASF3043
	.byte	0x5
	.byte	0xe5,0x2
	.4byte	.LASF3044
	.byte	0x5
	.byte	0xe6,0x2
	.4byte	.LASF3045
	.byte	0x5
	.byte	0xe7,0x2
	.4byte	.LASF3046
	.byte	0x5
	.byte	0xe8,0x2
	.4byte	.LASF3047
	.byte	0x5
	.byte	0xe9,0x2
	.4byte	.LASF3048
	.byte	0x5
	.byte	0xea,0x2
	.4byte	.LASF3049
	.byte	0x5
	.byte	0xeb,0x2
	.4byte	.LASF3050
	.byte	0x5
	.byte	0xec,0x2
	.4byte	.LASF3051
	.byte	0x5
	.byte	0xed,0x2
	.4byte	.LASF3052
	.byte	0x5
	.byte	0xee,0x2
	.4byte	.LASF3053
	.byte	0x5
	.byte	0xef,0x2
	.4byte	.LASF3054
	.byte	0x5
	.byte	0xf0,0x2
	.4byte	.LASF3055
	.byte	0x5
	.byte	0xf1,0x2
	.4byte	.LASF3056
	.byte	0x5
	.byte	0xf2,0x2
	.4byte	.LASF3057
	.byte	0x5
	.byte	0xf3,0x2
	.4byte	.LASF3058
	.byte	0x5
	.byte	0xf4,0x2
	.4byte	.LASF3059
	.byte	0x5
	.byte	0xf5,0x2
	.4byte	.LASF3060
	.byte	0x5
	.byte	0xf6,0x2
	.4byte	.LASF3061
	.byte	0x5
	.byte	0xf7,0x2
	.4byte	.LASF3062
	.byte	0x5
	.byte	0xf8,0x2
	.4byte	.LASF3063
	.byte	0x5
	.byte	0xf9,0x2
	.4byte	.LASF3064
	.byte	0x5
	.byte	0xfa,0x2
	.4byte	.LASF3065
	.byte	0x5
	.byte	0xfb,0x2
	.4byte	.LASF3066
	.byte	0x5
	.byte	0xfc,0x2
	.4byte	.LASF3067
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_i2c.h.36.63cdb13ec357ffc6f8af45f34e75f097,comdat
.Ldebug_macro68:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3068
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3069
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF3070
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF3071
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF3072
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF3073
	.byte	0x5
	.byte	0x30
	.4byte	.LASF3074
	.byte	0x5
	.byte	0x31
	.4byte	.LASF3075
	.byte	0x5
	.byte	0x32
	.4byte	.LASF3076
	.byte	0x5
	.byte	0x33
	.4byte	.LASF3077
	.byte	0x5
	.byte	0x34
	.4byte	.LASF3078
	.byte	0x5
	.byte	0x35
	.4byte	.LASF3079
	.byte	0x5
	.byte	0x39
	.4byte	.LASF3080
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF3081
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF3082
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF3083
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF3084
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF3085
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF3086
	.byte	0x5
	.byte	0x40
	.4byte	.LASF3087
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3088
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3089
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3090
	.byte	0x5
	.byte	0x44
	.4byte	.LASF3091
	.byte	0x5
	.byte	0x45
	.4byte	.LASF3092
	.byte	0x5
	.byte	0x46
	.4byte	.LASF3093
	.byte	0x5
	.byte	0x49
	.4byte	.LASF3094
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF3095
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF3096
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF3097
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF3098
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF3099
	.byte	0x5
	.byte	0x51
	.4byte	.LASF3100
	.byte	0x5
	.byte	0x52
	.4byte	.LASF3101
	.byte	0x5
	.byte	0x53
	.4byte	.LASF3102
	.byte	0x5
	.byte	0x54
	.4byte	.LASF3103
	.byte	0x5
	.byte	0x57
	.4byte	.LASF3104
	.byte	0x5
	.byte	0x58
	.4byte	.LASF3105
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF3106
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF3107
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF3108
	.byte	0x5
	.byte	0x60
	.4byte	.LASF3109
	.byte	0x5
	.byte	0x61
	.4byte	.LASF3110
	.byte	0x5
	.byte	0x62
	.4byte	.LASF3111
	.byte	0x5
	.byte	0x63
	.4byte	.LASF3112
	.byte	0x5
	.byte	0x64
	.4byte	.LASF3113
	.byte	0x5
	.byte	0x65
	.4byte	.LASF3114
	.byte	0x5
	.byte	0x66
	.4byte	.LASF3115
	.byte	0x5
	.byte	0x67
	.4byte	.LASF3116
	.byte	0x5
	.byte	0x68
	.4byte	.LASF3117
	.byte	0x5
	.byte	0x69
	.4byte	.LASF3118
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF3119
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF3120
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF3121
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF3122
	.byte	0x5
	.byte	0x70
	.4byte	.LASF3123
	.byte	0x5
	.byte	0x71
	.4byte	.LASF3124
	.byte	0x5
	.byte	0x72
	.4byte	.LASF3125
	.byte	0x5
	.byte	0x73
	.4byte	.LASF3126
	.byte	0x5
	.byte	0x74
	.4byte	.LASF3127
	.byte	0x5
	.byte	0x75
	.4byte	.LASF3128
	.byte	0x5
	.byte	0x78
	.4byte	.LASF3129
	.byte	0x5
	.byte	0x79
	.4byte	.LASF3130
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF3131
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF3132
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF3133
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF3134
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF3135
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF3136
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF3137
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF3138
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF3139
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF3140
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF3141
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF3142
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF3143
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF3144
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF3145
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF3146
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF3147
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF3148
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF3149
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF3150
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF3151
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF3152
	.byte	0x5
	.byte	0xda,0x1
	.4byte	.LASF3153
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF3154
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF3155
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF3156
	.byte	0x5
	.byte	0xe2,0x1
	.4byte	.LASF3157
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF3158
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF3159
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF3160
	.byte	0x5
	.byte	0xeb,0x1
	.4byte	.LASF3161
	.byte	0x5
	.byte	0xee,0x1
	.4byte	.LASF3162
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF3163
	.byte	0x5
	.byte	0xf3,0x1
	.4byte	.LASF3164
	.byte	0x5
	.byte	0xf4,0x1
	.4byte	.LASF3165
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF3166
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF3167
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF3168
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF3169
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF3170
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF3171
	.byte	0x5
	.byte	0x84,0x2
	.4byte	.LASF3172
	.byte	0x5
	.byte	0x87,0x2
	.4byte	.LASF3173
	.byte	0x5
	.byte	0x8a,0x2
	.4byte	.LASF3174
	.byte	0x5
	.byte	0x8b,0x2
	.4byte	.LASF3175
	.byte	0x5
	.byte	0x8e,0x2
	.4byte	.LASF3176
	.byte	0x5
	.byte	0x8f,0x2
	.4byte	.LASF3177
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_fwdgt.h.36.fb1917e81c13824a5ba8fed6a60445a8,comdat
.Ldebug_macro69:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3178
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3179
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF3180
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF3181
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF3182
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF3183
	.byte	0x5
	.byte	0x33
	.4byte	.LASF3184
	.byte	0x5
	.byte	0x36
	.4byte	.LASF3185
	.byte	0x5
	.byte	0x39
	.4byte	.LASF3186
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF3187
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF3188
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3189
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3190
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3191
	.byte	0x5
	.byte	0x44
	.4byte	.LASF3192
	.byte	0x5
	.byte	0x45
	.4byte	.LASF3193
	.byte	0x5
	.byte	0x46
	.4byte	.LASF3194
	.byte	0x5
	.byte	0x47
	.4byte	.LASF3195
	.byte	0x5
	.byte	0x48
	.4byte	.LASF3196
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF3197
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF3198
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF3199
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF3200
	.byte	0x5
	.byte	0x51
	.4byte	.LASF3201
	.byte	0x5
	.byte	0x52
	.4byte	.LASF3202
	.byte	0x5
	.byte	0x55
	.4byte	.LASF3203
	.byte	0x5
	.byte	0x56
	.4byte	.LASF3204
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_dbg.h.36.bd6eb3b65626a3b240978eee791de4a4,comdat
.Ldebug_macro70:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3205
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3206
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF3207
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF3208
	.byte	0x5
	.byte	0x31
	.4byte	.LASF3209
	.byte	0x5
	.byte	0x34
	.4byte	.LASF3210
	.byte	0x5
	.byte	0x35
	.4byte	.LASF3211
	.byte	0x5
	.byte	0x36
	.4byte	.LASF3212
	.byte	0x5
	.byte	0x37
	.4byte	.LASF3213
	.byte	0x5
	.byte	0x38
	.4byte	.LASF3214
	.byte	0x5
	.byte	0x39
	.4byte	.LASF3215
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF3216
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF3217
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF3218
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF3219
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF3220
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF3221
	.byte	0x5
	.byte	0x40
	.4byte	.LASF3222
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3223
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3224
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3225
	.byte	0x5
	.byte	0x59
	.4byte	.LASF3226
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF3227
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF3228
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_pmu.h.36.6127a32e1db934088f54ad9e7d33f0a2,comdat
.Ldebug_macro71:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3229
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3230
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF3231
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF3232
	.byte	0x5
	.byte	0x31
	.4byte	.LASF3233
	.byte	0x5
	.byte	0x32
	.4byte	.LASF3234
	.byte	0x5
	.byte	0x33
	.4byte	.LASF3235
	.byte	0x5
	.byte	0x34
	.4byte	.LASF3236
	.byte	0x5
	.byte	0x35
	.4byte	.LASF3237
	.byte	0x5
	.byte	0x36
	.4byte	.LASF3238
	.byte	0x5
	.byte	0x37
	.4byte	.LASF3239
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF3240
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF3241
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF3242
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF3243
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3244
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3245
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3246
	.byte	0x5
	.byte	0x44
	.4byte	.LASF3247
	.byte	0x5
	.byte	0x45
	.4byte	.LASF3248
	.byte	0x5
	.byte	0x46
	.4byte	.LASF3249
	.byte	0x5
	.byte	0x47
	.4byte	.LASF3250
	.byte	0x5
	.byte	0x48
	.4byte	.LASF3251
	.byte	0x5
	.byte	0x49
	.4byte	.LASF3252
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF3253
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF3254
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF3255
	.byte	0x5
	.byte	0x51
	.4byte	.LASF3256
	.byte	0x5
	.byte	0x52
	.4byte	.LASF3257
	.byte	0x5
	.byte	0x55
	.4byte	.LASF3258
	.byte	0x5
	.byte	0x56
	.4byte	.LASF3259
	.byte	0x5
	.byte	0x59
	.4byte	.LASF3260
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF3261
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_rcu.h.36.98afc2b73372c150f30cc80ef3ce37c1,comdat
.Ldebug_macro72:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3262
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3263
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF3264
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF3265
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF3266
	.byte	0x5
	.byte	0x30
	.4byte	.LASF3267
	.byte	0x5
	.byte	0x31
	.4byte	.LASF3268
	.byte	0x5
	.byte	0x32
	.4byte	.LASF3269
	.byte	0x5
	.byte	0x33
	.4byte	.LASF3270
	.byte	0x5
	.byte	0x34
	.4byte	.LASF3271
	.byte	0x5
	.byte	0x35
	.4byte	.LASF3272
	.byte	0x5
	.byte	0x36
	.4byte	.LASF3273
	.byte	0x5
	.byte	0x37
	.4byte	.LASF3274
	.byte	0x5
	.byte	0x38
	.4byte	.LASF3275
	.byte	0x5
	.byte	0x39
	.4byte	.LASF3276
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF3277
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF3278
	.byte	0x5
	.byte	0x40
	.4byte	.LASF3279
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3280
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3281
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3282
	.byte	0x5
	.byte	0x44
	.4byte	.LASF3283
	.byte	0x5
	.byte	0x45
	.4byte	.LASF3284
	.byte	0x5
	.byte	0x46
	.4byte	.LASF3285
	.byte	0x5
	.byte	0x47
	.4byte	.LASF3286
	.byte	0x5
	.byte	0x48
	.4byte	.LASF3287
	.byte	0x5
	.byte	0x49
	.4byte	.LASF3288
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF3289
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF3290
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF3291
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF3292
	.byte	0x5
	.byte	0x50
	.4byte	.LASF3293
	.byte	0x5
	.byte	0x51
	.4byte	.LASF3294
	.byte	0x5
	.byte	0x52
	.4byte	.LASF3295
	.byte	0x5
	.byte	0x53
	.4byte	.LASF3296
	.byte	0x5
	.byte	0x54
	.4byte	.LASF3297
	.byte	0x5
	.byte	0x55
	.4byte	.LASF3298
	.byte	0x5
	.byte	0x56
	.4byte	.LASF3299
	.byte	0x5
	.byte	0x57
	.4byte	.LASF3300
	.byte	0x5
	.byte	0x58
	.4byte	.LASF3301
	.byte	0x5
	.byte	0x59
	.4byte	.LASF3302
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF3303
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF3304
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF3305
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF3306
	.byte	0x5
	.byte	0x60
	.4byte	.LASF3307
	.byte	0x5
	.byte	0x61
	.4byte	.LASF3308
	.byte	0x5
	.byte	0x62
	.4byte	.LASF3309
	.byte	0x5
	.byte	0x63
	.4byte	.LASF3310
	.byte	0x5
	.byte	0x64
	.4byte	.LASF3311
	.byte	0x5
	.byte	0x65
	.4byte	.LASF3312
	.byte	0x5
	.byte	0x66
	.4byte	.LASF3313
	.byte	0x5
	.byte	0x67
	.4byte	.LASF3314
	.byte	0x5
	.byte	0x68
	.4byte	.LASF3315
	.byte	0x5
	.byte	0x69
	.4byte	.LASF3316
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF3317
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF3318
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF3319
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF3320
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF3321
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF3322
	.byte	0x5
	.byte	0x70
	.4byte	.LASF3323
	.byte	0x5
	.byte	0x71
	.4byte	.LASF3324
	.byte	0x5
	.byte	0x72
	.4byte	.LASF3325
	.byte	0x5
	.byte	0x73
	.4byte	.LASF3326
	.byte	0x5
	.byte	0x76
	.4byte	.LASF3327
	.byte	0x5
	.byte	0x77
	.4byte	.LASF3328
	.byte	0x5
	.byte	0x78
	.4byte	.LASF3329
	.byte	0x5
	.byte	0x79
	.4byte	.LASF3330
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF3331
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF3332
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF3333
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF3334
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF3335
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF3336
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF3337
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF3338
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF3339
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF3340
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF3341
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF3342
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF3343
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF3344
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF3345
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF3346
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF3347
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF3348
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF3349
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF3350
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF3351
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF3352
	.byte	0x5
	.byte	0x93,0x1
	.4byte	.LASF3353
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF3354
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF3355
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF3356
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF3357
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF3358
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF3359
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF3360
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF3361
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF3362
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF3363
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF3364
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF3365
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF3366
	.byte	0x5
	.byte	0xa5,0x1
	.4byte	.LASF3367
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF3368
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF3369
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF3370
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF3371
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF3372
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF3373
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF3374
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF3375
	.byte	0x5
	.byte	0xb0,0x1
	.4byte	.LASF3376
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF3377
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF3378
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF3379
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF3380
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF3381
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF3382
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF3383
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF3384
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF3385
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF3386
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF3387
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF3388
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF3389
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF3390
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF3391
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF3392
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF3393
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF3394
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF3395
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF3396
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF3397
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF3398
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF3399
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF3400
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF3401
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF3402
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF3403
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF3404
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF3405
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF3406
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF3407
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF3408
	.byte	0x5
	.byte	0xd5,0x1
	.4byte	.LASF3409
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF3410
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF3411
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF3412
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF3413
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF3414
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF3415
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF3416
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF3417
	.byte	0x5
	.byte	0xe2,0x1
	.4byte	.LASF3418
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF3419
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF3420
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF3421
	.byte	0x5
	.byte	0xeb,0x1
	.4byte	.LASF3422
	.byte	0x5
	.byte	0xef,0x1
	.4byte	.LASF3423
	.byte	0x5
	.byte	0xf0,0x1
	.4byte	.LASF3424
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF3425
	.byte	0x5
	.byte	0xf4,0x1
	.4byte	.LASF3426
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF3427
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF3428
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF3429
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF3430
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF3431
	.byte	0x5
	.byte	0xfe,0x1
	.4byte	.LASF3432
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF3433
	.byte	0x5
	.byte	0x82,0x2
	.4byte	.LASF3434
	.byte	0x5
	.byte	0xa9,0x3
	.4byte	.LASF3435
	.byte	0x5
	.byte	0xaa,0x3
	.4byte	.LASF3436
	.byte	0x5
	.byte	0xab,0x3
	.4byte	.LASF3437
	.byte	0x5
	.byte	0xac,0x3
	.4byte	.LASF3438
	.byte	0x5
	.byte	0xaf,0x3
	.4byte	.LASF3439
	.byte	0x5
	.byte	0xb0,0x3
	.4byte	.LASF3440
	.byte	0x5
	.byte	0xb1,0x3
	.4byte	.LASF3441
	.byte	0x5
	.byte	0xb2,0x3
	.4byte	.LASF3442
	.byte	0x5
	.byte	0xb5,0x3
	.4byte	.LASF3443
	.byte	0x5
	.byte	0xb6,0x3
	.4byte	.LASF3444
	.byte	0x5
	.byte	0xb7,0x3
	.4byte	.LASF3445
	.byte	0x5
	.byte	0xb8,0x3
	.4byte	.LASF3446
	.byte	0x5
	.byte	0xb9,0x3
	.4byte	.LASF3447
	.byte	0x5
	.byte	0xba,0x3
	.4byte	.LASF3448
	.byte	0x5
	.byte	0xbb,0x3
	.4byte	.LASF3449
	.byte	0x5
	.byte	0xbc,0x3
	.4byte	.LASF3450
	.byte	0x5
	.byte	0xbd,0x3
	.4byte	.LASF3451
	.byte	0x5
	.byte	0xbe,0x3
	.4byte	.LASF3452
	.byte	0x5
	.byte	0xc1,0x3
	.4byte	.LASF3453
	.byte	0x5
	.byte	0xc2,0x3
	.4byte	.LASF3454
	.byte	0x5
	.byte	0xc3,0x3
	.4byte	.LASF3455
	.byte	0x5
	.byte	0xc4,0x3
	.4byte	.LASF3456
	.byte	0x5
	.byte	0xc5,0x3
	.4byte	.LASF3457
	.byte	0x5
	.byte	0xc6,0x3
	.4byte	.LASF3458
	.byte	0x5
	.byte	0xc9,0x3
	.4byte	.LASF3459
	.byte	0x5
	.byte	0xca,0x3
	.4byte	.LASF3460
	.byte	0x5
	.byte	0xcb,0x3
	.4byte	.LASF3461
	.byte	0x5
	.byte	0xcc,0x3
	.4byte	.LASF3462
	.byte	0x5
	.byte	0xcd,0x3
	.4byte	.LASF3463
	.byte	0x5
	.byte	0xce,0x3
	.4byte	.LASF3464
	.byte	0x5
	.byte	0xd1,0x3
	.4byte	.LASF3465
	.byte	0x5
	.byte	0xd2,0x3
	.4byte	.LASF3466
	.byte	0x5
	.byte	0xd3,0x3
	.4byte	.LASF3467
	.byte	0x5
	.byte	0xd4,0x3
	.4byte	.LASF3468
	.byte	0x5
	.byte	0xd5,0x3
	.4byte	.LASF3469
	.byte	0x5
	.byte	0xd6,0x3
	.4byte	.LASF3470
	.byte	0x5
	.byte	0xd9,0x3
	.4byte	.LASF3471
	.byte	0x5
	.byte	0xda,0x3
	.4byte	.LASF3472
	.byte	0x5
	.byte	0xdd,0x3
	.4byte	.LASF3473
	.byte	0x5
	.byte	0xdf,0x3
	.4byte	.LASF3474
	.byte	0x5
	.byte	0xe0,0x3
	.4byte	.LASF3475
	.byte	0x5
	.byte	0xe1,0x3
	.4byte	.LASF3476
	.byte	0x5
	.byte	0xe2,0x3
	.4byte	.LASF3477
	.byte	0x5
	.byte	0xe3,0x3
	.4byte	.LASF3478
	.byte	0x5
	.byte	0xe4,0x3
	.4byte	.LASF3479
	.byte	0x5
	.byte	0xe5,0x3
	.4byte	.LASF3480
	.byte	0x5
	.byte	0xe6,0x3
	.4byte	.LASF3481
	.byte	0x5
	.byte	0xe7,0x3
	.4byte	.LASF3482
	.byte	0x5
	.byte	0xe8,0x3
	.4byte	.LASF3483
	.byte	0x5
	.byte	0xe9,0x3
	.4byte	.LASF3484
	.byte	0x5
	.byte	0xea,0x3
	.4byte	.LASF3485
	.byte	0x5
	.byte	0xeb,0x3
	.4byte	.LASF3486
	.byte	0x5
	.byte	0xec,0x3
	.4byte	.LASF3487
	.byte	0x5
	.byte	0xed,0x3
	.4byte	.LASF3488
	.byte	0x5
	.byte	0xee,0x3
	.4byte	.LASF3489
	.byte	0x5
	.byte	0xef,0x3
	.4byte	.LASF3490
	.byte	0x5
	.byte	0xf0,0x3
	.4byte	.LASF3491
	.byte	0x5
	.byte	0xf1,0x3
	.4byte	.LASF3492
	.byte	0x5
	.byte	0xf2,0x3
	.4byte	.LASF3493
	.byte	0x5
	.byte	0xf3,0x3
	.4byte	.LASF3494
	.byte	0x5
	.byte	0xf4,0x3
	.4byte	.LASF3495
	.byte	0x5
	.byte	0xf5,0x3
	.4byte	.LASF3496
	.byte	0x5
	.byte	0xf6,0x3
	.4byte	.LASF3497
	.byte	0x5
	.byte	0xf7,0x3
	.4byte	.LASF3498
	.byte	0x5
	.byte	0xf8,0x3
	.4byte	.LASF3499
	.byte	0x5
	.byte	0xf9,0x3
	.4byte	.LASF3500
	.byte	0x5
	.byte	0xfa,0x3
	.4byte	.LASF3501
	.byte	0x5
	.byte	0xfb,0x3
	.4byte	.LASF3502
	.byte	0x5
	.byte	0xfc,0x3
	.4byte	.LASF3503
	.byte	0x5
	.byte	0xfd,0x3
	.4byte	.LASF3504
	.byte	0x5
	.byte	0xfe,0x3
	.4byte	.LASF3505
	.byte	0x5
	.byte	0x81,0x4
	.4byte	.LASF3506
	.byte	0x5
	.byte	0x82,0x4
	.4byte	.LASF3507
	.byte	0x5
	.byte	0x83,0x4
	.4byte	.LASF3508
	.byte	0x5
	.byte	0x84,0x4
	.4byte	.LASF3509
	.byte	0x5
	.byte	0x85,0x4
	.4byte	.LASF3510
	.byte	0x5
	.byte	0x88,0x4
	.4byte	.LASF3511
	.byte	0x5
	.byte	0x89,0x4
	.4byte	.LASF3512
	.byte	0x5
	.byte	0x8a,0x4
	.4byte	.LASF3513
	.byte	0x5
	.byte	0x8b,0x4
	.4byte	.LASF3514
	.byte	0x5
	.byte	0x8c,0x4
	.4byte	.LASF3515
	.byte	0x5
	.byte	0x8d,0x4
	.4byte	.LASF3516
	.byte	0x5
	.byte	0x8e,0x4
	.4byte	.LASF3517
	.byte	0x5
	.byte	0x8f,0x4
	.4byte	.LASF3518
	.byte	0x5
	.byte	0x90,0x4
	.4byte	.LASF3519
	.byte	0x5
	.byte	0x91,0x4
	.4byte	.LASF3520
	.byte	0x5
	.byte	0x94,0x4
	.4byte	.LASF3521
	.byte	0x5
	.byte	0x95,0x4
	.4byte	.LASF3522
	.byte	0x5
	.byte	0x96,0x4
	.4byte	.LASF3523
	.byte	0x5
	.byte	0x97,0x4
	.4byte	.LASF3524
	.byte	0x5
	.byte	0x98,0x4
	.4byte	.LASF3525
	.byte	0x5
	.byte	0x9b,0x4
	.4byte	.LASF3526
	.byte	0x5
	.byte	0x9c,0x4
	.4byte	.LASF3527
	.byte	0x5
	.byte	0x9d,0x4
	.4byte	.LASF3528
	.byte	0x5
	.byte	0x9e,0x4
	.4byte	.LASF3529
	.byte	0x5
	.byte	0x9f,0x4
	.4byte	.LASF3530
	.byte	0x5
	.byte	0xa0,0x4
	.4byte	.LASF3531
	.byte	0x5
	.byte	0xa1,0x4
	.4byte	.LASF3532
	.byte	0x5
	.byte	0xa2,0x4
	.4byte	.LASF3533
	.byte	0x5
	.byte	0xa3,0x4
	.4byte	.LASF3534
	.byte	0x5
	.byte	0xa4,0x4
	.4byte	.LASF3535
	.byte	0x5
	.byte	0xa5,0x4
	.4byte	.LASF3536
	.byte	0x5
	.byte	0xa6,0x4
	.4byte	.LASF3537
	.byte	0x5
	.byte	0xa7,0x4
	.4byte	.LASF3538
	.byte	0x5
	.byte	0xa8,0x4
	.4byte	.LASF3539
	.byte	0x5
	.byte	0xa9,0x4
	.4byte	.LASF3540
	.byte	0x5
	.byte	0xaa,0x4
	.4byte	.LASF3541
	.byte	0x5
	.byte	0xab,0x4
	.4byte	.LASF3542
	.byte	0x5
	.byte	0xae,0x4
	.4byte	.LASF3543
	.byte	0x5
	.byte	0xaf,0x4
	.4byte	.LASF3544
	.byte	0x5
	.byte	0xb0,0x4
	.4byte	.LASF3545
	.byte	0x5
	.byte	0xb1,0x4
	.4byte	.LASF3546
	.byte	0x5
	.byte	0xb2,0x4
	.4byte	.LASF3547
	.byte	0x5
	.byte	0xb3,0x4
	.4byte	.LASF3548
	.byte	0x5
	.byte	0xb4,0x4
	.4byte	.LASF3549
	.byte	0x5
	.byte	0xb5,0x4
	.4byte	.LASF3550
	.byte	0x5
	.byte	0xb6,0x4
	.4byte	.LASF3551
	.byte	0x5
	.byte	0xb7,0x4
	.4byte	.LASF3552
	.byte	0x5
	.byte	0xb8,0x4
	.4byte	.LASF3553
	.byte	0x5
	.byte	0xb9,0x4
	.4byte	.LASF3554
	.byte	0x5
	.byte	0xba,0x4
	.4byte	.LASF3555
	.byte	0x5
	.byte	0xbb,0x4
	.4byte	.LASF3556
	.byte	0x5
	.byte	0xbc,0x4
	.4byte	.LASF3557
	.byte	0x5
	.byte	0xbd,0x4
	.4byte	.LASF3558
	.byte	0x5
	.byte	0xbe,0x4
	.4byte	.LASF3559
	.byte	0x5
	.byte	0xc1,0x4
	.4byte	.LASF3560
	.byte	0x5
	.byte	0xc2,0x4
	.4byte	.LASF3561
	.byte	0x5
	.byte	0xc3,0x4
	.4byte	.LASF3562
	.byte	0x5
	.byte	0xc4,0x4
	.4byte	.LASF3563
	.byte	0x5
	.byte	0xc5,0x4
	.4byte	.LASF3564
	.byte	0x5
	.byte	0xc6,0x4
	.4byte	.LASF3565
	.byte	0x5
	.byte	0xc7,0x4
	.4byte	.LASF3566
	.byte	0x5
	.byte	0xc8,0x4
	.4byte	.LASF3567
	.byte	0x5
	.byte	0xc9,0x4
	.4byte	.LASF3568
	.byte	0x5
	.byte	0xca,0x4
	.4byte	.LASF3569
	.byte	0x5
	.byte	0xcb,0x4
	.4byte	.LASF3570
	.byte	0x5
	.byte	0xce,0x4
	.4byte	.LASF3571
	.byte	0x5
	.byte	0xcf,0x4
	.4byte	.LASF3572
	.byte	0x5
	.byte	0xd0,0x4
	.4byte	.LASF3573
	.byte	0x5
	.byte	0xd1,0x4
	.4byte	.LASF3574
	.byte	0x5
	.byte	0xd2,0x4
	.4byte	.LASF3575
	.byte	0x5
	.byte	0xd3,0x4
	.4byte	.LASF3576
	.byte	0x5
	.byte	0xd4,0x4
	.4byte	.LASF3577
	.byte	0x5
	.byte	0xd5,0x4
	.4byte	.LASF3578
	.byte	0x5
	.byte	0xd6,0x4
	.4byte	.LASF3579
	.byte	0x5
	.byte	0xd7,0x4
	.4byte	.LASF3580
	.byte	0x5
	.byte	0xd8,0x4
	.4byte	.LASF3581
	.byte	0x5
	.byte	0xdc,0x4
	.4byte	.LASF3582
	.byte	0x5
	.byte	0xdd,0x4
	.4byte	.LASF3583
	.byte	0x5
	.byte	0xe0,0x4
	.4byte	.LASF3584
	.byte	0x5
	.byte	0xe1,0x4
	.4byte	.LASF3585
	.byte	0x5
	.byte	0xe4,0x4
	.4byte	.LASF3586
	.byte	0x5
	.byte	0xe5,0x4
	.4byte	.LASF3587
	.byte	0x5
	.byte	0xe9,0x4
	.4byte	.LASF3588
	.byte	0x5
	.byte	0xea,0x4
	.4byte	.LASF3589
	.byte	0x5
	.byte	0xeb,0x4
	.4byte	.LASF3590
	.byte	0x5
	.byte	0xec,0x4
	.4byte	.LASF3591
	.byte	0x5
	.byte	0xed,0x4
	.4byte	.LASF3592
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_rtc.h.36.d08c1a4af1ae53dab2e723ae7843d171,comdat
.Ldebug_macro73:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3593
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3594
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF3595
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF3596
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF3597
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF3598
	.byte	0x5
	.byte	0x30
	.4byte	.LASF3599
	.byte	0x5
	.byte	0x31
	.4byte	.LASF3600
	.byte	0x5
	.byte	0x32
	.4byte	.LASF3601
	.byte	0x5
	.byte	0x33
	.4byte	.LASF3602
	.byte	0x5
	.byte	0x34
	.4byte	.LASF3603
	.byte	0x5
	.byte	0x35
	.4byte	.LASF3604
	.byte	0x5
	.byte	0x39
	.4byte	.LASF3605
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF3606
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF3607
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF3608
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF3609
	.byte	0x5
	.byte	0x40
	.4byte	.LASF3610
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3611
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3612
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3613
	.byte	0x5
	.byte	0x46
	.4byte	.LASF3614
	.byte	0x5
	.byte	0x49
	.4byte	.LASF3615
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF3616
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF3617
	.byte	0x5
	.byte	0x52
	.4byte	.LASF3618
	.byte	0x5
	.byte	0x55
	.4byte	.LASF3619
	.byte	0x5
	.byte	0x58
	.4byte	.LASF3620
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF3621
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF3622
	.byte	0x5
	.byte	0x60
	.4byte	.LASF3623
	.byte	0x5
	.byte	0x61
	.4byte	.LASF3624
	.byte	0x5
	.byte	0x64
	.4byte	.LASF3625
	.byte	0x5
	.byte	0x65
	.4byte	.LASF3626
	.byte	0x5
	.byte	0x66
	.4byte	.LASF3627
	.byte	0x5
	.byte	0x69
	.4byte	.LASF3628
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF3629
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF3630
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF3631
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF3632
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_spi.h.36.e3e9c81f6d8c877fd273565234b46b1c,comdat
.Ldebug_macro74:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3633
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3634
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF3635
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF3636
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF3637
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF3638
	.byte	0x5
	.byte	0x30
	.4byte	.LASF3639
	.byte	0x5
	.byte	0x31
	.4byte	.LASF3640
	.byte	0x5
	.byte	0x32
	.4byte	.LASF3641
	.byte	0x5
	.byte	0x33
	.4byte	.LASF3642
	.byte	0x5
	.byte	0x34
	.4byte	.LASF3643
	.byte	0x5
	.byte	0x35
	.4byte	.LASF3644
	.byte	0x5
	.byte	0x36
	.4byte	.LASF3645
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF3646
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF3647
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF3648
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF3649
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF3650
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF3651
	.byte	0x5
	.byte	0x40
	.4byte	.LASF3652
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3653
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3654
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3655
	.byte	0x5
	.byte	0x44
	.4byte	.LASF3656
	.byte	0x5
	.byte	0x45
	.4byte	.LASF3657
	.byte	0x5
	.byte	0x46
	.4byte	.LASF3658
	.byte	0x5
	.byte	0x47
	.4byte	.LASF3659
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF3660
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF3661
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF3662
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF3663
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF3664
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF3665
	.byte	0x5
	.byte	0x50
	.4byte	.LASF3666
	.byte	0x5
	.byte	0x51
	.4byte	.LASF3667
	.byte	0x5
	.byte	0x54
	.4byte	.LASF3668
	.byte	0x5
	.byte	0x55
	.4byte	.LASF3669
	.byte	0x5
	.byte	0x56
	.4byte	.LASF3670
	.byte	0x5
	.byte	0x57
	.4byte	.LASF3671
	.byte	0x5
	.byte	0x58
	.4byte	.LASF3672
	.byte	0x5
	.byte	0x59
	.4byte	.LASF3673
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF3674
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF3675
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF3676
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF3677
	.byte	0x5
	.byte	0x62
	.4byte	.LASF3678
	.byte	0x5
	.byte	0x65
	.4byte	.LASF3679
	.byte	0x5
	.byte	0x68
	.4byte	.LASF3680
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF3681
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF3682
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF3683
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF3684
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF3685
	.byte	0x5
	.byte	0x70
	.4byte	.LASF3686
	.byte	0x5
	.byte	0x71
	.4byte	.LASF3687
	.byte	0x5
	.byte	0x72
	.4byte	.LASF3688
	.byte	0x5
	.byte	0x75
	.4byte	.LASF3689
	.byte	0x5
	.byte	0x76
	.4byte	.LASF3690
	.byte	0x5
	.byte	0x77
	.4byte	.LASF3691
	.byte	0x5
	.byte	0x87,0x1
	.4byte	.LASF3692
	.byte	0x5
	.byte	0x88,0x1
	.4byte	.LASF3693
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF3694
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF3695
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF3696
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF3697
	.byte	0x5
	.byte	0x91,0x1
	.4byte	.LASF3698
	.byte	0x5
	.byte	0x92,0x1
	.4byte	.LASF3699
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF3700
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF3701
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF3702
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF3703
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF3704
	.byte	0x5
	.byte	0x9e,0x1
	.4byte	.LASF3705
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF3706
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF3707
	.byte	0x5
	.byte	0xa3,0x1
	.4byte	.LASF3708
	.byte	0x5
	.byte	0xa4,0x1
	.4byte	.LASF3709
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF3710
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF3711
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF3712
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF3713
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF3714
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF3715
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF3716
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF3717
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF3718
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF3719
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF3720
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF3721
	.byte	0x5
	.byte	0xb5,0x1
	.4byte	.LASF3722
	.byte	0x5
	.byte	0xb6,0x1
	.4byte	.LASF3723
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF3724
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF3725
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF3726
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF3727
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF3728
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF3729
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF3730
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF3731
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF3732
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF3733
	.byte	0x5
	.byte	0xc5,0x1
	.4byte	.LASF3734
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF3735
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF3736
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF3737
	.byte	0x5
	.byte	0xcb,0x1
	.4byte	.LASF3738
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF3739
	.byte	0x5
	.byte	0xcf,0x1
	.4byte	.LASF3740
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF3741
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF3742
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF3743
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF3744
	.byte	0x5
	.byte	0xd4,0x1
	.4byte	.LASF3745
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF3746
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF3747
	.byte	0x5
	.byte	0xdb,0x1
	.4byte	.LASF3748
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF3749
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF3750
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF3751
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF3752
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF3753
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF3754
	.byte	0x5
	.byte	0xe8,0x1
	.4byte	.LASF3755
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF3756
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF3757
	.byte	0x5
	.byte	0xeb,0x1
	.4byte	.LASF3758
	.byte	0x5
	.byte	0xec,0x1
	.4byte	.LASF3759
	.byte	0x5
	.byte	0xed,0x1
	.4byte	.LASF3760
	.byte	0x5
	.byte	0xee,0x1
	.4byte	.LASF3761
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF3762
	.byte	0x5
	.byte	0xf2,0x1
	.4byte	.LASF3763
	.byte	0x5
	.byte	0xf3,0x1
	.4byte	.LASF3764
	.byte	0x5
	.byte	0xf4,0x1
	.4byte	.LASF3765
	.byte	0x5
	.byte	0xf5,0x1
	.4byte	.LASF3766
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF3767
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF3768
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF3769
	.byte	0x5
	.byte	0xf9,0x1
	.4byte	.LASF3770
	.byte	0x5
	.byte	0xfa,0x1
	.4byte	.LASF3771
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF3772
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF3773
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF3774
	.byte	0x5
	.byte	0xfe,0x1
	.4byte	.LASF3775
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_timer.h.36.4b3351fbcc3f2a78a52ca8ef9221a196,comdat
.Ldebug_macro75:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF3776
	.byte	0x5
	.byte	0x29
	.4byte	.LASF3777
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF3778
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF3779
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF3780
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF3781
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF3782
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF3783
	.byte	0x5
	.byte	0x32
	.4byte	.LASF3784
	.byte	0x5
	.byte	0x33
	.4byte	.LASF3785
	.byte	0x5
	.byte	0x34
	.4byte	.LASF3786
	.byte	0x5
	.byte	0x35
	.4byte	.LASF3787
	.byte	0x5
	.byte	0x36
	.4byte	.LASF3788
	.byte	0x5
	.byte	0x37
	.4byte	.LASF3789
	.byte	0x5
	.byte	0x38
	.4byte	.LASF3790
	.byte	0x5
	.byte	0x39
	.4byte	.LASF3791
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF3792
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF3793
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF3794
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF3795
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF3796
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF3797
	.byte	0x5
	.byte	0x40
	.4byte	.LASF3798
	.byte	0x5
	.byte	0x41
	.4byte	.LASF3799
	.byte	0x5
	.byte	0x42
	.4byte	.LASF3800
	.byte	0x5
	.byte	0x43
	.4byte	.LASF3801
	.byte	0x5
	.byte	0x44
	.4byte	.LASF3802
	.byte	0x5
	.byte	0x45
	.4byte	.LASF3803
	.byte	0x5
	.byte	0x49
	.4byte	.LASF3804
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF3805
	.byte	0x5
	.byte	0x4b
	.4byte	.LASF3806
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF3807
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF3808
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF3809
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF3810
	.byte	0x5
	.byte	0x50
	.4byte	.LASF3811
	.byte	0x5
	.byte	0x53
	.4byte	.LASF3812
	.byte	0x5
	.byte	0x54
	.4byte	.LASF3813
	.byte	0x5
	.byte	0x55
	.4byte	.LASF3814
	.byte	0x5
	.byte	0x56
	.4byte	.LASF3815
	.byte	0x5
	.byte	0x57
	.4byte	.LASF3816
	.byte	0x5
	.byte	0x58
	.4byte	.LASF3817
	.byte	0x5
	.byte	0x59
	.4byte	.LASF3818
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF3819
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF3820
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF3821
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF3822
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF3823
	.byte	0x5
	.byte	0x61
	.4byte	.LASF3824
	.byte	0x5
	.byte	0x62
	.4byte	.LASF3825
	.byte	0x5
	.byte	0x63
	.4byte	.LASF3826
	.byte	0x5
	.byte	0x64
	.4byte	.LASF3827
	.byte	0x5
	.byte	0x65
	.4byte	.LASF3828
	.byte	0x5
	.byte	0x66
	.4byte	.LASF3829
	.byte	0x5
	.byte	0x67
	.4byte	.LASF3830
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF3831
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF3832
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF3833
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF3834
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF3835
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF3836
	.byte	0x5
	.byte	0x70
	.4byte	.LASF3837
	.byte	0x5
	.byte	0x71
	.4byte	.LASF3838
	.byte	0x5
	.byte	0x72
	.4byte	.LASF3839
	.byte	0x5
	.byte	0x73
	.4byte	.LASF3840
	.byte	0x5
	.byte	0x74
	.4byte	.LASF3841
	.byte	0x5
	.byte	0x75
	.4byte	.LASF3842
	.byte	0x5
	.byte	0x76
	.4byte	.LASF3843
	.byte	0x5
	.byte	0x77
	.4byte	.LASF3844
	.byte	0x5
	.byte	0x78
	.4byte	.LASF3845
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF3846
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF3847
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF3848
	.byte	0x5
	.byte	0x7e
	.4byte	.LASF3849
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF3850
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF3851
	.byte	0x5
	.byte	0x81,0x1
	.4byte	.LASF3852
	.byte	0x5
	.byte	0x82,0x1
	.4byte	.LASF3853
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF3854
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF3855
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF3856
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF3857
	.byte	0x5
	.byte	0x89,0x1
	.4byte	.LASF3858
	.byte	0x5
	.byte	0x8a,0x1
	.4byte	.LASF3859
	.byte	0x5
	.byte	0x8b,0x1
	.4byte	.LASF3860
	.byte	0x5
	.byte	0x8c,0x1
	.4byte	.LASF3861
	.byte	0x5
	.byte	0x8d,0x1
	.4byte	.LASF3862
	.byte	0x5
	.byte	0x8e,0x1
	.4byte	.LASF3863
	.byte	0x5
	.byte	0x8f,0x1
	.4byte	.LASF3864
	.byte	0x5
	.byte	0x90,0x1
	.4byte	.LASF3865
	.byte	0x5
	.byte	0x94,0x1
	.4byte	.LASF3866
	.byte	0x5
	.byte	0x95,0x1
	.4byte	.LASF3867
	.byte	0x5
	.byte	0x96,0x1
	.4byte	.LASF3868
	.byte	0x5
	.byte	0x97,0x1
	.4byte	.LASF3869
	.byte	0x5
	.byte	0x98,0x1
	.4byte	.LASF3870
	.byte	0x5
	.byte	0x99,0x1
	.4byte	.LASF3871
	.byte	0x5
	.byte	0x9a,0x1
	.4byte	.LASF3872
	.byte	0x5
	.byte	0x9b,0x1
	.4byte	.LASF3873
	.byte	0x5
	.byte	0x9c,0x1
	.4byte	.LASF3874
	.byte	0x5
	.byte	0x9d,0x1
	.4byte	.LASF3875
	.byte	0x5
	.byte	0x9f,0x1
	.4byte	.LASF3876
	.byte	0x5
	.byte	0xa0,0x1
	.4byte	.LASF3877
	.byte	0x5
	.byte	0xa1,0x1
	.4byte	.LASF3878
	.byte	0x5
	.byte	0xa2,0x1
	.4byte	.LASF3879
	.byte	0x5
	.byte	0xa6,0x1
	.4byte	.LASF3880
	.byte	0x5
	.byte	0xa7,0x1
	.4byte	.LASF3881
	.byte	0x5
	.byte	0xa8,0x1
	.4byte	.LASF3882
	.byte	0x5
	.byte	0xa9,0x1
	.4byte	.LASF3883
	.byte	0x5
	.byte	0xaa,0x1
	.4byte	.LASF3884
	.byte	0x5
	.byte	0xab,0x1
	.4byte	.LASF3885
	.byte	0x5
	.byte	0xac,0x1
	.4byte	.LASF3886
	.byte	0x5
	.byte	0xad,0x1
	.4byte	.LASF3887
	.byte	0x5
	.byte	0xae,0x1
	.4byte	.LASF3888
	.byte	0x5
	.byte	0xaf,0x1
	.4byte	.LASF3889
	.byte	0x5
	.byte	0xb1,0x1
	.4byte	.LASF3890
	.byte	0x5
	.byte	0xb2,0x1
	.4byte	.LASF3891
	.byte	0x5
	.byte	0xb3,0x1
	.4byte	.LASF3892
	.byte	0x5
	.byte	0xb4,0x1
	.4byte	.LASF3893
	.byte	0x5
	.byte	0xb7,0x1
	.4byte	.LASF3894
	.byte	0x5
	.byte	0xb8,0x1
	.4byte	.LASF3895
	.byte	0x5
	.byte	0xb9,0x1
	.4byte	.LASF3896
	.byte	0x5
	.byte	0xba,0x1
	.4byte	.LASF3897
	.byte	0x5
	.byte	0xbb,0x1
	.4byte	.LASF3898
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF3899
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF3900
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF3901
	.byte	0x5
	.byte	0xbf,0x1
	.4byte	.LASF3902
	.byte	0x5
	.byte	0xc0,0x1
	.4byte	.LASF3903
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF3904
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF3905
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF3906
	.byte	0x5
	.byte	0xc4,0x1
	.4byte	.LASF3907
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF3908
	.byte	0x5
	.byte	0xca,0x1
	.4byte	.LASF3909
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF3910
	.byte	0x5
	.byte	0xd0,0x1
	.4byte	.LASF3911
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF3912
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF3913
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF3914
	.byte	0x5
	.byte	0xdc,0x1
	.4byte	.LASF3915
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF3916
	.byte	0x5
	.byte	0xe0,0x1
	.4byte	.LASF3917
	.byte	0x5
	.byte	0xe1,0x1
	.4byte	.LASF3918
	.byte	0x5
	.byte	0xe2,0x1
	.4byte	.LASF3919
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF3920
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF3921
	.byte	0x5
	.byte	0xe5,0x1
	.4byte	.LASF3922
	.byte	0x5
	.byte	0xe6,0x1
	.4byte	.LASF3923
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF3924
	.byte	0x5
	.byte	0xea,0x1
	.4byte	.LASF3925
	.byte	0x5
	.byte	0xed,0x1
	.4byte	.LASF3926
	.byte	0x5
	.byte	0x9c,0x2
	.4byte	.LASF3927
	.byte	0x5
	.byte	0x9d,0x2
	.4byte	.LASF3928
	.byte	0x5
	.byte	0x9e,0x2
	.4byte	.LASF3929
	.byte	0x5
	.byte	0x9f,0x2
	.4byte	.LASF3930
	.byte	0x5
	.byte	0xa0,0x2
	.4byte	.LASF3931
	.byte	0x5
	.byte	0xa1,0x2
	.4byte	.LASF3932
	.byte	0x5
	.byte	0xa2,0x2
	.4byte	.LASF3933
	.byte	0x5
	.byte	0xa3,0x2
	.4byte	.LASF3934
	.byte	0x5
	.byte	0xa6,0x2
	.4byte	.LASF3935
	.byte	0x5
	.byte	0xa7,0x2
	.4byte	.LASF3936
	.byte	0x5
	.byte	0xa8,0x2
	.4byte	.LASF3937
	.byte	0x5
	.byte	0xa9,0x2
	.4byte	.LASF3938
	.byte	0x5
	.byte	0xaa,0x2
	.4byte	.LASF3939
	.byte	0x5
	.byte	0xab,0x2
	.4byte	.LASF3940
	.byte	0x5
	.byte	0xac,0x2
	.4byte	.LASF3941
	.byte	0x5
	.byte	0xad,0x2
	.4byte	.LASF3942
	.byte	0x5
	.byte	0xb0,0x2
	.4byte	.LASF3943
	.byte	0x5
	.byte	0xb1,0x2
	.4byte	.LASF3944
	.byte	0x5
	.byte	0xb2,0x2
	.4byte	.LASF3945
	.byte	0x5
	.byte	0xb3,0x2
	.4byte	.LASF3946
	.byte	0x5
	.byte	0xb4,0x2
	.4byte	.LASF3947
	.byte	0x5
	.byte	0xb5,0x2
	.4byte	.LASF3948
	.byte	0x5
	.byte	0xb6,0x2
	.4byte	.LASF3949
	.byte	0x5
	.byte	0xb7,0x2
	.4byte	.LASF3950
	.byte	0x5
	.byte	0xb8,0x2
	.4byte	.LASF3951
	.byte	0x5
	.byte	0xb9,0x2
	.4byte	.LASF3952
	.byte	0x5
	.byte	0xba,0x2
	.4byte	.LASF3953
	.byte	0x5
	.byte	0xbb,0x2
	.4byte	.LASF3954
	.byte	0x5
	.byte	0xbe,0x2
	.4byte	.LASF3955
	.byte	0x5
	.byte	0xbf,0x2
	.4byte	.LASF3956
	.byte	0x5
	.byte	0xc0,0x2
	.4byte	.LASF3957
	.byte	0x5
	.byte	0xc1,0x2
	.4byte	.LASF3958
	.byte	0x5
	.byte	0xc2,0x2
	.4byte	.LASF3959
	.byte	0x5
	.byte	0xc3,0x2
	.4byte	.LASF3960
	.byte	0x5
	.byte	0xc4,0x2
	.4byte	.LASF3961
	.byte	0x5
	.byte	0xc7,0x2
	.4byte	.LASF3962
	.byte	0x5
	.byte	0xc8,0x2
	.4byte	.LASF3963
	.byte	0x5
	.byte	0xcb,0x2
	.4byte	.LASF3964
	.byte	0x5
	.byte	0xcc,0x2
	.4byte	.LASF3965
	.byte	0x5
	.byte	0xcd,0x2
	.4byte	.LASF3966
	.byte	0x5
	.byte	0xce,0x2
	.4byte	.LASF3967
	.byte	0x5
	.byte	0xcf,0x2
	.4byte	.LASF3968
	.byte	0x5
	.byte	0xd0,0x2
	.4byte	.LASF3969
	.byte	0x5
	.byte	0xd1,0x2
	.4byte	.LASF3970
	.byte	0x5
	.byte	0xd2,0x2
	.4byte	.LASF3971
	.byte	0x5
	.byte	0xd3,0x2
	.4byte	.LASF3972
	.byte	0x5
	.byte	0xd4,0x2
	.4byte	.LASF3973
	.byte	0x5
	.byte	0xd5,0x2
	.4byte	.LASF3974
	.byte	0x5
	.byte	0xd6,0x2
	.4byte	.LASF3975
	.byte	0x5
	.byte	0xd7,0x2
	.4byte	.LASF3976
	.byte	0x5
	.byte	0xd8,0x2
	.4byte	.LASF3977
	.byte	0x5
	.byte	0xd9,0x2
	.4byte	.LASF3978
	.byte	0x5
	.byte	0xda,0x2
	.4byte	.LASF3979
	.byte	0x5
	.byte	0xdb,0x2
	.4byte	.LASF3980
	.byte	0x5
	.byte	0xdc,0x2
	.4byte	.LASF3981
	.byte	0x5
	.byte	0xdd,0x2
	.4byte	.LASF3982
	.byte	0x5
	.byte	0xde,0x2
	.4byte	.LASF3983
	.byte	0x5
	.byte	0xe1,0x2
	.4byte	.LASF3984
	.byte	0x5
	.byte	0xe2,0x2
	.4byte	.LASF3985
	.byte	0x5
	.byte	0xe3,0x2
	.4byte	.LASF3986
	.byte	0x5
	.byte	0xe4,0x2
	.4byte	.LASF3987
	.byte	0x5
	.byte	0xe5,0x2
	.4byte	.LASF3988
	.byte	0x5
	.byte	0xe6,0x2
	.4byte	.LASF3989
	.byte	0x5
	.byte	0xe7,0x2
	.4byte	.LASF3990
	.byte	0x5
	.byte	0xe8,0x2
	.4byte	.LASF3991
	.byte	0x5
	.byte	0xe9,0x2
	.4byte	.LASF3992
	.byte	0x5
	.byte	0xea,0x2
	.4byte	.LASF3993
	.byte	0x5
	.byte	0xeb,0x2
	.4byte	.LASF3994
	.byte	0x5
	.byte	0xec,0x2
	.4byte	.LASF3995
	.byte	0x5
	.byte	0xed,0x2
	.4byte	.LASF3996
	.byte	0x5
	.byte	0xee,0x2
	.4byte	.LASF3997
	.byte	0x5
	.byte	0xef,0x2
	.4byte	.LASF3998
	.byte	0x5
	.byte	0xf0,0x2
	.4byte	.LASF3999
	.byte	0x5
	.byte	0xf1,0x2
	.4byte	.LASF4000
	.byte	0x5
	.byte	0xf2,0x2
	.4byte	.LASF4001
	.byte	0x5
	.byte	0xf3,0x2
	.4byte	.LASF4002
	.byte	0x5
	.byte	0xf6,0x2
	.4byte	.LASF4003
	.byte	0x5
	.byte	0xf7,0x2
	.4byte	.LASF4004
	.byte	0x5
	.byte	0xf8,0x2
	.4byte	.LASF4005
	.byte	0x5
	.byte	0xf9,0x2
	.4byte	.LASF4006
	.byte	0x5
	.byte	0xfa,0x2
	.4byte	.LASF4007
	.byte	0x5
	.byte	0xfb,0x2
	.4byte	.LASF4008
	.byte	0x5
	.byte	0xfc,0x2
	.4byte	.LASF4009
	.byte	0x5
	.byte	0xfd,0x2
	.4byte	.LASF4010
	.byte	0x5
	.byte	0x80,0x3
	.4byte	.LASF4011
	.byte	0x5
	.byte	0x81,0x3
	.4byte	.LASF4012
	.byte	0x5
	.byte	0x82,0x3
	.4byte	.LASF4013
	.byte	0x5
	.byte	0x83,0x3
	.4byte	.LASF4014
	.byte	0x5
	.byte	0x84,0x3
	.4byte	.LASF4015
	.byte	0x5
	.byte	0x87,0x3
	.4byte	.LASF4016
	.byte	0x5
	.byte	0x88,0x3
	.4byte	.LASF4017
	.byte	0x5
	.byte	0x8b,0x3
	.4byte	.LASF4018
	.byte	0x5
	.byte	0x8c,0x3
	.4byte	.LASF4019
	.byte	0x5
	.byte	0x8f,0x3
	.4byte	.LASF4020
	.byte	0x5
	.byte	0x90,0x3
	.4byte	.LASF4021
	.byte	0x5
	.byte	0x91,0x3
	.4byte	.LASF4022
	.byte	0x5
	.byte	0x92,0x3
	.4byte	.LASF4023
	.byte	0x5
	.byte	0x95,0x3
	.4byte	.LASF4024
	.byte	0x5
	.byte	0x96,0x3
	.4byte	.LASF4025
	.byte	0x5
	.byte	0x99,0x3
	.4byte	.LASF4026
	.byte	0x5
	.byte	0x9a,0x3
	.4byte	.LASF4027
	.byte	0x5
	.byte	0x9d,0x3
	.4byte	.LASF4028
	.byte	0x5
	.byte	0x9e,0x3
	.4byte	.LASF4029
	.byte	0x5
	.byte	0xa2,0x3
	.4byte	.LASF4030
	.byte	0x5
	.byte	0xa3,0x3
	.4byte	.LASF4031
	.byte	0x5
	.byte	0xa6,0x3
	.4byte	.LASF4032
	.byte	0x5
	.byte	0xa7,0x3
	.4byte	.LASF4033
	.byte	0x5
	.byte	0xaa,0x3
	.4byte	.LASF4034
	.byte	0x5
	.byte	0xab,0x3
	.4byte	.LASF4035
	.byte	0x5
	.byte	0xae,0x3
	.4byte	.LASF4036
	.byte	0x5
	.byte	0xaf,0x3
	.4byte	.LASF4037
	.byte	0x5
	.byte	0xb0,0x3
	.4byte	.LASF4038
	.byte	0x5
	.byte	0xb1,0x3
	.4byte	.LASF4039
	.byte	0x5
	.byte	0xb2,0x3
	.4byte	.LASF4040
	.byte	0x5
	.byte	0xb5,0x3
	.4byte	.LASF4041
	.byte	0x5
	.byte	0xb6,0x3
	.4byte	.LASF4042
	.byte	0x5
	.byte	0xb9,0x3
	.4byte	.LASF4043
	.byte	0x5
	.byte	0xba,0x3
	.4byte	.LASF4044
	.byte	0x5
	.byte	0xbb,0x3
	.4byte	.LASF4045
	.byte	0x5
	.byte	0xbc,0x3
	.4byte	.LASF4046
	.byte	0x5
	.byte	0xbf,0x3
	.4byte	.LASF4047
	.byte	0x5
	.byte	0xc0,0x3
	.4byte	.LASF4048
	.byte	0x5
	.byte	0xc3,0x3
	.4byte	.LASF4049
	.byte	0x5
	.byte	0xc4,0x3
	.4byte	.LASF4050
	.byte	0x5
	.byte	0xc7,0x3
	.4byte	.LASF4051
	.byte	0x5
	.byte	0xc8,0x3
	.4byte	.LASF4052
	.byte	0x5
	.byte	0xcb,0x3
	.4byte	.LASF4053
	.byte	0x5
	.byte	0xcc,0x3
	.4byte	.LASF4054
	.byte	0x5
	.byte	0xcf,0x3
	.4byte	.LASF4055
	.byte	0x5
	.byte	0xd0,0x3
	.4byte	.LASF4056
	.byte	0x5
	.byte	0xd3,0x3
	.4byte	.LASF4057
	.byte	0x5
	.byte	0xd4,0x3
	.4byte	.LASF4058
	.byte	0x5
	.byte	0xd7,0x3
	.4byte	.LASF4059
	.byte	0x5
	.byte	0xd8,0x3
	.4byte	.LASF4060
	.byte	0x5
	.byte	0xd9,0x3
	.4byte	.LASF4061
	.byte	0x5
	.byte	0xda,0x3
	.4byte	.LASF4062
	.byte	0x5
	.byte	0xdb,0x3
	.4byte	.LASF4063
	.byte	0x5
	.byte	0xdc,0x3
	.4byte	.LASF4064
	.byte	0x5
	.byte	0xdd,0x3
	.4byte	.LASF4065
	.byte	0x5
	.byte	0xde,0x3
	.4byte	.LASF4066
	.byte	0x5
	.byte	0xe1,0x3
	.4byte	.LASF4067
	.byte	0x5
	.byte	0xe2,0x3
	.4byte	.LASF4068
	.byte	0x5
	.byte	0xe5,0x3
	.4byte	.LASF4069
	.byte	0x5
	.byte	0xe6,0x3
	.4byte	.LASF4070
	.byte	0x5
	.byte	0xe9,0x3
	.4byte	.LASF4071
	.byte	0x5
	.byte	0xea,0x3
	.4byte	.LASF4072
	.byte	0x5
	.byte	0xed,0x3
	.4byte	.LASF4073
	.byte	0x5
	.byte	0xee,0x3
	.4byte	.LASF4074
	.byte	0x5
	.byte	0xf1,0x3
	.4byte	.LASF4075
	.byte	0x5
	.byte	0xf2,0x3
	.4byte	.LASF4076
	.byte	0x5
	.byte	0xf3,0x3
	.4byte	.LASF4077
	.byte	0x5
	.byte	0xf6,0x3
	.4byte	.LASF4078
	.byte	0x5
	.byte	0xf7,0x3
	.4byte	.LASF4079
	.byte	0x5
	.byte	0xf8,0x3
	.4byte	.LASF4080
	.byte	0x5
	.byte	0xfb,0x3
	.4byte	.LASF4081
	.byte	0x5
	.byte	0xfc,0x3
	.4byte	.LASF4082
	.byte	0x5
	.byte	0xfd,0x3
	.4byte	.LASF4083
	.byte	0x5
	.byte	0xfe,0x3
	.4byte	.LASF4084
	.byte	0x5
	.byte	0x81,0x4
	.4byte	.LASF4085
	.byte	0x5
	.byte	0x82,0x4
	.4byte	.LASF4086
	.byte	0x5
	.byte	0x83,0x4
	.4byte	.LASF4087
	.byte	0x5
	.byte	0x84,0x4
	.4byte	.LASF4088
	.byte	0x5
	.byte	0x85,0x4
	.4byte	.LASF4089
	.byte	0x5
	.byte	0x86,0x4
	.4byte	.LASF4090
	.byte	0x5
	.byte	0x87,0x4
	.4byte	.LASF4091
	.byte	0x5
	.byte	0x88,0x4
	.4byte	.LASF4092
	.byte	0x5
	.byte	0x89,0x4
	.4byte	.LASF4093
	.byte	0x5
	.byte	0x8c,0x4
	.4byte	.LASF4094
	.byte	0x5
	.byte	0x8d,0x4
	.4byte	.LASF4095
	.byte	0x5
	.byte	0x8e,0x4
	.4byte	.LASF4096
	.byte	0x5
	.byte	0x8f,0x4
	.4byte	.LASF4097
	.byte	0x5
	.byte	0x90,0x4
	.4byte	.LASF4098
	.byte	0x5
	.byte	0x91,0x4
	.4byte	.LASF4099
	.byte	0x5
	.byte	0x92,0x4
	.4byte	.LASF4100
	.byte	0x5
	.byte	0x93,0x4
	.4byte	.LASF4101
	.byte	0x5
	.byte	0x94,0x4
	.4byte	.LASF4102
	.byte	0x5
	.byte	0x97,0x4
	.4byte	.LASF4103
	.byte	0x5
	.byte	0x98,0x4
	.4byte	.LASF4104
	.byte	0x5
	.byte	0x99,0x4
	.4byte	.LASF4105
	.byte	0x5
	.byte	0x9a,0x4
	.4byte	.LASF4106
	.byte	0x5
	.byte	0x9b,0x4
	.4byte	.LASF4107
	.byte	0x5
	.byte	0x9c,0x4
	.4byte	.LASF4108
	.byte	0x5
	.byte	0x9d,0x4
	.4byte	.LASF4109
	.byte	0x5
	.byte	0x9e,0x4
	.4byte	.LASF4110
	.byte	0x5
	.byte	0x9f,0x4
	.4byte	.LASF4111
	.byte	0x5
	.byte	0xa2,0x4
	.4byte	.LASF4112
	.byte	0x5
	.byte	0xa3,0x4
	.4byte	.LASF4113
	.byte	0x5
	.byte	0xa6,0x4
	.4byte	.LASF4114
	.byte	0x5
	.byte	0xa7,0x4
	.4byte	.LASF4115
	.byte	0x5
	.byte	0xa8,0x4
	.4byte	.LASF4116
	.byte	0x5
	.byte	0xa9,0x4
	.4byte	.LASF4117
	.byte	0x5
	.byte	0xaa,0x4
	.4byte	.LASF4118
	.byte	0x5
	.byte	0xad,0x4
	.4byte	.LASF4119
	.byte	0x5
	.byte	0xae,0x4
	.4byte	.LASF4120
	.byte	0x5
	.byte	0xb1,0x4
	.4byte	.LASF4121
	.byte	0x5
	.byte	0xb2,0x4
	.4byte	.LASF4122
	.byte	0x5
	.byte	0xb5,0x4
	.4byte	.LASF4123
	.byte	0x5
	.byte	0xb6,0x4
	.4byte	.LASF4124
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_usart.h.36.ec3744a57b31601430dd33004f9466c5,comdat
.Ldebug_macro76:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF4125
	.byte	0x5
	.byte	0x29
	.4byte	.LASF4126
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF4127
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF4128
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF4129
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF4130
	.byte	0x5
	.byte	0x30
	.4byte	.LASF4131
	.byte	0x5
	.byte	0x31
	.4byte	.LASF4132
	.byte	0x5
	.byte	0x32
	.4byte	.LASF4133
	.byte	0x5
	.byte	0x33
	.4byte	.LASF4134
	.byte	0x5
	.byte	0x34
	.4byte	.LASF4135
	.byte	0x5
	.byte	0x35
	.4byte	.LASF4136
	.byte	0x5
	.byte	0x36
	.4byte	.LASF4137
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF4138
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF4139
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF4140
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF4141
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF4142
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF4143
	.byte	0x5
	.byte	0x40
	.4byte	.LASF4144
	.byte	0x5
	.byte	0x41
	.4byte	.LASF4145
	.byte	0x5
	.byte	0x42
	.4byte	.LASF4146
	.byte	0x5
	.byte	0x43
	.4byte	.LASF4147
	.byte	0x5
	.byte	0x46
	.4byte	.LASF4148
	.byte	0x5
	.byte	0x49
	.4byte	.LASF4149
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF4150
	.byte	0x5
	.byte	0x4d
	.4byte	.LASF4151
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF4152
	.byte	0x5
	.byte	0x4f
	.4byte	.LASF4153
	.byte	0x5
	.byte	0x50
	.4byte	.LASF4154
	.byte	0x5
	.byte	0x51
	.4byte	.LASF4155
	.byte	0x5
	.byte	0x52
	.4byte	.LASF4156
	.byte	0x5
	.byte	0x53
	.4byte	.LASF4157
	.byte	0x5
	.byte	0x54
	.4byte	.LASF4158
	.byte	0x5
	.byte	0x55
	.4byte	.LASF4159
	.byte	0x5
	.byte	0x56
	.4byte	.LASF4160
	.byte	0x5
	.byte	0x57
	.4byte	.LASF4161
	.byte	0x5
	.byte	0x58
	.4byte	.LASF4162
	.byte	0x5
	.byte	0x59
	.4byte	.LASF4163
	.byte	0x5
	.byte	0x5a
	.4byte	.LASF4164
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF4165
	.byte	0x5
	.byte	0x5e
	.4byte	.LASF4166
	.byte	0x5
	.byte	0x5f
	.4byte	.LASF4167
	.byte	0x5
	.byte	0x60
	.4byte	.LASF4168
	.byte	0x5
	.byte	0x61
	.4byte	.LASF4169
	.byte	0x5
	.byte	0x62
	.4byte	.LASF4170
	.byte	0x5
	.byte	0x63
	.4byte	.LASF4171
	.byte	0x5
	.byte	0x64
	.4byte	.LASF4172
	.byte	0x5
	.byte	0x65
	.4byte	.LASF4173
	.byte	0x5
	.byte	0x68
	.4byte	.LASF4174
	.byte	0x5
	.byte	0x69
	.4byte	.LASF4175
	.byte	0x5
	.byte	0x6a
	.4byte	.LASF4176
	.byte	0x5
	.byte	0x6b
	.4byte	.LASF4177
	.byte	0x5
	.byte	0x6c
	.4byte	.LASF4178
	.byte	0x5
	.byte	0x6d
	.4byte	.LASF4179
	.byte	0x5
	.byte	0x6e
	.4byte	.LASF4180
	.byte	0x5
	.byte	0x6f
	.4byte	.LASF4181
	.byte	0x5
	.byte	0x70
	.4byte	.LASF4182
	.byte	0x5
	.byte	0x71
	.4byte	.LASF4183
	.byte	0x5
	.byte	0x72
	.4byte	.LASF4184
	.byte	0x5
	.byte	0x75
	.4byte	.LASF4185
	.byte	0x5
	.byte	0x76
	.4byte	.LASF4186
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF4187
	.byte	0x5
	.byte	0x7b
	.4byte	.LASF4188
	.byte	0x5
	.byte	0x7c
	.4byte	.LASF4189
	.byte	0x5
	.byte	0x7d
	.4byte	.LASF4190
	.byte	0x5
	.byte	0x7f
	.4byte	.LASF4191
	.byte	0x5
	.byte	0x80,0x1
	.4byte	.LASF4192
	.byte	0x5
	.byte	0x83,0x1
	.4byte	.LASF4193
	.byte	0x5
	.byte	0x84,0x1
	.4byte	.LASF4194
	.byte	0x5
	.byte	0x85,0x1
	.4byte	.LASF4195
	.byte	0x5
	.byte	0x86,0x1
	.4byte	.LASF4196
	.byte	0x5
	.byte	0xbc,0x1
	.4byte	.LASF4197
	.byte	0x5
	.byte	0xbd,0x1
	.4byte	.LASF4198
	.byte	0x5
	.byte	0xbe,0x1
	.4byte	.LASF4199
	.byte	0x5
	.byte	0xc1,0x1
	.4byte	.LASF4200
	.byte	0x5
	.byte	0xc2,0x1
	.4byte	.LASF4201
	.byte	0x5
	.byte	0xc3,0x1
	.4byte	.LASF4202
	.byte	0x5
	.byte	0xc6,0x1
	.4byte	.LASF4203
	.byte	0x5
	.byte	0xc7,0x1
	.4byte	.LASF4204
	.byte	0x5
	.byte	0xc8,0x1
	.4byte	.LASF4205
	.byte	0x5
	.byte	0xc9,0x1
	.4byte	.LASF4206
	.byte	0x5
	.byte	0xcc,0x1
	.4byte	.LASF4207
	.byte	0x5
	.byte	0xcd,0x1
	.4byte	.LASF4208
	.byte	0x5
	.byte	0xce,0x1
	.4byte	.LASF4209
	.byte	0x5
	.byte	0xd1,0x1
	.4byte	.LASF4210
	.byte	0x5
	.byte	0xd2,0x1
	.4byte	.LASF4211
	.byte	0x5
	.byte	0xd3,0x1
	.4byte	.LASF4212
	.byte	0x5
	.byte	0xd6,0x1
	.4byte	.LASF4213
	.byte	0x5
	.byte	0xd7,0x1
	.4byte	.LASF4214
	.byte	0x5
	.byte	0xd8,0x1
	.4byte	.LASF4215
	.byte	0x5
	.byte	0xd9,0x1
	.4byte	.LASF4216
	.byte	0x5
	.byte	0xda,0x1
	.4byte	.LASF4217
	.byte	0x5
	.byte	0xdd,0x1
	.4byte	.LASF4218
	.byte	0x5
	.byte	0xde,0x1
	.4byte	.LASF4219
	.byte	0x5
	.byte	0xdf,0x1
	.4byte	.LASF4220
	.byte	0x5
	.byte	0xe2,0x1
	.4byte	.LASF4221
	.byte	0x5
	.byte	0xe3,0x1
	.4byte	.LASF4222
	.byte	0x5
	.byte	0xe4,0x1
	.4byte	.LASF4223
	.byte	0x5
	.byte	0xe7,0x1
	.4byte	.LASF4224
	.byte	0x5
	.byte	0xe8,0x1
	.4byte	.LASF4225
	.byte	0x5
	.byte	0xe9,0x1
	.4byte	.LASF4226
	.byte	0x5
	.byte	0xec,0x1
	.4byte	.LASF4227
	.byte	0x5
	.byte	0xed,0x1
	.4byte	.LASF4228
	.byte	0x5
	.byte	0xee,0x1
	.4byte	.LASF4229
	.byte	0x5
	.byte	0xf1,0x1
	.4byte	.LASF4230
	.byte	0x5
	.byte	0xf2,0x1
	.4byte	.LASF4231
	.byte	0x5
	.byte	0xf3,0x1
	.4byte	.LASF4232
	.byte	0x5
	.byte	0xf6,0x1
	.4byte	.LASF4233
	.byte	0x5
	.byte	0xf7,0x1
	.4byte	.LASF4234
	.byte	0x5
	.byte	0xf8,0x1
	.4byte	.LASF4235
	.byte	0x5
	.byte	0xfb,0x1
	.4byte	.LASF4236
	.byte	0x5
	.byte	0xfc,0x1
	.4byte	.LASF4237
	.byte	0x5
	.byte	0xfd,0x1
	.4byte	.LASF4238
	.byte	0x5
	.byte	0x80,0x2
	.4byte	.LASF4239
	.byte	0x5
	.byte	0x81,0x2
	.4byte	.LASF4240
	.byte	0x5
	.byte	0x82,0x2
	.4byte	.LASF4241
	.byte	0x5
	.byte	0x85,0x2
	.4byte	.LASF4242
	.byte	0x5
	.byte	0x86,0x2
	.4byte	.LASF4243
	.byte	0x5
	.byte	0x87,0x2
	.4byte	.LASF4244
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gd32vf103_wwdgt.h.36.f9bd615f3ebbe0343e8a3546e3070d5a,comdat
.Ldebug_macro77:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF4245
	.byte	0x5
	.byte	0x29
	.4byte	.LASF4246
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF4247
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF4248
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF4249
	.byte	0x5
	.byte	0x32
	.4byte	.LASF4250
	.byte	0x5
	.byte	0x33
	.4byte	.LASF4251
	.byte	0x5
	.byte	0x36
	.4byte	.LASF4252
	.byte	0x5
	.byte	0x37
	.4byte	.LASF4253
	.byte	0x5
	.byte	0x38
	.4byte	.LASF4254
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF4255
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF4256
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF4257
	.byte	0x5
	.byte	0x40
	.4byte	.LASF4258
	.byte	0x5
	.byte	0x41
	.4byte	.LASF4259
	.byte	0x5
	.byte	0x42
	.4byte	.LASF4260
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.n22_tmr.h.4.ddcdb06c93e4d79c77fe71b0e1ee8636,comdat
.Ldebug_macro78:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	.LASF4262
	.byte	0x5
	.byte	0x6
	.4byte	.LASF4263
	.byte	0x5
	.byte	0x7
	.4byte	.LASF4264
	.byte	0x5
	.byte	0x8
	.4byte	.LASF4265
	.byte	0x5
	.byte	0x9
	.4byte	.LASF4266
	.byte	0x5
	.byte	0xa
	.4byte	.LASF4267
	.byte	0x5
	.byte	0xb
	.4byte	.LASF4268
	.byte	0x5
	.byte	0xd
	.4byte	.LASF4269
	.byte	0x5
	.byte	0xe
	.4byte	.LASF4270
	.byte	0x5
	.byte	0xf
	.4byte	.LASF4271
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.riscv_const.h.5.95ac0744d59bfc0d17f4e8adf85ccb42,comdat
.Ldebug_macro79:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x5
	.4byte	.LASF4273
	.byte	0x5
	.byte	0xb
	.4byte	.LASF4274
	.byte	0x5
	.byte	0xc
	.4byte	.LASF4275
	.byte	0x5
	.byte	0xf
	.4byte	.LASF4276
	.byte	0x5
	.byte	0x10
	.4byte	.LASF4277
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.n22_eclic.h.7.1fef2872034fce38e42e0cc408b53b51,comdat
.Ldebug_macro80:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x7
	.4byte	.LASF4278
	.byte	0x5
	.byte	0xc
	.4byte	.LASF4279
	.byte	0x5
	.byte	0xe
	.4byte	.LASF4280
	.byte	0x5
	.byte	0x10
	.4byte	.LASF4281
	.byte	0x5
	.byte	0x13
	.4byte	.LASF4282
	.byte	0x5
	.byte	0x15
	.4byte	.LASF4283
	.byte	0x5
	.byte	0x17
	.4byte	.LASF4284
	.byte	0x5
	.byte	0x19
	.4byte	.LASF4285
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF4286
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF4287
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF4288
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF4289
	.byte	0x5
	.byte	0x20
	.4byte	.LASF4290
	.byte	0x5
	.byte	0x24
	.4byte	.LASF4291
	.byte	0x5
	.byte	0x27
	.4byte	.LASF4292
	.byte	0x5
	.byte	0x28
	.4byte	.LASF4293
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF4294
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF4295
	.byte	0x5
	.byte	0x2c
	.4byte	.LASF4296
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF4297
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.n22_func.h.10.c5a1ae6ced8075a6a94a1622af7fddca,comdat
.Ldebug_macro81:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0xa
	.4byte	.LASF4298
	.byte	0x5
	.byte	0xb
	.4byte	.LASF4299
	.byte	0x5
	.byte	0xc
	.4byte	.LASF4300
	.byte	0x5
	.byte	0xd
	.4byte	.LASF4301
	.byte	0x5
	.byte	0xe
	.4byte	.LASF4302
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.board.h.18.2e1f15d0469d61b47f3c83369ab3b31e,comdat
.Ldebug_macro82:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x12
	.4byte	.LASF4303
	.byte	0x5
	.byte	0x13
	.4byte	.LASF4304
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4057:
	.string	"TIMER_OCN_IDLE_STATE_HIGH ((uint16_t)0x0200U)"
.LASF2377:
	.string	"DAC_WAVE_BIT_WIDTH_4 DWBW(3)"
.LASF4636:
	.string	"USART_INT_FLAG_RBNE_ORERR"
.LASF1139:
	.string	"_FWRITE 0x0002"
.LASF2775:
	.string	"OB_WP_25 ((uint32_t)0x02000000U)"
.LASF4198:
	.string	"USART_RECEIVE_ENABLE CTL0_REN(1)"
.LASF606:
	.string	"___int16_t_defined 1"
.LASF3447:
	.string	"RCU_AHB_CKSYS_DIV8 CFG0_AHBPSC(10)"
.LASF1945:
	.string	"BKP_DATA BITS(0,15)"
.LASF2072:
	.string	"CAN_CTL_RFOD BIT(3)"
.LASF51:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF1415:
	.string	"SI_MESGQ 0x05"
.LASF4541:
	.string	"CAN0_RX0_IRQn"
.LASF4295:
	.string	"MTIME_HANDLER eclic_mtip_handler"
.LASF4463:
	.string	"_mblen_state"
.LASF2905:
	.string	"GPIO_BC_CR2 BIT(2)"
.LASF4108:
	.string	"TIMER_SLAVE_MODE_RESTART SMCFG_SMC(4)"
.LASF3656:
	.string	"SPI_CTL0_CRCNT BIT(12)"
.LASF1256:
	.string	"TIOCSSERIAL 0x541F"
.LASF2588:
	.string	"EXTI_EVEN_EVEN11 BIT(11)"
.LASF2022:
	.string	"CAN_F19DATA0(canx) REG32((canx) + 0x2D8U)"
.LASF1111:
	.string	"EHOSTDOWN 117"
.LASF3951:
	.string	"TIMER_FLAG_CH0O TIMER_INTF_CH0OF"
.LASF3648:
	.string	"SPI_CTL0_MSTMOD BIT(2)"
.LASF595:
	.string	"_ATTRIBUTE(attrs) __attribute__ (attrs)"
.LASF2191:
	.string	"RFIFO0_REG_OFFSET ((uint8_t)0x0CU)"
.LASF1390:
	.string	"SIOCDELDLCI 0x8981"
.LASF341:
	.string	"RT_USING_SMALL_MEM "
.LASF4175:
	.string	"USART_CTL2_IREN BIT(1)"
.LASF3326:
	.string	"RCU_INT_CKMIC BIT(23)"
.LASF986:
	.string	"__need_inttypes"
.LASF3341:
	.string	"RCU_APB1RST_TIMER4RST BIT(3)"
.LASF1623:
	.string	"INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)"
.LASF649:
	.string	"_T_WCHAR "
.LASF3188:
	.string	"FWDGT_STAT_RUD BIT(1)"
.LASF1724:
	.string	"ADC_IOFF1(adcx) REG32((adcx) + 0x18U)"
.LASF4515:
	.string	"IRQn"
.LASF3161:
	.string	"I2C_DMA_OFF ((uint32_t)0x00000000U)"
.LASF2003:
	.string	"CAN_F0DATA0(canx) REG32((canx) + 0x240U)"
.LASF3683:
	.string	"SPI_I2SCTL_CKPL BIT(3)"
.LASF2014:
	.string	"CAN_F11DATA0(canx) REG32((canx) + 0x298U)"
.LASF4357:
	.string	"ref_count"
.LASF152:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF3660:
	.string	"SPI_CTL1_DMAREN BIT(0)"
.LASF1697:
	.string	"SPI_BASE (APB1_BUS_BASE + 0x00003800U)"
.LASF1262:
	.string	"TIOCSBRK 0x5427"
.LASF323:
	.string	"RT_THREAD_PRIORITY_32 "
.LASF4364:
	.string	"read"
.LASF2168:
	.string	"CAN_RFIFOMDATA0_DB1 BITS(8,15)"
.LASF1072:
	.string	"EFBIG 27"
.LASF4174:
	.string	"USART_CTL2_ERRIE BIT(0)"
.LASF4501:
	.string	"bit_order"
.LASF4120:
	.string	"TIMER_ETP_RISING ((uint32_t)0x00000000U)"
.LASF2101:
	.string	"CAN_TSTAT_MTE2 BIT(19)"
.LASF3388:
	.string	"RCU_APB1EN_UART4EN BIT(20)"
.LASF2372:
	.string	"DAC_WAVE_MODE_TRIANGLE CTL_DWM(2)"
.LASF3389:
	.string	"RCU_APB1EN_I2C0EN BIT(21)"
.LASF1047:
	.string	"EPERM 1"
.LASF3637:
	.string	"SPI_CTL0(spix) REG32((spix) + 0x00U)"
.LASF4458:
	.string	"_asctime_buf"
.LASF878:
	.string	"_SYS_TYPES_H "
.LASF2283:
	.string	"CAN_FILTERBITS_16BIT ((uint8_t)0x00U)"
.LASF523:
	.string	"RT_DEVICE_CTRL_RTC_SET_TIME 0x11"
.LASF705:
	.string	"__CC_SUPPORTS_VARADIC_XXX 1"
.LASF1914:
	.string	"BKP_DATA14 REG16((BKP) + 0x50U)"
.LASF2956:
	.string	"AFIO_EXTI2_SS BITS(8, 11)"
.LASF645:
	.string	"__wchar_t__ "
.LASF1267:
	.string	"TIOCGPTN 0x80045430"
.LASF3597:
	.string	"RTC_PSCH REG32(RTC + 0x08U)"
.LASF2724:
	.string	"FMC_CTL0_REG_OFFSET 0x10U"
.LASF4440:
	.string	"_freelist"
.LASF300:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF1688:
	.string	"EXMC_BASE ((uint32_t)0xA0000000U)"
.LASF2941:
	.string	"AFIO_PCF0_USART0_REMAP BIT(2)"
.LASF4321:
	.string	"rt_off_t"
.LASF4550:
	.string	"TIMER2_IRQn"
.LASF2637:
	.string	"EXTI_SWIEV_SWIEV3 BIT(3)"
.LASF2527:
	.string	"EXMC_SNCTL_NRTP BITS(2,3)"
.LASF696:
	.string	"__compiler_membar() __asm __volatile(\" \" : : : \"memory\")"
.LASF1546:
	.string	"PARITY_NONE 0"
.LASF1942:
	.string	"BKP_OCTL REG16((BKP) + 0x2CU)"
.LASF3961:
	.string	"TIMER_DMA_TRGD ((uint16_t)TIMER_DMAINTEN_TRGDEN)"
.LASF1141:
	.string	"_FMARK 0x0010"
.LASF3600:
	.string	"RTC_DIVL REG32(RTC + 0x14U)"
.LASF849:
	.string	"_REENT_MP_FREELIST(ptr) ((ptr)->_freelist)"
.LASF1665:
	.string	"WCHAR_MAX (__WCHAR_MAX__)"
.LASF4405:
	.string	"_fns"
.LASF839:
	.string	"_REENT_CHECK_MISC(ptr) "
.LASF1022:
	.string	"S_IXUSR 0000100"
.LASF403:
	.string	"__need___va_list"
.LASF391:
	.string	"RT_VERSION 4L"
.LASF3738:
	.string	"I2S_MODE_MASTERTX I2SCTL_I2SOPMOD(2)"
.LASF642:
	.string	"_SIZET_ "
.LASF3894:
	.string	"TIMER_CHCTL2_CH0EN BIT(0)"
.LASF4679:
	.string	"usart_isr"
.LASF2516:
	.string	"ECLIC_PRIGROUP_LEVEL2_PRIO2 2"
.LASF2861:
	.string	"GPIO_OCTL_OCTL6 BIT(6)"
.LASF4093:
	.string	"TIMER_SMCFG_TRGSEL_ETIFP SMCFG_TRGSEL(7)"
.LASF2303:
	.string	"CAN_INT_WAKEUP CAN_INTEN_WIE"
.LASF1626:
	.string	"INT16_MIN (-__INT16_MAX__ - 1)"
.LASF2797:
	.string	"GPIO_BOP(gpiox) REG32((gpiox) + 0x10U)"
.LASF4351:
	.string	"RT_Device_Class_Touch"
.LASF239:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF694:
	.string	"__GNUCLIKE_BUILTIN_VAALIST 1"
.LASF1768:
	.string	"ADC_CTL1_SWRCST BIT(22)"
.LASF4142:
	.string	"USART_STAT_IDLEF BIT(4)"
.LASF2413:
	.string	"DAC_TRIANGLE_AMPLITUDE_4095 DAC_WAVE_BIT_WIDTH_12"
.LASF3785:
	.string	"TIMER_CTL1(timerx) REG32((timerx) + 0x04U)"
.LASF4266:
	.string	"TMR_MTIMECMP_size 0x8"
.LASF4468:
	.string	"_getdate_err"
.LASF3743:
	.string	"I2S_STD_LSB I2SCTL_I2SSTD(2)"
.LASF4507:
	.string	"serial_rx"
.LASF3566:
	.string	"RCU_PLL1_MUL13 CFG1_PLL1MF(11)"
.LASF2718:
	.string	"FMC_REGIDX_BITS(regidx,bitpos0,bitpos1) (((uint32_t)(regidx) << 12) | ((uint32_t)(bitpos0) << 6) | (uint32_t)(bitpos1))"
.LASF58:
	.string	"__INT_FAST16_TYPE__ int"
.LASF1579:
	.string	"SYSTEM_GD32VF103_H "
.LASF4013:
	.string	"TIMER_COUNTER_CENTER_DOWN CTL0_CAM(1)"
.LASF1649:
	.string	"UINT_FAST16_MAX (__UINT_FAST16_MAX__)"
.LASF1685:
	.string	"SRAM_BASE ((uint32_t)0x20000000U)"
.LASF4650:
	.string	"USART_INT_ERR"
.LASF2964:
	.string	"AFIO_EXTI10_SS BITS(8, 11)"
.LASF1310:
	.string	"TIOCM_RNG 0x080"
.LASF1810:
	.string	"ADC0_1_EXTTRIG_REGULAR_T0_CH1 CTL1_ETSRC(1)"
.LASF332:
	.string	"RT_TIMER_THREAD_PRIO 4"
.LASF4374:
	.string	"_ssize_t"
.LASF774:
	.string	"__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))"
.LASF1646:
	.string	"UINT_FAST8_MAX (__UINT_FAST8_MAX__)"
.LASF2817:
	.string	"GPIO_CTL0_MD5 BITS(20, 21)"
.LASF182:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF4607:
	.string	"RCU_BKPI"
.LASF1208:
	.string	"LOCK_SH 0x01"
.LASF1639:
	.string	"INT64_MAX (__INT64_MAX__)"
.LASF1468:
	.string	"SIGWINCH 28"
.LASF2960:
	.string	"AFIO_EXTI6_SS BITS(8, 11)"
.LASF2375:
	.string	"DAC_WAVE_BIT_WIDTH_2 DWBW(1)"
.LASF1143:
	.string	"_FASYNC 0x0040"
.LASF2465:
	.string	"DMA_CHXCTL_PRIO BITS(12,13)"
.LASF1971:
	.string	"CAN_STAT(canx) REG32((canx) + 0x04U)"
.LASF2968:
	.string	"AFIO_EXTI14_SS BITS(8, 11)"
.LASF1861:
	.string	"ADC_CHANNEL_13 ((uint8_t)0x0DU)"
.LASF2767:
	.string	"OB_WP_17 ((uint32_t)0x00020000U)"
.LASF257:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1163:
	.string	"O_NONBLOCK _FNONBLOCK"
.LASF1622:
	.string	"UINT8_MAX (__UINT8_MAX__)"
.LASF2302:
	.string	"CAN_INT_ERR CAN_INTEN_ERRIE"
.LASF2769:
	.string	"OB_WP_19 ((uint32_t)0x00080000U)"
.LASF2740:
	.string	"FMC_NSPC ((uint8_t)0xA5U)"
.LASF406:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF2204:
	.string	"TMDATA0_DB0(regval) (BITS(0,7) & ((uint32_t)(regval) << 0))"
.LASF1509:
	.string	"RT_DATAQUEUE_EVENT_PUSH 0x02"
.LASF2180:
	.string	"CAN_FW_FW(regval) BIT(regval)"
.LASF4439:
	.string	"_p5s"
.LASF4336:
	.string	"RT_Device_Class_RTC"
.LASF189:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF2913:
	.string	"GPIO_BC_CR10 BIT(10)"
.LASF1591:
	.string	"short +1"
.LASF1479:
	.string	"rt_container_of(ptr,type,member) ((type *)((char *)(ptr) - (unsigned long)(&((type *)0)->member)))"
.LASF3060:
	.string	"GPIO_TIMER4CH3_IREMAP ((uint32_t)0x00200001U)"
.LASF2789:
	.string	"GPIOC (GPIO_BASE + 0x00000800U)"
.LASF729:
	.string	"__always_inline __inline__ __attribute__((__always_inline__))"
.LASF265:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF2701:
	.string	"FMC_CTL0_OBER BIT(5)"
.LASF2084:
	.string	"CAN_STAT_TS BIT(8)"
.LASF4190:
	.string	"USART_REGIDX_BIT2(regidx,bitpos,regidx2,bitpos2) (((uint32_t)(regidx2) << 22) | (uint32_t)((bitpos2) << 16) | (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos)))"
.LASF3244:
	.string	"CTL_LVDT(regval) (BITS(5,7)&((uint32_t)(regval) << 5))"
.LASF393:
	.string	"RT_REVISION 2L"
.LASF1812:
	.string	"ADC0_1_EXTTRIG_REGULAR_T1_CH1 CTL1_ETSRC(3)"
.LASF1865:
	.string	"ADC_CHANNEL_17 ((uint8_t)0x11U)"
.LASF3422:
	.string	"RCU_BIT_POS(val) ((uint32_t)(val) & 0x1FU)"
.LASF1023:
	.string	"S_IRWXG (S_IRGRP | S_IWGRP | S_IXGRP)"
.LASF1154:
	.string	"O_ACCMODE (O_RDONLY|O_WRONLY|O_RDWR)"
.LASF1598:
	.string	"__INT16 \"h\""
.LASF1654:
	.string	"INT_FAST64_MAX (__INT_FAST64_MAX__)"
.LASF3010:
	.string	"GPIO_PIN_SOURCE_0 ((uint8_t)0x00U)"
.LASF1342:
	.string	"SIOCGIFNAME 0x8910"
.LASF698:
	.string	"__GNUCLIKE_MATH_BUILTIN_RELOPS "
.LASF3322:
	.string	"RCU_INT_HXTALSTBIC BIT(19)"
.LASF1699:
	.string	"I2C_BASE (APB1_BUS_BASE + 0x00005400U)"
.LASF965:
	.string	"_MODE_T_DECLARED "
.LASF4176:
	.string	"USART_CTL2_IRLP BIT(2)"
.LASF4308:
	.string	"rt_uint8_t"
.LASF1238:
	.string	"TIOCNXCL 0x540D"
.LASF3976:
	.string	"TIMER_DMACFG_DMATA_CAR DMACFG_DMATA(11)"
.LASF3970:
	.string	"TIMER_DMACFG_DMATA_SWEVG DMACFG_DMATA(5)"
.LASF4508:
	.string	"serial_tx"
.LASF3827:
	.string	"TIMER_SMCFG_ETFC BITS(8,11)"
.LASF3996:
	.string	"TIMER_DMACFG_DMATC_12TRANSFER DMACFG_DMATC(11)"
.LASF1489:
	.string	"rt_slist_for_each(pos,head) for (pos = (head)->next; pos != RT_NULL; pos = pos->next)"
.LASF2951:
	.string	"AFIO_PCF0_SWJ_CFG BITS(24, 26)"
.LASF4383:
	.string	"_Bigint"
.LASF3576:
	.string	"RCU_PLL2_MUL12 CFG1_PLL2MF(10)"
.LASF1146:
	.string	"_FCREAT 0x0200"
.LASF963:
	.string	"_KEY_T_DECLARED "
.LASF3744:
	.string	"I2S_STD_PCMSHORT I2SCTL_I2SSTD(3)"
.LASF1321:
	.string	"N_STRIP 4"
.LASF1384:
	.string	"SIOCDRARP 0x8960"
.LASF3300:
	.string	"RCU_CFG0_USBFSPSC BITS(22,23)"
.LASF2331:
	.string	"DAC_CTL_DBOFF0 BIT(1)"
.LASF1976:
	.string	"CAN_ERR(canx) REG32((canx) + 0x18U)"
.LASF2615:
	.string	"EXTI_FTEN_FTEN0 BIT(0)"
.LASF2832:
	.string	"GPIO_CTL1_CTL12 BITS(18, 19)"
.LASF3349:
	.string	"RCU_APB1RST_UART3RST BIT(19)"
.LASF3478:
	.string	"RCU_PLL_MUL5 CFG0_PLLMF(3)"
.LASF4096:
	.string	"TIMER_TRI_OUT_SRC_ENABLE CTL1_MMC(1)"
.LASF2568:
	.string	"EXTI_INTEN_INTEN10 BIT(10)"
.LASF895:
	.string	"_UINTPTR_T_DECLARED "
.LASF2892:
	.string	"GPIO_BOP_CR5 BIT(21)"
.LASF4385:
	.string	"_maxwds"
.LASF4537:
	.string	"DMA0_Channel5_IRQn"
.LASF1293:
	.string	"FIOQSIZE 0x5460"
.LASF2919:
	.string	"GPIO_LOCK_LK0 BIT(0)"
.LASF4273:
	.string	"_RISCV_CONST_H "
.LASF3192:
	.string	"FWDGT_PSC_DIV16 ((uint8_t)PSC_PSC(2))"
.LASF3014:
	.string	"GPIO_PIN_SOURCE_4 ((uint8_t)0x04U)"
.LASF4675:
	.string	"drivers/drv_usart.c"
.LASF2363:
	.string	"DAC_TRIGGER_T6_TRGO CTL_DTSEL(2)"
.LASF622:
	.string	"_BSD_PTRDIFF_T_ "
.LASF4233:
	.string	"CLT2_DENT(regval) (BIT(7) & ((uint32_t)(regval) << 7))"
.LASF3794:
	.string	"TIMER_PSC(timerx) REG32((timerx) + 0x28U)"
.LASF171:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF3374:
	.string	"RCU_APB2EN_SPI0EN BIT(12)"
.LASF1661:
	.string	"SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))"
.LASF3419:
	.string	"RCU_DSV_DSLPVS BITS(0,1)"
.LASF3731:
	.string	"I2S_FRAMEFORMAT_DT24B_CH32B (I2SCTL_DTLEN(1) | SPI_I2SCTL_CHLEN)"
.LASF4509:
	.string	"rt_uart_ops"
.LASF3263:
	.string	"RCU RCU_BASE"
.LASF180:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF4347:
	.string	"RT_Device_Class_Portal"
.LASF50:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF3611:
	.string	"RTC_CTL_RSYNF BIT(3)"
.LASF2434:
	.string	"DMA_CH3MADDR(dmax) REG32((dmax) + 0x50U)"
.LASF673:
	.string	"__attribute_malloc__ "
.LASF4327:
	.string	"name"
.LASF3624:
	.string	"RTC_INT_OVERFLOW RTC_INTEN_OVIE"
.LASF3037:
	.string	"GPIO_PIN_11 BIT(11)"
.LASF2318:
	.string	"DAC_SWT REG32(DAC + 0x04U)"
.LASF1213:
	.string	"O_BINARY 0"
.LASF3537:
	.string	"RCU_PREDV0_DIV11 CFG1_PREDV0(10)"
.LASF3283:
	.string	"RCU_CTL_HXTALBPS BIT(18)"
.LASF1856:
	.string	"ADC_CHANNEL_8 ((uint8_t)0x08U)"
.LASF1235:
	.string	"TCXONC 0x540A"
.LASF3742:
	.string	"I2S_STD_MSB I2SCTL_I2SSTD(1)"
.LASF4343:
	.string	"RT_Device_Class_SPIDevice"
.LASF305:
	.string	"__riscv_atomic 1"
.LASF4563:
	.string	"USBFS_WKUP_IRQn"
.LASF3044:
	.string	"GPIO_I2C0_REMAP ((uint32_t)0x00000002U)"
.LASF1223:
	.string	"FIONREAD _IOR('f', 127, int)"
.LASF1738:
	.string	"ADC_OVSCR(adcx) REG32((adcx) + 0x80U)"
.LASF2417:
	.string	"DMA_INTF(dmax) REG32((dmax) + 0x00U)"
.LASF3318:
	.string	"RCU_INT_PLL2STBIE BIT(14)"
.LASF2228:
	.string	"CAN_ERRN_0 ERR_ERRN(0)"
.LASF3772:
	.string	"I2S_FLAG_TXURERR SPI_STAT_TXURERR"
.LASF3514:
	.string	"RCU_CKOUT0SRC_IRC8M CFG0_CKOUT0SEL(5)"
.LASF3708:
	.string	"SPI_CK_PL_LOW_PH_2EDGE SPI_CTL0_CKPH"
.LASF3765:
	.string	"SPI_FLAG_CONFERR SPI_STAT_CONFERR"
.LASF555:
	.string	"_FSEEK_OPTIMIZATION 1"
.LASF2239:
	.string	"CAN_SILENT_MODE ((uint8_t)0x02U)"
.LASF2529:
	.string	"EXMC_SNCTL_NREN BIT(6)"
.LASF2628:
	.string	"EXTI_FTEN_FTEN13 BIT(13)"
.LASF2829:
	.string	"GPIO_CTL1_MD11 BITS(12, 13)"
.LASF1735:
	.string	"ADC_IDATA2(adcx) REG32((adcx) + 0x44U)"
.LASF3788:
	.string	"TIMER_INTF(timerx) REG32((timerx) + 0x10U)"
.LASF564:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF3842:
	.string	"TIMER_DMAINTEN_CH2DEN BIT(11)"
.LASF797:
	.string	"__lock_close_recursive(lock) __retarget_lock_close_recursive(lock)"
.LASF3944:
	.string	"TIMER_FLAG_CH0 TIMER_INTF_CH0IF"
.LASF3688:
	.string	"SPI_I2SCTL_I2SSEL BIT(11)"
.LASF3303:
	.string	"RCU_CFG0_PLLMF_4 BIT(29)"
.LASF210:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF4667:
	.string	"result"
.LASF3686:
	.string	"SPI_I2SCTL_I2SOPMOD BITS(8,9)"
.LASF1082:
	.string	"EDEADLK 45"
.LASF4532:
	.string	"DMA0_Channel0_IRQn"
.LASF424:
	.string	"INIT_PREV_EXPORT(fn) INIT_EXPORT(fn, \"2\")"
.LASF2511:
	.string	"DMA_MEMORY_TO_MEMORY_ENABLE ((uint32_t)0x00000001U)"
.LASF3021:
	.string	"GPIO_PIN_SOURCE_11 ((uint8_t)0x0BU)"
.LASF923:
	.string	"timercmp(tvp,uvp,cmp) (((tvp)->tv_sec == (uvp)->tv_sec) ? ((tvp)->tv_usec cmp (uvp)->tv_usec) : ((tvp)->tv_sec cmp (uvp)->tv_sec))"
.LASF3681:
	.string	"SPI_I2SCTL_CHLEN BIT(0)"
.LASF1946:
	.string	"BKP_OCTL_RCCV BITS(0,6)"
.LASF2445:
	.string	"DMA_CH6PADDR(dmax) REG32((dmax) + 0x88U)"
.LASF419:
	.string	"RT_WEAK __attribute__((weak))"
.LASF1949:
	.string	"BKP_OCTL_ROSEL BIT(9)"
.LASF3154:
	.string	"I2C_SCLSTRETCH_ENABLE ((uint32_t)0x00000000U)"
.LASF1236:
	.string	"TCFLSH 0x540B"
.LASF1652:
	.string	"UINT_FAST32_MAX (__UINT_FAST32_MAX__)"
.LASF1853:
	.string	"ADC_CHANNEL_5 ((uint8_t)0x05U)"
.LASF1719:
	.string	"ADC_CTL0(adcx) REG32((adcx) + 0x04U)"
.LASF2424:
	.string	"DMA_CH1CNT(dmax) REG32((dmax) + 0x20U)"
.LASF2133:
	.string	"CAN_ERR_PERR BIT(1)"
.LASF3562:
	.string	"RCU_PLL1_MUL9 CFG1_PLL1MF(7)"
.LASF40:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF4511:
	.string	"putc"
.LASF2145:
	.string	"CAN_TMI_FT BIT(1)"
.LASF2326:
	.string	"DACC_L12DH REG32(DAC + 0x24U)"
.LASF569:
	.string	"_POSIX_SOURCE 1"
.LASF1544:
	.string	"STOP_BITS_3 2"
.LASF933:
	.string	"NFDBITS (sizeof (fd_mask) * 8)"
.LASF2243:
	.string	"CAN_BT_SJW_3TQ ((uint8_t)0x02U)"
.LASF4075:
	.string	"TIMER_IC_POLARITY_RISING ((uint16_t)0x0000U)"
.LASF2804:
	.string	"AFIO_EXTISS2 REG32(AFIO + 0x10U)"
.LASF2147:
	.string	"CAN_TMI_EFID BITS(3,31)"
.LASF297:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF3255:
	.string	"PMU_FLAG_LVD PMU_CS_LVDF"
.LASF2493:
	.string	"DMA_PERIPH_INCREASE_DISABLE ((uint8_t)0x0000U)"
.LASF3955:
	.string	"TIMER_DMA_UPD ((uint16_t)TIMER_DMAINTEN_UPDEN)"
.LASF1638:
	.string	"INT64_MIN (-__INT64_MAX__ - 1)"
.LASF357:
	.string	"FINSH_USING_DESCRIPTION "
.LASF2403:
	.string	"DAC_TRIANGLE_AMPLITUDE_3 DAC_WAVE_BIT_WIDTH_2"
.LASF3398:
	.string	"RCU_BDCTL_LXTALBPS BIT(2)"
.LASF1031:
	.string	"ACCESSPERMS (S_IRWXU | S_IRWXG | S_IRWXO)"
.LASF3662:
	.string	"SPI_CTL1_NSSDRV BIT(2)"
.LASF4289:
	.string	"ECLIC_INT_ATTR_TRIG_NEG 0x04"
.LASF505:
	.string	"RT_DEVICE_OFLAG_WRONLY 0x002"
.LASF1026:
	.string	"S_IXGRP 0000010"
.LASF1285:
	.string	"TIOCGLCKTRMIOS 0x5456"
.LASF44:
	.string	"__INT64_TYPE__ long long int"
.LASF516:
	.string	"RT_DEVICE_CTRL_BLK_GETGEOME 0x10"
.LASF2091:
	.string	"CAN_TSTAT_MTE0 BIT(3)"
.LASF3596:
	.string	"RTC_CTL REG32(RTC + 0x04U)"
.LASF2449:
	.string	"DMA_INTF_HTFIF BIT(2)"
.LASF3762:
	.string	"SPI_FLAG_RBNE SPI_STAT_RBNE"
.LASF4278:
	.string	"ECLICINTCTLBITS 4"
.LASF1001:
	.string	"_IFSOCK 0140000"
.LASF62:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF3992:
	.string	"TIMER_DMACFG_DMATC_8TRANSFER DMACFG_DMATC(7)"
.LASF4011:
	.string	"CTL0_CAM(regval) ((uint16_t)(BITS(5, 6) & ((uint32_t)(regval) << 5U)))"
.LASF3143:
	.string	"I2C_SMBUSMODE_ENABLE I2C_CTL0_SMBEN"
.LASF4502:
	.string	"invert"
.LASF1459:
	.string	"SIGCLD 20"
.LASF4413:
	.string	"_cookie"
.LASF4039:
	.string	"TIMER_CCHP_PROT_1 CCHP_PROT(2)"
.LASF4518:
	.string	"CLIC_INT_TMR"
.LASF1556:
	.string	"RT_SERIAL_EVENT_TX_DMADONE 0x04"
.LASF4398:
	.string	"_on_exit_args"
.LASF3368:
	.string	"RCU_APB2EN_PCEN BIT(4)"
.LASF3043:
	.string	"GPIO_SPI0_REMAP ((uint32_t)0x00000001U)"
.LASF4254:
	.string	"WWDGT_CFG_EWIE BIT(9)"
.LASF4024:
	.string	"TIMER_SP_MODE_SINGLE TIMER_CTL0_SPM"
.LASF3264:
	.string	"RCU_CTL REG32(RCU + 0x00U)"
.LASF267:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF4556:
	.string	"SPI0_IRQn"
.LASF2135:
	.string	"CAN_ERR_ERRN BITS(4,6)"
.LASF3157:
	.string	"I2C_GCEN_DISABLE ((uint32_t)0x00000000U)"
.LASF4483:
	.string	"uint32_t"
.LASF2057:
	.string	"CAN_F26DATA1(canx) REG32((canx) + 0x314U)"
.LASF3761:
	.string	"SPI_I2S_INT_FLAG_FERR ((uint8_t)0x06U)"
.LASF4224:
	.string	"CTL1_CPH(regval) (BIT(9) & ((uint32_t)(regval) << 9))"
.LASF2926:
	.string	"GPIO_LOCK_LK7 BIT(7)"
.LASF1497:
	.ascii	"FINSH_VAR_EXPORT(name,type,desc) const char __vsym_ ##n"
	.string	"ame ##_name[] SECTION(\".rodata.name\") = #name; const char __vsym_ ##name ##_desc[] SECTION(\".rodata.name\") = #desc; RT_USED const struct finsh_sysvar __vsym_ ##name SECTION(\"VSymTab\")= { __vsym_ ##name ##_name, __vsym_ ##name ##_desc, type, (void*)&name };"
.LASF862:
	.string	"_REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)"
.LASF2755:
	.string	"OB_WP_5 ((uint32_t)0x00000020U)"
.LASF2450:
	.string	"DMA_INTF_ERRIF BIT(3)"
.LASF2336:
	.string	"DAC_CTL_DDMAEN0 BIT(12)"
.LASF769:
	.string	"__NULLABILITY_PRAGMA_POP "
.LASF367:
	.string	"RT_USING_SERIAL "
.LASF1463:
	.string	"SIGPOLL SIGIO"
.LASF3472:
	.string	"RCU_PLLSRC_HXTAL RCU_CFG0_PLLSEL"
.LASF2382:
	.string	"DAC_WAVE_BIT_WIDTH_9 DWBW(8)"
.LASF126:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF2526:
	.string	"EXMC_SNCTL_NRMUX BIT(1)"
.LASF3328:
	.string	"RCU_APB2RST_PARST BIT(2)"
.LASF690:
	.string	"__GNUCLIKE_CTOR_SECTION_HANDLING 1"
.LASF3897:
	.string	"TIMER_CHCTL2_CH0NP BIT(3)"
.LASF78:
	.string	"__WINT_MIN__ 0U"
.LASF2001:
	.string	"CAN_FAFIFO(canx) REG32((canx) + 0x214U)"
.LASF2673:
	.string	"FMC FMC_BASE"
.LASF2938:
	.string	"AFIO_EC_EOE BIT(7)"
.LASF3959:
	.string	"TIMER_DMA_CH3D ((uint16_t)TIMER_DMAINTEN_CH3DEN)"
.LASF1491:
	.string	"rt_slist_first_entry(ptr,type,member) rt_slist_entry((ptr)->next, type, member)"
.LASF1393:
	.string	"LIBC_DIRENT_H__ "
.LASF4196:
	.string	"USART_CTL2_REG_OFFSET (0x00000014U)"
.LASF3173:
	.string	"DATA_RECV(regval) GET_BITS((uint32_t)(regval), 0, 7)"
.LASF910:
	.string	"__htonl(_x) __bswap32(_x)"
.LASF975:
	.string	"SCHED_FIFO 1"
.LASF2593:
	.string	"EXTI_EVEN_EVEN16 BIT(16)"
.LASF2581:
	.string	"EXTI_EVEN_EVEN4 BIT(4)"
.LASF3443:
	.string	"CFG0_AHBPSC(regval) (BITS(4,7) & ((uint32_t)(regval) << 4))"
.LASF513:
	.string	"RT_DEVICE_CTRL_CLR_INT 0x11"
.LASF2250:
	.string	"CAN_BT_BS1_6TQ ((uint8_t)0x05U)"
.LASF1187:
	.string	"F_GETFL 3"
.LASF4019:
	.string	"TIMER_COUNTER_DOWN ((uint16_t)TIMER_CTL0_DIR)"
.LASF3544:
	.string	"RCU_PREDV1_DIV1 CFG1_PREDV1(0)"
.LASF4574:
	.string	"DMA1_Channel3_IRQn"
.LASF2991:
	.string	"GPIO_PORT_SOURCE_GPIOC ((uint8_t)0x02U)"
.LASF4204:
	.string	"USART_PM_NONE CTL0_PM(0)"
.LASF294:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF4084:
	.string	"TIMER_IC_PSC_DIV8 ((uint16_t)0x000CU)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF1227:
	.string	"TCSETS 0x5402"
.LASF2599:
	.string	"EXTI_RTEN_RTEN3 BIT(3)"
.LASF4091:
	.string	"TIMER_SMCFG_TRGSEL_CI0FE0 SMCFG_TRGSEL(5)"
.LASF2448:
	.string	"DMA_INTF_FTFIF BIT(1)"
.LASF4370:
	.string	"long double"
.LASF2357:
	.string	"DACC_R8DH_DAC1_DH BITS(8,15)"
.LASF1482:
	.string	"rt_list_for_each(pos,head) for (pos = (head)->next; pos != (head); pos = pos->next)"
.LASF1498:
	.string	"FINSH_FUNCTION_EXPORT(name,desc) FINSH_FUNCTION_EXPORT_CMD(name, name, desc)"
.LASF425:
	.string	"INIT_DEVICE_EXPORT(fn) INIT_EXPORT(fn, \"3\")"
.LASF2232:
	.string	"CAN_ERRN_4 ERR_ERRN(4)"
.LASF913:
	.string	"__ntohs(_x) __bswap16(_x)"
.LASF3196:
	.string	"FWDGT_PSC_DIV256 ((uint8_t)PSC_PSC(6))"
.LASF624:
	.string	"_GCC_PTRDIFF_T "
.LASF4621:
	.string	"RCU_USART0"
.LASF4599:
	.string	"RCU_USART1"
.LASF4600:
	.string	"RCU_USART2"
.LASF2899:
	.string	"GPIO_BOP_CR12 BIT(28)"
.LASF4242:
	.string	"CTL2_IRLP(regval) (BIT(2) & ((uint32_t)(regval) << 2))"
.LASF2843:
	.string	"GPIO_ISTAT_ISTAT4 BIT(4)"
.LASF2648:
	.string	"EXTI_SWIEV_SWIEV14 BIT(14)"
.LASF442:
	.string	"RT_ENOSYS 6"
.LASF3702:
	.string	"SPI_NSS_SOFT SPI_CTL0_SWNSSEN"
.LASF177:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF4514:
	.string	"rt_device_class_type"
.LASF724:
	.string	"__alloc_align(x) __attribute__((__alloc_align__ x))"
.LASF904:
	.string	"BIG_ENDIAN _BIG_ENDIAN"
.LASF241:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF276:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF2016:
	.string	"CAN_F13DATA0(canx) REG32((canx) + 0x2A8U)"
.LASF3473:
	.string	"PLLMF_4 RCU_CFG0_PLLMF_4"
.LASF2721:
	.string	"FMC_BIT_POS1(val) ((uint32_t)(val) & 0x1FU)"
.LASF1592:
	.string	"__int20 +2"
.LASF3096:
	.string	"I2C_CTL1_EVIE BIT(9)"
.LASF601:
	.string	"_MACHINE__DEFAULT_TYPES_H "
.LASF4409:
	.string	"__sFILE"
.LASF1102:
	.string	"EPROTOTYPE 107"
.LASF3431:
	.string	"BDCTL_REG_OFFSET 0x20U"
.LASF3101:
	.string	"I2C_SADDR0_ADDRESS BITS(1,7)"
.LASF3935:
	.string	"TIMER_INT_FLAG_UP TIMER_INT_UP"
.LASF2801:
	.string	"AFIO_PCF0 REG32(AFIO + 0x04U)"
.LASF1168:
	.string	"FNBIO _FNBIO"
.LASF697:
	.string	"__GNUCLIKE_BUILTIN_NEXT_ARG 1"
.LASF3705:
	.string	"SPI_ENDIAN_LSB SPI_CTL0_LF"
.LASF2850:
	.string	"GPIO_ISTAT_ISTAT11 BIT(11)"
.LASF3667:
	.string	"SPI_CTL1_TBEIE BIT(7)"
.LASF4627:
	.string	"USART_FLAG_IDLEF"
.LASF4299:
	.string	"ECLIC_GROUP_LEVEL1_PRIO3 1"
.LASF3587:
	.string	"RCU_I2S2SRC_CKPLL2_MUL2 RCU_CFG1_I2S2SEL"
.LASF3824:
	.string	"TIMER_SMCFG_SMC BITS(0,2)"
.LASF2811:
	.string	"GPIO_CTL0_MD2 BITS(8, 9)"
.LASF428:
	.string	"INIT_APP_EXPORT(fn) INIT_EXPORT(fn, \"6\")"
.LASF1814:
	.string	"ADC0_1_EXTTRIG_REGULAR_T3_CH3 CTL1_ETSRC(5)"
.LASF2545:
	.string	"EXMC_MEMORY_TYPE_PSRAM SNCTL_NRTP(1)"
.LASF3727:
	.string	"I2S_AUDIOSAMPLE_192K ((uint32_t)192000U)"
.LASF995:
	.string	"_IFMT 0170000"
.LASF4558:
	.string	"USART0_IRQn"
.LASF2117:
	.string	"CAN_RFIFO1_RFD1 BIT(5)"
.LASF2067:
	.string	"CAN_RFIFOMDATA0(canx,bank) REG32((canx) + 0x1B8U + ((bank) * 0x10U))"
.LASF801:
	.string	"__lock_try_acquire_recursive(lock) __retarget_lock_try_acquire_recursive(lock)"
.LASF860:
	.string	"_REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)"
.LASF903:
	.string	"LITTLE_ENDIAN _LITTLE_ENDIAN"
.LASF1408:
	.string	"HAVE_SIGVAL 1"
.LASF3029:
	.string	"GPIO_PIN_3 BIT(3)"
.LASF388:
	.string	"RT_DEBUG_NOT_IN_INTERRUPT do { rt_base_t level; level = rt_hw_interrupt_disable(); if (rt_interrupt_get_nest() != 0) { rt_kprintf(\"Function[%s] shall not be used in ISR\\n\", __FUNCTION__); RT_ASSERT(0) } rt_hw_interrupt_enable(level); } while (0)"
.LASF1823:
	.string	"ADC0_1_EXTTRIG_INSERTED_T3_TRGO CTL1_ETSIC(5)"
.LASF2207:
	.string	"TMDATA0_DB3(regval) (BITS(24,31) & ((uint32_t)(regval) << 24))"
.LASF3589:
	.string	"RCU_DEEPSLEEP_V_1_2 DSV_DSLPVS(0)"
.LASF167:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF2883:
	.string	"GPIO_BOP_BOP12 BIT(12)"
.LASF3798:
	.string	"TIMER_CH1CV(timerx) REG32((timerx) + 0x38U)"
.LASF807:
	.string	"__need_wint_t "
.LASF137:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF3114:
	.string	"I2C_STAT0_BERR BIT(8)"
.LASF390:
	.string	"__RT_DEF_H__ "
.LASF3521:
	.string	"BDCTL_RTCSRC(regval) (BITS(8,9) & ((uint32_t)(regval) << 8))"
.LASF4492:
	.string	"desc"
.LASF2603:
	.string	"EXTI_RTEN_RTEN7 BIT(7)"
.LASF127:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF4000:
	.string	"TIMER_DMACFG_DMATC_16TRANSFER DMACFG_DMATC(15)"
.LASF1272:
	.string	"TCSETXF 0x5434"
.LASF2825:
	.string	"GPIO_CTL1_MD9 BITS(4, 5)"
.LASF3960:
	.string	"TIMER_DMA_CMTD ((uint16_t)TIMER_DMAINTEN_CMTDEN)"
.LASF4632:
	.string	"USART_INT_FLAG_PERR"
.LASF2948:
	.string	"AFIO_PCF0_CAN_REMAP BITS(13, 14)"
.LASF2959:
	.string	"AFIO_EXTI5_SS BITS(4, 7)"
.LASF763:
	.string	"__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))"
.LASF1292:
	.string	"TIOCGICOUNT 0x545D"
.LASF1534:
	.string	"BAUD_RATE_921600 921600"
.LASF279:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF316:
	.string	"HAVE_CCONFIG_H 1"
.LASF46:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF2129:
	.string	"CAN_INTEN_ERRIE BIT(15)"
.LASF1618:
	.string	"INTPTR_MAX (__INTPTR_MAX__)"
.LASF461:
	.string	"RT_TIMER_CTRL_SET_PERIODIC 0x3"
.LASF4236:
	.string	"CLT2_RTSEN(regval) (BIT(8) & ((uint32_t)(regval) << 8))"
.LASF149:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF73:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF3745:
	.string	"I2S_STD_PCMLONG (I2SCTL_I2SSTD(3) | SPI_I2SCTL_PCMSMOD)"
.LASF553:
	.string	"_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1"
.LASF270:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF3916:
	.string	"TIMER_CCHP_DTCFG BITS(0,7)"
.LASF3162:
	.string	"I2C_DMALST_ON I2C_CTL1_DMALST"
.LASF1675:
	.string	"UINT64_C(x) __UINT64_C(x)"
.LASF4534:
	.string	"DMA0_Channel2_IRQn"
.LASF3936:
	.string	"TIMER_INT_FLAG_CH0 TIMER_INT_CH0"
.LASF296:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF338:
	.string	"RT_USING_MAILBOX "
.LASF3826:
	.string	"TIMER_SMCFG_MSM BIT(7)"
.LASF863:
	.string	"_REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)"
.LASF1409:
	.string	"GCC_VERSION \"8.2.0\""
.LASF481:
	.string	"RT_IPC_FLAG_FIFO 0x00"
.LASF4330:
	.string	"list"
.LASF108:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF3379:
	.string	"RCU_APB1EN_TIMER4EN BIT(3)"
.LASF3411:
	.string	"RCU_AHBRST_USBFSRST BIT(12)"
.LASF926:
	.string	"_SYS_TIMESPEC_H_ "
.LASF1988:
	.string	"CAN_TMDATA02(canx) REG32((canx) + 0x1A8U)"
.LASF2494:
	.string	"DMA_PERIPH_INCREASE_ENABLE ((uint8_t)0x0001U)"
.LASF2282:
	.string	"CAN_MODE_SLEEP ((uint8_t)0x04U)"
.LASF4438:
	.string	"_result_k"
.LASF2149:
	.string	"CAN_TMP_DLENC BITS(0,3)"
.LASF2272:
	.string	"CAN_NOMAILBOX ((uint8_t)0x03U)"
.LASF2532:
	.string	"EXMC_SNCTL_NRWTEN BIT(13)"
.LASF2982:
	.string	"GPIO_OSPEED_2MHZ ((uint8_t)0x02U)"
.LASF795:
	.string	"__lock_init_recursive(lock) __retarget_lock_init_recursive(&lock)"
.LASF2320:
	.string	"DAC0_L12DH REG32(DAC + 0x0CU)"
.LASF4462:
	.string	"_r48"
.LASF4643:
	.string	"USART_INT_PERR"
.LASF602:
	.string	"__EXP(x) __ ##x ##__"
.LASF2709:
	.string	"FMC_OBSTAT_SPC BIT(1)"
.LASF1624:
	.string	"INT_LEAST8_MAX (__INT_LEAST8_MAX__)"
.LASF1569:
	.string	"GD32VF103_H "
.LASF4028:
	.string	"TIMER_ROS_STATE_ENABLE ((uint16_t)TIMER_CCHP_ROS)"
.LASF3560:
	.string	"CFG1_PLL1MF(regval) (BITS(8,11) & ((uint32_t)(regval) << 8))"
.LASF4263:
	.string	"TMR_MSIP 0xFFC"
.LASF707:
	.string	"__P(protos) protos"
.LASF2798:
	.string	"GPIO_BC(gpiox) REG32((gpiox) + 0x14U)"
.LASF2267:
	.string	"CAN_BT_BS2_7TQ ((uint8_t)0x06U)"
.LASF284:
	.string	"__NO_INLINE__ 1"
.LASF1516:
	.string	"RT_WQ_FLAG_WAKEUP 0x01"
.LASF931:
	.string	"_SYS_TYPES_FD_SET "
.LASF3138:
	.string	"I2C_BIT_POS2(val) (((uint32_t)(val) & 0x1F0000U) >> 16)"
.LASF1571:
	.string	"__O volatile"
.LASF4007:
	.string	"TIMER_EVENT_SRC_CH3G ((uint16_t)0x0010U)"
.LASF1754:
	.string	"ADC_CTL0_SYNCM BITS(16,19)"
.LASF4676:
	.string	"/home/tang/workspace/RISC-V/GD32VF103C-START"
.LASF2056:
	.string	"CAN_F25DATA1(canx) REG32((canx) + 0x30CU)"
.LASF3821:
	.string	"TIMER_CTL1_ISO2 BIT(12)"
.LASF4170:
	.string	"USART_CTL1_CPL BIT(10)"
.LASF3663:
	.string	"SPI_CTL1_NSSP BIT(3)"
.LASF1726:
	.string	"ADC_IOFF3(adcx) REG32((adcx) + 0x20U)"
.LASF1496:
	.ascii	"FINSH_FUNCTION_EXPORT_CMD(name,cmd,desc) const char __fsym_"
	.string	" ##cmd ##_name[] SECTION(\".rodata.name\") = #cmd; const char __fsym_ ##cmd ##_desc[] SECTION(\".rodata.name\") = #desc; RT_USED const struct finsh_syscall __fsym_ ##cmd SECTION(\"FSymTab\")= { __fsym_ ##cmd ##_name, __fsym_ ##cmd ##_desc, (syscall_func)&name };"
.LASF1130:
	.string	"EOWNERDEAD 142"
.LASF373:
	.string	"BSP_USING_UART0 "
.LASF2620:
	.string	"EXTI_FTEN_FTEN5 BIT(5)"
.LASF3832:
	.string	"TIMER_DMAINTEN_CH0IE BIT(1)"
.LASF4326:
	.string	"rt_object"
.LASF509:
	.string	"RT_DEVICE_CTRL_RESUME 0x01"
.LASF2039:
	.string	"CAN_F8DATA1(canx) REG32((canx) + 0x284U)"
.LASF2082:
	.string	"CAN_STAT_WUIF BIT(3)"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF2573:
	.string	"EXTI_INTEN_INTEN15 BIT(15)"
.LASF2221:
	.string	"GET_RFIFOMDATA1_DB5(regval) GET_BITS((uint32_t)(regval), 8, 15)"
.LASF3134:
	.string	"I2C_REG_VAL(i2cx,offset) (REG32((i2cx) + (((uint32_t)(offset) & 0xFFFFU) >> 6)))"
.LASF2828:
	.string	"GPIO_CTL1_CTL10 BITS(10, 11)"
.LASF812:
	.string	"_CLOCKID_T_ unsigned long"
.LASF4623:
	.string	"USART_FLAG_LBDF"
.LASF2371:
	.string	"DAC_WAVE_MODE_LFSR CTL_DWM(1)"
.LASF359:
	.string	"FINSH_THREAD_STACK_SIZE 4096"
.LASF1131:
	.string	"EWOULDBLOCK EAGAIN"
.LASF3630:
	.string	"RTC_FLAG_OVERFLOW RTC_CTL_OVIF"
.LASF4654:
	.string	"usart_base"
.LASF1504:
	.string	"rt_ringbuffer_space_len(rb) ((rb)->buffer_size - rt_ringbuffer_data_len(rb))"
.LASF4151:
	.string	"USART_CTL0_SBKCMD BIT(0)"
.LASF2479:
	.string	"DMA_CHINTF_RESET_VALUE (DMA_INTF_GIF | DMA_INTF_FTFIF | DMA_INTF_HTFIF | DMA_INTF_ERRIF)"
.LASF2515:
	.string	"ECLIC_PRIGROUP_LEVEL1_PRIO3 1"
.LASF1177:
	.string	"FOPEN _FOPEN"
.LASF3195:
	.string	"FWDGT_PSC_DIV128 ((uint8_t)PSC_PSC(5))"
.LASF4644:
	.string	"USART_INT_TBE"
.LASF4257:
	.string	"WWDGT_CFG_PSC_DIV1 CFG_PSC(0)"
.LASF2690:
	.string	"FMC_WS_WSCNT BITS(0,2)"
.LASF4127:
	.string	"USART2 (USART_BASE+(0x00000400U))"
.LASF0:
	.string	"__STDC__ 1"
.LASF4262:
	.string	"N22_TMR_H "
.LASF2362:
	.string	"DAC_TRIGGER_T2_TRGO CTL_DTSEL(1)"
.LASF3433:
	.string	"CFG0_REG_OFFSET 0x04U"
.LASF1055:
	.string	"EBADF 9"
.LASF3909:
	.string	"TIMER_PSC_PSC BITS(0,15)"
.LASF4094:
	.string	"CTL1_MMC(regval) (BITS(4, 6) & ((uint32_t)(regval) << 4U))"
.LASF2008:
	.string	"CAN_F5DATA0(canx) REG32((canx) + 0x268U)"
.LASF4040:
	.string	"TIMER_CCHP_PROT_2 CCHP_PROT(3)"
.LASF2491:
	.string	"DMA_PERIPHERAL_TO_MEMORY ((uint8_t)0x0000U)"
.LASF3232:
	.string	"PMU_CS REG32((PMU) + 0x04U)"
.LASF2497:
	.string	"CHCTL_PWIDTH(regval) (BITS(8,9) & ((uint32_t)(regval) << 8))"
.LASF3092:
	.string	"I2C_CTL0_SALT BIT(13)"
.LASF2157:
	.string	"CAN_TMDATA1_DB5 BITS(8,15)"
.LASF2046:
	.string	"CAN_F15DATA1(canx) REG32((canx) + 0x2BCU)"
.LASF1270:
	.string	"TCGETX 0x5432"
.LASF2398:
	.string	"DATA_ALIGN(regval) (BITS(0,1) & ((uint32_t)(regval) << 0))"
.LASF2708:
	.string	"FMC_OBSTAT_OBERR BIT(0)"
.LASF1110:
	.string	"ETIMEDOUT 116"
.LASF2757:
	.string	"OB_WP_7 ((uint32_t)0x00000080U)"
.LASF4526:
	.string	"RCU_CTC_IRQn"
.LASF4264:
	.string	"TMR_MSIP_size 0x4"
.LASF1805:
	.string	"ADC_DATAALIGN_RIGHT ((uint32_t)0x00000000U)"
.LASF4612:
	.string	"RCU_GPIOA"
.LASF565:
	.string	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)"
.LASF4614:
	.string	"RCU_GPIOC"
.LASF4615:
	.string	"RCU_GPIOD"
.LASF4616:
	.string	"RCU_GPIOE"
.LASF2921:
	.string	"GPIO_LOCK_LK2 BIT(2)"
.LASF2633:
	.string	"EXTI_FTEN_FTEN18 BIT(18)"
.LASF1838:
	.string	"RSQ0_RL(regval) (BITS(20,23) & ((uint32_t)(regval) << 20))"
.LASF2782:
	.string	"OB_WP_ALL ((uint32_t)0xFFFFFFFFU)"
.LASF2685:
	.string	"OB_USER REG16((OB) + 0x02U)"
.LASF3721:
	.string	"I2S_AUDIOSAMPLE_16K ((uint32_t)16000U)"
.LASF2309:
	.string	"CRC_CTL REG32(CRC + 0x08U)"
.LASF916:
	.string	"_SYS__TIMEVAL_H_ "
.LASF1009:
	.string	"S_IEXEC 0000100"
.LASF3089:
	.string	"I2C_CTL0_ACKEN BIT(10)"
.LASF3755:
	.string	"SPI_I2S_INT_FLAG_TBE ((uint8_t)0x00U)"
.LASF434:
	.string	"RT_KERNEL_FREE(ptr) rt_free(ptr)"
.LASF3321:
	.string	"RCU_INT_IRC8MSTBIC BIT(18)"
.LASF826:
	.string	"_RAND48_ADD (0x000b)"
.LASF4525:
	.string	"FMC_IRQn"
.LASF3203:
	.string	"FWDGT_FLAG_PUD FWDGT_STAT_PUD"
.LASF2954:
	.string	"AFIO_EXTI0_SS BITS(0, 3)"
.LASF183:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF888:
	.string	"__int32_t_defined 1"
.LASF3031:
	.string	"GPIO_PIN_5 BIT(5)"
.LASF1727:
	.string	"ADC_WDHT(adcx) REG32((adcx) + 0x24U)"
.LASF348:
	.string	"RT_USING_COMPONENTS_INIT "
.LASF175:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF3736:
	.string	"I2S_MODE_SLAVETX I2SCTL_I2SOPMOD(0)"
.LASF283:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF810:
	.string	"_CLOCK_T_ unsigned long"
.LASF4350:
	.string	"RT_Device_Class_Sensor"
.LASF206:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF768:
	.string	"__NULLABILITY_PRAGMA_PUSH "
.LASF1122:
	.string	"ETOOMANYREFS 129"
.LASF4106:
	.string	"TIMER_ENCODER_MODE1 SMCFG_SMC(2)"
.LASF2836:
	.string	"GPIO_CTL1_CTL14 BITS(26, 27)"
.LASF2961:
	.string	"AFIO_EXTI7_SS BITS(12, 15)"
.LASF579:
	.string	"__MISC_VISIBLE 1"
.LASF1736:
	.string	"ADC_IDATA3(adcx) REG32((adcx) + 0x48U)"
.LASF2017:
	.string	"CAN_F14DATA0(canx) REG32((canx) + 0x2B0U)"
.LASF328:
	.string	"RT_USING_IDLE_HOOK "
.LASF2666:
	.string	"EXTI_PD_PD13 BIT(13)"
.LASF2974:
	.string	"GPIO_MODE_IN_FLOATING ((uint8_t)0x04U)"
.LASF2110:
	.string	"CAN_RFIFO0_RFL0 BITS(0,1)"
.LASF772:
	.string	"__lock_annotate(x) "
.LASF4657:
	.string	"gpio_port"
.LASF214:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF1170:
	.string	"FNDELAY _FNDELAY"
.LASF361:
	.string	"FINSH_USING_MSH "
.LASF1551:
	.string	"NRZ_NORMAL 0"
.LASF3541:
	.string	"RCU_PREDV0_DIV15 CFG1_PREDV0(14)"
.LASF4639:
	.string	"USART_INT_FLAG_CTS"
.LASF130:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF1100:
	.string	"ENOBUFS 105"
.LASF3407:
	.string	"RCU_RSTSCK_SWRSTF BIT(28)"
.LASF3210:
	.string	"DBG_CTL_SLP_HOLD BIT(0)"
.LASF972:
	.string	"_SYS__PTHREADTYPES_H_ "
.LASF678:
	.string	"__unbounded "
.LASF2041:
	.string	"CAN_F10DATA1(canx) REG32((canx) + 0x294U)"
.LASF3528:
	.string	"RCU_PREDV0_DIV2 CFG1_PREDV0(1)"
.LASF3091:
	.string	"I2C_CTL0_PECTRANS BIT(12)"
.LASF3214:
	.string	"DBG_CTL_WWDGT_HOLD BIT(9)"
.LASF4210:
	.string	"CTL0_WL(regval) (BIT(12) & ((uint32_t)(regval) << 12))"
.LASF282:
	.string	"__USER_LABEL_PREFIX__ "
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF2609:
	.string	"EXTI_RTEN_RTEN13 BIT(13)"
.LASF2395:
	.string	"DAC_LFSR_BITS9_0 DAC_WAVE_BIT_WIDTH_10"
.LASF1720:
	.string	"ADC_CTL1(adcx) REG32((adcx) + 0x08U)"
.LASF2869:
	.string	"GPIO_OCTL_OCTL14 BIT(14)"
.LASF1485:
	.string	"rt_list_for_each_entry_safe(pos,n,head,member) for (pos = rt_list_entry((head)->next, typeof(*pos), member), n = rt_list_entry(pos->member.next, typeof(*pos), member); &pos->member != (head); pos = n, n = rt_list_entry(n->member.next, typeof(*n), member))"
.LASF1090:
	.string	"EMULTIHOP 74"
.LASF704:
	.string	"__CC_SUPPORTS_WARNING 1"
.LASF1752:
	.string	"ADC_CTL0_DISIC BIT(12)"
.LASF4265:
	.string	"TMR_MTIMECMP 0x8"
.LASF2987:
	.string	"GPIO_EVENT_PORT_GPIOD ((uint8_t)0x03U)"
.LASF4422:
	.string	"_data"
.LASF2254:
	.string	"CAN_BT_BS1_10TQ ((uint8_t)0x09U)"
.LASF1069:
	.string	"EMFILE 24"
.LASF1436:
	.string	"sigfillset(what) (*(what) = ~(0), 0)"
.LASF3505:
	.string	"RCU_PLL_MUL32 (PLLMF_4 | CFG0_PLLMF(15))"
.LASF2442:
	.string	"DMA_CH5MADDR(dmax) REG32((dmax) + 0x78U)"
.LASF1657:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF796:
	.string	"__lock_close(lock) __retarget_lock_close(lock)"
.LASF4180:
	.string	"USART_CTL2_DENR BIT(6)"
.LASF4333:
	.string	"RT_Device_Class_NetIf"
.LASF4498:
	.string	"data_bits"
.LASF2182:
	.string	"CAN_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))"
.LASF3406:
	.string	"RCU_RSTSCK_PORRSTF BIT(27)"
.LASF87:
	.string	"__WINT_WIDTH__ 32"
.LASF776:
	.string	"__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))"
.LASF664:
	.string	"__need_NULL"
.LASF3979:
	.string	"TIMER_DMACFG_DMATA_CH1CV DMACFG_DMATA(14)"
.LASF970:
	.string	"_TIMER_T_DECLARED "
.LASF1028:
	.string	"S_IROTH 0000004"
.LASF2059:
	.string	"CAN_TMI(canx,bank) REG32((canx) + 0x180U + ((bank) * 0x10U))"
.LASF3405:
	.string	"RCU_RSTSCK_EPRSTF BIT(26)"
.LASF3269:
	.string	"RCU_AHBEN REG32(RCU + 0x14U)"
.LASF3353:
	.string	"RCU_APB1RST_CAN0RST BIT(25)"
.LASF4041:
	.string	"TIMER_BREAK_ENABLE ((uint16_t)TIMER_CCHP_BRKEN)"
.LASF67:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF4076:
	.string	"TIMER_IC_POLARITY_FALLING ((uint16_t)0x0002U)"
.LASF582:
	.string	"__XSI_VISIBLE 0"
.LASF1179:
	.string	"FTRUNC _FTRUNC"
.LASF3692:
	.string	"SPI_MASTER (SPI_CTL0_MSTMOD | SPI_CTL0_SWNSS)"
.LASF3352:
	.string	"RCU_APB1RST_I2C1RST BIT(22)"
.LASF253:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1260:
	.string	"TIOCGETD 0x5424"
.LASF3934:
	.string	"TIMER_INT_BRK TIMER_DMAINTEN_BRKIE"
.LASF3684:
	.string	"SPI_I2SCTL_I2SSTD BITS(4,5)"
.LASF1713:
	.string	"USE_STDPERIPH_DRIVER "
.LASF3296:
	.string	"RCU_CFG0_ADCPSC BITS(14,15)"
.LASF4560:
	.string	"USART2_IRQn"
.LASF687:
	.string	"__GNUCLIKE___TYPEOF 1"
.LASF3490:
	.string	"RCU_PLL_MUL17 (PLLMF_4 | CFG0_PLLMF(0))"
.LASF551:
	.string	"HAVE_INITFINI_ARRAY 1"
.LASF2112:
	.string	"CAN_RFIFO0_RFO0 BIT(4)"
.LASF2812:
	.string	"GPIO_CTL0_CTL2 BITS(10, 11)"
.LASF4130:
	.string	"USART0 (USART_BASE+(0x0000F400U))"
.LASF4083:
	.string	"TIMER_IC_PSC_DIV4 ((uint16_t)0x0008U)"
.LASF790:
	.string	"__SYS_LOCK_H__ "
.LASF1401:
	.string	"HAVE_SYS_SIGNAL_H 1"
.LASF3769:
	.string	"I2S_FLAG_RBNE SPI_STAT_RBNE"
.LASF4475:
	.string	"_nextf"
.LASF1039:
	.string	"S_ISLNK(m) (((m)&_IFMT) == _IFLNK)"
.LASF3554:
	.string	"RCU_PREDV1_DIV11 CFG1_PREDV1(10)"
.LASF539:
	.string	"_ANSIDECL_H_ "
.LASF2790:
	.string	"GPIOD (GPIO_BASE + 0x00000C00U)"
.LASF3387:
	.string	"RCU_APB1EN_UART3EN BIT(19)"
.LASF911:
	.string	"__htons(_x) __bswap16(_x)"
.LASF586:
	.string	"__RAND_MAX"
.LASF4078:
	.string	"TIMER_IC_SELECTION_DIRECTTI ((uint16_t)0x0001U)"
.LASF3339:
	.string	"RCU_APB1RST_TIMER2RST BIT(1)"
.LASF4403:
	.string	"_atexit"
.LASF589:
	.string	"__IMPORT "
.LASF1153:
	.string	"_FNOCTTY 0x8000"
.LASF3480:
	.string	"RCU_PLL_MUL7 CFG0_PLLMF(5)"
.LASF4564:
	.string	"EXMC_IRQn"
.LASF1793:
	.string	"ADC_INSERTED_CHANNEL_AUTO ADC_CTL0_ICA"
.LASF2021:
	.string	"CAN_F18DATA0(canx) REG32((canx) + 0x2D0U)"
.LASF2352:
	.string	"DACC_R12DH_DAC0_DH BITS(0,11)"
.LASF1387:
	.string	"SIOCGIFMAP 0x8970"
.LASF3366:
	.string	"RCU_APB2EN_PAEN BIT(2)"
.LASF3460:
	.string	"RCU_APB2_CKAHB_DIV1 CFG0_APB2PSC(0)"
.LASF2319:
	.string	"DAC0_R12DH REG32(DAC + 0x08U)"
.LASF1477:
	.string	"LIBC_FDSET_H__ "
.LASF2547:
	.string	"EXMC_BANK0_NORSRAM_REGION0 ((uint32_t)0x00000000U)"
.LASF1232:
	.string	"TCSETAW 0x5407"
.LASF254:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF1716:
	.string	"ADC0 ADC_BASE"
.LASF2217:
	.string	"GET_RFIFOMDATA0_DB1(regval) GET_BITS((uint32_t)(regval), 8, 15)"
.LASF3510:
	.string	"RCU_CKUSB_CKPLL_DIV2 CFG0_USBPSC(3)"
.LASF670:
	.string	"__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname"
.LASF2263:
	.string	"CAN_BT_BS2_3TQ ((uint8_t)0x02U)"
.LASF3857:
	.string	"TIMER_INTF_CH3OF BIT(12)"
.LASF1105:
	.string	"ECONNREFUSED 111"
.LASF1828:
	.string	"ADC_SAMPLETIME_7POINT5 SAMPTX_SPT(1)"
.LASF166:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF695:
	.string	"__GNUC_VA_LIST_COMPATIBILITY 1"
.LASF1175:
	.string	"FSHLOCK _FSHLOCK"
.LASF37:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF3313:
	.string	"RCU_INT_LXTALSTBIE BIT(9)"
.LASF1760:
	.string	"ADC_CTL1_RSTCLB BIT(3)"
.LASF2889:
	.string	"GPIO_BOP_CR2 BIT(18)"
.LASF1505:
	.string	"COMPLETION_H_ "
.LASF1263:
	.string	"TIOCCBRK 0x5428"
.LASF2214:
	.string	"GET_RFIFOMP_DLENC(regval) GET_BITS((uint32_t)(regval), 0, 3)"
.LASF890:
	.string	"_UINT64_T_DECLARED "
.LASF1152:
	.string	"_FNDELAY _FNONBLOCK"
.LASF1691:
	.string	"AHB1_BUS_BASE ((uint32_t)0x40018000U)"
.LASF4207:
	.string	"CTL0_WM(regval) (BIT(11) & ((uint32_t)(regval) << 11))"
.LASF2524:
	.string	"EXMC_SNWTCFG0 REG32(EXMC + 0x104U)"
.LASF102:
	.string	"__UINT8_MAX__ 0xff"
.LASF793:
	.string	"__LOCK_INIT_RECURSIVE(class,lock) __LOCK_INIT(class,lock)"
.LASF1695:
	.string	"WWDGT_BASE (APB1_BUS_BASE + 0x00002C00U)"
.LASF2656:
	.string	"EXTI_PD_PD3 BIT(3)"
.LASF3752:
	.string	"SPI_I2S_INT_TBE ((uint8_t)0x00U)"
.LASF2642:
	.string	"EXTI_SWIEV_SWIEV8 BIT(8)"
.LASF4345:
	.string	"RT_Device_Class_PM"
.LASF861:
	.string	"_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)"
.LASF2748:
	.string	"OB_WP2_WP2 ((uint32_t)0x00FF0000U)"
.LASF3621:
	.string	"RTC_ALRML_ALRM BITS(0,15)"
.LASF2985:
	.string	"GPIO_EVENT_PORT_GPIOB ((uint8_t)0x01U)"
.LASF3364:
	.string	"RCU_AHBEN_USBFSEN BIT(12)"
.LASF2153:
	.string	"CAN_TMDATA0_DB1 BITS(8,15)"
.LASF2802:
	.string	"AFIO_EXTISS0 REG32(AFIO + 0x08U)"
.LASF1210:
	.string	"LOCK_NB 0x04"
.LASF2691:
	.string	"FMC_KEY0_KEY BITS(0,31)"
.LASF789:
	.string	"_MACHINE__TYPES_H "
.LASF1095:
	.string	"ENAMETOOLONG 91"
.LASF4119:
	.string	"TIMER_ETP_FALLING TIMER_SMCFG_ETP"
.LASF3212:
	.string	"DBG_CTL_STB_HOLD BIT(2)"
.LASF2923:
	.string	"GPIO_LOCK_LK4 BIT(4)"
.LASF3164:
	.string	"I2C_PEC_ENABLE I2C_CTL0_PECEN"
.LASF3152:
	.string	"I2C_DUADEN_DISABLE ((uint32_t)0x00000000U)"
.LASF268:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF4058:
	.string	"TIMER_OCN_IDLE_STATE_LOW ((uint16_t)0x0000U)"
.LASF56:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF2772:
	.string	"OB_WP_22 ((uint32_t)0x00400000U)"
.LASF2310:
	.string	"CRC_DATA_DATA BITS(0, 31)"
.LASF3146:
	.string	"I2C_RECEIVER ((uint32_t)0x00000001U)"
.LASF3103:
	.string	"I2C_SADDR0_ADDFORMAT BIT(15)"
.LASF3634:
	.string	"SPI0 (SPI_BASE + 0x0000F800U)"
.LASF3287:
	.string	"RCU_CTL_PLL1EN BIT(26)"
.LASF223:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF1045:
	.string	"errno (*__errno())"
.LASF2555:
	.string	"EXTI_FTEN REG32(EXTI + 0x0CU)"
.LASF3213:
	.string	"DBG_CTL_FWDGT_HOLD BIT(8)"
.LASF2549:
	.string	"EXMC_NWAIT_POLARITY_HIGH ((uint32_t)0x00000200U)"
.LASF1060:
	.string	"EFAULT 14"
.LASF2729:
	.string	"WS_WSCNT_0 WS_WSCNT(0)"
.LASF2470:
	.string	"DMA_FLAG_ADD(flag,shift) ((flag) << ((shift) * 4U))"
.LASF1870:
	.string	"ADC_INT_FLAG_EOC ADC_STAT_EOC"
.LASF3786:
	.string	"TIMER_SMCFG(timerx) REG32((timerx) + 0x08U)"
.LASF3155:
	.string	"I2C_SCLSTRETCH_DISABLE I2C_CTL0_SS"
.LASF4147:
	.string	"USART_STAT_CTSF BIT(9)"
.LASF2053:
	.string	"CAN_F22DATA1(canx) REG32((canx) + 0x2F4U)"
.LASF4377:
	.string	"__wchb"
.LASF770:
	.string	"__arg_type_tag(arg_kind,arg_idx,type_tag_idx) "
.LASF413:
	.string	"_VA_LIST_T_H "
.LASF4363:
	.string	"close"
.LASF1151:
	.string	"_FNONBLOCK 0x4000"
.LASF2100:
	.string	"CAN_TSTAT_MAL2 BIT(18)"
.LASF3756:
	.string	"SPI_I2S_INT_FLAG_RBNE ((uint8_t)0x01U)"
.LASF450:
	.string	"RT_OBJECT_FLAG_MODULE 0x80"
.LASF1032:
	.string	"ALLPERMS (S_ISUID | S_ISGID | S_ISVTX | S_IRWXU | S_IRWXG | S_IRWXO)"
.LASF1753:
	.string	"ADC_CTL0_DISNUM BITS(13,15)"
.LASF1465:
	.string	"SIGXFSZ 25"
.LASF900:
	.string	"_BYTE_ORDER _LITTLE_ENDIAN"
.LASF855:
	.string	"_REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)"
.LASF522:
	.string	"RT_DEVICE_CTRL_RTC_GET_TIME 0x10"
.LASF2432:
	.string	"DMA_CH3CNT(dmax) REG32((dmax) + 0x48U)"
.LASF1986:
	.string	"CAN_TMI2(canx) REG32((canx) + 0x1A0U)"
.LASF4026:
	.string	"TIMER_UPDATE_SRC_REGULAR TIMER_CTL0_UPS"
.LASF4444:
	.string	"_atexit0"
.LASF1108:
	.string	"ENETUNREACH 114"
.LASF354:
	.string	"FINSH_USING_HISTORY "
.LASF1370:
	.string	"SIOCGIFINDEX 0x8933"
.LASF1997:
	.string	"CAN_RFIFOMDATA11(canx) REG32((canx) + 0x1CCU)"
.LASF3267:
	.string	"RCU_APB2RST REG32(RCU + 0x0CU)"
.LASF2934:
	.string	"GPIO_LOCK_LK15 BIT(15)"
.LASF2776:
	.string	"OB_WP_26 ((uint32_t)0x04000000U)"
.LASF1051:
	.string	"EIO 5"
.LASF2170:
	.string	"CAN_RFIFOMDATA0_DB3 BITS(24,31)"
.LASF3763:
	.string	"SPI_FLAG_TBE SPI_STAT_TBE"
.LASF460:
	.string	"RT_TIMER_CTRL_SET_ONESHOT 0x2"
.LASF1594:
	.string	"long +4"
.LASF2453:
	.string	"DMA_INTC_HTFIFC BIT(2)"
.LASF2259:
	.string	"CAN_BT_BS1_15TQ ((uint8_t)0x0EU)"
.LASF2201:
	.string	"FCTL_HBC1F(regval) (BITS(8,13) & ((uint32_t)(regval) << 8))"
.LASF3965:
	.string	"TIMER_DMACFG_DMATA_CTL0 DMACFG_DMATA(0)"
.LASF3334:
	.string	"RCU_APB2RST_ADC1RST BIT(10)"
.LASF4619:
	.string	"RCU_TIMER0"
.LASF3438:
	.string	"RCU_CKSYSSRC_PLL CFG0_SCS(2)"
.LASF491:
	.string	"RT_DEVICE_FLAG_RDONLY 0x001"
.LASF809:
	.string	"__need_wint_t"
.LASF160:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF365:
	.string	"RT_USING_DEVICE_IPC "
.LASF4505:
	.string	"rt_serial_device"
.LASF1818:
	.string	"ADC0_1_EXTTRIG_INSERTED_T0_TRGO CTL1_ETSIC(0)"
.LASF3064:
	.string	"GPIO_SWJ_DISABLE_REMAP ((uint32_t)0x00300400U)"
.LASF4549:
	.string	"TIMER1_IRQn"
.LASF3409:
	.string	"RCU_RSTSCK_WWDGTRSTF BIT(30)"
.LASF1948:
	.string	"BKP_OCTL_ASOEN BIT(8)"
.LASF4128:
	.string	"UART3 (USART_BASE+(0x00000800U))"
.LASF4339:
	.string	"RT_Device_Class_I2CBUS"
.LASF1464:
	.string	"SIGXCPU 24"
.LASF3226:
	.string	"DBG_LOW_POWER_SLEEP DBG_CTL_SLP_HOLD"
.LASF1777:
	.string	"ADC_ISQ_IL BITS(20,21)"
.LASF1633:
	.string	"INT32_MAX (__INT32_MAX__)"
.LASF1608:
	.string	"__LEAST64 \"ll\""
.LASF4435:
	.string	"__sdidinit"
.LASF1868:
	.string	"ADC_INT_EOIC ADC_STAT_EOIC"
.LASF4031:
	.string	"TIMER_IOS_STATE_DISABLE ((uint16_t)0x0000U)"
.LASF335:
	.string	"RT_USING_SEMAPHORE "
.LASF1:
	.string	"__STDC_VERSION__ 201710L"
.LASF3121:
	.string	"I2C_STAT1_MASTER BIT(0)"
.LASF3949:
	.string	"TIMER_FLAG_TRG TIMER_INTF_TRGIF"
.LASF3950:
	.string	"TIMER_FLAG_BRK TIMER_INTF_BRKIF"
.LASF2099:
	.string	"CAN_TSTAT_MTFNERR2 BIT(17)"
.LASF3546:
	.string	"RCU_PREDV1_DIV3 CFG1_PREDV1(2)"
.LASF3771:
	.string	"I2S_FLAG_CH SPI_STAT_I2SCH"
.LASF4037:
	.string	"TIMER_CCHP_PROT_OFF CCHP_PROT(0)"
.LASF712:
	.string	"__const const"
.LASF587:
	.string	"__RAND_MAX 0x7fffffff"
.LASF1845:
	.string	"ADC_INSERTED_CHANNEL_1 ((uint8_t)0x01U)"
.LASF714:
	.string	"__volatile volatile"
.LASF138:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF2213:
	.string	"GET_RFIFOMI_SFID(regval) GET_BITS((uint32_t)(regval), 21, 31)"
.LASF2483:
	.string	"DMA_INT_FLAG_ERR DMA_INTF_ERRIF"
.LASF4672:
	.string	"gd32_control"
.LASF2635:
	.string	"EXTI_SWIEV_SWIEV1 BIT(1)"
.LASF1698:
	.string	"USART_BASE (APB1_BUS_BASE + 0x00004400U)"
.LASF3084:
	.string	"I2C_CTL0_PECEN BIT(5)"
.LASF3715:
	.string	"SPI_PSC_32 CTL0_PSC(4)"
.LASF207:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF2933:
	.string	"GPIO_LOCK_LK14 BIT(14)"
.LASF2777:
	.string	"OB_WP_27 ((uint32_t)0x08000000U)"
.LASF3294:
	.string	"RCU_CFG0_APB1PSC BITS(8,10)"
.LASF1794:
	.string	"CTL0_SYNCM(regval) (BITS(16,19) & ((uint32_t)(regval) << 16))"
.LASF4455:
	.string	"_add"
.LASF2942:
	.string	"AFIO_PCF0_USART1_REMAP BIT(3)"
.LASF1439:
	.string	"SIGINT 2"
.LASF3697:
	.string	"SPI_TRANSMODE_RECEIVEONLY SPI_CTL0_RO"
.LASF2908:
	.string	"GPIO_BC_CR5 BIT(5)"
.LASF2842:
	.string	"GPIO_ISTAT_ISTAT3 BIT(3)"
.LASF1769:
	.string	"ADC_CTL1_TSVREN BIT(23)"
.LASF511:
	.string	"RT_DEVICE_CTRL_CONFIG 0x03"
.LASF3359:
	.string	"RCU_AHBEN_DMA1EN BIT(1)"
.LASF1198:
	.string	"F_DUPFD_CLOEXEC 14"
.LASF570:
	.string	"_POSIX_C_SOURCE"
.LASF4199:
	.string	"USART_RECEIVE_DISABLE CTL0_REN(0)"
.LASF4477:
	.string	"_unused"
.LASF557:
	.string	"_UNBUF_STREAM_OPT 1"
.LASF1328:
	.string	"N_IRDA 11"
.LASF2144:
	.string	"CAN_TMI_TEN BIT(0)"
.LASF4368:
	.string	"__uint8_t"
.LASF1194:
	.string	"F_RGETLK 10"
.LASF3651:
	.string	"SPI_CTL0_LF BIT(7)"
.LASF1295:
	.string	"TIOCPKT_FLUSHREAD 1"
.LASF794:
	.string	"__lock_init(lock) __retarget_lock_init(&lock)"
.LASF1788:
	.string	"ADC_FLAG_EOIC ADC_STAT_EOIC"
.LASF8:
	.string	"__VERSION__ \"8.2.0\""
.LASF1867:
	.string	"ADC_INT_EOC ADC_STAT_EOC"
.LASF968:
	.string	"_CLOCKID_T_DECLARED "
.LASF662:
	.string	"NULL"
.LASF1969:
	.string	"CAN1 (CAN0 + 0x00000400U)"
.LASF3578:
	.string	"RCU_PLL2_MUL14 CFG1_PLL2MF(12)"
.LASF2270:
	.string	"CAN_MAILBOX1 ((uint8_t)0x01U)"
.LASF2534:
	.string	"EXMC_SNTCFG_ASET BITS(0,3)"
.LASF119:
	.string	"__UINT8_C(c) c"
.LASF800:
	.string	"__lock_try_acquire(lock) __retarget_lock_try_acquire(lock)"
.LASF2054:
	.string	"CAN_F23DATA1(canx) REG32((canx) + 0x2FCU)"
.LASF3734:
	.string	"I2S_MCKOUT_ENABLE SPI_I2SPSC_MCKOEN"
.LASF3410:
	.string	"RCU_RSTSCK_LPRSTF BIT(31)"
.LASF1570:
	.string	"__I volatile const"
.LASF4034:
	.string	"TIMER_OUTAUTO_ENABLE ((uint16_t)TIMER_CCHP_OAEN)"
.LASF3997:
	.string	"TIMER_DMACFG_DMATC_13TRANSFER DMACFG_DMATC(12)"
.LASF2123:
	.string	"CAN_INTEN_RFFIE1 BIT(5)"
.LASF3453:
	.string	"CFG0_APB1PSC(regval) (BITS(8,10) & ((uint32_t)(regval) << 8))"
.LASF2901:
	.string	"GPIO_BOP_CR14 BIT(30)"
.LASF1836:
	.string	"WDHT_WDHT(regval) (BITS(0,11) & ((uint32_t)(regval) << 0))"
.LASF2995:
	.string	"GPIO_EVENT_PIN_1 ((uint8_t)0x01U)"
.LASF211:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF176:
	.string	"__LDBL_DIG__ 33"
.LASF2280:
	.string	"CAN_MODE_INITIALIZE ((uint8_t)0x01U)"
.LASF927:
	.string	"_SYS__TIMESPEC_H_ "
.LASF1537:
	.string	"DATA_BITS_5 5"
.LASF1614:
	.string	"__int_fast16_t_defined 1"
.LASF4173:
	.string	"USART_CTL1_LMEN BIT(14)"
.LASF34:
	.string	"__WCHAR_TYPE__ int"
.LASF4386:
	.string	"_sign"
.LASF3071:
	.string	"I2C_CTL0(i2cx) REG32((i2cx) + 0x00U)"
.LASF2033:
	.string	"CAN_F2DATA1(canx) REG32((canx) + 0x254U)"
.LASF131:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF2551:
	.string	"EXTI EXTI_BASE"
.LASF1955:
	.string	"BKP_TPCS_TEF BIT(8)"
.LASF2132:
	.string	"CAN_ERR_WERR BIT(0)"
.LASF745:
	.string	"__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})"
.LASF2585:
	.string	"EXTI_EVEN_EVEN8 BIT(8)"
.LASF981:
	.string	"PTHREAD_CREATE_DETACHED 0"
.LASF4503:
	.string	"bufsz"
.LASF2525:
	.string	"EXMC_SNCTL_NRBKEN BIT(0)"
.LASF4020:
	.string	"CTL0_CKDIV(regval) ((uint16_t)(BITS(8, 9) & ((uint32_t)(regval) << 8U)))"
.LASF3211:
	.string	"DBG_CTL_DSLP_HOLD BIT(1)"
.LASF1830:
	.string	"ADC_SAMPLETIME_28POINT5 SAMPTX_SPT(3)"
.LASF492:
	.string	"RT_DEVICE_FLAG_WRONLY 0x002"
.LASF3310:
	.string	"RCU_INT_PLL2STBIF BIT(6)"
.LASF905:
	.string	"PDP_ENDIAN _PDP_ENDIAN"
.LASF3439:
	.string	"CFG0_SCSS(regval) (BITS(2,3) & ((uint32_t)(regval) << 2))"
.LASF1943:
	.string	"BKP_TPCTL REG16((BKP) + 0x30U)"
.LASF1701:
	.string	"BKP_BASE (APB1_BUS_BASE + 0x00006C00U)"
.LASF980:
	.string	"PTHREAD_EXPLICIT_SCHED 2"
.LASF3507:
	.string	"RCU_CKUSB_CKPLL_DIV1_5 CFG0_USBPSC(0)"
.LASF4205:
	.string	"USART_PM_EVEN CTL0_PM(2)"
.LASF1876:
	.string	"ADC_RESOLUTION_6B OVSCR_DRES(3)"
.LASF929:
	.string	"TIMESPEC_TO_TIMEVAL(tv,ts) do { (tv)->tv_sec = (ts)->tv_sec; (tv)->tv_usec = (ts)->tv_nsec / 1000; } while (0)"
.LASF3481:
	.string	"RCU_PLL_MUL8 CFG0_PLLMF(6)"
.LASF1960:
	.string	"OCTL_RCCV(regval) (BITS(0,6) & ((uint32_t)(regval) << 0))"
.LASF3778:
	.string	"TIMER1 (TIMER_BASE + 0x00000000U)"
.LASF3548:
	.string	"RCU_PREDV1_DIV5 CFG1_PREDV1(4)"
.LASF671:
	.string	"__ptr_t void *"
.LASF2155:
	.string	"CAN_TMDATA0_DB3 BITS(24,31)"
.LASF683:
	.string	"__BEGIN_DECLS "
.LASF1059:
	.string	"EACCES 13"
.LASF2699:
	.string	"FMC_CTL0_MER BIT(2)"
.LASF3883:
	.string	"TIMER_CHCTL1_CH2COMCTL BITS(4,6)"
.LASF395:
	.string	"RT_TRUE 1"
.LASF822:
	.string	"_RAND48_SEED_2 (0x1234)"
.LASF3102:
	.string	"I2C_SADDR0_ADDRESS_H BITS(8,9)"
.LASF3818:
	.string	"TIMER_CTL1_ISO0N BIT(9)"
.LASF3633:
	.string	"GD32VF10X_SPI_H "
.LASF2290:
	.string	"CAN_TIMEOUT ((uint32_t)0x0000FFFFU)"
.LASF2293:
	.string	"CAN_INT_RFF0 CAN_INTEN_RFFIE0"
.LASF3890:
	.string	"TIMER_CHCTL1_CH2CAPPSC BITS(2,3)"
.LASF2761:
	.string	"OB_WP_11 ((uint32_t)0x00000800U)"
.LASF3757:
	.string	"SPI_I2S_INT_FLAG_RXORERR ((uint8_t)0x02U)"
.LASF83:
	.string	"__INT_WIDTH__ 32"
.LASF1953:
	.string	"BKP_TPCS_TIR BIT(1)"
.LASF2671:
	.string	"EXTI_PD_PD18 BIT(18)"
.LASF3319:
	.string	"RCU_INT_IRC40KSTBIC BIT(16)"
.LASF953:
	.string	"__daddr_t_defined "
.LASF4397:
	.string	"__tm_isdst"
.LASF1800:
	.string	"ADC_DAUL_INSERTED_PARALLEL CTL0_SYNCM(5)"
.LASF1625:
	.string	"UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)"
.LASF2847:
	.string	"GPIO_ISTAT_ISTAT8 BIT(8)"
.LASF1007:
	.string	"S_IREAD 0000400"
.LASF1968:
	.string	"CAN0 CAN_BASE"
.LASF1604:
	.string	"__FAST64 \"ll\""
.LASF2321:
	.string	"DAC0_R8DH REG32(DAC + 0x10U)"
.LASF3538:
	.string	"RCU_PREDV0_DIV12 CFG1_PREDV0(11)"
.LASF2774:
	.string	"OB_WP_24 ((uint32_t)0x01000000U)"
.LASF2052:
	.string	"CAN_F21DATA1(canx) REG32((canx) + 0x2ECU)"
.LASF2241:
	.string	"CAN_BT_SJW_1TQ ((uint8_t)0x00U)"
.LASF3293:
	.string	"RCU_CFG0_AHBPSC BITS(4,7)"
.LASF144:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF1107:
	.string	"ECONNABORTED 113"
.LASF1209:
	.string	"LOCK_EX 0x02"
.LASF3109:
	.string	"I2C_STAT0_BTC BIT(2)"
.LASF4267:
	.string	"TMR_MTIME 0x0"
.LASF1538:
	.string	"DATA_BITS_6 6"
.LASF33:
	.string	"__PTRDIFF_TYPE__ int"
.LASF4067:
	.string	"TIMER_OC_SHADOW_ENABLE ((uint16_t)0x0008U)"
.LASF2175:
	.string	"CAN_FCTL_FLD BIT(0)"
.LASF281:
	.string	"__REGISTER_PREFIX__ "
.LASF4567:
	.string	"UART3_IRQn"
.LASF2703:
	.string	"FMC_CTL0_LK BIT(7)"
.LASF1016:
	.string	"S_IFLNK _IFLNK"
.LASF2614:
	.string	"EXTI_RTEN_RTEN18 BIT(18)"
.LASF4429:
	.string	"_stdout"
.LASF493:
	.string	"RT_DEVICE_FLAG_RDWR 0x003"
.LASF4195:
	.string	"USART_CTL1_REG_OFFSET (0x00000010U)"
.LASF2626:
	.string	"EXTI_FTEN_FTEN11 BIT(11)"
.LASF1941:
	.string	"BKP_DATA41 REG16((BKP) + 0xBCU)"
.LASF115:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF95:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF517:
	.string	"RT_DEVICE_CTRL_BLK_SYNC 0x11"
.LASF2255:
	.string	"CAN_BT_BS1_11TQ ((uint8_t)0x0AU)"
.LASF2227:
	.string	"ERR_ERRN(regval) (BITS(4,6) & ((uint32_t)(regval) << 4))"
.LASF4227:
	.string	"CTL1_CPL(regval) (BIT(10) & ((uint32_t)(regval) << 10))"
.LASF2273:
	.string	"CAN_FF_STANDARD ((uint32_t)0x00000000U)"
.LASF501:
	.string	"RT_DEVICE_FLAG_INT_TX 0x400"
.LASF915:
	.string	"_SYS__SIGSET_H_ "
.LASF4044:
	.string	"TIMER_CH_1 ((uint16_t)0x0001U)"
.LASF2428:
	.string	"DMA_CH2CNT(dmax) REG32((dmax) + 0x34U)"
.LASF958:
	.string	"_OFF_T_DECLARED "
.LASF1064:
	.string	"ENODEV 19"
.LASF1811:
	.string	"ADC0_1_EXTTRIG_REGULAR_T0_CH2 CTL1_ETSRC(2)"
.LASF3555:
	.string	"RCU_PREDV1_DIV12 CFG1_PREDV1(11)"
.LASF3987:
	.string	"TIMER_DMACFG_DMATC_3TRANSFER DMACFG_DMATC(2)"
.LASF2294:
	.string	"CAN_INT_RFO0 CAN_INTEN_RFOIE0"
.LASF2146:
	.string	"CAN_TMI_FF BIT(2)"
.LASF1474:
	.string	"SIG_DFL ((_sig_func_ptr)0)"
.LASF3206:
	.string	"DBG DBG_BASE"
.LASF1029:
	.string	"S_IWOTH 0000002"
.LASF3829:
	.string	"TIMER_SMCFG_SMC1 BIT(14)"
.LASF4103:
	.string	"SMCFG_SMC(regval) (BITS(0, 2) & ((uint32_t)(regval) << 0U))"
.LASF1593:
	.string	"int +2"
.LASF4329:
	.string	"flag"
.LASF2578:
	.string	"EXTI_EVEN_EVEN1 BIT(1)"
.LASF2164:
	.string	"CAN_RFIFOMP_DLENC BITS(0,3)"
.LASF2023:
	.string	"CAN_F20DATA0(canx) REG32((canx) + 0x2E0U)"
.LASF4388:
	.string	"__tm"
.LASF816:
	.string	"_ATEXIT_SIZE 32"
.LASF1512:
	.string	"RT_DATAQUEUE_EMPTY(dq) ((dq)->size - RT_DATAQUEUE_SIZE(dq))"
.LASF345:
	.string	"RT_CONSOLEBUF_SIZE 128"
.LASF936:
	.string	"FD_SET(n,p) ((p)->fds_bits[(n)/NFDBITS] |= (1L << ((n) % NFDBITS)))"
.LASF3132:
	.string	"I2C_RT_RISETIME BITS(0,5)"
.LASF3216:
	.string	"DBG_CTL_TIMER1_HOLD BIT(11)"
.LASF2741:
	.string	"FMC_USPC ((uint8_t)0xBBU)"
.LASF3017:
	.string	"GPIO_PIN_SOURCE_7 ((uint8_t)0x07U)"
.LASF1265:
	.string	"TIOCGRS485 0x542E"
.LASF2760:
	.string	"OB_WP_10 ((uint32_t)0x00000400U)"
.LASF719:
	.string	"__used __attribute__((__used__))"
.LASF950:
	.string	"_BLKSIZE_T_DECLARED "
.LASF84:
	.string	"__LONG_WIDTH__ 32"
.LASF3207:
	.string	"DBG_ID REG32(DBG + 0x00U)"
.LASF2231:
	.string	"CAN_ERRN_3 ERR_ERRN(3)"
.LASF784:
	.string	"__no_lock_analysis __lock_annotate(no_thread_safety_analysis)"
.LASF17:
	.string	"__SIZEOF_LONG__ 4"
.LASF2233:
	.string	"CAN_ERRN_5 ERR_ERRN(5)"
.LASF3907:
	.string	"TIMER_CHCTL2_CH3P BIT(13)"
.LASF4113:
	.string	"TIMER_MASTER_SLAVE_MODE_DISABLE ((uint32_t)0x00000000U)"
.LASF2245:
	.string	"CAN_BT_BS1_1TQ ((uint8_t)0x00U)"
.LASF2779:
	.string	"OB_WP_29 ((uint32_t)0x20000000U)"
.LASF1599:
	.string	"__INT32 \"l\""
.LASF1286:
	.string	"TIOCSLCKTRMIOS 0x5457"
.LASF573:
	.string	"_ATFILE_SOURCE 1"
.LASF2480:
	.string	"DMA_INT_FLAG_G DMA_INTF_GIF"
.LASF1359:
	.string	"SIOCGIFMTU 0x8921"
.LASF4193:
	.string	"USART_STAT_REG_OFFSET (0x00000000U)"
.LASF2749:
	.string	"OB_WP3_WP3 ((uint32_t)0xFF000000U)"
.LASF3462:
	.string	"RCU_APB2_CKAHB_DIV4 CFG0_APB2PSC(5)"
.LASF486:
	.string	"RT_WAITING_NO 0"
.LASF1222:
	.string	"_IOWR(a,b,c) _IOC(_IOC_READ|_IOC_WRITE,(a),(b),sizeof(c))"
.LASF1135:
	.string	"_SYS_FCNTL_H_ "
.LASF4115:
	.string	"TIMER_EXT_TRI_PSC_OFF SMCFG_ETPSC(0)"
.LASF4412:
	.string	"_lbfsize"
.LASF684:
	.string	"__END_DECLS "
.LASF3189:
	.string	"PSC_PSC(regval) (BITS(0,2) & ((uint32_t)(regval) << 0))"
.LASF2840:
	.string	"GPIO_ISTAT_ISTAT1 BIT(1)"
.LASF3910:
	.string	"TIMER_CAR_CARL BITS(0,15)"
.LASF1103:
	.string	"ENOTSOCK 108"
.LASF3402:
	.string	"RCU_RSTSCK_IRC40KEN BIT(0)"
.LASF1451:
	.string	"SIGPIPE 13"
.LASF1166:
	.string	"FSYNC _FSYNC"
.LASF658:
	.string	"_GCC_WCHAR_T "
.LASF824:
	.string	"_RAND48_MULT_1 (0xdeec)"
.LASF2454:
	.string	"DMA_INTC_ERRIFC BIT(3)"
.LASF2596:
	.string	"EXTI_RTEN_RTEN0 BIT(0)"
.LASF1404:
	.string	"HAVE_FDSET 1"
.LASF3371:
	.string	"RCU_APB2EN_ADC0EN BIT(9)"
.LASF3268:
	.string	"RCU_APB1RST REG32(RCU + 0x10U)"
.LASF2937:
	.string	"AFIO_EC_PORT BITS(4, 6)"
.LASF4358:
	.string	"device_id"
.LASF682:
	.string	"__has_builtin(x) 0"
.LASF3928:
	.string	"TIMER_INT_CH0 TIMER_DMAINTEN_CH0IE"
.LASF1311:
	.string	"TIOCM_DSR 0x100"
.LASF3905:
	.string	"TIMER_CHCTL2_CH2NP BIT(11)"
.LASF1317:
	.string	"N_TTY 0"
.LASF3957:
	.string	"TIMER_DMA_CH1D ((uint16_t)TIMER_DMAINTEN_CH1DEN)"
.LASF4148:
	.string	"USART_DATA_DATA BITS(0,8)"
.LASF605:
	.string	"___int8_t_defined 1"
.LASF2647:
	.string	"EXTI_SWIEV_SWIEV13 BIT(13)"
.LASF3855:
	.string	"TIMER_INTF_CH1OF BIT(10)"
.LASF3120:
	.string	"I2C_STAT0_SMBALT BIT(15)"
.LASF1647:
	.string	"INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)"
.LASF3401:
	.string	"RCU_BDCTL_BKPRST BIT(16)"
.LASF68:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF3346:
	.string	"RCU_APB1RST_SPI2RST BIT(15)"
.LASF2141:
	.string	"CAN_BT_SJW BITS(24,25)"
.LASF1441:
	.string	"SIGILL 4"
.LASF370:
	.string	"SOC_GD32VF103V "
.LASF1627:
	.string	"INT16_MAX (__INT16_MAX__)"
.LASF3483:
	.string	"RCU_PLL_MUL10 CFG0_PLLMF(8)"
.LASF114:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF4433:
	.string	"_unspecified_locale_info"
.LASF3642:
	.string	"SPI_RCRC(spix) REG32((spix) + 0x14U)"
.LASF2624:
	.string	"EXTI_FTEN_FTEN9 BIT(9)"
.LASF2380:
	.string	"DAC_WAVE_BIT_WIDTH_7 DWBW(6)"
.LASF4410:
	.string	"_flags"
.LASF4606:
	.string	"RCU_CAN1"
.LASF322:
	.string	"RT_ALIGN_SIZE 4"
.LASF4220:
	.string	"USART_LBLEN_11B CTL1_LBLEN(1)"
.LASF1394:
	.string	"DT_UNKNOWN 0x00"
.LASF260:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF3246:
	.string	"PMU_LVDT_1 CTL_LVDT(1)"
.LASF2404:
	.string	"DAC_TRIANGLE_AMPLITUDE_7 DAC_WAVE_BIT_WIDTH_3"
.LASF3026:
	.string	"GPIO_PIN_0 BIT(0)"
.LASF3655:
	.string	"SPI_CTL0_FF16 BIT(11)"
.LASF4603:
	.string	"RCU_I2C0"
.LASF4604:
	.string	"RCU_I2C1"
.LASF2015:
	.string	"CAN_F12DATA0(canx) REG32((canx) + 0x2A0U)"
.LASF3967:
	.string	"TIMER_DMACFG_DMATA_SMCFG DMACFG_DMATA(2)"
.LASF3187:
	.string	"FWDGT_STAT_PUD BIT(0)"
.LASF985:
	.string	"_PTHREAD_ONCE_INIT { 1, 0 }"
.LASF3813:
	.string	"TIMER_CTL1_CCUC BIT(2)"
.LASF1824:
	.string	"ADC0_1_EXTTRIG_INSERTED_EXTI_15 CTL1_ETSIC(6)"
.LASF4140:
	.string	"USART_STAT_NERR BIT(2)"
.LASF3966:
	.string	"TIMER_DMACFG_DMATA_CTL1 DMACFG_DMATA(1)"
.LASF2134:
	.string	"CAN_ERR_BOERR BIT(2)"
.LASF2032:
	.string	"CAN_F1DATA1(canx) REG32((canx) + 0x24CU)"
.LASF4476:
	.string	"_nmalloc"
.LASF1386:
	.string	"SIOCSRARP 0x8962"
.LASF1346:
	.string	"SIOCSIFFLAGS 0x8914"
.LASF2696:
	.string	"FMC_STAT0_ENDF BIT(5)"
.LASF2809:
	.string	"GPIO_CTL0_MD1 BITS(4, 5)"
.LASF604:
	.string	"__have_long32 1"
.LASF1368:
	.string	"SIOCADDMULTI 0x8931"
.LASF2686:
	.string	"OB_WP0 REG16((OB) + 0x08U)"
.LASF4271:
	.string	"TMR_FREQ ((uint32_t)SystemCoreClock/4)"
.LASF2370:
	.string	"DAC_WAVE_DISABLE CTL_DWM(0)"
.LASF618:
	.string	"_T_PTRDIFF_ "
.LASF598:
	.string	"_NOINLINE_STATIC _NOINLINE static"
.LASF3617:
	.string	"RTC_DIVL_DIV BITS(0,15)"
.LASF3236:
	.string	"PMU_CTL_STBRST BIT(3)"
.LASF857:
	.string	"_REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)"
.LASF3117:
	.string	"I2C_STAT0_OUERR BIT(11)"
.LASF3764:
	.string	"SPI_FLAG_CRCERR SPI_STAT_CRCERR"
.LASF472:
	.string	"RT_THREAD_STAT_SIGNAL_READY (RT_THREAD_STAT_SIGNAL | RT_THREAD_READY)"
.LASF3809:
	.string	"TIMER_CTL0_CAM BITS(5,6)"
.LASF700:
	.string	"__CC_SUPPORTS_INLINE 1"
.LASF1761:
	.string	"ADC_CTL1_DMA BIT(8)"
.LASF2771:
	.string	"OB_WP_21 ((uint32_t)0x00200000U)"
.LASF978:
	.string	"PTHREAD_SCOPE_SYSTEM 1"
.LASF2803:
	.string	"AFIO_EXTISS1 REG32(AFIO + 0x0CU)"
.LASF1066:
	.string	"EISDIR 21"
.LASF3574:
	.string	"RCU_PLL2_MUL10 CFG1_PLL2MF(8)"
.LASF1578:
	.string	"LXTAL_VALUE ((uint32_t)32768)"
.LASF1668:
	.string	"INT8_C(x) __INT8_C(x)"
.LASF3251:
	.string	"PMU_LVDT_6 CTL_LVDT(6)"
.LASF510:
	.string	"RT_DEVICE_CTRL_SUSPEND 0x02"
.LASF2881:
	.string	"GPIO_BOP_BOP10 BIT(10)"
.LASF1975:
	.string	"CAN_INTEN(canx) REG32((canx) + 0x14U)"
.LASF3853:
	.string	"TIMER_INTF_BRKIF BIT(7)"
.LASF53:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF3639:
	.string	"SPI_STAT(spix) REG32((spix) + 0x08U)"
.LASF640:
	.string	"___int_size_t_h "
.LASF4441:
	.string	"_cvtlen"
.LASF3335:
	.string	"RCU_APB2RST_TIMER0RST BIT(11)"
.LASF1137:
	.string	"_FOPEN (-1)"
.LASF2725:
	.string	"FMC_OBSTAT_REG_OFFSET 0x1CU"
.LASF2646:
	.string	"EXTI_SWIEV_SWIEV12 BIT(12)"
.LASF4453:
	.string	"_seed"
.LASF4022:
	.string	"TIMER_CKDIV_DIV2 CTL0_CKDIV(1)"
.LASF3898:
	.string	"TIMER_CHCTL2_CH1EN BIT(4)"
.LASF4575:
	.string	"DMA1_Channel4_IRQn"
.LASF3628:
	.string	"RTC_FLAG_SECOND RTC_CTL_SCIF"
.LASF1340:
	.string	"SIOCDELRT 0x890C"
.LASF213:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF2312:
	.string	"CRC_CTL_RST BIT(0)"
.LASF1097:
	.string	"EOPNOTSUPP 95"
.LASF4416:
	.string	"_seek"
.LASF4583:
	.string	"SystemCoreClock"
.LASF4065:
	.string	"TIMER_OC_MODE_PWM0 ((uint16_t)0x0060U)"
.LASF732:
	.string	"__nonnull_all __attribute__((__nonnull__))"
.LASF835:
	.string	"_REENT_CHECK_MP(ptr) "
.LASF376:
	.string	"RT_DEBUG_MEMHEAP 0"
.LASF3442:
	.string	"RCU_SCSS_PLL CFG0_SCSS(2)"
.LASF3953:
	.string	"TIMER_FLAG_CH2O TIMER_INTF_CH2OF"
.LASF1062:
	.string	"EEXIST 17"
.LASF1322:
	.string	"N_AX25 5"
.LASF2383:
	.string	"DAC_WAVE_BIT_WIDTH_10 DWBW(9)"
.LASF1277:
	.string	"TIOCGPTLCK 0x80045439"
.LASF1487:
	.string	"RT_SLIST_OBJECT_INIT(object) { RT_NULL }"
.LASF3807:
	.string	"TIMER_CTL0_SPM BIT(3)"
.LASF3235:
	.string	"PMU_CTL_WURST BIT(2)"
.LASF591:
	.string	"_BEGIN_STD_C "
.LASF4465:
	.string	"_wctomb_state"
.LASF1302:
	.string	"TIOCSER_TEMT 0x01"
.LASF2061:
	.string	"CAN_TMDATA0(canx,bank) REG32((canx) + 0x188U + ((bank) * 0x10U))"
.LASF4570:
	.string	"TIMER6_IRQn"
.LASF159:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF773:
	.string	"__lockable __lock_annotate(lockable)"
.LASF4512:
	.string	"getc"
.LASF2617:
	.string	"EXTI_FTEN_FTEN2 BIT(2)"
.LASF3580:
	.string	"RCU_PLL2_MUL16 CFG1_PLL2MF(14)"
.LASF2334:
	.string	"DAC_CTL_DWM0 BITS(6,7)"
.LASF1376:
	.string	"SIOCGIFCOUNT 0x8938"
.LASF75:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF4451:
	.string	"_iobs"
.LASF1399:
	.string	"HAVE_NEWLIB_H 1"
.LASF4487:
	.string	"_sys_errlist"
.LASF1524:
	.string	"__SERIAL_H__ "
.LASF4510:
	.string	"configure"
.LASF4124:
	.string	"TIMER_CHVSEL_DISABLE ((uint16_t)0x0000U)"
.LASF4539:
	.string	"ADC0_1_IRQn"
.LASF3550:
	.string	"RCU_PREDV1_DIV7 CFG1_PREDV1(6)"
.LASF2406:
	.string	"DAC_TRIANGLE_AMPLITUDE_31 DAC_WAVE_BIT_WIDTH_5"
.LASF3279:
	.string	"RCU_CTL_IRC8MADJ BITS(3,7)"
.LASF1712:
	.string	"USBFS_BASE (AHB1_BUS_BASE + 0x0FFE8000U)"
.LASF1237:
	.string	"TIOCEXCL 0x540C"
.LASF3399:
	.string	"RCU_BDCTL_RTCSRC BITS(8,9)"
.LASF1848:
	.string	"ADC_CHANNEL_0 ((uint8_t)0x00U)"
.LASF193:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF552:
	.string	"_HAVE_LONG_DOUBLE 1"
.LASF3219:
	.string	"DBG_CTL_CAN0_HOLD BIT(14)"
.LASF124:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF848:
	.string	"_REENT_MP_P5S(ptr) ((ptr)->_p5s)"
.LASF4613:
	.string	"RCU_GPIOB"
.LASF4112:
	.string	"TIMER_MASTER_SLAVE_MODE_ENABLE TIMER_SMCFG_MSM"
.LASF2253:
	.string	"CAN_BT_BS1_9TQ ((uint8_t)0x08U)"
.LASF4183:
	.string	"USART_CTL2_CTSEN BIT(9)"
.LASF2496:
	.string	"DMA_MEMORY_INCREASE_ENABLE ((uint8_t)0x0001U)"
.LASF3852:
	.string	"TIMER_INTF_TRGIF BIT(6)"
.LASF3137:
	.string	"I2C_REG_VAL2(i2cx,offset) (REG32((i2cx) + ((uint32_t)(offset) >> 22)))"
.LASF249:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF4445:
	.string	"_sig_func"
.LASF1789:
	.string	"ADC_FLAG_STIC ADC_STAT_STIC"
.LASF306:
	.string	"__riscv_mul 1"
.LASF3931:
	.string	"TIMER_INT_CH3 TIMER_DMAINTEN_CH3IE"
.LASF2992:
	.string	"GPIO_PORT_SOURCE_GPIOD ((uint8_t)0x03U)"
.LASF1355:
	.string	"SIOCGIFMETRIC 0x891d"
.LASF64:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF4579:
	.string	"CAN1_EWMC_IRQn"
.LASF4191:
	.string	"USART_REG_VAL2(usartx,offset) (REG32((usartx) + ((uint32_t)(offset) >> 22)))"
.LASF3787:
	.string	"TIMER_DMAINTEN(timerx) REG32((timerx) + 0x0CU)"
.LASF2109:
	.string	"CAN_TSTAT_TMLS2 BIT(31)"
.LASF775:
	.string	"__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))"
.LASF964:
	.string	"_SSIZE_T_DECLARED "
.LASF4052:
	.string	"TIMER_OC_POLARITY_LOW ((uint16_t)0x0002U)"
.LASF148:
	.string	"__FLT_DIG__ 6"
.LASF1642:
	.string	"INT_LEAST64_MAX (__INT_LEAST64_MAX__)"
.LASF3641:
	.string	"SPI_CRCPOLY(spix) REG32((spix) + 0x10U)"
.LASF255:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF1089:
	.string	"EPROTO 71"
.LASF3030:
	.string	"GPIO_PIN_4 BIT(4)"
.LASF1417:
	.string	"SIGEV_NONE 1"
.LASF2784:
	.string	"FMC_SIZE (*(uint16_t *)0x1FFFF7E0U)"
.LASF2916:
	.string	"GPIO_BC_CR13 BIT(13)"
.LASF2943:
	.string	"AFIO_PCF0_USART2_REMAP BITS(4, 5)"
.LASF3362:
	.string	"RCU_AHBEN_CRCEN BIT(6)"
.LASF3058:
	.string	"GPIO_CAN0_FULL_REMAP ((uint32_t)0x001D6000U)"
.LASF2211:
	.string	"TMDATA1_DB7(regval) (BITS(24,31) & ((uint32_t)(regval) << 24))"
.LASF4661:
	.string	"serial"
.LASF3423:
	.string	"AHBEN_REG_OFFSET 0x14U"
.LASF125:
	.string	"__UINT64_C(c) c ## ULL"
.LASF4365:
	.string	"write"
.LASF1345:
	.string	"SIOCGIFFLAGS 0x8913"
.LASF3469:
	.string	"RCU_CKADC_CKAPB2_DIV12 ((uint32_t)0x00000005U)"
.LASF2098:
	.string	"CAN_TSTAT_MTF2 BIT(16)"
.LASF2753:
	.string	"OB_WP_3 ((uint32_t)0x00000008U)"
.LASF592:
	.string	"_END_STD_C "
.LASF2105:
	.string	"CAN_TSTAT_TME1 BIT(27)"
.LASF2007:
	.string	"CAN_F4DATA0(canx) REG32((canx) + 0x260U)"
.LASF960:
	.string	"_UID_T_DECLARED "
.LASF4588:
	.string	"RCU_EXMC"
.LASF1889:
	.string	"OVSCR_OVSR(regval) (BITS(2,4) & ((uint32_t)(regval) << 2))"
.LASF1677:
	.string	"UINTMAX_C(x) __UINTMAX_C(x)"
.LASF1494:
	.string	"RTM_EXPORT(symbol) "
.LASF2546:
	.string	"EXMC_MEMORY_TYPE_NOR SNCTL_NRTP(2)"
.LASF1557:
	.string	"RT_SERIAL_EVENT_RX_TIMEOUT 0x05"
.LASF1783:
	.string	"ADC_OVSCR_OVSS BITS(5,8)"
.LASF1162:
	.string	"O_SYNC _FSYNC"
.LASF3142:
	.string	"I2C_I2CMODE_ENABLE ((uint32_t)0x00000000U)"
.LASF4077:
	.string	"TIMER_IC_POLARITY_BOTH_EDGE ((uint16_t)0x000AU)"
.LASF3995:
	.string	"TIMER_DMACFG_DMATC_11TRANSFER DMACFG_DMATC(10)"
.LASF3440:
	.string	"RCU_SCSS_IRC8M CFG0_SCSS(0)"
.LASF2216:
	.string	"GET_RFIFOMDATA0_DB0(regval) GET_BITS((uint32_t)(regval), 0, 7)"
.LASF3111:
	.string	"I2C_STAT0_STPDET BIT(4)"
.LASF3145:
	.string	"I2C_SMBUS_HOST I2C_CTL0_SMBSEL"
.LASF3148:
	.string	"I2C_ACK_DISABLE ((uint32_t)0x00000000U)"
.LASF859:
	.string	"_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)"
.LASF179:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF387:
	.string	"RT_ASSERT(EX) if (!(EX)) { rt_assert_handler(#EX, __FUNCTION__, __LINE__); }"
.LASF2747:
	.string	"OB_WP1_WP1 ((uint32_t)0x0000FF00U)"
.LASF4562:
	.string	"RTC_ALARM_IRQn"
.LASF637:
	.string	"_SIZE_T_DEFINED "
.LASF1576:
	.string	"IRC8M_STARTUP_TIMEOUT ((uint16_t)0x0500)"
.LASF4640:
	.string	"USART_INT_FLAG_ERR_ORERR"
.LASF4340:
	.string	"RT_Device_Class_USBDevice"
.LASF2730:
	.string	"WS_WSCNT_1 WS_WSCNT(1)"
.LASF2429:
	.string	"DMA_CH2PADDR(dmax) REG32((dmax) + 0x38U)"
.LASF4156:
	.string	"USART_CTL0_RBNEIE BIT(5)"
.LASF875:
	.string	"CLOCKS_PER_SEC _CLOCKS_PER_SEC_"
.LASF3144:
	.string	"I2C_SMBUS_DEVICE ((uint32_t)0x00000000U)"
.LASF1423:
	.string	"SI_ASYNCIO 4"
.LASF918:
	.string	"__time_t_defined "
.LASF864:
	.string	"_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))"
.LASF2329:
	.string	"DAC1_DO REG32(DAC + 0x30U)"
.LASF677:
	.string	"__bounded "
.LASF400:
	.string	"RT_TICK_MAX RT_UINT32_MAX"
.LASF3962:
	.string	"TIMER_DMAREQUEST_UPDATEEVENT TIMER_CTL1_DMAS"
.LASF236:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF753:
	.string	"__weak_reference(sym,alias) __asm__(\".weak \" #alias); __asm__(\".equ \" #alias \", \" #sym)"
.LASF4577:
	.string	"CAN1_RX0_IRQn"
.LASF3363:
	.string	"RCU_AHBEN_EXMCEN BIT(8)"
.LASF1351:
	.string	"SIOCGIFBRDADDR 0x8919"
.LASF110:
	.string	"__INT16_C(c) c"
.LASF2918:
	.string	"GPIO_BC_CR15 BIT(15)"
.LASF106:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF4056:
	.string	"TIMER_OC_IDLE_STATE_LOW ((uint16_t)0x0000)"
.LASF654:
	.string	"_WCHAR_T_DEFINED "
.LASF2586:
	.string	"EXTI_EVEN_EVEN9 BIT(9)"
.LASF3220:
	.string	"DBG_CTL_I2C0_HOLD BIT(15)"
.LASF1587:
	.string	"long"
.LASF830:
	.string	"_N_LISTS 30"
.LASF4334:
	.string	"RT_Device_Class_MTD"
.LASF4008:
	.string	"TIMER_EVENT_SRC_CMTG ((uint16_t)0x0020U)"
.LASF3331:
	.string	"RCU_APB2RST_PDRST BIT(5)"
.LASF4668:
	.string	"usart"
.LASF2669:
	.string	"EXTI_PD_PD16 BIT(16)"
.LASF1422:
	.string	"SI_TIMER 3"
.LASF320:
	.string	"RT_CONFIG_H__ "
.LASF2461:
	.string	"DMA_CHXCTL_PNAGA BIT(6)"
.LASF3870:
	.string	"TIMER_CHCTL0_CH0COMCEN BIT(7)"
.LASF4237:
	.string	"USART_RTS_ENABLE CLT2_RTSEN(1)"
.LASF185:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF2625:
	.string	"EXTI_FTEN_FTEN10 BIT(10)"
.LASF3846:
	.string	"TIMER_INTF_UPIF BIT(0)"
.LASF3040:
	.string	"GPIO_PIN_14 BIT(14)"
.LASF2361:
	.string	"DAC_TRIGGER_T5_TRGO CTL_DTSEL(0)"
.LASF3594:
	.string	"RTC RTC_BASE"
.LASF1523:
	.string	"RT_DEVICE(device) ((rt_device_t)device)"
.LASF2139:
	.string	"CAN_BT_BS1 BITS(16,19)"
.LASF2660:
	.string	"EXTI_PD_PD7 BIT(7)"
.LASF2308:
	.string	"CRC_FDATA REG32(CRC + 0x04U)"
.LASF3306:
	.string	"RCU_INT_IRC8MSTBIF BIT(2)"
.LASF2875:
	.string	"GPIO_BOP_BOP4 BIT(4)"
.LASF2733:
	.string	"OB_FWDGT_HW ((uint8_t)0x00U)"
.LASF2738:
	.string	"OB_BOOT_B0 ((uint8_t)0x08U)"
.LASF2199:
	.string	"FDATA_MASK_HIGH(regval) (BITS(16,31) & ((uint32_t)(regval) << 16))"
.LASF3404:
	.string	"RCU_RSTSCK_RSTFC BIT(24)"
.LASF2186:
	.string	"CAN_REG_VALS(canx,offset) (REG32((canx) + ((uint32_t)(offset) >> 12)))"
.LASF3413:
	.string	"RCU_CFG1_PREDV1 BITS(4,7)"
.LASF4497:
	.string	"baud_rate"
.LASF1481:
	.string	"rt_list_entry(node,type,member) rt_container_of(node, type, member)"
.LASF3436:
	.string	"RCU_CKSYSSRC_IRC8M CFG0_SCS(0)"
.LASF1561:
	.string	"RT_SERIAL_TX_INT 0x02"
.LASF49:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF2631:
	.string	"EXTI_FTEN_FTEN16 BIT(16)"
.LASF3649:
	.string	"SPI_CTL0_PSC BITS(3,5)"
.LASF3464:
	.string	"RCU_APB2_CKAHB_DIV16 CFG0_APB2PSC(7)"
.LASF4663:
	.string	"usart_config"
.LASF1973:
	.string	"CAN_RFIFO0(canx) REG32((canx) + 0x0CU)"
.LASF2514:
	.string	"ECLIC_PRIGROUP_LEVEL0_PRIO4 0"
.LASF4177:
	.string	"USART_CTL2_HDEN BIT(3)"
.LASF2396:
	.string	"DAC_LFSR_BITS10_0 DAC_WAVE_BIT_WIDTH_11"
.LASF3412:
	.string	"RCU_CFG1_PREDV0 BITS(0,3)"
.LASF2640:
	.string	"EXTI_SWIEV_SWIEV6 BIT(6)"
.LASF2548:
	.string	"EXMC_NWAIT_POLARITY_LOW ((uint32_t)0x00000000U)"
.LASF234:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF2561:
	.string	"EXTI_INTEN_INTEN3 BIT(3)"
.LASF494:
	.string	"RT_DEVICE_FLAG_REMOVABLE 0x004"
.LASF1424:
	.string	"SI_MESGQ 5"
.LASF608:
	.string	"___int64_t_defined 1"
.LASF3717:
	.string	"SPI_PSC_128 CTL0_PSC(6)"
.LASF4496:
	.string	"serial_configure"
.LASF2244:
	.string	"CAN_BT_SJW_4TQ ((uint8_t)0x03U)"
.LASF330:
	.string	"IDLE_THREAD_STACK_SIZE 256"
.LASF3432:
	.string	"INT_REG_OFFSET 0x08U"
.LASF246:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF2972:
	.string	"GPIO_MODE_MASK(n) (0xFU << (4U * (n)))"
.LASF2447:
	.string	"DMA_INTF_GIF BIT(0)"
.LASF1492:
	.string	"rt_slist_tail_entry(ptr,type,member) rt_slist_entry(rt_slist_tail(ptr), type, member)"
.LASF269:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF932:
	.string	"FD_SETSIZE 64"
.LASF1643:
	.string	"UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)"
.LASF1442:
	.string	"SIGTRAP 5"
.LASF1164:
	.string	"O_NOCTTY _FNOCTTY"
.LASF3314:
	.string	"RCU_INT_IRC8MSTBIE BIT(10)"
.LASF4136:
	.string	"USART_CTL2(usartx) REG32((usartx) + (0x00000014U))"
.LASF2859:
	.string	"GPIO_OCTL_OCTL4 BIT(4)"
.LASF2554:
	.string	"EXTI_RTEN REG32(EXTI + 0x08U)"
.LASF368:
	.string	"RT_SERIAL_RB_BUFSZ 64"
.LASF2076:
	.string	"CAN_CTL_TTC BIT(7)"
.LASF4194:
	.string	"USART_CTL0_REG_OFFSET (0x0000000CU)"
.LASF1182:
	.string	"FNONBLOCK _FNONBLOCK"
.LASF3710:
	.string	"CTL0_PSC(regval) (BITS(3,5) & ((uint32_t)(regval) << 3))"
.LASF1864:
	.string	"ADC_CHANNEL_16 ((uint8_t)0x10U)"
.LASF1547:
	.string	"PARITY_ODD 1"
.LASF4045:
	.string	"TIMER_CH_2 ((uint16_t)0x0002U)"
.LASF2140:
	.string	"CAN_BT_BS2 BITS(20,22)"
.LASF258:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF4513:
	.string	"dma_transmit"
.LASF311:
	.string	"__riscv_cmodel_medany 1"
.LASF1249:
	.string	"TIOCMSET 0x5418"
.LASF3974:
	.string	"TIMER_DMACFG_DMATA_CNT DMACFG_DMATA(9)"
.LASF4161:
	.string	"USART_CTL0_PCEN BIT(10)"
.LASF3252:
	.string	"PMU_LVDT_7 CTL_LVDT(7)"
.LASF3559:
	.string	"RCU_PREDV1_DIV16 CFG1_PREDV1(15)"
.LASF3968:
	.string	"TIMER_DMACFG_DMATA_DMAINTEN DMACFG_DMATA(3)"
.LASF3437:
	.string	"RCU_CKSYSSRC_HXTAL CFG0_SCS(1)"
.LASF2520:
	.string	"GD32VF103_EXMC_H "
.LASF238:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF3990:
	.string	"TIMER_DMACFG_DMATC_6TRANSFER DMACFG_DMATC(5)"
.LASF224:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF4074:
	.string	"TIMER_UPDATECTL_CCUTRI TIMER_CTL1_CCUC"
.LASF868:
	.string	"_REENT _impure_ptr"
.LASF764:
	.string	"__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))"
.LASF4426:
	.string	"_reent"
.LASF3581:
	.string	"RCU_PLL2_MUL20 CFG1_PLL2MF(15)"
.LASF4138:
	.string	"USART_STAT_PERR BIT(0)"
.LASF72:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF3707:
	.string	"SPI_CK_PL_HIGH_PH_1EDGE SPI_CTL0_CKPL"
.LASF2872:
	.string	"GPIO_BOP_BOP1 BIT(1)"
.LASF2607:
	.string	"EXTI_RTEN_RTEN11 BIT(11)"
.LASF2431:
	.string	"DMA_CH3CTL(dmax) REG32((dmax) + 0x44U)"
.LASF3704:
	.string	"SPI_ENDIAN_MSB ((uint32_t)0x00000000U)"
.LASF3932:
	.string	"TIMER_INT_CMT TIMER_DMAINTEN_CMTIE"
.LASF1350:
	.string	"SIOCSIFDSTADDR 0x8918"
.LASF463:
	.string	"RT_TIMER_SKIP_LIST_MASK 0x3"
.LASF2744:
	.string	"OB_USER_USER ((uint32_t)0x00FF0000U)"
.LASF1334:
	.string	"SIOCSPGRP 0x8902"
.LASF4421:
	.string	"_offset"
.LASF3602:
	.string	"RTC_CNTL REG32(RTC + 0x1CU)"
.LASF4555:
	.string	"I2C1_ER_IRQn"
.LASF4004:
	.string	"TIMER_EVENT_SRC_CH0G ((uint16_t)0x0002U)"
.LASF135:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF693:
	.string	"__GNUCLIKE_BUILTIN_STDARG 1"
.LASF3055:
	.string	"GPIO_TIMER2_FULL_REMAP ((uint32_t)0x001A0C00U)"
.LASF1609:
	.string	"__int_least8_t_defined 1"
.LASF3948:
	.string	"TIMER_FLAG_CMT TIMER_INTF_CMTIF"
.LASF1215:
	.string	"_IOC(a,b,c,d) ( ((a)<<30) | ((b)<<8) | (c) | ((d)<<16) )"
.LASF3956:
	.string	"TIMER_DMA_CH0D ((uint16_t)TIMER_DMAINTEN_CH0DEN)"
.LASF1540:
	.string	"DATA_BITS_8 8"
.LASF1017:
	.string	"S_IFSOCK _IFSOCK"
.LASF536:
	.string	"RTLIBC_H__ "
.LASF466:
	.string	"RT_THREAD_SUSPEND 0x02"
.LASF122:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF2415:
	.string	"DMA0 (DMA_BASE)"
.LASF1743:
	.string	"ADC_STAT_STRC BIT(4)"
.LASF675:
	.string	"__attribute_format_strfmon__(a,b) "
.LASF3446:
	.string	"RCU_AHB_CKSYS_DIV4 CFG0_AHBPSC(9)"
.LASF1356:
	.string	"SIOCSIFMETRIC 0x891e"
.LASF383:
	.string	"RT_DEBUG_IPC 0"
.LASF2952:
	.string	"AFIO_PCF0_SPI2_REMAP BIT(28)"
.LASF3104:
	.string	"I2C_SADDR1_DUADEN BIT(0)"
.LASF3491:
	.string	"RCU_PLL_MUL18 (PLLMF_4 | CFG0_PLLMF(1))"
.LASF1635:
	.string	"INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)"
.LASF188:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF4471:
	.string	"_mbsrtowcs_state"
.LASF1619:
	.string	"UINTPTR_MAX (__UINTPTR_MAX__)"
.LASF3724:
	.string	"I2S_AUDIOSAMPLE_44K ((uint32_t)44100U)"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF2467:
	.string	"DMA_CHXCNT_CNT BITS(0,15)"
.LASF4521:
	.string	"WWDGT_IRQn"
.LASF2251:
	.string	"CAN_BT_BS1_7TQ ((uint8_t)0x06U)"
.LASF882:
	.string	"__int8_t_defined 1"
.LASF2441:
	.string	"DMA_CH5PADDR(dmax) REG32((dmax) + 0x74U)"
.LASF2858:
	.string	"GPIO_OCTL_OCTL3 BIT(3)"
.LASF2486:
	.string	"DMA_FLAG_HTF DMA_INTF_HTFIF"
.LASF35:
	.string	"__WINT_TYPE__ unsigned int"
.LASF2160:
	.string	"CAN_RFIFOMI_FT BIT(1)"
.LASF1476:
	.string	"SIG_ERR ((_sig_func_ptr)-1)"
.LASF3753:
	.string	"SPI_I2S_INT_RBNE ((uint8_t)0x01U)"
.LASF1444:
	.string	"SIGABRT 6"
.LASF2833:
	.string	"GPIO_CTL1_MD13 BITS(20, 21)"
.LASF3487:
	.string	"RCU_PLL_MUL14 CFG0_PLLMF(12)"
.LASF2541:
	.string	"EXMC_NOR_DATABUS_WIDTH_8B SNCTL_NRW(0)"
.LASF4392:
	.string	"__tm_mday"
.LASF2299:
	.string	"CAN_INT_PERR CAN_INTEN_PERRIE"
.LASF112:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF556:
	.string	"_WIDE_ORIENT 1"
.LASF3174:
	.string	"I2C_DTCY_2 ((uint32_t)0x00000000U)"
.LASF3622:
	.string	"RTC_INT_SECOND RTC_INTEN_SCIE"
.LASF1678:
	.string	"REG32(addr) (*(volatile uint32_t *)(uint32_t)(addr))"
.LASF3035:
	.string	"GPIO_PIN_9 BIT(9)"
.LASF3869:
	.string	"TIMER_CHCTL0_CH0COMCTL BITS(4,6)"
.LASF3939:
	.string	"TIMER_INT_FLAG_CH3 TIMER_INT_CH3"
.LASF1306:
	.string	"TIOCM_ST 0x008"
.LASF3418:
	.string	"RCU_CFG1_I2S2SEL BIT(18)"
.LASF415:
	.string	"SECTION(x) __attribute__((section(x)))"
.LASF3526:
	.string	"CFG1_PREDV0(regval) (BITS(0,3) & ((uint32_t)(regval) << 0))"
.LASF150:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF507:
	.string	"RT_DEVICE_OFLAG_OPEN 0x008"
.LASF2705:
	.string	"FMC_CTL0_ERRIE BIT(10)"
.LASF2920:
	.string	"GPIO_LOCK_LK1 BIT(1)"
.LASF1758:
	.string	"ADC_CTL1_CTN BIT(1)"
.LASF574:
	.string	"__ATFILE_VISIBLE 1"
.LASF4443:
	.string	"_new"
.LASF3666:
	.string	"SPI_CTL1_RBNEIE BIT(6)"
.LASF1268:
	.string	"TIOCSPTLCK 0x40045431"
.LASF944:
	.string	"__u_char_defined "
.LASF1785:
	.string	"ADC_OVSCR_DRES BITS(12,13)"
.LASF4551:
	.string	"TIMER3_IRQn"
.LASF4171:
	.string	"USART_CTL1_CKEN BIT(11)"
.LASF1855:
	.string	"ADC_CHANNEL_7 ((uint8_t)0x07U)"
.LASF512:
	.string	"RT_DEVICE_CTRL_SET_INT 0x10"
.LASF3122:
	.string	"I2C_STAT1_I2CBSY BIT(1)"
.LASF3998:
	.string	"TIMER_DMACFG_DMATC_14TRANSFER DMACFG_DMATC(13)"
.LASF1184:
	.string	"F_DUPFD 0"
.LASF1999:
	.string	"CAN_FMCFG(canx) REG32((canx) + 0x204U)"
.LASF2038:
	.string	"CAN_F7DATA1(canx) REG32((canx) + 0x27CU)"
.LASF4322:
	.string	"next"
.LASF526:
	.string	"RT_DEVICE_CTRL_CURSOR_SET_POSITION 0x10"
.LASF1214:
	.string	"LIBC_IOCTL_H__ "
.LASF651:
	.string	"_WCHAR_T_ "
.LASF3047:
	.string	"GPIO_USART2_PARTIAL_REMAP ((uint32_t)0x00140010U)"
.LASF2271:
	.string	"CAN_MAILBOX2 ((uint8_t)0x02U)"
.LASF1694:
	.string	"RTC_BASE (APB1_BUS_BASE + 0x00002800U)"
.LASF3383:
	.string	"RCU_APB1EN_SPI1EN BIT(14)"
.LASF2327:
	.string	"DACC_R8DH REG32(DAC + 0x28U)"
.LASF2702:
	.string	"FMC_CTL0_START BIT(6)"
.LASF755:
	.string	"__sym_compat(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@\" #verid)"
.LASF713:
	.string	"__signed signed"
.LASF4054:
	.string	"TIMER_OCN_POLARITY_LOW ((uint16_t)0x0008U)"
.LASF2166:
	.string	"CAN_RFIFOMP_TS BITS(16,31)"
.LASF3488:
	.string	"RCU_PLL_MUL6_5 CFG0_PLLMF(13)"
.LASF1954:
	.string	"BKP_TPCS_TPIE BIT(2)"
.LASF2651:
	.string	"EXTI_SWIEV_SWIEV17 BIT(17)"
.LASF2137:
	.string	"CAN_ERR_RECNT BITS(24,31)"
.LASF2315:
	.string	"DAC0 (0U)"
.LASF2156:
	.string	"CAN_TMDATA1_DB4 BITS(0,7)"
.LASF1043:
	.string	"__error_t_defined 1"
.LASF3601:
	.string	"RTC_CNTH REG32(RTC + 0x18U)"
.LASF2073:
	.string	"CAN_CTL_ARD BIT(4)"
.LASF2750:
	.string	"OB_WP_0 ((uint32_t)0x00000001U)"
.LASF2962:
	.string	"AFIO_EXTI8_SS BITS(0, 3)"
.LASF1426:
	.string	"MINSIGSTKSZ 2048"
.LASF973:
	.string	"_SYS_SCHED_H_ "
.LASF644:
	.string	"__need_size_t"
.LASF584:
	.string	"_READ_WRITE_RETURN_TYPE _ssize_t"
.LASF217:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF3994:
	.string	"TIMER_DMACFG_DMATC_10TRANSFER DMACFG_DMATC(9)"
.LASF4274:
	.string	"_AC(X,Y) (X ##Y)"
.LASF1673:
	.string	"UINT32_C(x) __UINT32_C(x)"
.LASF4449:
	.string	"_glue"
.LASF219:
	.string	"__FLT128_DIG__ 33"
.LASF3912:
	.string	"TIMER_CH0CV_CH0VAL BITS(0,15)"
.LASF1804:
	.string	"ADC_DAUL_INSERTED_TRIGGER_ROTATION CTL0_SYNCM(9)"
.LASF4447:
	.string	"__sf"
.LASF2853:
	.string	"GPIO_ISTAT_ISTAT14 BIT(14)"
.LASF2508:
	.string	"DMA_PRIORITY_HIGH CHCTL_PRIO(2U)"
.LASF4348:
	.string	"RT_Device_Class_Timer"
.LASF4239:
	.string	"CLT2_CTSEN(regval) (BIT(9) & ((uint32_t)(regval) << 9))"
.LASF4095:
	.string	"TIMER_TRI_OUT_SRC_RESET CTL1_MMC(0)"
.LASF429:
	.string	"RT_EVENT_LENGTH 32"
.LASF1120:
	.string	"EISCONN 127"
.LASF464:
	.string	"RT_THREAD_INIT 0x00"
.LASF2591:
	.string	"EXTI_EVEN_EVEN14 BIT(14)"
.LASF3860:
	.string	"TIMER_SWEVG_CH1G BIT(2)"
.LASF4152:
	.string	"USART_CTL0_RWU BIT(1)"
.LASF991:
	.string	"CLOCK_ALLOWED 1"
.LASF1508:
	.string	"RT_DATAQUEUE_EVENT_POP 0x01"
.LASF3224:
	.string	"DBG_CTL_TIMER6_HOLD BIT(20)"
.LASF4580:
	.string	"USBFS_IRQn"
.LASF2360:
	.string	"CTL_DTSEL(regval) (BITS(3,5) & ((uint32_t)(regval) << 3))"
.LASF3859:
	.string	"TIMER_SWEVG_CH0G BIT(1)"
.LASF1573:
	.string	"HXTAL_VALUE ((uint32_t)8000000)"
.LASF349:
	.string	"RT_USING_USER_MAIN "
.LASF583:
	.string	"__SSP_FORTIFY_LEVEL 0"
.LASF3775:
	.string	"I2S_FLAG_FERR SPI_STAT_FERR"
.LASF4182:
	.string	"USART_CTL2_RTSEN BIT(8)"
.LASF384:
	.string	"RT_DEBUG_INIT 0"
.LASF1425:
	.string	"SA_NOCLDSTOP 1"
.LASF433:
	.string	"RT_KERNEL_MALLOC(sz) rt_malloc(sz)"
.LASF1003:
	.string	"S_BLKSIZE 1024"
.LASF4009:
	.string	"TIMER_EVENT_SRC_TRGG ((uint16_t)0x0040U)"
.LASF1172:
	.string	"FWRITE _FWRITE"
.LASF3467:
	.string	"RCU_CKADC_CKAPB2_DIV6 ((uint32_t)0x00000002U)"
.LASF4159:
	.string	"USART_CTL0_PERRIE BIT(8)"
.LASF2763:
	.string	"OB_WP_13 ((uint32_t)0x00002000U)"
.LASF3746:
	.string	"I2S_CKPL_LOW ((uint32_t)0x00000000U)"
.LASF301:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF534:
	.string	"RTGRAPHIC_PIXEL_POSITION(x,y) ((x << 16) | y)"
.LASF2531:
	.string	"EXMC_SNCTL_WREN BIT(12)"
.LASF3022:
	.string	"GPIO_PIN_SOURCE_12 ((uint8_t)0x0CU)"
.LASF1132:
	.string	"__ELASTERROR 2000"
.LASF4425:
	.string	"_flags2"
.LASF2300:
	.string	"CAN_INT_BO CAN_INTEN_BOIE"
.LASF3608:
	.string	"RTC_CTL_SCIF BIT(0)"
.LASF2785:
	.string	"SRAM_SIZE (*(uint16_t *)0x1FFFF7E2U)"
.LASF344:
	.string	"RT_USING_CONSOLE "
.LASF308:
	.string	"__riscv_muldiv 1"
.LASF519:
	.string	"RT_DEVICE_CTRL_BLK_AUTOREFRESH 0x13"
.LASF3504:
	.string	"RCU_PLL_MUL31 (PLLMF_4 | CFG0_PLLMF(14))"
.LASF508:
	.string	"RT_DEVICE_OFLAG_MASK 0xf0f"
.LASF55:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF2684:
	.string	"OB_SPC REG16((OB) + 0x00U)"
.LASF4569:
	.string	"TIMER5_IRQn"
.LASF1312:
	.string	"TIOCM_CD TIOCM_CAR"
.LASF1750:
	.string	"ADC_CTL0_ICA BIT(10)"
.LASF1684:
	.string	"FLASH_BASE ((uint32_t)0x08000000U)"
.LASF4046:
	.string	"TIMER_CH_3 ((uint16_t)0x0003U)"
.LASF70:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF293:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF692:
	.string	"__GNUCLIKE_BUILTIN_VARARGS 1"
.LASF4554:
	.string	"I2C1_EV_IRQn"
.LASF715:
	.string	"__weak_symbol __attribute__((__weak__))"
.LASF4628:
	.string	"USART_FLAG_ORERR"
.LASF448:
	.string	"RT_ALIGN_DOWN(size,align) ((size) & ~((align) - 1))"
.LASF38:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF2966:
	.string	"AFIO_EXTI12_SS BITS(0, 3)"
.LASF3012:
	.string	"GPIO_PIN_SOURCE_2 ((uint8_t)0x02U)"
.LASF4098:
	.string	"TIMER_TRI_OUT_SRC_CH0 CTL1_MMC(3)"
.LASF2179:
	.string	"CAN_FAFIFOR_FAF(regval) BIT(regval)"
.LASF103:
	.string	"__UINT16_MAX__ 0xffff"
.LASF4379:
	.string	"__value"
.LASF3075:
	.string	"I2C_DATA(i2cx) REG32((i2cx) + 0x10U)"
.LASF1443:
	.string	"SIGIOT 6"
.LASF479:
	.string	"RT_THREAD_CTRL_INFO 0x03"
.LASF2268:
	.string	"CAN_BT_BS2_8TQ ((uint8_t)0x07U)"
.LASF4243:
	.string	"USART_IRLP_LOW CTL2_IRLP(1)"
.LASF2030:
	.string	"CAN_F27DATA0(canx) REG32((canx) + 0x318U)"
.LASF250:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF3823:
	.string	"TIMER_CTL1_ISO3 BIT(14)"
.LASF3265:
	.string	"RCU_CFG0 REG32(RCU + 0x04U)"
.LASF1966:
	.string	"BKP_INT_FLAG_TAMPER BKP_TPCS_TIF"
.LASF845:
	.string	"_REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)"
.LASF2977:
	.string	"GPIO_MODE_OUT_OD ((uint8_t)0x14U)"
.LASF4573:
	.string	"DMA1_Channel2_IRQn"
.LASF3679:
	.string	"SPI_RCRC_RCRC BITS(0,15)"
.LASF3989:
	.string	"TIMER_DMACFG_DMATC_5TRANSFER DMACFG_DMATC(4)"
.LASF782:
	.string	"__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))"
.LASF691:
	.string	"__GNUCLIKE_BUILTIN_CONSTANT_P 1"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF2313:
	.string	"GD32VF103_DAC_H "
.LASF4538:
	.string	"DMA0_Channel6_IRQn"
.LASF554:
	.string	"_FVWRITE_IN_STREAMIO 1"
.LASF4212:
	.string	"USART_WL_9BIT CTL0_WL(1)"
.LASF1375:
	.string	"SIOCSIFHWBROADCAST 0x8937"
.LASF3725:
	.string	"I2S_AUDIOSAMPLE_48K ((uint32_t)48000U)"
.LASF561:
	.string	"__OBSOLETE_MATH_DEFAULT 1"
.LASF3623:
	.string	"RTC_INT_ALARM RTC_INTEN_ALRMIE"
.LASF1568:
	.string	"__BOARD__ "
.LASF4293:
	.string	"ECLIC_CFG_NLBITS_LSB (1u)"
.LASF3605:
	.string	"RTC_INTEN_SCIE BIT(0)"
.LASF4029:
	.string	"TIMER_ROS_STATE_DISABLE ((uint16_t)0x0000U)"
.LASF2745:
	.string	"OB_USER_USER_N ((uint32_t)0xFF000000U)"
.LASF457:
	.string	"RT_TIMER_FLAG_SOFT_TIMER 0x4"
.LASF2247:
	.string	"CAN_BT_BS1_3TQ ((uint8_t)0x02U)"
.LASF1803:
	.string	"ADC_DAUL_REGULAL_FOLLOWUP_SLOW CTL0_SYNCM(8)"
.LASF811:
	.string	"_TIME_T_ __int_least64_t"
.LASF2931:
	.string	"GPIO_LOCK_LK12 BIT(12)"
.LASF3337:
	.string	"RCU_APB2RST_USART0RST BIT(14)"
.LASF409:
	.string	"__va_copy(d,s) __builtin_va_copy(d,s)"
.LASF4617:
	.string	"RCU_ADC0"
.LASF4618:
	.string	"RCU_ADC1"
.LASF3751:
	.string	"SPI_CRC_RX ((uint8_t)0x01U)"
.LASF976:
	.string	"SCHED_RR 2"
.LASF216:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF3540:
	.string	"RCU_PREDV0_DIV14 CFG1_PREDV0(13)"
.LASF2269:
	.string	"CAN_MAILBOX0 ((uint8_t)0x00U)"
.LASF1513:
	.string	"WORKQUEUE_H__ "
.LASF156:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF2582:
	.string	"EXTI_EVEN_EVEN5 BIT(5)"
.LASF2484:
	.string	"DMA_FLAG_G DMA_INTF_GIF"
.LASF3429:
	.string	"RSTSCK_REG_OFFSET 0x24U"
.LASF1344:
	.string	"SIOCGIFCONF 0x8912"
.LASF1228:
	.string	"TCSETSW 0x5403"
.LASF1333:
	.string	"FIOSETOWN 0x8901"
.LASF611:
	.string	"___int_least32_t_defined 1"
.LASF1171:
	.string	"FREAD _FREAD"
.LASF4071:
	.string	"TIMER_OC_CLEAR_ENABLE ((uint16_t)0x0080U)"
.LASF2031:
	.string	"CAN_F0DATA1(canx) REG32((canx) + 0x244U)"
.LASF813:
	.string	"_TIMER_T_ unsigned long"
.LASF3712:
	.string	"SPI_PSC_4 CTL0_PSC(1)"
.LASF2600:
	.string	"EXTI_RTEN_RTEN4 BIT(4)"
.LASF41:
	.string	"__INT8_TYPE__ signed char"
.LASF1744:
	.string	"ADC_CTL0_WDCHSEL BITS(0,4)"
.LASF2712:
	.string	"FMC_WP_WP BITS(0,31)"
.LASF2388:
	.string	"DAC_LFSR_BITS2_0 DAC_WAVE_BIT_WIDTH_3"
.LASF4634:
	.string	"USART_INT_FLAG_TC"
.LASF412:
	.string	"_VA_LIST_DEFINED "
.LASF974:
	.string	"SCHED_OTHER 0"
.LASF4012:
	.string	"TIMER_COUNTER_EDGE CTL0_CAM(0)"
.LASF2998:
	.string	"GPIO_EVENT_PIN_4 ((uint8_t)0x04U)"
.LASF3675:
	.string	"SPI_STAT_TRANS BIT(7)"
.LASF3698:
	.string	"SPI_TRANSMODE_BDRECEIVE SPI_CTL0_BDEN"
.LASF4459:
	.string	"_localtime_buf"
.LASF1676:
	.string	"INTMAX_C(x) __INTMAX_C(x)"
.LASF2815:
	.string	"GPIO_CTL0_MD4 BITS(16, 17)"
.LASF679:
	.string	"__ptrvalue "
.LASF1248:
	.string	"TIOCMBIC 0x5417"
.LASF1770:
	.string	"ADC_SAMPTX_SPTN BITS(0,2)"
.LASF2911:
	.string	"GPIO_BC_CR8 BIT(8)"
.LASF1309:
	.string	"TIOCM_CAR 0x040"
.LASF939:
	.string	"FD_ZERO(p) (__extension__ (void)({ size_t __i; char *__tmp = (char *)p; for (__i = 0; __i < sizeof (*(p)); ++__i) *__tmp++ = 0; }))"
.LASF484:
	.string	"RT_IPC_CMD_RESET 0x01"
.LASF2234:
	.string	"CAN_ERRN_6 ERR_ERRN(6)"
.LASF2844:
	.string	"GPIO_ISTAT_ISTAT5 BIT(5)"
.LASF2285:
	.string	"CAN_FILTERMODE_MASK ((uint8_t)0x00U)"
.LASF4294:
	.string	"MSIP_HANDLER eclic_msip_handler"
.LASF3348:
	.string	"RCU_APB1RST_USART2RST BIT(18)"
.LASF3215:
	.string	"DBG_CTL_TIMER0_HOLD BIT(10)"
.LASF909:
	.string	"__bswap64(_x) __builtin_bswap64(_x)"
.LASF2565:
	.string	"EXTI_INTEN_INTEN7 BIT(7)"
.LASF2722:
	.string	"FMC_REG_OFFSET_GET(flag) ((uint32_t)(flag) >> 12)"
.LASF2237:
	.string	"CAN_NORMAL_MODE ((uint8_t)0x00U)"
.LASF1588:
	.string	"signed +0"
.LASF2509:
	.string	"DMA_PRIORITY_ULTRA_HIGH CHCTL_PRIO(3U)"
.LASF3016:
	.string	"GPIO_PIN_SOURCE_6 ((uint8_t)0x06U)"
.LASF1219:
	.string	"_IO(a,b) _IOC(_IOC_NONE,(a),(b),0)"
.LASF1872:
	.string	"OVSCR_DRES(regval) (BITS(12,13) & ((uint32_t)(regval) << 12))"
.LASF4001:
	.string	"TIMER_DMACFG_DMATC_17TRANSFER DMACFG_DMATC(16)"
.LASF1332:
	.string	"N_HCI 15"
.LASF2350:
	.string	"DAC1_L12DH_DAC1_DH BITS(4,15)"
.LASF2000:
	.string	"CAN_FSCFG(canx) REG32((canx) + 0x20CU)"
.LASF2935:
	.string	"GPIO_LOCK_LKK BIT(16)"
.LASF1472:
	.string	"NSIG 32"
.LASF4241:
	.string	"USART_CTS_DISABLE CLT2_CTSEN(0)"
.LASF105:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF3606:
	.string	"RTC_INTEN_ALRMIE BIT(1)"
.LASF274:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF957:
	.string	"_INO_T_DECLARED "
.LASF3301:
	.string	"RCU_CFG0_CKOUT0SEL BITS(24,27)"
.LASF1611:
	.string	"__int_least32_t_defined 1"
.LASF520:
	.string	"RT_DEVICE_CTRL_NETIF_GETMAC 0x10"
.LASF610:
	.string	"___int_least16_t_defined 1"
.LASF2436:
	.string	"DMA_CH4CNT(dmax) REG32((dmax) + 0x5CU)"
.LASF1150:
	.string	"_FSYNC 0x2000"
.LASF886:
	.string	"_INT32_T_DECLARED "
.LASF2726:
	.string	"UNLOCK_KEY0 ((uint32_t)0x45670123U)"
.LASF3098:
	.string	"I2C_CTL1_DMAON BIT(11)"
.LASF3141:
	.string	"I2C_STAT1_REG_OFFSET 0x18U"
.LASF4284:
	.string	"ECLIC_INT_ATTR_OFFSET _AC(0x1002,UL)"
.LASF1316:
	.string	"TIOCM_LOOP 0x8000"
.LASF355:
	.string	"FINSH_HISTORY_LINES 5"
.LASF4102:
	.string	"TIMER_TRI_OUT_SRC_O3CPRE CTL1_MMC(7)"
.LASF1517:
	.string	"DEFINE_WAIT_FUNC(name,function) struct rt_wqueue_node name = { rt_current_thread, RT_LIST_OBJECT_INIT(((name).list)), function, 0 }"
.LASF3925:
	.string	"TIMER_DMACFG_DMATC BITS(8,12)"
.LASF4331:
	.string	"RT_Device_Class_Char"
.LASF157:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF3502:
	.string	"RCU_PLL_MUL29 (PLLMF_4 | CFG0_PLLMF(12))"
.LASF3810:
	.string	"TIMER_CTL0_ARSE BIT(7)"
.LASF3811:
	.string	"TIMER_CTL0_CKDIV BITS(8,9)"
.LASF3552:
	.string	"RCU_PREDV1_DIV9 CFG1_PREDV1(8)"
.LASF1281:
	.string	"FIOASYNC 0x5452"
.LASF865:
	.string	"_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }"
.LASF689:
	.string	"__GNUCLIKE___SECTION 1"
.LASF1734:
	.string	"ADC_IDATA1(adcx) REG32((adcx) + 0x40U)"
.LASF2278:
	.string	"CAN_SFID_MASK ((uint32_t)0x000007FFU)"
.LASF1883:
	.string	"ADC_OVERSAMPLING_SHIFT_3B OVSCR_OVSS(3)"
.LASF2906:
	.string	"GPIO_BC_CR3 BIT(3)"
.LASF2296:
	.string	"CAN_INT_RFF1 CAN_INTEN_RFFIE1"
.LASF758:
	.string	"__RCSID(s) struct __hack"
.LASF660:
	.string	"_BSD_WCHAR_T_"
.LASF2742:
	.string	"OB_SPC_SPC ((uint32_t)0x000000FFU)"
.LASF4557:
	.string	"SPI1_IRQn"
.LASF3369:
	.string	"RCU_APB2EN_PDEN BIT(5)"
.LASF4187:
	.string	"USART_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))"
.LASF1050:
	.string	"EINTR 4"
.LASF4218:
	.string	"CTL1_LBLEN(regval) (BIT(5) & ((uint32_t)(regval) << 5))"
.LASF4053:
	.string	"TIMER_OCN_POLARITY_HIGH ((uint16_t)0x0000U)"
.LASF71:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF3877:
	.string	"TIMER_CHCTL0_CH0CAPFLT BITS(4,7)"
.LASF3645:
	.string	"SPI_I2SPSC(spix) REG32((spix) + 0x20U)"
.LASF3175:
	.string	"I2C_DTCY_16_9 I2C_CKCFG_DTCY"
.LASF2612:
	.string	"EXTI_RTEN_RTEN16 BIT(16)"
.LASF3448:
	.string	"RCU_AHB_CKSYS_DIV16 CFG0_AHBPSC(11)"
.LASF4090:
	.string	"TIMER_SMCFG_TRGSEL_CI0F_ED SMCFG_TRGSEL(4)"
.LASF3497:
	.string	"RCU_PLL_MUL24 (PLLMF_4 | CFG0_PLLMF(7))"
.LASF3848:
	.string	"TIMER_INTF_CH1IF BIT(2)"
.LASF1413:
	.string	"SI_TIMER 0x03"
.LASF3619:
	.string	"RTC_CNTL_CNT BITS(0,15)"
.LASF3115:
	.string	"I2C_STAT0_LOSTARB BIT(9)"
.LASF854:
	.string	"_REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)"
.LASF4540:
	.string	"CAN0_TX_IRQn"
.LASF1745:
	.string	"ADC_CTL0_EOCIE BIT(5)"
.LASF3342:
	.string	"RCU_APB1RST_TIMER5RST BIT(4)"
.LASF1114:
	.string	"EALREADY 120"
.LASF74:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF3982:
	.string	"TIMER_DMACFG_DMATA_CCHP DMACFG_DMATA(17)"
.LASF85:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF1507:
	.string	"RT_DATAQUEUE_EVENT_UNKNOWN 0x00"
.LASF3699:
	.string	"SPI_TRANSMODE_BDTRANSMIT (SPI_CTL0_BDEN | SPI_CTL0_BDOEN)"
.LASF3674:
	.string	"SPI_STAT_RXORERR BIT(6)"
.LASF45:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF3457:
	.string	"RCU_APB1_CKAHB_DIV8 CFG0_APB1PSC(6)"
.LASF107:
	.string	"__INT8_C(c) c"
.LASF1602:
	.string	"__FAST16 "
.LASF3002:
	.string	"GPIO_EVENT_PIN_8 ((uint8_t)0x08U)"
.LASF2264:
	.string	"CAN_BT_BS2_4TQ ((uint8_t)0x03U)"
.LASF129:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF4346:
	.string	"RT_Device_Class_Pipe"
.LASF3553:
	.string	"RCU_PREDV1_DIV10 CFG1_PREDV1(9)"
.LASF2558:
	.string	"EXTI_INTEN_INTEN0 BIT(0)"
.LASF3253:
	.string	"PMU_FLAG_WAKEUP PMU_CS_WUF"
.LASF778:
	.string	"__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))"
.LASF1530:
	.string	"BAUD_RATE_57600 57600"
.LASF2947:
	.string	"AFIO_PCF0_TIMER3_REMAP BIT(12)"
.LASF3784:
	.string	"TIMER_CTL0(timerx) REG32((timerx) + 0x00U)"
.LASF1243:
	.string	"TIOCSTI 0x5412"
.LASF291:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF2390:
	.string	"DAC_LFSR_BITS4_0 DAC_WAVE_BIT_WIDTH_5"
.LASF1519:
	.string	"PIPE_H__ "
.LASF4666:
	.string	"index"
.LASF2226:
	.string	"GET_ERR_RECNT(regval) GET_BITS((uint32_t)(regval), 24, 31)"
.LASF1630:
	.string	"INT_LEAST16_MAX (__INT_LEAST16_MAX__)"
.LASF3256:
	.string	"PMU_LDO_NORMAL ((uint32_t)0x00000000U)"
.LASF3984:
	.string	"DMACFG_DMATC(regval) (BITS(8, 12) & ((uint32_t)(regval) << 8U))"
.LASF3577:
	.string	"RCU_PLL2_MUL13 CFG1_PLL2MF(11)"
.LASF240:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF225:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF3626:
	.string	"RTC_INT_FLAG_ALARM RTC_CTL_ALRMIF"
.LASF2136:
	.string	"CAN_ERR_TECNT BITS(16,23)"
.LASF77:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF1721:
	.string	"ADC_SAMPT0(adcx) REG32((adcx) + 0x0CU)"
.LASF499:
	.string	"RT_DEVICE_FLAG_INT_RX 0x100"
.LASF935:
	.string	"fd_set _types_fd_set"
.LASF3783:
	.string	"TIMER6 (TIMER_BASE + 0x00001400U)"
.LASF4269:
	.string	"TMR_CTRL_ADDR 0xd1000000"
.LASF2012:
	.string	"CAN_F9DATA0(canx) REG32((canx) + 0x288U)"
.LASF100:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF1167:
	.string	"FASYNC _FASYNC"
.LASF751:
	.string	"__printf0like(fmtarg,firstvararg) "
.LASF2720:
	.string	"FMC_BIT_POS0(val) (((uint32_t)(val) >> 6) & 0x1FU)"
.LASF3733:
	.string	"I2S_MCKOUT_DISABLE ((uint32_t)0x00000000U)"
.LASF1558:
	.string	"RT_SERIAL_DMA_RX 0x01"
.LASF2689:
	.string	"OB_WP3 REG16((OB) + 0x0EU)"
.LASF2621:
	.string	"EXTI_FTEN_FTEN6 BIT(6)"
.LASF2050:
	.string	"CAN_F19DATA1(canx) REG32((canx) + 0x2DCU)"
.LASF3732:
	.string	"I2S_FRAMEFORMAT_DT32B_CH32B (I2SCTL_DTLEN(2) | SPI_I2SCTL_CHLEN)"
.LASF3023:
	.string	"GPIO_PIN_SOURCE_13 ((uint8_t)0x0DU)"
.LASF4141:
	.string	"USART_STAT_ORERR BIT(3)"
.LASF2653:
	.string	"EXTI_PD_PD0 BIT(0)"
.LASF514:
	.string	"RT_DEVICE_CTRL_GET_INT 0x12"
.LASF2822:
	.string	"GPIO_CTL0_CTL7 BITS(30, 31)"
.LASF3524:
	.string	"RCU_RTCSRC_IRC40K BDCTL_RTCSRC(2)"
.LASF4436:
	.string	"__cleanup"
.LASF3861:
	.string	"TIMER_SWEVG_CH2G BIT(3)"
.LASF635:
	.string	"_BSD_SIZE_T_ "
.LASF478:
	.string	"RT_THREAD_CTRL_CHANGE_PRIORITY 0x02"
.LASF4559:
	.string	"USART1_IRQn"
.LASF4467:
	.string	"_signal_buf"
.LASF2498:
	.string	"DMA_PERIPHERAL_WIDTH_8BIT CHCTL_PWIDTH(0U)"
.LASF686:
	.string	"__GNUCLIKE_MATH_BUILTIN_CONSTANTS "
.LASF3261:
	.string	"WFE_CMD ((uint8_t)0x01U)"
.LASF42:
	.string	"__INT16_TYPE__ short int"
.LASF912:
	.string	"__ntohl(_x) __bswap32(_x)"
.LASF1027:
	.string	"S_IRWXO (S_IROTH | S_IWOTH | S_IXOTH)"
.LASF2807:
	.string	"GPIO_CTL0_MD0 BITS(0, 1)"
.LASF3631:
	.string	"RTC_FLAG_RSYN RTC_CTL_RSYNF"
.LASF3509:
	.string	"RCU_CKUSB_CKPLL_DIV2_5 CFG0_USBPSC(2)"
.LASF748:
	.string	"__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))"
.LASF4387:
	.string	"_wds"
.LASF530:
	.string	"RTGRAPHIC_CTRL_POWEROFF 2"
.LASF1616:
	.string	"__int_fast64_t_defined 1"
.LASF3125:
	.string	"I2C_STAT1_DEFSMB BIT(5)"
.LASF2878:
	.string	"GPIO_BOP_BOP7 BIT(7)"
.LASF617:
	.string	"_PTRDIFF_T "
.LASF1885:
	.string	"ADC_OVERSAMPLING_SHIFT_5B OVSCR_OVSS(5)"
.LASF657:
	.string	"__INT_WCHAR_T_H "
.LASF856:
	.string	"_REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)"
.LASF304:
	.string	"__riscv_compressed 1"
.LASF626:
	.string	"__need_ptrdiff_t"
.LASF1764:
	.string	"ADC_CTL1_ETEIC BIT(15)"
.LASF559:
	.string	"__SYS_CONFIG_H__ "
.LASF3779:
	.string	"TIMER2 (TIMER_BASE + 0x00000400U)"
.LASF2474:
	.string	"DMA_CHMADDR(dma,channel) REG32(((dma) + 0x14U) + 0x14U * (uint32_t)(channel))"
.LASF3625:
	.string	"RTC_INT_FLAG_SECOND RTC_CTL_SCIF"
.LASF558:
	.string	"_RETARGETABLE_LOCKING 1"
.LASF76:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF3221:
	.string	"DBG_CTL_I2C1_HOLD BIT(16)"
.LASF2523:
	.string	"EXMC_SNTCFG0 REG32(EXMC + 0x04U)"
.LASF3119:
	.string	"I2C_STAT0_SMBTO BIT(14)"
.LASF1144:
	.string	"_FSHLOCK 0x0080"
.LASF2138:
	.string	"CAN_BT_BAUDPSC BITS(0,9)"
.LASF2910:
	.string	"GPIO_BC_CR7 BIT(7)"
.LASF3854:
	.string	"TIMER_INTF_CH0OF BIT(9)"
.LASF1361:
	.string	"SIOCSIFNAME 0x8923"
.LASF3845:
	.string	"TIMER_DMAINTEN_TRGDEN BIT(14)"
.LASF2378:
	.string	"DAC_WAVE_BIT_WIDTH_5 DWBW(4)"
.LASF226:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF1796:
	.string	"ADC_DAUL_REGULAL_PARALLEL_INSERTED_PARALLEL CTL0_SYNCM(1)"
.LASF528:
	.string	"RTGRAPHIC_CTRL_RECT_UPDATE 0"
.LASF2192:
	.string	"RFIFO1_REG_OFFSET ((uint8_t)0x10U)"
.LASF3747:
	.string	"I2S_CKPL_HIGH SPI_I2SCTL_CKPL"
.LASF154:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF535:
	.string	"rt_graphix_ops(device) ((struct rt_device_graphic_ops *)(device->user_data))"
.LASF2990:
	.string	"GPIO_PORT_SOURCE_GPIOB ((uint8_t)0x01U)"
.LASF140:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF892:
	.string	"_INTMAX_T_DECLARED "
.LASF3768:
	.string	"SPI_FLAG_FERR SPI_STAT_FERR"
.LASF111:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF2756:
	.string	"OB_WP_6 ((uint32_t)0x00000040U)"
.LASF4179:
	.string	"USART_CTL2_SCEN BIT(5)"
.LASF1822:
	.string	"ADC0_1_EXTTRIG_INSERTED_T2_CH3 CTL1_ETSIC(4)"
.LASF2287:
	.string	"CAN_FILTER_MASK_16BITS ((uint32_t)0x0000FFFFU)"
.LASF1034:
	.string	"S_ISBLK(m) (((m)&_IFMT) == _IFBLK)"
.LASF3719:
	.string	"I2S_AUDIOSAMPLE_8K ((uint32_t)8000U)"
.LASF4292:
	.string	"ECLIC_CFG_NLBITS_MASK _AC(0x1E,UL)"
.LASF2225:
	.string	"GET_ERR_TECNT(regval) GET_BITS((uint32_t)(regval), 16, 23)"
.LASF2589:
	.string	"EXTI_EVEN_EVEN12 BIT(12)"
.LASF880:
	.string	"_INT8_T_DECLARED "
.LASF3105:
	.string	"I2C_SADDR1_ADDRESS2 BITS(1,7)"
.LASF3831:
	.string	"TIMER_DMAINTEN_UPIE BIT(0)"
.LASF743:
	.string	"__offsetof(type,field) offsetof(type, field)"
.LASF1488:
	.string	"rt_slist_entry(node,type,member) rt_container_of(node, type, member)"
.LASF1722:
	.string	"ADC_SAMPT1(adcx) REG32((adcx) + 0x10U)"
.LASF3964:
	.string	"DMACFG_DMATA(regval) (BITS(0, 4) & ((uint32_t)(regval) << 0U))"
.LASF3804:
	.string	"TIMER_CTL0_CEN BIT(0)"
.LASF325:
	.string	"RT_TICK_PER_SECOND 100"
.LASF4252:
	.string	"WWDGT_CFG_WIN BITS(0,6)"
.LASF820:
	.string	"_RAND48_SEED_0 (0x330e)"
.LASF1068:
	.string	"ENFILE 23"
.LASF4082:
	.string	"TIMER_IC_PSC_DIV2 ((uint16_t)0x0004U)"
.LASF1831:
	.string	"ADC_SAMPLETIME_41POINT5 SAMPTX_SPT(4)"
.LASF638:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF2260:
	.string	"CAN_BT_BS1_16TQ ((uint8_t)0x0FU)"
.LASF2070:
	.string	"CAN_CTL_SLPWMOD BIT(1)"
.LASF2426:
	.string	"DMA_CH1MADDR(dmax) REG32((dmax) + 0x28U)"
.LASF3172:
	.string	"DATA_TRANS(regval) (BITS(0,7) & ((uint32_t)(regval) << 0))"
.LASF187:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF3777:
	.string	"TIMER0 (TIMER_BASE + 0x00012C00U)"
.LASF1008:
	.string	"S_IWRITE 0000200"
.LASF1567:
	.string	"RT_SERIAL_CONFIG_DEFAULT { BAUD_RATE_115200, DATA_BITS_8, STOP_BITS_1, PARITY_NONE, BIT_ORDER_LSB, NRZ_NORMAL, RT_SERIAL_RB_BUFSZ, 0 }"
.LASF3327:
	.string	"RCU_APB2RST_AFRST BIT(0)"
.LASF1024:
	.string	"S_IRGRP 0000040"
.LASF2882:
	.string	"GPIO_BOP_BOP11 BIT(11)"
.LASF4369:
	.string	"__uint32_t"
.LASF4491:
	.string	"finsh_syscall"
.LASF1053:
	.string	"E2BIG 7"
.LASF741:
	.string	"__exported __attribute__((__visibility__(\"default\")))"
.LASF3458:
	.string	"RCU_APB1_CKAHB_DIV16 CFG0_APB1PSC(7)"
.LASF1273:
	.string	"TCSETXW 0x5435"
.LASF2346:
	.string	"DAC0_R12DH_DAC0_DH BITS(0,11)"
.LASF3036:
	.string	"GPIO_PIN_10 BIT(10)"
.LASF4169:
	.string	"USART_CTL1_CPH BIT(9)"
.LASF1989:
	.string	"CAN_TMDATA12(canx) REG32((canx) + 0x1ACU)"
.LASF1951:
	.string	"BKP_TPCTL_TPAL BIT(1)"
.LASF949:
	.string	"_BLKCNT_T_DECLARED "
.LASF2644:
	.string	"EXTI_SWIEV_SWIEV10 BIT(10)"
.LASF1313:
	.string	"TIOCM_RI TIOCM_RNG"
.LASF1049:
	.string	"ESRCH 3"
.LASF4111:
	.string	"TIMER_SLAVE_MODE_EXTERNAL0 SMCFG_SMC(7)"
.LASF2852:
	.string	"GPIO_ISTAT_ISTAT13 BIT(13)"
.LASF3180:
	.string	"FWDGT_CTL REG32((FWDGT) + 0x00000000U)"
.LASF3882:
	.string	"TIMER_CHCTL1_CH2COMSEN BIT(3)"
.LASF3985:
	.string	"TIMER_DMACFG_DMATC_1TRANSFER DMACFG_DMATC(0)"
.LASF133:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF2981:
	.string	"GPIO_OSPEED_10MHZ ((uint8_t)0x01U)"
.LASF3184:
	.string	"FWDGT_CTL_CMD BITS(0,15)"
.LASF3973:
	.string	"TIMER_DMACFG_DMATA_CHCTL2 DMACFG_DMATA(8)"
.LASF2871:
	.string	"GPIO_BOP_BOP0 BIT(0)"
.LASF1282:
	.string	"TIOCSERCONFIG 0x5453"
.LASF3128:
	.string	"I2C_STAT1_PECV BITS(8,15)"
.LASF60:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF2713:
	.string	"FMC_WSEN_WSEN BIT(0)"
.LASF735:
	.string	"__returns_twice __attribute__((__returns_twice__))"
.LASF2090:
	.string	"CAN_TSTAT_MAL0 BIT(2)"
.LASF4423:
	.string	"_lock"
.LASF4484:
	.string	"_timezone"
.LASF98:
	.string	"__INT8_MAX__ 0x7f"
.LASF766:
	.string	"_Nullable "
.LASF2392:
	.string	"DAC_LFSR_BITS6_0 DAC_WAVE_BIT_WIDTH_7"
.LASF1383:
	.string	"SIOCSARP 0x8955"
.LASF319:
	.string	"__RT_THREAD_H__ "
.LASF3977:
	.string	"TIMER_DMACFG_DMATA_CREP DMACFG_DMATA(12)"
.LASF3722:
	.string	"I2S_AUDIOSAMPLE_22K ((uint32_t)22050U)"
.LASF405:
	.string	"va_start(v,l) __builtin_va_start(v,l)"
.LASF97:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF1887:
	.string	"ADC_OVERSAMPLING_SHIFT_7B OVSCR_OVSS(7)"
.LASF896:
	.string	"__MACHINE_ENDIAN_H__ "
.LASF3329:
	.string	"RCU_APB2RST_PBRST BIT(3)"
.LASF3250:
	.string	"PMU_LVDT_5 CTL_LVDT(5)"
.LASF2863:
	.string	"GPIO_OCTL_OCTL8 BIT(8)"
.LASF2185:
	.string	"CAN_REGIDX_BITS(regidx,bitpos0,bitpos1) (((uint32_t)(regidx) << 12) | ((uint32_t)(bitpos0) << 6) | (uint32_t)(bitpos1))"
.LASF1826:
	.string	"SAMPTX_SPT(regval) (BITS(0,2) & ((uint32_t)(regval) << 0))"
.LASF785:
	.string	"__guarded_by(x) __lock_annotate(guarded_by(x))"
.LASF4585:
	.string	"RCU_DMA0"
.LASF4586:
	.string	"RCU_DMA1"
.LASF723:
	.string	"__alloc_size(x) __attribute__((__alloc_size__ x))"
.LASF3163:
	.string	"I2C_DMALST_OFF ((uint32_t)0x00000000U)"
.LASF2055:
	.string	"CAN_F24DATA1(canx) REG32((canx) + 0x304U)"
.LASF3893:
	.string	"TIMER_CHCTL1_CH3CAPFLT BITS(12,15)"
.LASF1851:
	.string	"ADC_CHANNEL_3 ((uint8_t)0x03U)"
.LASF54:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF1218:
	.string	"_IOC_READ 2U"
.LASF708:
	.string	"__CONCAT1(x,y) x ## y"
.LASF2539:
	.string	"EXMC_SNTCFG(region) REG32(EXMC + 0x04U + 0x08U * (region))"
.LASF2289:
	.string	"CAN_FT_REMOTE ((uint32_t)0x00000002U)"
.LASF3933:
	.string	"TIMER_INT_TRG TIMER_DMAINTEN_TRGIE"
.LASF3516:
	.string	"RCU_CKOUT0SRC_CKPLL_DIV2 CFG0_CKOUT0SEL(7)"
.LASF836:
	.string	"_REENT_CHECK_TM(ptr) "
.LASF4424:
	.string	"_mbstate"
.LASF4219:
	.string	"USART_LBLEN_10B CTL1_LBLEN(0)"
.LASF934:
	.string	"_howmany(x,y) (((x)+((y)-1))/(y))"
.LASF1352:
	.string	"SIOCSIFBRDADDR 0x891a"
.LASF3165:
	.string	"I2C_PEC_DISABLE ((uint32_t)0x00000000U)"
.LASF3241:
	.string	"PMU_CS_STBF BIT(1)"
.LASF4188:
	.string	"USART_REG_VAL(usartx,offset) (REG32((usartx) + (((uint32_t)(offset) & (0x0000FFFFU)) >> 6)))"
.LASF1506:
	.string	"DATAQUEUE_H__ "
.LASF3615:
	.string	"RTC_PSCL_PSC BITS(0,15)"
.LASF3590:
	.string	"RCU_DEEPSLEEP_V_1_1 DSV_DSLPVS(1)"
.LASF4109:
	.string	"TIMER_SLAVE_MODE_PAUSE SMCFG_SMC(5)"
.LASF3053:
	.string	"GPIO_TIMER1_FULL_REMAP ((uint32_t)0x00180300U)"
.LASF4221:
	.string	"CTL1_CLEN(regval) (BIT(8) & ((uint32_t)(regval) << 8))"
.LASF3840:
	.string	"TIMER_DMAINTEN_CH0DEN BIT(9)"
.LASF2955:
	.string	"AFIO_EXTI1_SS BITS(4, 7)"
.LASF786:
	.string	"__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))"
.LASF4597:
	.string	"RCU_SPI1"
.LASF1455:
	.string	"SIGSTOP 17"
.LASF4598:
	.string	"RCU_SPI2"
.LASF3993:
	.string	"TIMER_DMACFG_DMATC_9TRANSFER DMACFG_DMATC(8)"
.LASF2768:
	.string	"OB_WP_18 ((uint32_t)0x00040000U)"
.LASF4504:
	.string	"reserved"
.LASF3198:
	.string	"FWDGT_WRITEACCESS_DISABLE ((uint16_t)0x0000U)"
.LASF402:
	.string	"_ANSI_STDARG_H_ "
.LASF841:
	.string	"_REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)"
.LASF1490:
	.string	"rt_slist_for_each_entry(pos,head,member) for (pos = rt_slist_entry((head)->next, typeof(*pos), member); &pos->member != (RT_NULL); pos = rt_slist_entry(pos->member.next, typeof(*pos), member))"
.LASF243:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF2152:
	.string	"CAN_TMDATA0_DB0 BITS(0,7)"
.LASF2657:
	.string	"EXTI_PD_PD4 BIT(4)"
.LASF3884:
	.string	"TIMER_CHCTL1_CH2COMCEN BIT(7)"
.LASF518:
	.string	"RT_DEVICE_CTRL_BLK_ERASE 0x12"
.LASF3527:
	.string	"RCU_PREDV0_DIV1 CFG1_PREDV0(0)"
.LASF2394:
	.string	"DAC_LFSR_BITS8_0 DAC_WAVE_BIT_WIDTH_9"
.LASF1369:
	.string	"SIOCDELMULTI 0x8932"
.LASF195:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF2115:
	.string	"CAN_RFIFO1_RFF1 BIT(3)"
.LASF996:
	.string	"_IFDIR 0040000"
.LASF2240:
	.string	"CAN_SILENT_LOOPBACK_MODE ((uint8_t)0x03U)"
.LASF2045:
	.string	"CAN_F14DATA1(canx) REG32((canx) + 0x2B4U)"
.LASF1435:
	.string	"sigemptyset(what) (*(what) = 0, 0)"
.LASF198:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF885:
	.string	"__int16_t_defined 1"
.LASF1929:
	.string	"BKP_DATA29 REG16((BKP) + 0x8CU)"
.LASF2510:
	.string	"DMA_MEMORY_TO_MEMORY_DISABLE ((uint32_t)0x00000000U)"
.LASF3629:
	.string	"RTC_FLAG_ALARM RTC_CTL_ALRMIF"
.LASF191:
	.string	"__FLT32_DIG__ 6"
.LASF2088:
	.string	"CAN_TSTAT_MTF0 BIT(0)"
.LASF292:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF2831:
	.string	"GPIO_CTL1_MD12 BITS(16, 17)"
.LASF2333:
	.string	"DAC_CTL_DTSEL0 BITS(3,5)"
.LASF3780:
	.string	"TIMER3 (TIMER_BASE + 0x00000800U)"
.LASF3978:
	.string	"TIMER_DMACFG_DMATA_CH0CV DMACFG_DMATA(13)"
.LASF1196:
	.string	"F_CNVT 12"
.LASF386:
	.string	"RT_DEBUG_LOG(type,message) do { if (type) rt_kprintf message; } while (0)"
.LASF2332:
	.string	"DAC_CTL_DTEN0 BIT(2)"
.LASF1763:
	.string	"ADC_CTL1_ETSIC BITS(12,14)"
.LASF3237:
	.string	"PMU_CTL_LVDEN BIT(4)"
.LASF4260:
	.string	"WWDGT_CFG_PSC_DIV8 CFG_PSC(3)"
.LASF4356:
	.string	"open_flag"
.LASF1433:
	.string	"sigaddset(what,sig) (*(what) |= (1<<(sig)), 0)"
.LASF808:
	.string	"_WINT_T "
.LASF3050:
	.string	"GPIO_TIMER0_FULL_REMAP ((uint32_t)0x001600C0U)"
.LASF2464:
	.string	"DMA_CHXCTL_MWIDTH BITS(10,11)"
.LASF4544:
	.string	"EXTI5_9_IRQn"
.LASF1992:
	.string	"CAN_RFIFOMDATA00(canx) REG32((canx) + 0x1B8U)"
.LASF2734:
	.string	"OB_DEEPSLEEP_NRST ((uint8_t)0x02U)"
.LASF298:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF833:
	.ascii	"_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = _REENT_STDIO_S"
	.ascii	"TREAM(var, 0); (var)->_stdout = _REENT_STDIO_STREAM(var, 1);"
	.ascii	" (var)->_stderr = _REENT_STDIO_STREAM(var, 2); (var)->_new._"
	.ascii	"reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = _RA"
	.ascii	"ND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_S"
	.string	"EED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }"
.LASF1014:
	.string	"S_IFBLK _IFBLK"
.LASF3051:
	.string	"GPIO_TIMER1_PARTIAL_REMAP0 ((uint32_t)0x00180100U)"
.LASF3475:
	.string	"RCU_PLL_MUL2 CFG0_PLLMF(0)"
.LASF2643:
	.string	"EXTI_SWIEV_SWIEV9 BIT(9)"
.LASF2856:
	.string	"GPIO_OCTL_OCTL1 BIT(1)"
.LASF3375:
	.string	"RCU_APB2EN_USART0EN BIT(14)"
.LASF331:
	.string	"RT_USING_TIMER_SOFT "
.LASF3638:
	.string	"SPI_CTL1(spix) REG32((spix) + 0x04U)"
.LASF2924:
	.string	"GPIO_LOCK_LK5 BIT(5)"
.LASF1799:
	.string	"ADC_DAUL_INSERTED_PARALLEL_REGULAL_FOLLOWUP_SLOW CTL0_SYNCM(4)"
.LASF2462:
	.string	"DMA_CHXCTL_MNAGA BIT(7)"
.LASF722:
	.string	"__section(x) __attribute__((__section__(x)))"
.LASF378:
	.string	"RT_DEBUG_SCHEDULER 0"
.LASF3797:
	.string	"TIMER_CH0CV(timerx) REG32((timerx) + 0x34U)"
.LASF3088:
	.string	"I2C_CTL0_STOP BIT(9)"
.LASF1603:
	.string	"__FAST32 "
.LASF2438:
	.string	"DMA_CH4MADDR(dmax) REG32((dmax) + 0x64U)"
.LASF2569:
	.string	"EXTI_INTEN_INTEN11 BIT(11)"
.LASF1127:
	.string	"EOVERFLOW 139"
.LASF938:
	.string	"FD_ISSET(n,p) ((p)->fds_bits[(n)/NFDBITS] & (1L << ((n) % NFDBITS)))"
.LASF66:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF1917:
	.string	"BKP_DATA17 REG16((BKP) + 0x5CU)"
.LASF2893:
	.string	"GPIO_BOP_CR6 BIT(22)"
.LASF303:
	.string	"__riscv 1"
.LASF496:
	.string	"RT_DEVICE_FLAG_ACTIVATED 0x010"
.LASF928:
	.string	"TIMEVAL_TO_TIMESPEC(tv,ts) do { (ts)->tv_sec = (tv)->tv_sec; (ts)->tv_nsec = (tv)->tv_usec * 1000; } while (0)"
.LASF147:
	.string	"__FLT_MANT_DIG__ 24"
.LASF672:
	.string	"__long_double_t long double"
.LASF1655:
	.string	"UINT_FAST64_MAX (__UINT_FAST64_MAX__)"
.LASF2697:
	.string	"FMC_CTL0_PG BIT(0)"
.LASF1033:
	.string	"DEFFILEMODE (S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH)"
.LASF4197:
	.string	"CTL0_REN(regval) (BIT(2) & ((uint32_t)(regval) << 2))"
.LASF1962:
	.string	"RTC_OUTPUT_SECOND_PULSE ((uint16_t)0x0200U)"
.LASF432:
	.string	"RT_MM_PAGE_BITS 12"
.LASF2552:
	.string	"EXTI_INTEN REG32(EXTI + 0x00U)"
.LASF1025:
	.string	"S_IWGRP 0000020"
.LASF3361:
	.string	"RCU_AHBEN_FMCSPEN BIT(4)"
.LASF876:
	.string	"CLK_TCK CLOCKS_PER_SEC"
.LASF593:
	.string	"_NOTHROW "
.LASF3191:
	.string	"FWDGT_PSC_DIV8 ((uint8_t)PSC_PSC(1))"
.LASF3070:
	.string	"I2C1 (I2C_BASE + 0x00000400U)"
.LASF4186:
	.string	"USART_GP_GUAT BITS(8,15)"
.LASF3613:
	.string	"RTC_CTL_LWOFF BIT(5)"
.LASF2939:
	.string	"AFIO_PCF0_SPI0_REMAP BIT(0)"
.LASF2256:
	.string	"CAN_BT_BS1_12TQ ((uint8_t)0x0BU)"
.LASF1844:
	.string	"ADC_INSERTED_CHANNEL_0 ((uint8_t)0x00U)"
.LASF3074:
	.string	"I2C_SADDR1(i2cx) REG32((i2cx) + 0x0CU)"
.LASF1765:
	.string	"ADC_CTL1_ETSRC BITS(17,19)"
.LASF3512:
	.string	"RCU_CKOUT0SRC_NONE CFG0_CKOUT0SEL(0)"
.LASF1414:
	.string	"SI_ASYNCIO 0x04"
.LASF451:
	.string	"RT_OBJECT_HOOK_CALL(func,argv) do { if ((func) != RT_NULL) func argv; } while (0)"
.LASF1123:
	.string	"EDQUOT 132"
.LASF4373:
	.string	"_fpos_t"
.LASF4033:
	.string	"TIMER_BREAK_POLARITY_HIGH ((uint16_t)TIMER_CCHP_BRKP)"
.LASF3079:
	.string	"I2C_RT(i2cx) REG32((i2cx) + 0x20U)"
.LASF2215:
	.string	"GET_RFIFOMP_FI(regval) GET_BITS((uint32_t)(regval), 8, 15)"
.LASF3737:
	.string	"I2S_MODE_SLAVERX I2SCTL_I2SOPMOD(1)"
.LASF440:
	.string	"RT_EEMPTY 4"
.LASF4517:
	.string	"CLIC_INT_SFT"
.LASF1583:
	.string	"signed"
.LASF4530:
	.string	"EXTI3_IRQn"
.LASF2162:
	.string	"CAN_RFIFOMI_EFID BITS(3,31)"
.LASF3923:
	.string	"TIMER_CCHP_POEN BIT(15)"
.LASF3694:
	.string	"SPI_BIDIRECTIONAL_TRANSMIT SPI_CTL0_BDOEN"
.LASF1740:
	.string	"ADC_STAT_EOC BIT(1)"
.LASF1536:
	.string	"BAUD_RATE_3000000 3000000"
.LASF576:
	.string	"__GNU_VISIBLE 0"
.LASF4651:
	.string	"_end"
.LASF4601:
	.string	"RCU_UART3"
.LASF4602:
	.string	"RCU_UART4"
.LASF3565:
	.string	"RCU_PLL1_MUL12 CFG1_PLL1MF(10)"
.LASF2826:
	.string	"GPIO_CTL1_CTL9 BITS(6, 7)"
.LASF685:
	.string	"__GNUCLIKE_ASM 3"
.LASF2731:
	.string	"WS_WSCNT_2 WS_WSCNT(2)"
.LASF3820:
	.string	"TIMER_CTL1_ISO1N BIT(11)"
.LASF2439:
	.string	"DMA_CH5CTL(dmax) REG32((dmax) + 0x6CU)"
.LASF3942:
	.string	"TIMER_INT_FLAG_BRK TIMER_INT_BRK"
.LASF3365:
	.string	"RCU_APB2EN_AFEN BIT(0)"
.LASF2460:
	.string	"DMA_CHXCTL_CMEN BIT(5)"
.LASF3372:
	.string	"RCU_APB2EN_ADC1EN BIT(10)"
.LASF4658:
	.string	"tx_pin"
.LASF1119:
	.string	"ENETRESET 126"
.LASF4303:
	.string	"HEAP_BEGIN &_end"
.LASF4341:
	.string	"RT_Device_Class_USBHost"
.LASF3545:
	.string	"RCU_PREDV1_DIV2 CFG1_PREDV1(1)"
.LASF2368:
	.string	"DAC_TRIGGER_SOFTWARE CTL_DTSEL(7)"
.LASF2119:
	.string	"CAN_INTEN_RFNEIE0 BIT(1)"
.LASF3376:
	.string	"RCU_APB1EN_TIMER1EN BIT(0)"
.LASF4376:
	.string	"__wch"
.LASF3536:
	.string	"RCU_PREDV0_DIV10 CFG1_PREDV0(9)"
.LASF3392:
	.string	"RCU_APB1EN_CAN1EN BIT(26)"
.LASF205:
	.string	"__FLT64_DIG__ 15"
.LASF1037:
	.string	"S_ISFIFO(m) (((m)&_IFMT) == _IFIFO)"
.LASF3975:
	.string	"TIMER_DMACFG_DMATA_PSC DMACFG_DMATA(10)"
.LASF1254:
	.string	"TIOCCONS 0x541D"
.LASF828:
	.string	"_REENT_ASCTIME_SIZE 26"
.LASF4032:
	.string	"TIMER_BREAK_POLARITY_LOW ((uint16_t)0x0000U)"
.LASF3435:
	.string	"CFG0_SCS(regval) (BITS(0,1) & ((uint32_t)(regval) << 0))"
.LASF57:
	.string	"__INT_FAST8_TYPE__ int"
.LASF2430:
	.string	"DMA_CH2MADDR(dmax) REG32((dmax) + 0x3CU)"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF568:
	.string	"_POSIX_SOURCE"
.LASF4474:
	.string	"_h_errno"
.LASF1863:
	.string	"ADC_CHANNEL_15 ((uint8_t)0x0FU)"
.LASF1606:
	.string	"__LEAST16 \"h\""
.LASF2728:
	.string	"WS_WSCNT(regval) (BITS(0,2) & ((uint32_t)(regval)))"
.LASF1349:
	.string	"SIOCGIFDSTADDR 0x8917"
.LASF2636:
	.string	"EXTI_SWIEV_SWIEV2 BIT(2)"
.LASF3680:
	.string	"SPI_TCRC_TCRC BITS(0,15)"
.LASF1996:
	.string	"CAN_RFIFOMDATA01(canx) REG32((canx) + 0x1C8U)"
.LASF3863:
	.string	"TIMER_SWEVG_CMTG BIT(5)"
.LASF1527:
	.string	"BAUD_RATE_9600 9600"
.LASF3640:
	.string	"SPI_DATA(spix) REG32((spix) + 0x0CU)"
.LASF2435:
	.string	"DMA_CH4CTL(dmax) REG32((dmax) + 0x58U)"
.LASF3190:
	.string	"FWDGT_PSC_DIV4 ((uint8_t)PSC_PSC(0))"
.LASF3177:
	.string	"I2C_ADDFORMAT_10BITS I2C_SADDR0_ADDFORMAT"
.LASF791:
	.string	"_LOCK_RECURSIVE_T _LOCK_T"
.LASF2385:
	.string	"DAC_WAVE_BIT_WIDTH_12 DWBW(11)"
.LASF4261:
	.string	"N22_FUNC_H "
.LASF469:
	.string	"RT_THREAD_CLOSE 0x04"
.LASF2402:
	.string	"DAC_TRIANGLE_AMPLITUDE_1 DAC_WAVE_BIT_WIDTH_1"
.LASF454:
	.string	"RT_TIMER_FLAG_ONE_SHOT 0x0"
.LASF2506:
	.string	"DMA_PRIORITY_LOW CHCTL_PRIO(0U)"
.LASF4216:
	.string	"USART_STB_2BIT CTL1_STB(2)"
.LASF1276:
	.string	"TIOCGPKT 0x80045438"
.LASF4149:
	.string	"USART_BAUD_FRADIV BITS(0,3)"
.LASF3806:
	.string	"TIMER_CTL0_UPS BIT(2)"
.LASF3358:
	.string	"RCU_AHBEN_DMA0EN BIT(0)"
.LASF104:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF4464:
	.string	"_mbtowc_state"
.LASF897:
	.string	"_LITTLE_ENDIAN 1234"
.LASF4342:
	.string	"RT_Device_Class_SPIBUS"
.LASF1663:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF1374:
	.string	"SIOCDIFADDR 0x8936"
.LASF3356:
	.string	"RCU_APB1RST_PMURST BIT(28)"
.LASF2542:
	.string	"EXMC_NOR_DATABUS_WIDTH_16B SNCTL_NRW(1)"
.LASF843:
	.string	"_REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)"
.LASF488:
	.string	"RT_EVENT_FLAG_OR 0x02"
.LASF3218:
	.string	"DBG_CTL_TIMER3_HOLD BIT(13)"
.LASF4670:
	.string	"gd32_getc"
.LASF2037:
	.string	"CAN_F6DATA1(canx) REG32((canx) + 0x274U)"
.LASF116:
	.string	"__INT64_C(c) c ## LL"
.LASF3182:
	.string	"FWDGT_RLD REG32((FWDGT) + 0x00000008U)"
.LASF2522:
	.string	"EXMC_SNCTL0 REG32(EXMC + 0x00U)"
.LASF2707:
	.string	"FMC_ADDR0_ADDR BITS(0,31)"
.LASF4647:
	.string	"USART_INT_IDLE"
.LASF1737:
	.string	"ADC_RDATA(adcx) REG32((adcx) + 0x4CU)"
.LASF2865:
	.string	"GPIO_OCTL_OCTL10 BIT(10)"
.LASF1515:
	.string	"RT_WQ_FLAG_CLEAN 0x00"
.LASF717:
	.string	"__pure2 __attribute__((__const__))"
.LASF467:
	.string	"RT_THREAD_RUNNING 0x03"
.LASF435:
	.string	"RT_KERNEL_REALLOC(ptr,size) rt_realloc(ptr, size)"
.LASF580:
	.string	"__POSIX_VISIBLE 200809"
.LASF2994:
	.string	"GPIO_EVENT_PIN_0 ((uint8_t)0x00U)"
.LASF2500:
	.string	"DMA_PERIPHERAL_WIDTH_32BIT CHCTL_PWIDTH(2U)"
.LASF4158:
	.string	"USART_CTL0_TBEIE BIT(7)"
.LASF4021:
	.string	"TIMER_CKDIV_DIV1 CTL0_CKDIV(0)"
.LASF749:
	.string	"__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))"
.LASF2344:
	.string	"DAC_SWT_SWTR0 BIT(0)"
.LASF2993:
	.string	"GPIO_PORT_SOURCE_GPIOE ((uint8_t)0x04U)"
.LASF4079:
	.string	"TIMER_IC_SELECTION_INDIRECTTI ((uint16_t)0x0002U)"
.LASF2075:
	.string	"CAN_CTL_ABOR BIT(6)"
.LASF4017:
	.string	"TIMER_PSC_RELOAD_UPDATE ((uint32_t)0x00000000U)"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF699:
	.string	"__GNUCLIKE_BUILTIN_MEMCPY 1"
.LASF3657:
	.string	"SPI_CTL0_CRCEN BIT(13)"
.LASF2311:
	.string	"CRC_FDATA_FDATA BITS(0, 7)"
.LASF3543:
	.string	"CFG1_PREDV1(regval) (BITS(4,7) & ((uint32_t)(regval) << 4))"
.LASF750:
	.string	"__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))"
.LASF2171:
	.string	"CAN_RFIFOMDATA1_DB4 BITS(0,7)"
.LASF2006:
	.string	"CAN_F3DATA0(canx) REG32((canx) + 0x258U)"
.LASF2536:
	.string	"EXMC_SNTCFG_DSET BITS(8,15)"
.LASF4314:
	.string	"long long unsigned int"
.LASF4143:
	.string	"USART_STAT_RBNE BIT(5)"
.LASF2343:
	.string	"DAC_CTL_DDMAEN1 BIT(28)"
.LASF924:
	.string	"timeradd(tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec + (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec + (uvp)->tv_usec; if ((vvp)->tv_usec >= 1000000) { (vvp)->tv_sec++; (vvp)->tv_usec -= 1000000; } } while (0)"
.LASF462:
	.string	"RT_TIMER_SKIP_LIST_LEVEL 1"
.LASF2174:
	.string	"CAN_RFIFOMDATA1_DB7 BITS(24,31)"
.LASF2501:
	.string	"CHCTL_MWIDTH(regval) (BITS(10,11) & ((uint32_t)(regval) << 10))"
.LASF2044:
	.string	"CAN_F13DATA1(canx) REG32((canx) + 0x2ACU)"
.LASF2307:
	.string	"CRC_DATA REG32(CRC + 0x00U)"
.LASF3988:
	.string	"TIMER_DMACFG_DMATC_4TRANSFER DMACFG_DMATC(3)"
.LASF1161:
	.string	"O_EXCL _FEXCL"
.LASF3262:
	.string	"GD32VF103_RCU_H "
.LASF1972:
	.string	"CAN_TSTAT(canx) REG32((canx) + 0x08U)"
.LASF3257:
	.string	"PMU_LDO_LOWPOWER PMU_CTL_LDOLP"
.LASF1183:
	.string	"FD_CLOEXEC 1"
.LASF597:
	.string	"_NOINLINE __attribute__ ((__noinline__))"
.LASF2468:
	.string	"DMA_CHXPADDR_PADDR BITS(0,31)"
.LASF4470:
	.string	"_mbrtowc_state"
.LASF2087:
	.string	"CAN_STAT_RXL BIT(11)"
.LASF3924:
	.string	"TIMER_DMACFG_DMATA BITS(0,4)"
.LASF3636:
	.string	"SPI2 (SPI_BASE + 0x00000400U)"
.LASF1308:
	.string	"TIOCM_CTS 0x020"
.LASF3008:
	.string	"GPIO_EVENT_PIN_14 ((uint8_t)0x0EU)"
.LASF1526:
	.string	"BAUD_RATE_4800 4800"
.LASF831:
	.string	"_REENT_STDIO_STREAM(var,index) &(var)->__sf[index]"
.LASF2128:
	.string	"CAN_INTEN_ERRNIE BIT(11)"
.LASF1290:
	.string	"TIOCSERSETMULTI 0x545B"
.LASF4394:
	.string	"__tm_year"
.LASF4378:
	.string	"__count"
.LASF4307:
	.string	"unsigned char"
.LASF2594:
	.string	"EXTI_EVEN_EVEN17 BIT(17)"
.LASF4215:
	.string	"USART_STB_0_5BIT CTL1_STB(1)"
.LASF3500:
	.string	"RCU_PLL_MUL27 (PLLMF_4 | CFG0_PLLMF(10))"
.LASF2427:
	.string	"DMA_CH2CTL(dmax) REG32((dmax) + 0x30U)"
.LASF3701:
	.string	"SPI_FRAMESIZE_8BIT ((uint32_t)0x00000000U)"
.LASF229:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF2888:
	.string	"GPIO_BOP_CR1 BIT(17)"
.LASF1245:
	.string	"TIOCSWINSZ 0x5414"
.LASF3789:
	.string	"TIMER_SWEVG(timerx) REG32((timerx) + 0x14U)"
.LASF2276:
	.string	"CAN_FIFO1 ((uint8_t)0x01U)"
.LASF418:
	.string	"ALIGN(n) __attribute__((aligned(n)))"
.LASF2505:
	.string	"CHCTL_PRIO(regval) (BITS(12,13) & ((uint32_t)(regval) << 12))"
.LASF3767:
	.string	"SPI_FLAG_TRANS SPI_STAT_TRANS"
.LASF1195:
	.string	"F_RSETLK 11"
.LASF2559:
	.string	"EXTI_INTEN_INTEN1 BIT(1)"
.LASF1974:
	.string	"CAN_RFIFO1(canx) REG32((canx) + 0x10U)"
.LASF851:
	.string	"_REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)"
.LASF3690:
	.string	"SPI_I2SPSC_OF BIT(8)"
.LASF3159:
	.string	"I2C_SRESET_RESET ((uint32_t)0x00000000U)"
.LASF337:
	.string	"RT_USING_EVENT "
.LASF3140:
	.string	"I2C_STAT0_REG_OFFSET 0x14U"
.LASF3282:
	.string	"RCU_CTL_HXTALSTB BIT(17)"
.LASF2887:
	.string	"GPIO_BOP_CR0 BIT(16)"
.LASF1125:
	.string	"ENOTSUP 134"
.LASF4272:
	.string	"N22_ECLIC_H "
.LASF3901:
	.string	"TIMER_CHCTL2_CH1NP BIT(7)"
.LASF1056:
	.string	"ECHILD 10"
.LASF2848:
	.string	"GPIO_ISTAT_ISTAT9 BIT(9)"
.LASF3139:
	.string	"I2C_CTL1_REG_OFFSET 0x04U"
.LASF3946:
	.string	"TIMER_FLAG_CH2 TIMER_INTF_CH2IF"
.LASF1827:
	.string	"ADC_SAMPLETIME_1POINT5 SAMPTX_SPT(0)"
.LASF3766:
	.string	"SPI_FLAG_RXORERR SPI_STAT_RXORERR"
.LASF3482:
	.string	"RCU_PLL_MUL9 CFG0_PLLMF(7)"
.LASF1893:
	.string	"ADC_OVERSAMPLING_RATIO_MUL16 OVSCR_OVSR(3)"
.LASF2604:
	.string	"EXTI_RTEN_RTEN8 BIT(8)"
.LASF2884:
	.string	"GPIO_BOP_BOP13 BIT(13)"
.LASF575:
	.string	"__BSD_VISIBLE 1"
.LASF2412:
	.string	"DAC_TRIANGLE_AMPLITUDE_2047 DAC_WAVE_BIT_WIDTH_11"
.LASF908:
	.string	"__bswap32(_x) __builtin_bswap32(_x)"
.LASF1875:
	.string	"ADC_RESOLUTION_8B OVSCR_DRES(2)"
.LASF2900:
	.string	"GPIO_BOP_CR13 BIT(29)"
.LASF992:
	.string	"CLOCK_DISALLOWED 0"
.LASF3312:
	.string	"RCU_INT_IRC40KSTBIE BIT(8)"
.LASF2649:
	.string	"EXTI_SWIEV_SWIEV15 BIT(15)"
.LASF3042:
	.string	"GPIO_PIN_ALL BITS(0, 15)"
.LASF1288:
	.string	"TIOCSERGETLSR 0x5459"
.LASF3004:
	.string	"GPIO_EVENT_PIN_10 ((uint8_t)0x0AU)"
.LASF2997:
	.string	"GPIO_EVENT_PIN_3 ((uint8_t)0x03U)"
.LASF1651:
	.string	"INT_FAST32_MAX (__INT_FAST32_MAX__)"
.LASF263:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF2930:
	.string	"GPIO_LOCK_LK11 BIT(11)"
.LASF1531:
	.string	"BAUD_RATE_115200 115200"
.LASF871:
	.string	"__need_size_t "
.LASF3185:
	.string	"FWDGT_PSC_PSC BITS(0,2)"
.LASF4448:
	.string	"__FILE"
.LASF2190:
	.string	"TSTAT_REG_OFFSET ((uint8_t)0x08U)"
.LASF375:
	.string	"RT_DEBUG_MEM 0"
.LASF401:
	.string	"_STDARG_H "
.LASF3773:
	.string	"I2S_FLAG_RXORERR SPI_STAT_RXORERR"
.LASF2751:
	.string	"OB_WP_1 ((uint32_t)0x00000002U)"
.LASF3880:
	.string	"TIMER_CHCTL1_CH2MS BITS(0,1)"
.LASF829:
	.string	"_REENT_SIGNAL_SIZE 24"
.LASF346:
	.string	"RT_CONSOLE_DEVICE_NAME \"uart0\""
.LASF2851:
	.string	"GPIO_ISTAT_ISTAT12 BIT(12)"
.LASF69:
	.string	"__GXX_ABI_VERSION 1013"
.LASF3034:
	.string	"GPIO_PIN_8 BIT(8)"
.LASF1466:
	.string	"SIGVTALRM 26"
.LASF4318:
	.string	"long unsigned int"
.LASF4395:
	.string	"__tm_wday"
.LASF3430:
	.string	"CTL_REG_OFFSET 0x00U"
.LASF245:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF4018:
	.string	"TIMER_COUNTER_UP ((uint16_t)0x0000U)"
.LASF1046:
	.string	"__errno_r(ptr) ((ptr)->_errno)"
.LASF544:
	.string	"__NEWLIB_MINOR__ 0"
.LASF381:
	.string	"RT_DEBUG_TIMER 0"
.LASF2472:
	.string	"DMA_CHCNT(dma,channel) REG32(((dma) + 0x0CU) + 0x14U * (uint32_t)(channel))"
.LASF2169:
	.string	"CAN_RFIFOMDATA0_DB2 BITS(16,23)"
.LASF3519:
	.string	"RCU_CKOUT0SRC_EXT1 CFG0_CKOUT0SEL(10)"
.LASF4454:
	.string	"_mult"
.LASF2579:
	.string	"EXTI_EVEN_EVEN2 BIT(2)"
.LASF3466:
	.string	"RCU_CKADC_CKAPB2_DIV4 ((uint32_t)0x00000001U)"
.LASF1766:
	.string	"ADC_CTL1_ETERC BIT(20)"
.LASF1607:
	.string	"__LEAST32 \"l\""
.LASF1283:
	.string	"TIOCSERGWILD 0x5454"
.LASF251:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF4006:
	.string	"TIMER_EVENT_SRC_CH2G ((uint16_t)0x0008U)"
.LASF2556:
	.string	"EXTI_SWIEV REG32(EXTI + 0x10U)"
.LASF3025:
	.string	"GPIO_PIN_SOURCE_15 ((uint8_t)0x0FU)"
.LASF1543:
	.string	"STOP_BITS_2 1"
.LASF2867:
	.string	"GPIO_OCTL_OCTL12 BIT(12)"
.LASF1452:
	.string	"SIGALRM 14"
.LASF4626:
	.string	"USART_FLAG_RBNE"
.LASF1087:
	.string	"ENOSR 63"
.LASF3726:
	.string	"I2S_AUDIOSAMPLE_96K ((uint32_t)96000U)"
.LASF2597:
	.string	"EXTI_RTEN_RTEN1 BIT(1)"
.LASF3272:
	.string	"RCU_BDCTL REG32(RCU + 0x20U)"
.LASF3700:
	.string	"SPI_FRAMESIZE_16BIT SPI_CTL0_FF16"
.LASF2877:
	.string	"GPIO_BOP_BOP6 BIT(6)"
.LASF285:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF1784:
	.string	"ADC_OVSCR_TOVS BIT(9)"
.LASF3919:
	.string	"TIMER_CCHP_ROS BIT(11)"
.LASF2830:
	.string	"GPIO_CTL1_CTL11 BITS(14, 15)"
.LASF1054:
	.string	"ENOEXEC 8"
.LASF2081:
	.string	"CAN_STAT_ERRIF BIT(2)"
.LASF2823:
	.string	"GPIO_CTL1_MD8 BITS(0, 1)"
.LASF2537:
	.string	"EXMC_SNTCFG_BUSLAT BITS(16,19)"
.LASF2502:
	.string	"DMA_MEMORY_WIDTH_8BIT CHCTL_MWIDTH(0U)"
.LASF404:
	.string	"__GNUC_VA_LIST "
.LASF1584:
	.string	"char"
.LASF3531:
	.string	"RCU_PREDV0_DIV5 CFG1_PREDV0(4)"
.LASF3881:
	.string	"TIMER_CHCTL1_CH2COMFEN BIT(2)"
.LASF2235:
	.string	"CAN_ERRN_7 ERR_ERRN(7)"
.LASF2870:
	.string	"GPIO_OCTL_OCTL15 BIT(15)"
.LASF4047:
	.string	"TIMER_CCX_ENABLE ((uint16_t)0x0001U)"
.LASF2795:
	.string	"GPIO_ISTAT(gpiox) REG32((gpiox) + 0x08U)"
.LASF1674:
	.string	"INT64_C(x) __INT64_C(x)"
.LASF4178:
	.string	"USART_CTL2_NKEN BIT(4)"
.LASF2159:
	.string	"CAN_TMDATA1_DB7 BITS(24,31)"
.LASF169:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF2841:
	.string	"GPIO_ISTAT_ISTAT2 BIT(2)"
.LASF2482:
	.string	"DMA_INT_FLAG_HTF DMA_INTF_HTFIF"
.LASF1224:
	.string	"FIONBIO _IOW('f', 126, int)"
.LASF1101:
	.string	"EAFNOSUPPORT 106"
.LASF2019:
	.string	"CAN_F16DATA0(canx) REG32((canx) + 0x2C0U)"
.LASF1231:
	.string	"TCSETA 0x5406"
.LASF299:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF444:
	.string	"RT_EIO 8"
.LASF1843:
	.string	"ADC_CHANNEL_DISCON_DISABLE ((uint8_t)0x04U)"
.LASF4490:
	.string	"syscall_func"
.LASF1708:
	.string	"DMA_BASE (AHB1_BUS_BASE + 0x00008000U)"
.LASF2306:
	.string	"CRC CRC_BASE"
.LASF1532:
	.string	"BAUD_RATE_230400 230400"
.LASF1289:
	.string	"TIOCSERGETMULTI 0x545A"
.LASF603:
	.string	"__have_longlong64 1"
.LASF4633:
	.string	"USART_INT_FLAG_TBE"
.LASF1747:
	.string	"ADC_CTL0_EOICIE BIT(7)"
.LASF4589:
	.string	"RCU_USBFS"
.LASF1373:
	.string	"SIOCGIFPFLAGS 0x8935"
.LASF2063:
	.string	"CAN_FDATA0(canx,bank) REG32((canx) + 0x240U + ((bank) * 0x8U) + 0x0U)"
.LASF1981:
	.string	"CAN_TMDATA10(canx) REG32((canx) + 0x18CU)"
.LASF2102:
	.string	"CAN_TSTAT_MST2 BIT(23)"
.LASF633:
	.string	"__SIZE_T "
.LASF2819:
	.string	"GPIO_CTL0_MD6 BITS(24, 25)"
.LASF3073:
	.string	"I2C_SADDR0(i2cx) REG32((i2cx) + 0x08U)"
.LASF394:
	.string	"RTTHREAD_VERSION ((RT_VERSION * 10000) + (RT_SUBVERSION * 100) + RT_REVISION)"
.LASF3673:
	.string	"SPI_STAT_CONFERR BIT(5)"
.LASF731:
	.string	"__nonnull(x) __attribute__((__nonnull__ x))"
.LASF3061:
	.string	"GPIO_CAN1_REMAP ((uint32_t)0x00200040U)"
.LASF533:
	.string	"RTGRAPHIC_CTRL_GET_EXT 5"
.LASF3503:
	.string	"RCU_PLL_MUL30 (PLLMF_4 | CFG0_PLLMF(13))"
.LASF4328:
	.string	"type"
.LASF545:
	.string	"__NEWLIB_PATCHLEVEL__ 0"
.LASF1402:
	.string	"HAVE_SYS_SELECT_H 1"
.LASF2562:
	.string	"EXTI_INTEN_INTEN4 BIT(4)"
.LASF3027:
	.string	"GPIO_PIN_1 BIT(1)"
.LASF541:
	.string	"_NEWLIB_VERSION_H__ 1"
.LASF1366:
	.string	"SIOCGIFSLAVE 0x8929"
.LASF2533:
	.string	"EXMC_SNCTL_ASYNCWAIT BIT(15)"
.LASF1091:
	.string	"EBADMSG 77"
.LASF2808:
	.string	"GPIO_CTL0_CTL0 BITS(2, 3)"
.LASF3150:
	.string	"I2C_ACKPOS_NEXT ((uint32_t)0x00000000U)"
.LASF4323:
	.string	"prev"
.LASF540:
	.string	"__NEWLIB_H__ 1"
.LASF437:
	.string	"RT_ERROR 1"
.LASF2288:
	.string	"CAN_FT_DATA ((uint32_t)0x00000000U)"
.LASF3343:
	.string	"RCU_APB1RST_TIMER6RST BIT(5)"
.LASF922:
	.string	"timerisset(tvp) ((tvp)->tv_sec || (tvp)->tv_usec)"
.LASF1521:
	.string	"IPC_POLL_H__ "
.LASF1681:
	.string	"BIT(x) ((uint32_t)((uint32_t)0x01U<<(x)))"
.LASF706:
	.string	"__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1"
.LASF1207:
	.string	"AT_REMOVEDIR 8"
.LASF3858:
	.string	"TIMER_SWEVG_UPG BIT(0)"
.LASF1947:
	.string	"BKP_OCTL_COEN BIT(7)"
.LASF3782:
	.string	"TIMER5 (TIMER_BASE + 0x00001000U)"
.LASF4652:
	.string	"_heap_end"
.LASF2675:
	.string	"FMC_WS REG32((FMC) + 0x00U)"
.LASF3927:
	.string	"TIMER_INT_UP TIMER_DMAINTEN_UPIE"
.LASF4238:
	.string	"USART_RTS_DISABLE CLT2_RTSEN(0)"
.LASF4568:
	.string	"UART4_IRQn"
.LASF408:
	.string	"va_copy(d,s) __builtin_va_copy(d,s)"
.LASF173:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF333:
	.string	"RT_TIMER_THREAD_STACK_SIZE 512"
.LASF4276:
	.string	"_BITUL(x) (_AC(1,UL) << (x))"
.LASF1456:
	.string	"SIGTSTP 18"
.LASF3486:
	.string	"RCU_PLL_MUL13 CFG0_PLLMF(11)"
.LASF3879:
	.string	"TIMER_CHCTL0_CH1CAPFLT BITS(12,15)"
.LASF2337:
	.string	"DAC_CTL_DEN1 BIT(16)"
.LASF358:
	.string	"FINSH_THREAD_PRIORITY 20"
.LASF3665:
	.string	"SPI_CTL1_ERRIE BIT(5)"
.LASF1083:
	.string	"ENOLCK 46"
.LASF1318:
	.string	"N_SLIP 1"
.LASF2096:
	.string	"CAN_TSTAT_MTE1 BIT(11)"
.LASF4160:
	.string	"USART_CTL0_PM BIT(9)"
.LASF1686:
	.string	"OB_BASE ((uint32_t)0x1FFFF800U)"
.LASF2735:
	.string	"OB_DEEPSLEEP_RST ((uint8_t)0x00U)"
.LASF1577:
	.string	"IRC40K_VALUE ((uint32_t)40000)"
.LASF3067:
	.string	"GPIO_EXMC_NADV_REMAP ((uint32_t)0x80000400U)"
.LASF228:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF2051:
	.string	"CAN_F20DATA1(canx) REG32((canx) + 0x2E4U)"
.LASF438:
	.string	"RT_ETIMEOUT 2"
.LASF3260:
	.string	"WFI_CMD ((uint8_t)0x00U)"
.LASF3292:
	.string	"RCU_CFG0_SCSS BITS(2,3)"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF151:
	.string	"__FLT_MAX_EXP__ 128"
.LASF4167:
	.string	"USART_CTL1_LBDIE BIT(6)"
.LASF3654:
	.string	"SPI_CTL0_RO BIT(10)"
.LASF1807:
	.string	"ADC_CONTINUOUS_MODE ADC_CTL1_CTN"
.LASF313:
	.string	"USE_PLIC 1"
.LASF2340:
	.string	"DAC_CTL_DTSEL1 BITS(19,21)"
.LASF3691:
	.string	"SPI_I2SPSC_MCKOEN BIT(9)"
.LASF146:
	.string	"__FLT_RADIX__ 2"
.LASF3019:
	.string	"GPIO_PIN_SOURCE_9 ((uint8_t)0x09U)"
.LASF2676:
	.string	"FMC_KEY0 REG32((FMC) + 0x04U)"
.LASF113:
	.string	"__INT32_C(c) c ## L"
.LASF3841:
	.string	"TIMER_DMAINTEN_CH1DEN BIT(10)"
.LASF3149:
	.string	"I2C_ACK_ENABLE ((uint32_t)0x00000001U)"
.LASF3133:
	.string	"I2C_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))"
.LASF3899:
	.string	"TIMER_CHCTL2_CH1P BIT(5)"
.LASF3001:
	.string	"GPIO_EVENT_PIN_7 ((uint8_t)0x07U)"
.LASF449:
	.string	"RT_NULL (0)"
.LASF3380:
	.string	"RCU_APB1EN_TIMER5EN BIT(4)"
.LASF2154:
	.string	"CAN_TMDATA0_DB2 BITS(16,23)"
.LASF1919:
	.string	"BKP_DATA19 REG16((BKP) + 0x64U)"
.LASF1757:
	.string	"ADC_CTL1_ADCON BIT(0)"
.LASF2122:
	.string	"CAN_INTEN_RFNEIE1 BIT(4)"
.LASF4360:
	.string	"tx_complete"
.LASF3355:
	.string	"RCU_APB1RST_BKPIRST BIT(27)"
.LASF1294:
	.string	"TIOCPKT_DATA 0"
.LASF2530:
	.string	"EXMC_SNCTL_NRWTPOL BIT(9)"
.LASF427:
	.string	"INIT_ENV_EXPORT(fn) INIT_EXPORT(fn, \"5\")"
.LASF943:
	.string	"_IN_PORT_T_DECLARED "
.LASF379:
	.string	"RT_DEBUG_SLAB 0"
.LASF2457:
	.string	"DMA_CHXCTL_HTFIE BIT(2)"
.LASF2715:
	.string	"FMC_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))"
.LASF1706:
	.string	"GPIO_BASE (APB2_BUS_BASE + 0x00000800U)"
.LASF4092:
	.string	"TIMER_SMCFG_TRGSEL_CI1FE1 SMCFG_TRGSEL(6)"
.LASF407:
	.string	"va_arg(v,l) __builtin_va_arg(v,l)"
.LASF2716:
	.string	"FMC_REG_VAL(offset) (REG32(FMC + ((uint32_t)(offset) >> 6)))"
.LASF3592:
	.string	"RCU_DEEPSLEEP_V_0_9 DSV_DSLPVS(3)"
.LASF728:
	.string	"__pure __attribute__((__pure__))"
.LASF4296:
	.string	"BWEI_HANDLER eclic_bwei_handler"
.LASF430:
	.string	"RT_MM_PAGE_SIZE 4096"
.LASF3434:
	.string	"CFG1_REG_OFFSET 0x2CU"
.LASF1925:
	.string	"BKP_DATA25 REG16((BKP) + 0x7CU)"
.LASF3833:
	.string	"TIMER_DMAINTEN_CH1IE BIT(2)"
.LASF560:
	.string	"__IEEE_LITTLE_ENDIAN "
.LASF3573:
	.string	"RCU_PLL2_MUL9 CFG1_PLL2MF(7)"
.LASF4361:
	.string	"init"
.LASF3045:
	.string	"GPIO_USART0_REMAP ((uint32_t)0x00000004U)"
.LASF3420:
	.string	"RCU_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))"
.LASF4268:
	.string	"TMR_MTIME_size 0x8"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF779:
	.string	"__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))"
.LASF2323:
	.string	"DAC1_L12DH REG32(DAC + 0x18U)"
.LASF4352:
	.string	"RT_Device_Class_Unknown"
.LASF599:
	.string	"_TIME_H_ "
.LASF887:
	.string	"_UINT32_T_DECLARED "
.LASF1580:
	.string	"_STDINT_H "
.LASF2618:
	.string	"EXTI_FTEN_FTEN3 BIT(3)"
.LASF4030:
	.string	"TIMER_IOS_STATE_ENABLE ((uint16_t)TIMER_CCHP_IOS)"
.LASF339:
	.string	"RT_USING_MESSAGEQUEUE "
.LASF2814:
	.string	"GPIO_CTL0_CTL3 BITS(14, 15)"
.LASF3298:
	.string	"RCU_CFG0_PREDV0_LSB BIT(17)"
.LASF1564:
	.string	"RT_SERIAL_ERR_PARITY 0x03"
.LASF577:
	.string	"__ISO_C_VISIBLE 2011"
.LASF1520:
	.string	"PIPE_BUFSZ RT_PIPE_BUFSZ"
.LASF3151:
	.string	"I2C_ACKPOS_CURRENT ((uint32_t)0x00000001U)"
.LASF625:
	.string	"_PTRDIFF_T_DECLARED "
.LASF998:
	.string	"_IFBLK 0060000"
.LASF4417:
	.string	"_close"
.LASF3561:
	.string	"RCU_PLL1_MUL8 CFG1_PLL1MF(6)"
.LASF4213:
	.string	"CTL1_STB(regval) (BITS(12,13) & ((uint32_t)(regval) << 12))"
.LASF716:
	.string	"__dead2 __attribute__((__noreturn__))"
.LASF3620:
	.string	"RTC_ALRMH_ALRM BITS(0,15)"
.LASF295:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF2667:
	.string	"EXTI_PD_PD14 BIT(14)"
.LASF2401:
	.string	"DAC_ALIGN_8B_R DATA_ALIGN(2)"
.LASF594:
	.string	"_LONG_DOUBLE long double"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF3603:
	.string	"RTC_ALRMH REG32(RTC + 0x20U)"
.LASF2355:
	.string	"DACC_L12DH_DAC1_DH BITS(20,31)"
.LASF3421:
	.string	"RCU_REG_VAL(periph) (REG32(RCU + ((uint32_t)(periph) >> 6)))"
.LASF2150:
	.string	"CAN_TMP_TSEN BIT(8)"
.LASF3533:
	.string	"RCU_PREDV0_DIV7 CFG1_PREDV0(6)"
.LASF1358:
	.string	"SIOCSIFMEM 0x8920"
.LASF178:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF1085:
	.string	"ENODATA 61"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF4291:
	.string	"ECLIC_ADDR_BASE 0xd2000000"
.LASF2011:
	.string	"CAN_F8DATA0(canx) REG32((canx) + 0x280U)"
.LASF3706:
	.string	"SPI_CK_PL_LOW_PH_1EDGE ((uint32_t)0x00000000U)"
.LASF197:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF2222:
	.string	"GET_RFIFOMDATA1_DB6(regval) GET_BITS((uint32_t)(regval), 16, 23)"
.LASF1106:
	.string	"EADDRINUSE 112"
.LASF1913:
	.string	"BKP_DATA13 REG16((BKP) + 0x4CU)"
.LASF1918:
	.string	"BKP_DATA18 REG16((BKP) + 0x60U)"
.LASF1013:
	.string	"S_IFCHR _IFCHR"
.LASF2922:
	.string	"GPIO_LOCK_LK3 BIT(3)"
.LASF2196:
	.string	"BT_BS2(regval) (BITS(20,22) & ((uint32_t)(regval) << 20))"
.LASF3463:
	.string	"RCU_APB2_CKAHB_DIV8 CFG0_APB2PSC(6)"
.LASF1880:
	.string	"ADC_OVERSAMPLING_SHIFT_NONE OVSCR_OVSS(0)"
.LASF4677:
	.string	"rt_hw_usart_init"
.LASF2610:
	.string	"EXTI_RTEN_RTEN14 BIT(14)"
.LASF737:
	.string	"__restrict restrict"
.LASF1074:
	.string	"ESPIPE 29"
.LASF118:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF521:
	.string	"RT_DEVICE_CTRL_MTD_FORMAT 0x10"
.LASF2086:
	.string	"CAN_STAT_LASTRX BIT(10)"
.LASF4561:
	.string	"EXTI10_15_IRQn"
.LASF4246:
	.string	"WWDGT WWDGT_BASE"
.LASF4185:
	.string	"USART_GP_PSC BITS(0,7)"
.LASF4384:
	.string	"_next"
.LASF2252:
	.string	"CAN_BT_BS1_8TQ ((uint8_t)0x07U)"
.LASF1662:
	.string	"PTRDIFF_MAX (__PTRDIFF_MAX__)"
.LASF2118:
	.string	"CAN_INTEN_TMEIE BIT(0)"
.LASF2458:
	.string	"DMA_CHXCTL_ERRIE BIT(3)"
.LASF1462:
	.string	"SIGIO 23"
.LASF4489:
	.string	"rt_assert_hook"
.LASF4089:
	.string	"TIMER_SMCFG_TRGSEL_ITI3 SMCFG_TRGSEL(3)"
.LASF1429:
	.string	"SS_DISABLE 0x2"
.LASF3525:
	.string	"RCU_RTCSRC_HXTAL_DIV_128 BDCTL_RTCSRC(3)"
.LASF1076:
	.string	"EMLINK 31"
.LASF1529:
	.string	"BAUD_RATE_38400 38400"
.LASF3332:
	.string	"RCU_APB2RST_PERST BIT(6)"
.LASF237:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF783:
	.string	"__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))"
.LASF1058:
	.string	"ENOMEM 12"
.LASF2064:
	.string	"CAN_FDATA1(canx,bank) REG32((canx) + 0x240U + ((bank) * 0x8U) + 0x4U)"
.LASF1160:
	.string	"O_TRUNC _FTRUNC"
.LASF3299:
	.string	"RCU_CFG0_PLLMF BITS(18,21)"
.LASF1991:
	.string	"CAN_RFIFOMP0(canx) REG32((canx) + 0x1B4U)"
.LASF3354:
	.string	"RCU_APB1RST_CAN1RST BIT(26)"
.LASF1449:
	.string	"SIGSEGV 11"
.LASF502:
	.string	"RT_DEVICE_FLAG_DMA_TX 0x800"
.LASF547:
	.string	"_WANT_IO_LONG_LONG 1"
.LASF327:
	.string	"RT_USING_HOOK "
.LASF4110:
	.string	"TIMER_SLAVE_MODE_EVENT SMCFG_SMC(6)"
.LASF4641:
	.string	"USART_INT_FLAG_ERR_NERR"
.LASF1377:
	.string	"SIOCGIFBR 0x8940"
.LASF752:
	.string	"__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))"
.LASF163:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF372:
	.string	"BSP_USING_UART "
.LASF1670:
	.string	"INT16_C(x) __INT16_C(x)"
.LASF979:
	.string	"PTHREAD_INHERIT_SCHED 1"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF2834:
	.string	"GPIO_CTL1_CTL13 BITS(22, 23)"
.LASF3947:
	.string	"TIMER_FLAG_CH3 TIMER_INTF_CH3IF"
.LASF1169:
	.string	"FNONBIO _FNONBLOCK"
.LASF3225:
	.string	"DBG_CTL_CAN1_HOLD BIT(21)"
.LASF4630:
	.string	"USART_FLAG_FERR"
.LASF2116:
	.string	"CAN_RFIFO1_RFO1 BIT(4)"
.LASF2792:
	.string	"AFIO AFIO_BASE"
.LASF3921:
	.string	"TIMER_CCHP_BRKP BIT(13)"
.LASF2543:
	.string	"SNCTL_NRTP(regval) (BITS(2,3) & ((uint32_t)(regval) << 2))"
.LASF850:
	.string	"_REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)"
.LASF2907:
	.string	"GPIO_BC_CR4 BIT(4)"
.LASF2409:
	.string	"DAC_TRIANGLE_AMPLITUDE_255 DAC_WAVE_BIT_WIDTH_8"
.LASF3981:
	.string	"TIMER_DMACFG_DMATA_CH3CV DMACFG_DMATA(16)"
.LASF655:
	.string	"_WCHAR_T_H "
.LASF899:
	.string	"_PDP_ENDIAN 3412"
.LASF3193:
	.string	"FWDGT_PSC_DIV32 ((uint8_t)PSC_PSC(3))"
.LASF3676:
	.string	"SPI_STAT_FERR BIT(8)"
.LASF1364:
	.string	"SIOCSIFENCAP 0x8926"
.LASF799:
	.string	"__lock_acquire_recursive(lock) __retarget_lock_acquire_recursive(lock)"
.LASF231:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF711:
	.string	"__XSTRING(x) __STRING(x)"
.LASF1891:
	.string	"ADC_OVERSAMPLING_RATIO_MUL4 OVSCR_OVSR(1)"
.LASF2151:
	.string	"CAN_TMP_TS BITS(16,31)"
.LASF1772:
	.string	"ADC_WDHT_WDHT BITS(0,11)"
.LASF2176:
	.string	"CAN_FCTL_HBC1F BITS(8,13)"
.LASF4251:
	.string	"WWDGT_CTL_WDGTEN BIT(7)"
.LASF4546:
	.string	"TIMER0_UP_IRQn"
.LASF632:
	.string	"_T_SIZE "
.LASF1116:
	.string	"EMSGSIZE 122"
.LASF566:
	.string	"_DEFAULT_SOURCE"
.LASF65:
	.string	"__INTPTR_TYPE__ int"
.LASF3156:
	.string	"I2C_GCEN_ENABLE I2C_CTL0_GCEN"
.LASF1937:
	.string	"BKP_DATA37 REG16((BKP) + 0xACU)"
.LASF1533:
	.string	"BAUD_RATE_460800 460800"
.LASF1696:
	.string	"FWDGT_BASE (APB1_BUS_BASE + 0x00003000U)"
.LASF1834:
	.string	"ADC_SAMPLETIME_239POINT5 SAMPTX_SPT(7)"
.LASF2351:
	.string	"DAC1_R8DH_DAC1_DH BITS(0,7)"
.LASF2971:
	.string	"GPIO_MODE_SET(n,mode) ((uint32_t)((uint32_t)(mode) << (4U * (n))))"
.LASF620:
	.string	"__PTRDIFF_T "
.LASF36:
	.string	"__INTMAX_TYPE__ long long int"
.LASF4587:
	.string	"RCU_CRC"
.LASF832:
	.ascii	"_REENT_INIT(var) { 0, _REENT_STDIO_STREAM(&(var), 0), _REENT"
	.ascii	"_STDIO_STREAM(&(var), 1), _REENT_STDIO_STREAM(&(var), 2), 0,"
	.ascii	" \"\", 0, _NULL, 0, _NULL, _NULL, 0, _NULL, _NULL, 0, _NULL,"
	.ascii	" { { 0, _NULL, \"\", {0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 1, {"
	.string	" {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, \"\", \"\", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_ATEXIT _NULL, {_NULL, 0, _NULL} }"
.LASF4637:
	.string	"USART_INT_FLAG_IDLE"
.LASF86:
	.string	"__WCHAR_WIDTH__ 32"
.LASF1952:
	.string	"BKP_TPCS_TER BIT(0)"
.LASF3493:
	.string	"RCU_PLL_MUL20 (PLLMF_4 | CFG0_PLLMF(3))"
.LASF4461:
	.string	"_rand_next"
.LASF3814:
	.string	"TIMER_CTL1_DMAS BIT(3)"
.LASF1296:
	.string	"TIOCPKT_FLUSHWRITE 2"
.LASF3828:
	.string	"TIMER_SMCFG_ETPSC BITS(12,13)"
.LASF3902:
	.string	"TIMER_CHCTL2_CH2EN BIT(8)"
.LASF2013:
	.string	"CAN_F10DATA0(canx) REG32((canx) + 0x290U)"
.LASF3204:
	.string	"FWDGT_FLAG_RUD FWDGT_STAT_RUD"
.LASF2661:
	.string	"EXTI_PD_PD8 BIT(8)"
.LASF1964:
	.string	"TAMPER_PIN_ACTIVE_LOW ((uint16_t)0x0002U)"
.LASF4300:
	.string	"ECLIC_GROUP_LEVEL2_PRIO2 2"
.LASF1617:
	.string	"INTPTR_MIN (-__INTPTR_MAX__ - 1)"
.LASF3570:
	.string	"RCU_PLL1_MUL20 CFG1_PLL1MF(15)"
.LASF3230:
	.string	"PMU PMU_BASE"
.LASF3183:
	.string	"FWDGT_STAT REG32((FWDGT) + 0x0000000CU)"
.LASF1859:
	.string	"ADC_CHANNEL_11 ((uint8_t)0x0BU)"
.LASF2860:
	.string	"GPIO_OCTL_OCTL5 BIT(5)"
.LASF3903:
	.string	"TIMER_CHCTL2_CH2P BIT(9)"
.LASF1998:
	.string	"CAN_FCTL(canx) REG32((canx) + 0x200U)"
.LASF2317:
	.string	"DAC_CTL REG32(DAC + 0x00U)"
.LASF2418:
	.string	"DMA_INTC(dmax) REG32((dmax) + 0x04U)"
.LASF3929:
	.string	"TIMER_INT_CH1 TIMER_DMAINTEN_CH1IE"
.LASF256:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF1205:
	.string	"AT_SYMLINK_NOFOLLOW 2"
.LASF1035:
	.string	"S_ISCHR(m) (((m)&_IFMT) == _IFCHR)"
.LASF2682:
	.string	"FMC_WP REG32((FMC) + 0x20U)"
.LASF91:
	.string	"__INTMAX_C(c) c ## LL"
.LASF2376:
	.string	"DAC_WAVE_BIT_WIDTH_3 DWBW(2)"
.LASF1669:
	.string	"UINT8_C(x) __UINT8_C(x)"
.LASF2706:
	.string	"FMC_CTL0_ENDIE BIT(12)"
.LASF3501:
	.string	"RCU_PLL_MUL28 (PLLMF_4 | CFG0_PLLMF(11))"
.LASF3585:
	.string	"RCU_I2S1SRC_CKPLL2_MUL2 RCU_CFG1_I2S1SEL"
.LASF302:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF3124:
	.string	"I2C_STAT1_RXGC BIT(4)"
.LASF3169:
	.string	"I2C_SALTSEND_DISABLE ((uint32_t)0x00000000U)"
.LASF3451:
	.string	"RCU_AHB_CKSYS_DIV256 CFG0_AHBPSC(14)"
.LASF485:
	.string	"RT_WAITING_FOREVER -1"
.LASF2078:
	.string	"CAN_CTL_DFZ BIT(16)"
.LASF3836:
	.string	"TIMER_DMAINTEN_CMTIE BIT(5)"
.LASF2587:
	.string	"EXTI_EVEN_EVEN10 BIT(10)"
.LASF3938:
	.string	"TIMER_INT_FLAG_CH2 TIMER_INT_CH2"
.LASF2167:
	.string	"CAN_RFIFOMDATA0_DB0 BITS(0,7)"
.LASF2864:
	.string	"GPIO_OCTL_OCTL9 BIT(9)"
.LASF2097:
	.string	"CAN_TSTAT_MST1 BIT(15)"
.LASF619:
	.string	"_T_PTRDIFF "
.LASF3048:
	.string	"GPIO_USART2_FULL_REMAP ((uint32_t)0x00140030U)"
.LASF1832:
	.string	"ADC_SAMPLETIME_55POINT5 SAMPTX_SPT(5)"
.LASF4137:
	.string	"USART_GP(usartx) REG32((usartx) + (0x00000018U))"
.LASF1690:
	.string	"APB2_BUS_BASE ((uint32_t)0x40010000U)"
.LASF4500:
	.string	"parity"
.LASF1552:
	.string	"NRZ_INVERTED 1"
.LASF443:
	.string	"RT_EBUSY 7"
.LASF3085:
	.string	"I2C_CTL0_GCEN BIT(6)"
.LASF3247:
	.string	"PMU_LVDT_2 CTL_LVDT(2)"
.LASF4315:
	.string	"rt_base_t"
.LASF2928:
	.string	"GPIO_LOCK_LK9 BIT(9)"
.LASF639:
	.string	"_SIZE_T_DECLARED "
.LASF2664:
	.string	"EXTI_PD_PD11 BIT(11)"
.LASF1511:
	.string	"RT_DATAQUEUE_SIZE(dq) ((dq)->put_index - (dq)->get_index)"
.LASF88:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF1950:
	.string	"BKP_TPCTL_TPEN BIT(0)"
.LASF3535:
	.string	"RCU_PREDV0_DIV9 CFG1_PREDV0(8)"
.LASF4499:
	.string	"stop_bits"
.LASF4437:
	.string	"_result"
.LASF4516:
	.string	"CLIC_INT_RESERVED"
.LASF2079:
	.string	"CAN_STAT_IWS BIT(0)"
.LASF1791:
	.string	"CTL0_DISNUM(regval) (BITS(13,15) & ((uint32_t)(regval) << 13))"
.LASF4050:
	.string	"TIMER_CCXN_DISABLE ((uint16_t)0x0000U)"
.LASF3800:
	.string	"TIMER_CH3CV(timerx) REG32((timerx) + 0x40U)"
.LASF1780:
	.string	"ADC_RDATA_ADC1RDTR BITS(16,31)"
.LASF3647:
	.string	"SPI_CTL0_CKPL BIT(1)"
.LASF3539:
	.string	"RCU_PREDV0_DIV13 CFG1_PREDV0(12)"
.LASF1258:
	.string	"TIOCNOTTY 0x5422"
.LASF1234:
	.string	"TCSBRK 0x5409"
.LASF1341:
	.string	"SIOCRTMSG 0x890D"
.LASF2407:
	.string	"DAC_TRIANGLE_AMPLITUDE_63 DAC_WAVE_BIT_WIDTH_6"
.LASF1878:
	.string	"ADC_OVERSAMPLING_ONE_CONVERT 1"
.LASF2897:
	.string	"GPIO_BOP_CR10 BIT(26)"
.LASF4135:
	.string	"USART_CTL1(usartx) REG32((usartx) + (0x00000010U))"
.LASF2469:
	.string	"DMA_CHXMADDR_MADDR BITS(0,31)"
.LASF1471:
	.string	"SIGUSR2 31"
.LASF3876:
	.string	"TIMER_CHCTL0_CH0CAPPSC BITS(2,3)"
.LASF1212:
	.string	"O_DIRECTORY 0x200000"
.LASF2425:
	.string	"DMA_CH1PADDR(dmax) REG32((dmax) + 0x24U)"
.LASF2218:
	.string	"GET_RFIFOMDATA0_DB2(regval) GET_BITS((uint32_t)(regval), 16, 23)"
.LASF2210:
	.string	"TMDATA1_DB6(regval) (BITS(16,23) & ((uint32_t)(regval) << 16))"
.LASF3513:
	.string	"RCU_CKOUT0SRC_CKSYS CFG0_CKOUT0SEL(4)"
.LASF431:
	.string	"RT_MM_PAGE_MASK (RT_MM_PAGE_SIZE - 1)"
.LASF1693:
	.string	"TIMER_BASE (APB1_BUS_BASE + 0x00000000U)"
.LASF2130:
	.string	"CAN_INTEN_WIE BIT(16)"
.LASF2571:
	.string	"EXTI_INTEN_INTEN13 BIT(13)"
.LASF447:
	.string	"RT_ALIGN(size,align) (((size) + (align) - 1) & ~((align) - 1))"
.LASF3006:
	.string	"GPIO_EVENT_PIN_12 ((uint8_t)0x0CU)"
.LASF4027:
	.string	"TIMER_UPDATE_SRC_GLOBAL ((uint32_t)0x00000000U)"
.LASF2639:
	.string	"EXTI_SWIEV_SWIEV5 BIT(5)"
.LASF4674:
	.string	"GNU C17 8.2.0 -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit= 8 -g3 -O0"
.LASF1802:
	.string	"ADC_DAUL_REGULAL_FOLLOWUP_FAST CTL0_SYNCM(7)"
.LASF983:
	.string	"_PTHREAD_MUTEX_INITIALIZER ((pthread_mutex_t) 0xFFFFFFFF)"
.LASF1653:
	.string	"INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)"
.LASF1324:
	.string	"N_6PACK 7"
.LASF524:
	.string	"RT_DEVICE_CTRL_RTC_GET_ALARM 0x12"
.LASF2248:
	.string	"CAN_BT_BS1_4TQ ((uint8_t)0x03U)"
.LASF1363:
	.string	"SIOCGIFENCAP 0x8925"
.LASF4452:
	.string	"_rand48"
.LASF411:
	.string	"_VA_LIST "
.LASF382:
	.string	"RT_DEBUG_IRQ 0"
.LASF2818:
	.string	"GPIO_CTL0_CTL5 BITS(22, 23)"
.LASF3093:
	.string	"I2C_CTL0_SRESET BIT(15)"
.LASF161:
	.string	"__DBL_MANT_DIG__ 53"
.LASF4678:
	.string	"USART0_IRQHandler"
.LASF1854:
	.string	"ADC_CHANNEL_6 ((uint8_t)0x06U)"
.LASF2103:
	.string	"CAN_TSTAT_NUM BITS(24,25)"
.LASF532:
	.string	"RTGRAPHIC_CTRL_SET_MODE 4"
.LASF1977:
	.string	"CAN_BT(canx) REG32((canx) + 0x1CU)"
.LASF1216:
	.string	"_IOC_NONE 0U"
.LASF4578:
	.string	"CAN1_RX1_IRQn"
.LASF318:
	.string	"__DRV_UART_H__ "
.LASF1605:
	.string	"__LEAST8 \"hh\""
.LASF3917:
	.string	"TIMER_CCHP_PROT BITS(8,9)"
.LASF2335:
	.string	"DAC_CTL_DWBW0 BITS(8,11)"
.LASF2574:
	.string	"EXTI_INTEN_INTEN16 BIT(16)"
.LASF1613:
	.string	"__int_fast8_t_defined 1"
.LASF1178:
	.string	"FCREAT _FCREAT"
.LASF1808:
	.string	"CTL1_ETSRC(regval) (BITS(17,19) & ((uint32_t)(regval) << 17))"
.LASF4088:
	.string	"TIMER_SMCFG_TRGSEL_ITI2 SMCFG_TRGSEL(2)"
.LASF4014:
	.string	"TIMER_COUNTER_CENTER_UP CTL0_CAM(2)"
.LASF3395:
	.string	"RCU_APB1EN_DACEN BIT(29)"
.LASF873:
	.string	"_MACHTIME_H_ "
.LASF2679:
	.string	"FMC_CTL0 REG32((FMC) + 0x10U)"
.LASF3270:
	.string	"RCU_APB2EN REG32(RCU + 0x18U)"
.LASF109:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF1813:
	.string	"ADC0_1_EXTTRIG_REGULAR_T2_TRGO CTL1_ETSRC(4)"
.LASF2471:
	.string	"DMA_CHCTL(dma,channel) REG32(((dma) + 0x08U) + 0x14U * (uint32_t)(channel))"
.LASF120:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF2799:
	.string	"GPIO_LOCK(gpiox) REG32((gpiox) + 0x18U)"
.LASF815:
	.string	"__Long long"
.LASF616:
	.string	"_ANSI_STDDEF_H "
.LASF446:
	.string	"RT_EINVAL 10"
.LASF2773:
	.string	"OB_WP_23 ((uint32_t)0x00800000U)"
.LASF1275:
	.string	"TIOCVHANGUP 0x5437"
.LASF919:
	.string	"_TIME_T_DECLARED "
.LASF550:
	.string	"_MB_LEN_MAX 1"
.LASF3802:
	.string	"TIMER_DMACFG(timerx) REG32((timerx) + 0x48U)"
.LASF1628:
	.string	"UINT16_MAX (__UINT16_MAX__)"
.LASF61:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF3896:
	.string	"TIMER_CHCTL2_CH0NEN BIT(2)"
.LASF3610:
	.string	"RTC_CTL_OVIF BIT(2)"
.LASF1115:
	.string	"EDESTADDRREQ 121"
.LASF3097:
	.string	"I2C_CTL1_BUFIE BIT(10)"
.LASF1545:
	.string	"STOP_BITS_4 3"
.LASF2026:
	.string	"CAN_F23DATA0(canx) REG32((canx) + 0x3F8U)"
.LASF4281:
	.string	"ECLIC_MTH_OFFSET 0xB"
.LASF825:
	.string	"_RAND48_MULT_2 (0x0005)"
.LASF3816:
	.string	"TIMER_CTL1_TI0S BIT(7)"
.LASF3288:
	.string	"RCU_CTL_PLL1STB BIT(27)"
.LASF906:
	.string	"BYTE_ORDER _BYTE_ORDER"
.LASF3741:
	.string	"I2S_STD_PHILLIPS I2SCTL_I2SSTD(0)"
.LASF4399:
	.string	"_fnargs"
.LASF2770:
	.string	"OB_WP_20 ((uint32_t)0x00100000U)"
.LASF2519:
	.string	"__SEV eclic_send_event"
.LASF1389:
	.string	"SIOCADDDLCI 0x8980"
.LASF362:
	.string	"FINSH_USING_MSH_DEFAULT "
.LASF4258:
	.string	"WWDGT_CFG_PSC_DIV2 CFG_PSC(1)"
.LASF2025:
	.string	"CAN_F22DATA0(canx) REG32((canx) + 0x2F0U)"
.LASF1319:
	.string	"N_MOUSE 2"
.LASF4157:
	.string	"USART_CTL0_TCIE BIT(6)"
.LASF2208:
	.string	"TMDATA1_DB4(regval) (BITS(0,7) & ((uint32_t)(regval) << 0))"
.LASF4288:
	.string	"ECLIC_INT_ATTR_TRIG_POS 0x00"
.LASF3068:
	.string	"GD32VF103_I2C_H "
.LASF3607:
	.string	"RTC_INTEN_OVIE BIT(2)"
.LASF853:
	.string	"_REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)"
.LASF2538:
	.string	"EXMC_SNCTL(region) REG32(EXMC + 0x08U * (region))"
.LASF3571:
	.string	"CFG1_PLL2MF(regval) (BITS(12,15) & ((uint32_t)(regval) << 12))"
.LASF143:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF2914:
	.string	"GPIO_BC_CR11 BIT(11)"
.LASF3110:
	.string	"I2C_STAT0_ADD10SEND BIT(3)"
.LASF2953:
	.string	"AFIO_PCF0_TIMER1_ITI1_REMAP BIT(29)"
.LASF4456:
	.string	"_unused_rand"
.LASF3793:
	.string	"TIMER_CNT(timerx) REG32((timerx) + 0x24U)"
.LASF3583:
	.string	"RCU_PREDV0SRC_CKPLL1 RCU_CFG1_PREDV0SEL"
.LASF3499:
	.string	"RCU_PLL_MUL26 (PLLMF_4 | CFG0_PLLMF(9))"
.LASF3325:
	.string	"RCU_INT_PLL2STBIC BIT(22)"
.LASF1672:
	.string	"INT32_C(x) __INT32_C(x)"
.LASF244:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF788:
	.string	"_SYS__TYPES_H "
.LASF3716:
	.string	"SPI_PSC_64 CTL0_PSC(5)"
.LASF1203:
	.string	"AT_FDCWD -2"
.LASF4105:
	.string	"TIMER_ENCODER_MODE0 SMCFG_SMC(1)"
.LASF1572:
	.string	"__IO volatile"
.LASF1717:
	.string	"ADC1 (ADC_BASE + 0x400U)"
.LASF739:
	.string	"__predict_false(exp) __builtin_expect((exp), 0)"
.LASF1898:
	.string	"GD32VF103_BKP_H "
.LASF3340:
	.string	"RCU_APB1RST_TIMER3RST BIT(2)"
.LASF3445:
	.string	"RCU_AHB_CKSYS_DIV2 CFG0_AHBPSC(8)"
.LASF199:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF1467:
	.string	"SIGPROF 27"
.LASF80:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF1158:
	.string	"O_APPEND _FAPPEND"
.LASF2874:
	.string	"GPIO_BOP_BOP3 BIT(3)"
.LASF3295:
	.string	"RCU_CFG0_APB2PSC BITS(11,13)"
.LASF1924:
	.string	"BKP_DATA24 REG16((BKP) + 0x78U)"
.LASF2917:
	.string	"GPIO_BC_CR14 BIT(14)"
.LASF1397:
	.string	"LIBC_SIGNAL_H__ "
.LASF1877:
	.string	"ADC_OVERSAMPLING_ALL_CONVERT 0"
.LASF4547:
	.string	"TIMER0_TRG_CMT_IRQn"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF232:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF3441:
	.string	"RCU_SCSS_HXTAL CFG0_SCSS(1)"
.LASF4003:
	.string	"TIMER_EVENT_SRC_UPG ((uint16_t)0x0001U)"
.LASF3796:
	.string	"TIMER_CREP(timerx) REG32((timerx) + 0x30U)"
.LASF3231:
	.string	"PMU_CTL REG32((PMU) + 0x00U)"
.LASF289:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF803:
	.string	"__lock_release_recursive(lock) __retarget_lock_release_recursive(lock)"
.LASF2437:
	.string	"DMA_CH4PADDR(dmax) REG32((dmax) + 0x60U)"
.LASF760:
	.string	"__SCCSID(s) struct __hack"
.LASF3844:
	.string	"TIMER_DMAINTEN_CMTDEN BIT(13)"
.LASF4401:
	.string	"_fntypes"
.LASF1510:
	.string	"RT_DATAQUEUE_EVENT_LWM 0x03"
.LASF326:
	.string	"RT_USING_OVERFLOW_CHECK "
.LASF3871:
	.string	"TIMER_CHCTL0_CH1MS BITS(8,9)"
.LASF4297:
	.string	"PMOVI_HANDLER eclic_pmovi_handler"
.LASF1928:
	.string	"BKP_DATA28 REG16((BKP) + 0x88U)"
.LASF3479:
	.string	"RCU_PLL_MUL6 CFG0_PLLMF(4)"
.LASF946:
	.string	"__u_int_defined "
.LASF4164:
	.string	"USART_CTL0_UEN BIT(13)"
.LASF4206:
	.string	"USART_PM_ODD CTL0_PM(3)"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF3468:
	.string	"RCU_CKADC_CKAPB2_DIV8 ((uint32_t)0x00000003U)"
.LASF1840:
	.string	"ADC_REGULAR_CHANNEL ((uint8_t)0x01U)"
.LASF172:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF248:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF4244:
	.string	"USART_IRLP_NORMAL CTL2_IRLP(0)"
.LASF3107:
	.string	"I2C_STAT0_SBSEND BIT(0)"
.LASF2367:
	.string	"DAC_TRIGGER_EXTI_9 CTL_DTSEL(6)"
.LASF2891:
	.string	"GPIO_BOP_CR4 BIT(20)"
.LASF2478:
	.string	"DMA_CHMADDR_RESET_VALUE ((uint32_t)0x00000000U)"
.LASF230:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF4223:
	.string	"USART_CLEN_EN CTL1_CLEN(1)"
.LASF572:
	.string	"_ATFILE_SOURCE"
.LASF1269:
	.string	"TIOCGDEV 0x80045432"
.LASF3834:
	.string	"TIMER_DMAINTEN_CH2IE BIT(3)"
.LASF3059:
	.string	"GPIO_PD01_REMAP ((uint32_t)0x00008000U)"
.LASF3087:
	.string	"I2C_CTL0_START BIT(8)"
.LASF3791:
	.string	"TIMER_CHCTL1(timerx) REG32((timerx) + 0x1CU)"
.LASF846:
	.string	"_REENT_MP_RESULT(ptr) ((ptr)->_result)"
.LASF4605:
	.string	"RCU_CAN0"
.LASF3415:
	.string	"RCU_CFG1_PLL2MF BITS(12,15)"
.LASF3678:
	.string	"SPI_CRCPOLY_CRCPOLY BITS(0,15)"
.LASF1741:
	.string	"ADC_STAT_EOIC BIT(2)"
.LASF465:
	.string	"RT_THREAD_READY 0x01"
.LASF2220:
	.string	"GET_RFIFOMDATA1_DB4(regval) GET_BITS((uint32_t)(regval), 0, 7)"
.LASF1600:
	.string	"__INT64 \"ll\""
.LASF3166:
	.string	"I2C_PECTRANS_ENABLE I2C_CTL0_PECTRANS"
.LASF2693:
	.string	"FMC_STAT0_BUSY BIT(0)"
.LASF4282:
	.string	"ECLIC_INT_IP_OFFSET _AC(0x1000,UL)"
.LASF2314:
	.string	"DAC DAC_BASE"
.LASF4581:
	.string	"ECLIC_NUM_INTERRUPTS"
.LASF1403:
	.string	"HAVE_PTHREAD_H 1"
.LASF652:
	.string	"_BSD_WCHAR_T_ "
.LASF4381:
	.string	"_flock_t"
.LASF2163:
	.string	"CAN_RFIFOMI_SFID BITS(21,31)"
.LASF1348:
	.string	"SIOCSIFADDR 0x8916"
.LASF1255:
	.string	"TIOCGSERIAL 0x541E"
.LASF881:
	.string	"_UINT8_T_DECLARED "
.LASF3056:
	.string	"GPIO_TIMER3_REMAP ((uint32_t)0x00001000U)"
.LASF2181:
	.string	"CAN_FDATA_FD(regval) BIT(regval)"
.LASF1882:
	.string	"ADC_OVERSAMPLING_SHIFT_2B OVSCR_OVSS(2)"
.LASF155:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF2265:
	.string	"CAN_BT_BS2_5TQ ((uint8_t)0x04U)"
.LASF2451:
	.string	"DMA_INTC_GIFC BIT(0)"
.LASF2475:
	.string	"DMA_CHCTL_RESET_VALUE ((uint32_t)0x00000000U)"
.LASF3758:
	.string	"SPI_INT_FLAG_CONFERR ((uint8_t)0x03U)"
.LASF3222:
	.string	"DBG_CTL_TIMER4_HOLD BIT(18)"
.LASF925:
	.string	"timersub(tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec - (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec - (uvp)->tv_usec; if ((vvp)->tv_usec < 0) { (vvp)->tv_sec--; (vvp)->tv_usec += 1000000; } } while (0)"
.LASF2737:
	.string	"OB_STDBY_RST ((uint8_t)0x00U)"
.LASF1314:
	.string	"TIOCM_OUT1 0x2000"
.LASF4535:
	.string	"DMA0_Channel3_IRQn"
.LASF4565:
	.string	"TIMER4_IRQn"
.LASF1916:
	.string	"BKP_DATA16 REG16((BKP) + 0x58U)"
.LASF1847:
	.string	"ADC_INSERTED_CHANNEL_3 ((uint8_t)0x03U)"
.LASF1453:
	.string	"SIGTERM 15"
.LASF2868:
	.string	"GPIO_OCTL_OCTL13 BIT(13)"
.LASF2627:
	.string	"EXTI_FTEN_FTEN12 BIT(12)"
.LASF1906:
	.string	"BKP_DATA6 REG16((BKP) + 0x1CU)"
.LASF2202:
	.string	"TMI_EFID(regval) (BITS(3,31) & ((uint32_t)(regval) << 3))"
.LASF2805:
	.string	"AFIO_EXTISS3 REG32(AFIO + 0x14U)"
.LASF1771:
	.string	"ADC_IOFFX_IOFF BITS(0,11)"
.LASF966:
	.string	"_NLINK_T_DECLARED "
.LASF476:
	.string	"RT_THREAD_CTRL_STARTUP 0x00"
.LASF4635:
	.string	"USART_INT_FLAG_RBNE"
.LASF1990:
	.string	"CAN_RFIFOMI0(canx) REG32((canx) + 0x1B0U)"
.LASF1634:
	.string	"UINT32_MAX (__UINT32_MAX__)"
.LASF852:
	.string	"_REENT_EMERGENCY(ptr) ((ptr)->_emergency)"
.LASF2193:
	.string	"ERR_REG_OFFSET ((uint8_t)0x18U)"
.LASF2224:
	.string	"GET_ERR_ERRN(regval) GET_BITS((uint32_t)(regval), 4, 6)"
.LASF4622:
	.string	"USART_FLAG_CTSF"
.LASF1797:
	.string	"ADC_DAUL_REGULAL_PARALLEL_INSERTED_ROTATION CTL0_SYNCM(2)"
.LASF1927:
	.string	"BKP_DATA27 REG16((BKP) + 0x84U)"
.LASF201:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF4506:
	.string	"config"
.LASF351:
	.string	"RT_MAIN_THREAD_PRIORITY 10"
.LASF3176:
	.string	"I2C_ADDFORMAT_7BITS ((uint32_t)0x00000000U)"
.LASF2178:
	.string	"CAN_FSCFG_FS(regval) BIT(regval)"
.LASF2746:
	.string	"OB_WP0_WP0 ((uint32_t)0x000000FFU)"
.LASF1746:
	.string	"ADC_CTL0_WDEIE BIT(6)"
.LASF436:
	.string	"RT_EOK 0"
.LASF215:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF1748:
	.string	"ADC_CTL0_SM BIT(8)"
.LASF2197:
	.string	"BT_SJW(regval) (BITS(24,25) & ((uint32_t)(regval) << 24))"
.LASF1411:
	.string	"SI_USER 0x01"
.LASF1915:
	.string	"BKP_DATA15 REG16((BKP) + 0x54U)"
.LASF1077:
	.string	"EPIPE 32"
.LASF1742:
	.string	"ADC_STAT_STIC BIT(3)"
.LASF3632:
	.string	"RTC_FLAG_LWOF RTC_CTL_LWOFF"
.LASF1933:
	.string	"BKP_DATA33 REG16((BKP) + 0x9CU)"
.LASF5:
	.string	"__GNUC__ 8"
.LASF4285:
	.string	"ECLIC_INT_ATTR_SHV 0x01"
.LASF2005:
	.string	"CAN_F2DATA0(canx) REG32((canx) + 0x250U)"
.LASF3682:
	.string	"SPI_I2SCTL_DTLEN BITS(1,2)"
.LASF4290:
	.string	"ECLIC_INT_CTRL_OFFSET _AC(0x1003,UL)"
.LASF1729:
	.string	"ADC_RSQ0(adcx) REG32((adcx) + 0x2CU)"
.LASF3609:
	.string	"RTC_CTL_ALRMIF BIT(1)"
.LASF96:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF3616:
	.string	"RTC_DIVH_DIV BITS(0,3)"
.LASF1786:
	.string	"ADC_FLAG_WDE ADC_STAT_WDE"
.LASF158:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1995:
	.string	"CAN_RFIFOMP1(canx) REG32((canx) + 0x1C4U)"
.LASF1728:
	.string	"ADC_WDLT(adcx) REG32((adcx) + 0x28U)"
.LASF1595:
	.string	"_INTPTR_EQ_INT "
.LASF1837:
	.string	"WDLT_WDLT(regval) (BITS(0,11) & ((uint32_t)(regval) << 0))"
.LASF1204:
	.string	"AT_EACCESS 1"
.LASF3178:
	.string	"GD32VF103_FWDGT_H "
.LASF3530:
	.string	"RCU_PREDV0_DIV4 CFG1_PREDV0(3)"
.LASF3324:
	.string	"RCU_INT_PLL1STBIC BIT(21)"
.LASF2085:
	.string	"CAN_STAT_RS BIT(9)"
.LASF1379:
	.string	"SIOCGIFTXQLEN 0x8942"
.LASF2786:
	.string	"GD32VF103_GPIO_H "
.LASF321:
	.string	"RT_NAME_MAX 8"
.LASF1795:
	.string	"ADC_MODE_FREE CTL0_SYNCM(0)"
.LASF2583:
	.string	"EXTI_EVEN_EVEN6 BIT(6)"
.LASF3015:
	.string	"GPIO_PIN_SOURCE_5 ((uint8_t)0x05U)"
.LASF653:
	.string	"_WCHAR_T_DEFINED_ "
.LASF3518:
	.string	"RCU_CKOUT0SRC_CKPLL2_DIV2 CFG0_CKOUT0SEL(9)"
.LASF1683:
	.string	"GET_BITS(regval,start,end) (((regval) & BITS((start),(end))) >> (start))"
.LASF3099:
	.string	"I2C_CTL1_DMALST BIT(12)"
.LASF1709:
	.string	"RCU_BASE (AHB1_BUS_BASE + 0x00009000U)"
.LASF1687:
	.string	"DBG_BASE ((uint32_t)0xE0042000U)"
.LASF1879:
	.string	"OVSCR_OVSS(regval) (BITS(5,8) & ((uint32_t)(regval) << 5))"
.LASF4005:
	.string	"TIMER_EVENT_SRC_CH1G ((uint16_t)0x0004U)"
.LASF398:
	.string	"RT_UINT16_MAX 0xffff"
.LASF3838:
	.string	"TIMER_DMAINTEN_BRKIE BIT(7)"
.LASF2601:
	.string	"EXTI_RTEN_RTEN5 BIT(5)"
.LASF3382:
	.string	"RCU_APB1EN_WWDGTEN BIT(11)"
.LASF762:
	.string	"__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))"
.LASF3972:
	.string	"TIMER_DMACFG_DMATA_CHCTL1 DMACFG_DMATA(7)"
.LASF2677:
	.string	"FMC_OBKEY REG32((FMC) + 0x08U)"
.LASF3228:
	.string	"DBG_LOW_POWER_STANDBY DBG_CTL_STB_HOLD"
.LASF3661:
	.string	"SPI_CTL1_DMATEN BIT(1)"
.LASF3077:
	.string	"I2C_STAT1(i2cx) REG32((i2cx) + 0x18U)"
.LASF1586:
	.string	"__int20"
.LASF2704:
	.string	"FMC_CTL0_OBWEN BIT(9)"
.LASF2229:
	.string	"CAN_ERRN_1 ERR_ERRN(1)"
.LASF266:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF1301:
	.string	"TIOCPKT_IOCTL 64"
.LASF3572:
	.string	"RCU_PLL2_MUL8 CFG1_PLL2MF(6)"
.LASF2489:
	.string	"DMA_INT_HTF DMA_CHXCTL_HTFIE"
.LASF1036:
	.string	"S_ISDIR(m) (((m)&_IFMT) == _IFDIR)"
.LASF1926:
	.string	"BKP_DATA26 REG16((BKP) + 0x80U)"
.LASF2950:
	.string	"AFIO_PCF0_TIMER4CH3_IREMAP BIT(16)"
.LASF277:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF3582:
	.string	"RCU_PREDV0SRC_HXTAL ((uint32_t)0x00000000U)"
.LASF1985:
	.string	"CAN_TMDATA11(canx) REG32((canx) + 0x19CU)"
.LASF2512:
	.string	"DMA_CHANNEL_CNT_MASK DMA_CHXCNT_CNT"
.LASF3695:
	.string	"SPI_BIDIRECTIONAL_RECEIVE (~SPI_CTL0_BDOEN)"
.LASF1096:
	.string	"ELOOP 92"
.LASF870:
	.string	"_GLOBAL_ATEXIT (_GLOBAL_REENT->_atexit)"
.LASF4428:
	.string	"_stdin"
.LASF441:
	.string	"RT_ENOMEM 5"
.LASF4335:
	.string	"RT_Device_Class_CAN"
.LASF2440:
	.string	"DMA_CH5CNT(dmax) REG32((dmax) + 0x70U)"
.LASF81:
	.string	"__SCHAR_WIDTH__ 8"
.LASF3650:
	.string	"SPI_CTL0_SPIEN BIT(6)"
.LASF1778:
	.string	"ADC_IDATAX_IDATAN BITS(0,15)"
.LASF3904:
	.string	"TIMER_CHCTL2_CH2NEN BIT(10)"
.LASF4529:
	.string	"EXTI2_IRQn"
.LASF2566:
	.string	"EXTI_INTEN_INTEN8 BIT(8)"
.LASF2698:
	.string	"FMC_CTL0_PER BIT(1)"
.LASF1121:
	.string	"ENOTCONN 128"
.LASF4545:
	.string	"TIMER0_BRK_IRQn"
.LASF4201:
	.string	"USART_TRANSMIT_ENABLE CTL0_TEN(1)"
.LASF1710:
	.string	"FMC_BASE (AHB1_BUS_BASE + 0x0000A000U)"
.LASF4431:
	.string	"_inc"
.LASF4404:
	.string	"_ind"
.LASF2092:
	.string	"CAN_TSTAT_MST0 BIT(7)"
.LASF2876:
	.string	"GPIO_BOP_BOP5 BIT(5)"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1080:
	.string	"ENOMSG 35"
.LASF47:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF3311:
	.string	"RCU_INT_CKMIF BIT(7)"
.LASF2305:
	.string	"GD32VF103_CRC_H "
.LASF1939:
	.string	"BKP_DATA39 REG16((BKP) + 0xB4U)"
.LASF2381:
	.string	"DAC_WAVE_BIT_WIDTH_8 DWBW(7)"
.LASF4367:
	.string	"user_data"
.LASF2466:
	.string	"DMA_CHXCTL_M2M BIT(14)"
.LASF4200:
	.string	"CTL0_TEN(regval) (BIT(3) & ((uint32_t)(regval) << 3))"
.LASF4306:
	.string	"short int"
.LASF3081:
	.string	"I2C_CTL0_SMBEN BIT(1)"
.LASF805:
	.string	"unsigned signed"
.LASF3564:
	.string	"RCU_PLL1_MUL11 CFG1_PLL1MF(9)"
.LASF4608:
	.string	"RCU_PMU"
.LASF2485:
	.string	"DMA_FLAG_FTF DMA_INTF_FTFIF"
.LASF1495:
	.string	"FINSH_API_H__ "
.LASF710:
	.string	"__STRING(x) #x"
.LASF3113:
	.string	"I2C_STAT0_TBE BIT(7)"
.LASF4415:
	.string	"_write"
.LASF2793:
	.string	"GPIO_CTL0(gpiox) REG32((gpiox) + 0x00U)"
.LASF2762:
	.string	"OB_WP_12 ((uint32_t)0x00001000U)"
.LASF4208:
	.string	"USART_WM_IDLE CTL0_WM(0)"
.LASF2592:
	.string	"EXTI_EVEN_EVEN15 BIT(15)"
.LASF1566:
	.string	"RT_SERIAL_TX_DATAQUEUE_LWM 30"
.LASF2694:
	.string	"FMC_STAT0_PGERR BIT(2)"
.LASF2297:
	.string	"CAN_INT_RFO1 CAN_INTEN_RFOIE1"
.LASF4488:
	.string	"_sys_nerr"
.LASF867:
	.string	"__ATTRIBUTE_IMPURE_PTR__ "
.LASF531:
	.string	"RTGRAPHIC_CTRL_GET_INFO 3"
.LASF3508:
	.string	"RCU_CKUSB_CKPLL_DIV1 CFG0_USBPSC(1)"
.LASF2996:
	.string	"GPIO_EVENT_PIN_2 ((uint8_t)0x02U)"
.LASF3373:
	.string	"RCU_APB2EN_TIMER0EN BIT(11)"
.LASF1071:
	.string	"ETXTBSY 26"
.LASF192:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF2397:
	.string	"DAC_LFSR_BITS11_0 DAC_WAVE_BIT_WIDTH_12"
.LASF1563:
	.string	"RT_SERIAL_ERR_FRAMING 0x02"
.LASF4023:
	.string	"TIMER_CKDIV_DIV4 CTL0_CKDIV(2)"
.LASF628:
	.string	"__SIZE_T__ "
.LASF3170:
	.string	"I2C_ARP_ENABLE I2C_CTL0_ARPEN"
.LASF627:
	.string	"__size_t__ "
.LASF3054:
	.string	"GPIO_TIMER2_PARTIAL_REMAP ((uint32_t)0x001A0800U)"
.LASF3396:
	.string	"RCU_BDCTL_LXTALEN BIT(0)"
.LASF1186:
	.string	"F_SETFD 2"
.LASF3345:
	.string	"RCU_APB1RST_SPI1RST BIT(14)"
.LASF4309:
	.string	"rt_uint16_t"
.LASF3532:
	.string	"RCU_PREDV0_DIV6 CFG1_PREDV0(5)"
.LASF3370:
	.string	"RCU_APB2EN_PEEN BIT(6)"
.LASF2988:
	.string	"GPIO_EVENT_PORT_GPIOE ((uint8_t)0x04U)"
.LASF3391:
	.string	"RCU_APB1EN_CAN0EN BIT(25)"
.LASF4131:
	.string	"USART_STAT(usartx) REG32((usartx) + (0x00000000U))"
.LASF3671:
	.string	"SPI_STAT_TXURERR BIT(3)"
.LASF2521:
	.string	"EXMC (EXMC_BASE)"
.LASF2238:
	.string	"CAN_LOOPBACK_MODE ((uint8_t)0x01U)"
.LASF1331:
	.string	"N_SYNC_PPP 14"
.LASF1590:
	.string	"char +0"
.LASF4655:
	.string	"usart_clk"
.LASF2898:
	.string	"GPIO_BOP_CR11 BIT(27)"
.LASF4302:
	.string	"ECLIC_GROUP_LEVEL4_PRIO0 4"
.LASF363:
	.string	"FINSH_USING_MSH_ONLY "
.LASF2195:
	.string	"BT_BS1(regval) (BITS(16,19) & ((uint32_t)(regval) << 16))"
.LASF343:
	.string	"RT_USING_DEVICE "
.LASF901:
	.string	"_QUAD_HIGHWORD 1"
.LASF1632:
	.string	"INT32_MIN (-__INT32_MAX__ - 1)"
.LASF3233:
	.string	"PMU_CTL_LDOLP BIT(0)"
.LASF3843:
	.string	"TIMER_DMAINTEN_CH3DEN BIT(12)"
.LASF1938:
	.string	"BKP_DATA38 REG16((BKP) + 0xB0U)"
.LASF802:
	.string	"__lock_release(lock) __retarget_lock_release(lock)"
.LASF1700:
	.string	"CAN_BASE (APB1_BUS_BASE + 0x00006400U)"
.LASF3259:
	.string	"PMU_FLAG_RESET_STANDBY ((uint8_t)0x01U)"
.LASF3547:
	.string	"RCU_PREDV1_DIV4 CFG1_PREDV1(3)"
.LASF3659:
	.string	"SPI_CTL0_BDEN BIT(15)"
.LASF3285:
	.string	"RCU_CTL_PLLEN BIT(24)"
.LASF549:
	.string	"_WANT_IO_LONG_DOUBLE 1"
.LASF4250:
	.string	"WWDGT_CTL_CNT BITS(0,6)"
.LASF2945:
	.string	"AFIO_PCF0_TIMER1_REMAP BITS(8, 9)"
.LASF3377:
	.string	"RCU_APB1EN_TIMER2EN BIT(1)"
.LASF4062:
	.string	"TIMER_OC_MODE_TOGGLE ((uint16_t)0x0030U)"
.LASF2477:
	.string	"DMA_CHPADDR_RESET_VALUE ((uint32_t)0x00000000U)"
.LASF874:
	.string	"_CLOCKS_PER_SEC_ 1000000"
.LASF2681:
	.string	"FMC_OBSTAT REG32((FMC) + 0x1CU)"
.LASF2121:
	.string	"CAN_INTEN_RFOIE0 BIT(3)"
.LASF1560:
	.string	"RT_SERIAL_RX_INT 0x01"
.LASF1500:
	.string	"MSH_CMD_EXPORT(command,desc) FINSH_FUNCTION_EXPORT_CMD(command, __cmd_ ##command, desc)"
.LASF2849:
	.string	"GPIO_ISTAT_ISTAT10 BIT(10)"
.LASF1755:
	.string	"ADC_CTL0_IWDEN BIT(22)"
.LASF947:
	.string	"__u_long_defined "
.LASF4048:
	.string	"TIMER_CCX_DISABLE ((uint16_t)0x0000U)"
.LASF1189:
	.string	"F_GETOWN 5"
.LASF1092:
	.string	"EFTYPE 79"
.LASF3549:
	.string	"RCU_PREDV1_DIV6 CFG1_PREDV1(5)"
.LASF4235:
	.string	"USART_DENT_DISABLE CLT2_DENT(0)"
.LASF417:
	.string	"RT_USED __attribute__((used))"
.LASF4055:
	.string	"TIMER_OC_IDLE_STATE_HIGH ((uint16_t)0x0100)"
.LASF1890:
	.string	"ADC_OVERSAMPLING_RATIO_MUL2 OVSCR_OVSR(0)"
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF1118:
	.string	"EADDRNOTAVAIL 125"
.LASF4154:
	.string	"USART_CTL0_TEN BIT(3)"
.LASF1656:
	.string	"INTMAX_MAX (__INTMAX_MAX__)"
.LASF3569:
	.string	"RCU_PLL1_MUL16 CFG1_PLL1MF(14)"
.LASF4166:
	.string	"USART_CTL1_LBLEN BIT(5)"
.LASF1461:
	.string	"SIGTTOU 22"
.LASF2281:
	.string	"CAN_MODE_NORMAL ((uint8_t)0x02U)"
.LASF1181:
	.string	"FNOCTTY _FNOCTTY"
.LASF2261:
	.string	"CAN_BT_BS2_1TQ ((uint8_t)0x00U)"
.LASF3750:
	.string	"SPI_CRC_TX ((uint8_t)0x00U)"
.LASF3242:
	.string	"PMU_CS_LVDF BIT(2)"
.LASF2113:
	.string	"CAN_RFIFO0_RFD0 BIT(5)"
.LASF4126:
	.string	"USART1 USART_BASE"
.LASF3991:
	.string	"TIMER_DMACFG_DMATC_7TRANSFER DMACFG_DMATC(6)"
.LASF4217:
	.string	"USART_STB_1_5BIT CTL1_STB(3)"
.LASF1133:
	.string	"ERROR_BASE_NO 0"
.LASF196:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF659:
	.string	"_WCHAR_T_DECLARED "
.LASF3123:
	.string	"I2C_STAT1_TR BIT(2)"
.LASF468:
	.string	"RT_THREAD_BLOCK RT_THREAD_SUSPEND"
.LASF3336:
	.string	"RCU_APB2RST_SPI0RST BIT(12)"
.LASF1084:
	.string	"ENOSTR 60"
.LASF1749:
	.string	"ADC_CTL0_WDSC BIT(9)"
.LASF2622:
	.string	"EXTI_FTEN_FTEN7 BIT(7)"
.LASF607:
	.string	"___int32_t_defined 1"
.LASF1287:
	.string	"TIOCSERGSTRUCT 0x5458"
.LASF2369:
	.string	"CTL_DWM(regval) (BITS(6,7) & ((uint32_t)(regval) << 6))"
.LASF3158:
	.string	"I2C_SRESET_SET I2C_CTL0_SRESET"
.LASF1329:
	.string	"N_SMSBLOCK 12"
.LASF1343:
	.string	"SIOCSIFLINK 0x8911"
.LASF4211:
	.string	"USART_WL_8BIT CTL0_WL(0)"
.LASF212:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF703:
	.string	"__CC_SUPPORTS___FUNC__ 1"
.LASF1821:
	.string	"ADC0_1_EXTTRIG_INSERTED_T1_CH0 CTL1_ETSIC(3)"
.LASF1220:
	.string	"_IOW(a,b,c) _IOC(_IOC_WRITE,(a),(b),sizeof(c))"
.LASF4150:
	.string	"USART_BAUD_INTDIV BITS(4,15)"
.LASF227:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF3941:
	.string	"TIMER_INT_FLAG_TRG TIMER_INT_TRG"
.LASF4043:
	.string	"TIMER_CH_0 ((uint16_t)0x0000U)"
.LASF1010:
	.string	"S_ENFMT 0002000"
.LASF3351:
	.string	"RCU_APB1RST_I2C0RST BIT(21)"
.LASF3470:
	.string	"RCU_CKADC_CKAPB2_DIV16 ((uint32_t)0x00000007U)"
.LASF1004:
	.string	"S_ISUID 0004000"
.LASF1420:
	.string	"SI_USER 1"
.LASF3323:
	.string	"RCU_INT_PLLSTBIC BIT(20)"
.LASF2957:
	.string	"AFIO_EXTI3_SS BITS(12, 15)"
.LASF4080:
	.string	"TIMER_IC_SELECTION_ITS ((uint16_t)0x0003U)"
.LASF930:
	.string	"_SIGSET_T_DECLARED "
.LASF1659:
	.string	"SIZE_MAX (__SIZE_MAX__)"
.LASF1820:
	.string	"ADC0_1_EXTTRIG_INSERTED_T1_TRGO CTL1_ETSIC(2)"
.LASF3386:
	.string	"RCU_APB1EN_USART2EN BIT(18)"
.LASF3523:
	.string	"RCU_RTCSRC_LXTAL BDCTL_RTCSRC(1)"
.LASF1410:
	.string	"STDC \"2011\""
.LASF1680:
	.string	"REG8(addr) (*(volatile uint8_t *)(uint32_t)(addr))"
.LASF2094:
	.string	"CAN_TSTAT_MTFNERR1 BIT(9)"
.LASF2384:
	.string	"DAC_WAVE_BIT_WIDTH_11 DWBW(10)"
.LASF2879:
	.string	"GPIO_BOP_BOP8 BIT(8)"
.LASF1323:
	.string	"N_X25 6"
.LASF4432:
	.string	"_emergency"
.LASF3245:
	.string	"PMU_LVDT_0 CTL_LVDT(0)"
.LASF4107:
	.string	"TIMER_ENCODER_MODE2 SMCFG_SMC(3)"
.LASF1070:
	.string	"ENOTTY 25"
.LASF504:
	.string	"RT_DEVICE_OFLAG_RDONLY 0x001"
.LASF1610:
	.string	"__int_least16_t_defined 1"
.LASF2356:
	.string	"DACC_R8DH_DAC0_DH BITS(0,7)"
.LASF3534:
	.string	"RCU_PREDV0_DIV8 CFG1_PREDV0(7)"
.LASF650:
	.string	"__WCHAR_T "
.LASF883:
	.string	"_INT16_T_DECLARED "
.LASF4036:
	.string	"CCHP_PROT(regval) ((uint16_t)(BITS(8, 9) & ((uint32_t)(regval) << 8U)))"
.LASF445:
	.string	"RT_EINTR 9"
.LASF1892:
	.string	"ADC_OVERSAMPLING_RATIO_MUL8 OVSCR_OVSR(2)"
.LASF90:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF1457:
	.string	"SIGCONT 19"
.LASF4163:
	.string	"USART_CTL0_WL BIT(12)"
.LASF1185:
	.string	"F_GETFD 1"
.LASF275:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF4121:
	.string	"TIMER_HALLINTERFACE_ENABLE TIMER_CTL1_TI0S"
.LASF1715:
	.string	"GD32VF103_ADC_H "
.LASF2125:
	.string	"CAN_INTEN_WERRIE BIT(8)"
.LASF4060:
	.string	"TIMER_OC_MODE_ACTIVE ((uint16_t)0x0010U)"
.LASF3627:
	.string	"RTC_INT_FLAG_OVERFLOW RTC_CTL_OVIF"
.LASF914:
	.string	"_SYS_SELECT_H "
.LASF1015:
	.string	"S_IFREG _IFREG"
.LASF92:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF4316:
	.string	"long int"
.LASF1380:
	.string	"SIOCSIFTXQLEN 0x8943"
.LASF3424:
	.string	"APB1EN_REG_OFFSET 0x1CU"
.LASF3078:
	.string	"I2C_CKCFG(i2cx) REG32((i2cx) + 0x1CU)"
.LASF1553:
	.string	"RT_SERIAL_EVENT_RX_IND 0x01"
.LASF893:
	.string	"_UINTMAX_T_DECLARED "
.LASF4002:
	.string	"TIMER_DMACFG_DMATC_18TRANSFER DMACFG_DMATC(17)"
.LASF952:
	.string	"_CLOCK_T_DECLARED "
.LASF3484:
	.string	"RCU_PLL_MUL11 CFG0_PLLMF(9)"
.LASF1514:
	.string	"WAITQUEUE_H__ "
.LASF2550:
	.string	"GD32VF103_EXTI_H "
.LASF475:
	.string	"RT_THREAD_STAT_SIGNAL_MASK 0xf0"
.LASF2944:
	.string	"AFIO_PCF0_TIMER0_REMAP BITS(6, 7)"
.LASF2492:
	.string	"DMA_MEMORY_TO_PERIPHERAL ((uint8_t)0x0001U)"
.LASF2528:
	.string	"EXMC_SNCTL_NRW BITS(4,5)"
.LASF32:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF498:
	.string	"RT_DEVICE_FLAG_STREAM 0x040"
.LASF2223:
	.string	"GET_RFIFOMDATA1_DB7(regval) GET_BITS((uint32_t)(regval), 24, 31)"
.LASF4407:
	.string	"_base"
.LASF4202:
	.string	"USART_TRANSMIT_DISABLE CTL0_TEN(0)"
.LASF4553:
	.string	"I2C0_ER_IRQn"
.LASF4566:
	.string	"SPI2_IRQn"
.LASF1469:
	.string	"SIGLOST 29"
.LASF2068:
	.string	"CAN_RFIFOMDATA1(canx,bank) REG32((canx) + 0x1BCU + ((bank) * 0x10U))"
.LASF3895:
	.string	"TIMER_CHCTL2_CH0P BIT(1)"
.LASF1596:
	.string	"_INT32_EQ_LONG "
.LASF3652:
	.string	"SPI_CTL0_SWNSS BIT(8)"
.LASF2257:
	.string	"CAN_BT_BS1_13TQ ((uint8_t)0x0CU)"
.LASF117:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF3116:
	.string	"I2C_STAT0_AERR BIT(10)"
.LASF3506:
	.string	"CFG0_USBPSC(regval) (BITS(22,23) & ((uint32_t)(regval) << 22))"
.LASF1829:
	.string	"ADC_SAMPLETIME_13POINT5 SAMPTX_SPT(2)"
.LASF1261:
	.string	"TCSBRKP 0x5425"
.LASF2572:
	.string	"EXTI_INTEN_INTEN14 BIT(14)"
.LASF2095:
	.string	"CAN_TSTAT_MAL1 BIT(10)"
.LASF31:
	.string	"__SIZEOF_POINTER__ 4"
.LASF4222:
	.string	"USART_CLEN_NONE CTL1_CLEN(0)"
.LASF2896:
	.string	"GPIO_BOP_CR9 BIT(25)"
.LASF273:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF1188:
	.string	"F_SETFL 4"
.LASF3563:
	.string	"RCU_PLL1_MUL10 CFG1_PLL1MF(8)"
.LASF200:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF3275:
	.string	"RCU_CFG1 REG32(RCU + 0x2CU)"
.LASF2499:
	.string	"DMA_PERIPHERAL_WIDTH_16BIT CHCTL_PWIDTH(1U)"
.LASF4064:
	.string	"TIMER_OC_MODE_HIGH ((uint16_t)0x0050U)"
.LASF4624:
	.string	"USART_FLAG_TBE"
.LASF1264:
	.string	"TIOCGSID 0x5429"
.LASF4070:
	.string	"TIMER_OC_FAST_DISABLE ((uint16_t)0x0000)"
.LASF1042:
	.string	"__ERRNO_H__ "
.LASF838:
	.string	"_REENT_CHECK_EMERGENCY(ptr) "
.LASF1874:
	.string	"ADC_RESOLUTION_10B OVSCR_DRES(1)"
.LASF3428:
	.string	"APB2RST_REG_OFFSET 0x0CU"
.LASF4181:
	.string	"USART_CTL2_DENT BIT(7)"
.LASF3983:
	.string	"TIMER_DMACFG_DMATA_DMACFG DMACFG_DMATA(18)"
.LASF940:
	.string	"physadr physadr_t"
.LASF3670:
	.string	"SPI_STAT_I2SCH BIT(2)"
.LASF538:
	.string	"_SYS_STAT_H "
.LASF458:
	.string	"RT_TIMER_CTRL_SET_TIME 0x0"
.LASF1104:
	.string	"ENOPROTOOPT 109"
.LASF4155:
	.string	"USART_CTL0_IDLEIE BIT(4)"
.LASF3872:
	.string	"TIMER_CHCTL0_CH1COMFEN BIT(10)"
.LASF3720:
	.string	"I2S_AUDIOSAMPLE_11K ((uint32_t)11025U)"
.LASF1850:
	.string	"ADC_CHANNEL_2 ((uint8_t)0x02U)"
.LASF1458:
	.string	"SIGCHLD 20"
.LASF4466:
	.string	"_l64a_buf"
.LASF3297:
	.string	"RCU_CFG0_PLLSEL BIT(16)"
.LASF3041:
	.string	"GPIO_PIN_15 BIT(15)"
.LASF452:
	.string	"RT_TIMER_FLAG_DEACTIVATED 0x0"
.LASF2083:
	.string	"CAN_STAT_SLPIF BIT(4)"
.LASF4542:
	.string	"CAN0_RX1_IRQn"
.LASF453:
	.string	"RT_TIMER_FLAG_ACTIVATED 0x1"
.LASF2291:
	.string	"CAN_INT_TME CAN_INTEN_TMEIE"
.LASF1704:
	.string	"AFIO_BASE (APB2_BUS_BASE + 0x00000000U)"
.LASF3083:
	.string	"I2C_CTL0_ARPEN BIT(4)"
.LASF2322:
	.string	"DAC1_R12DH REG32(DAC + 0x14U)"
.LASF3347:
	.string	"RCU_APB1RST_USART1RST BIT(17)"
.LASF2778:
	.string	"OB_WP_28 ((uint32_t)0x10000000U)"
.LASF646:
	.string	"__WCHAR_T__ "
.LASF1739:
	.string	"ADC_STAT_WDE BIT(0)"
.LASF3664:
	.string	"SPI_CTL1_TMOD BIT(4)"
.LASF3274:
	.string	"RCU_AHBRST REG32(RCU + 0x28U)"
.LASF2198:
	.string	"BT_MODE(regval) (BITS(30,31) & ((uint32_t)(regval) << 30))"
.LASF3522:
	.string	"RCU_RTCSRC_NONE BDCTL_RTCSRC(0)"
.LASF989:
	.string	"CLOCK_ENABLED 1"
.LASF1298:
	.string	"TIOCPKT_START 8"
.LASF2632:
	.string	"EXTI_FTEN_FTEN17 BIT(17)"
.LASF3474:
	.string	"CFG0_PLLMF(regval) (BITS(18,21) & ((uint32_t)(regval) << 18))"
.LASF1405:
	.string	"HAVE_SIGACTION 1"
.LASF3304:
	.string	"RCU_INT_IRC40KSTBIF BIT(0)"
.LASF3776:
	.string	"GD32VF103_TIMER_H "
.LASF2205:
	.string	"TMDATA0_DB1(regval) (BITS(8,15) & ((uint32_t)(regval) << 8))"
.LASF3223:
	.string	"DBG_CTL_TIMER5_HOLD BIT(19)"
.LASF1395:
	.string	"DT_REG 0x01"
.LASF615:
	.string	"_STDDEF_H_ "
.LASF4430:
	.string	"_stderr"
.LASF1909:
	.string	"BKP_DATA9 REG16((BKP) + 0x28U)"
.LASF2654:
	.string	"EXTI_PD_PD1 BIT(1)"
.LASF480:
	.string	"RT_THREAD_CTRL_BIND_CPU 0x04"
.LASF954:
	.string	"__caddr_t_defined "
.LASF680:
	.string	"__has_extension __has_feature"
.LASF945:
	.string	"__u_short_defined "
.LASF4298:
	.string	"ECLIC_GROUP_LEVEL0_PRIO4 0"
.LASF3873:
	.string	"TIMER_CHCTL0_CH1COMSEN BIT(11)"
.LASF2028:
	.string	"CAN_F25DATA0(canx) REG32((canx) + 0x308U)"
.LASF792:
	.string	"__LOCK_INIT(class,lock) extern struct __lock __lock_ ## lock; class _LOCK_T lock = &__lock_ ## lock"
.LASF4371:
	.string	"_LOCK_T"
.LASF2904:
	.string	"GPIO_BC_CR1 BIT(1)"
.LASF4671:
	.string	"gd32_putc"
.LASF2177:
	.string	"CAN_FMCFG_FMOD(regval) BIT(regval)"
.LASF3266:
	.string	"RCU_INT REG32(RCU + 0x08U)"
.LASF3385:
	.string	"RCU_APB1EN_USART1EN BIT(17)"
.LASF1140:
	.string	"_FAPPEND 0x0008"
.LASF3384:
	.string	"RCU_APB1EN_SPI2EN BIT(15)"
.LASF336:
	.string	"RT_USING_MUTEX "
.LASF1666:
	.string	"WINT_MAX (__WINT_MAX__)"
.LASF562:
	.string	"__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT"
.LASF2203:
	.string	"TMI_SFID(regval) (BITS(21,31) & ((uint32_t)(regval) << 21))"
.LASF2049:
	.string	"CAN_F18DATA1(canx) REG32((canx) + 0x2D4U)"
.LASF2029:
	.string	"CAN_F26DATA0(canx) REG32((canx) + 0x310U)"
.LASF4255:
	.string	"WWDGT_STAT_EWIF BIT(0)"
.LASF1142:
	.string	"_FDEFER 0x0020"
.LASF1148:
	.string	"_FEXCL 0x0800"
.LASF3408:
	.string	"RCU_RSTSCK_FWDGTRSTF BIT(29)"
.LASF2665:
	.string	"EXTI_PD_PD12 BIT(12)"
.LASF4390:
	.string	"__tm_min"
.LASF2295:
	.string	"CAN_INT_RFNE1 CAN_INTEN_RFNEIE1"
.LASF1094:
	.string	"ENOTEMPTY 90"
.LASF4231:
	.string	"USART_DENR_ENABLE CLT2_DENR(1)"
.LASF94:
	.string	"__INTMAX_WIDTH__ 64"
.LASF3920:
	.string	"TIMER_CCHP_BRKEN BIT(12)"
.LASF3315:
	.string	"RCU_INT_HXTALSTBIE BIT(11)"
.LASF1751:
	.string	"ADC_CTL0_DISRC BIT(11)"
.LASF4590:
	.string	"RCU_TIMER1"
.LASF4591:
	.string	"RCU_TIMER2"
.LASF4592:
	.string	"RCU_TIMER3"
.LASF4593:
	.string	"RCU_TIMER4"
.LASF4594:
	.string	"RCU_TIMER5"
.LASF4595:
	.string	"RCU_TIMER6"
.LASF4473:
	.string	"_wcsrtombs_state"
.LASF2940:
	.string	"AFIO_PCF0_I2C0_REMAP BIT(1)"
.LASF3792:
	.string	"TIMER_CHCTL2(timerx) REG32((timerx) + 0x20U)"
.LASF571:
	.string	"_POSIX_C_SOURCE 200809L"
.LASF1460:
	.string	"SIGTTIN 21"
.LASF4123:
	.string	"TIMER_CHVSEL_ENABLE ((uint16_t)TIMER_CFG_OUTSEL)"
.LASF3517:
	.string	"RCU_CKOUT0SRC_CKPLL1 CFG0_CKOUT0SEL(8)"
.LASF1503:
	.string	"RINGBUFFER_H__ "
.LASF3754:
	.string	"SPI_I2S_INT_ERR ((uint8_t)0x02U)"
.LASF669:
	.string	"__THROW "
.LASF1994:
	.string	"CAN_RFIFOMI1(canx) REG32((canx) + 0x1C0U)"
.LASF2658:
	.string	"EXTI_PD_PD5 BIT(5)"
.LASF2608:
	.string	"EXTI_RTEN_RTEN12 BIT(12)"
.LASF2018:
	.string	"CAN_F15DATA0(canx) REG32((canx) + 0x2B8U)"
.LASF278:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF4536:
	.string	"DMA0_Channel4_IRQn"
.LASF2183:
	.string	"CAN_REG_VAL(canx,offset) (REG32((canx) + ((uint32_t)(offset) >> 6)))"
.LASF1038:
	.string	"S_ISREG(m) (((m)&_IFMT) == _IFREG)"
.LASF1211:
	.string	"LOCK_UN 0x08"
.LASF1718:
	.string	"ADC_STAT(adcx) REG32((adcx) + 0x00U)"
.LASF1908:
	.string	"BKP_DATA8 REG16((BKP) + 0x24U)"
.LASF3277:
	.string	"RCU_CTL_IRC8MEN BIT(0)"
.LASF2857:
	.string	"GPIO_OCTL_OCTL2 BIT(2)"
.LASF636:
	.string	"_SIZE_T_DEFINED_ "
.LASF2781:
	.string	"OB_WP_31 ((uint32_t)0x80000000U)"
.LASF2354:
	.string	"DACC_L12DH_DAC0_DH BITS(4,15)"
.LASF1335:
	.string	"FIOGETOWN 0x8903"
.LASF4010:
	.string	"TIMER_EVENT_SRC_BRKG ((uint16_t)0x0080U)"
.LASF1338:
	.string	"SIOCGSTAMPNS 0x8907"
.LASF804:
	.string	"__size_t"
.LASF1871:
	.string	"ADC_INT_FLAG_EOIC ADC_STAT_EOIC"
.LASF497:
	.string	"RT_DEVICE_FLAG_SUSPENDED 0x020"
.LASF4664:
	.string	"gd32_usart_ops"
.LASF2143:
	.string	"CAN_BT_SCMOD BIT(31)"
.LASF2036:
	.string	"CAN_F5DATA1(canx) REG32((canx) + 0x26CU)"
.LASF1353:
	.string	"SIOCGIFNETMASK 0x891b"
.LASF1581:
	.string	"_SYS__INTSUP_H "
.LASF3878:
	.string	"TIMER_CHCTL0_CH1CAPPSC BITS(10,11)"
.LASF3062:
	.string	"GPIO_SWJ_NONJTRST_REMAP ((uint32_t)0x00300100U)"
.LASF3209:
	.string	"DBG_ID_ID_CODE BITS(0,31)"
.LASF1912:
	.string	"BKP_DATA12 REG16((BKP) + 0x48U)"
.LASF2328:
	.string	"DAC0_DO REG32(DAC + 0x2CU)"
.LASF3614:
	.string	"RTC_PSCH_PSC BITS(0,3)"
.LASF537:
	.string	"LIBC_STAT_H__ "
.LASF2069:
	.string	"CAN_CTL_IWMOD BIT(0)"
.LASF2605:
	.string	"EXTI_RTEN_RTEN9 BIT(9)"
.LASF1907:
	.string	"BKP_DATA7 REG16((BKP) + 0x20U)"
.LASF3444:
	.string	"RCU_AHB_CKSYS_DIV1 CFG0_AHBPSC(0)"
.LASF3248:
	.string	"PMU_LVDT_3 CTL_LVDT(3)"
.LASF2732:
	.string	"OB_FWDGT_SW ((uint8_t)0x01U)"
.LASF4051:
	.string	"TIMER_OC_POLARITY_HIGH ((uint16_t)0x0000U)"
.LASF2518:
	.string	"ECLIC_PRIGROUP_LEVEL4_PRIO0 4"
.LASF907:
	.string	"__bswap16(_x) __builtin_bswap16(_x)"
.LASF1640:
	.string	"UINT64_MAX (__UINT64_MAX__)"
.LASF3106:
	.string	"I2C_DATA_TRB BITS(0,7)"
.LASF1061:
	.string	"EBUSY 16"
.LASF1081:
	.string	"EIDRM 36"
.LASF4648:
	.string	"USART_INT_LBD"
.LASF2766:
	.string	"OB_WP_16 ((uint32_t)0x00010000U)"
.LASF2925:
	.string	"GPIO_LOCK_LK6 BIT(6)"
.LASF676:
	.string	"__flexarr [0]"
.LASF1923:
	.string	"BKP_DATA23 REG16((BKP) + 0x74U)"
.LASF3477:
	.string	"RCU_PLL_MUL4 CFG0_PLLMF(2)"
.LASF4042:
	.string	"TIMER_BREAK_DISABLE ((uint16_t)0x0000U)"
.LASF4280:
	.string	"ECLIC_INFO_OFFSET 0x4"
.LASF2071:
	.string	"CAN_CTL_TFO BIT(2)"
.LASF3449:
	.string	"RCU_AHB_CKSYS_DIV64 CFG0_AHBPSC(12)"
.LASF3918:
	.string	"TIMER_CCHP_IOS BIT(10)"
.LASF1041:
	.string	"LIBC_ERRNO_H__ "
.LASF1430:
	.string	"SIG_SETMASK 0"
.LASF3711:
	.string	"SPI_PSC_2 CTL0_PSC(0)"
.LASF1157:
	.string	"O_RDWR 2"
.LASF1382:
	.string	"SIOCGARP 0x8954"
.LASF4134:
	.string	"USART_CTL0(usartx) REG32((usartx) + (0x0000000CU))"
.LASF4286:
	.string	"ECLIC_INT_ATTR_TRIG_LEVEL 0x00"
.LASF262:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF1897:
	.string	"ADC_OVERSAMPLING_RATIO_MUL256 OVSCR_OVSR(7)"
.LASF4479:
	.string	"__locale_t"
.LASF1940:
	.string	"BKP_DATA40 REG16((BKP) + 0xB8U)"
.LASF2638:
	.string	"EXTI_SWIEV_SWIEV4 BIT(4)"
.LASF2695:
	.string	"FMC_STAT0_WPERR BIT(4)"
.LASF1555:
	.string	"RT_SERIAL_EVENT_RX_DMADONE 0x03"
.LASF334:
	.string	"RT_DEBUG "
.LASF1982:
	.string	"CAN_TMI1(canx) REG32((canx) + 0x190U)"
.LASF307:
	.string	"__riscv_div 1"
.LASF1902:
	.string	"BKP_DATA2 REG16((BKP) + 0x0CU)"
.LASF2411:
	.string	"DAC_TRIANGLE_AMPLITUDE_1023 DAC_WAVE_BIT_WIDTH_10"
.LASF16:
	.string	"__SIZEOF_INT__ 4"
.LASF2796:
	.string	"GPIO_OCTL(gpiox) REG32((gpiox) + 0x0CU)"
.LASF2236:
	.string	"CAN_STATE_PENDING ((uint32_t)0x00000000U)"
.LASF1589:
	.string	"unsigned +0"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF153:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF1549:
	.string	"BIT_ORDER_LSB 0"
.LASF1079:
	.string	"ERANGE 34"
.LASF2443:
	.string	"DMA_CH6CTL(dmax) REG32((dmax) + 0x80U)"
.LASF2890:
	.string	"GPIO_BOP_CR3 BIT(19)"
.LASF3672:
	.string	"SPI_STAT_CRCERR BIT(4)"
.LASF101:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF4414:
	.string	"_read"
.LASF4192:
	.string	"USART_BIT_POS2(val) (((uint32_t)(val) & (0x001F0000U)) >> 16)"
.LASF342:
	.string	"RT_USING_HEAP "
.LASF2066:
	.string	"CAN_RFIFOMP(canx,bank) REG32((canx) + 0x1B4U + ((bank) * 0x10U))"
.LASF1839:
	.string	"ISQ_IL(regval) (BITS(20,21) & ((uint32_t)(regval) << 20))"
.LASF1862:
	.string	"ADC_CHANNEL_14 ((uint8_t)0x0EU)"
.LASF3360:
	.string	"RCU_AHBEN_SRAMSPEN BIT(2)"
.LASF1781:
	.string	"ADC_OVSCR_OVSEN BIT(0)"
.LASF2895:
	.string	"GPIO_BOP_CR8 BIT(24)"
.LASF1548:
	.string	"PARITY_EVEN 2"
.LASF891:
	.string	"__int64_t_defined 1"
.LASF1911:
	.string	"BKP_DATA11 REG16((BKP) + 0x44U)"
.LASF3290:
	.string	"RCU_CTL_PLL2STB BIT(29)"
.LASF3891:
	.string	"TIMER_CHCTL1_CH2CAPFLT BITS(4,7)"
.LASF1483:
	.string	"rt_list_for_each_safe(pos,n,head) for (pos = (head)->next, n = pos->next; pos != (head); pos = n, n = pos->next)"
.LASF4072:
	.string	"TIMER_OC_CLEAR_DISABLE ((uint16_t)0x0000U)"
.LASF3774:
	.string	"I2S_FLAG_TRANS SPI_STAT_TRANS"
.LASF4247:
	.string	"WWDGT_CTL REG32((WWDGT) + 0x00000000U)"
.LASF1585:
	.string	"short"
.LASF2544:
	.string	"EXMC_MEMORY_TYPE_SRAM SNCTL_NRTP(0)"
.LASF2652:
	.string	"EXTI_SWIEV_SWIEV18 BIT(18)"
.LASF2711:
	.string	"FMC_OBSTAT_DATA BITS(10,25)"
.LASF688:
	.string	"__GNUCLIKE___OFFSETOF 1"
.LASF1959:
	.string	"BKP_DATA_GET(regval) GET_BITS((uint32_t)(regval), 0, 15)"
.LASF474:
	.string	"RT_THREAD_STAT_SIGNAL_PENDING 0x40"
.LASF3551:
	.string	"RCU_PREDV1_DIV8 CFG1_PREDV1(7)"
.LASF4325:
	.string	"rt_list_node"
.LASF546:
	.string	"_WANT_IO_C99_FORMATS 1"
.LASF2374:
	.string	"DAC_WAVE_BIT_WIDTH_1 DWBW(0)"
.LASF4582:
	.string	"IRQn_Type"
.LASF3197:
	.string	"FWDGT_WRITEACCESS_ENABLE ((uint16_t)0x5555U)"
.LASF1936:
	.string	"BKP_DATA36 REG16((BKP) + 0xA8U)"
.LASF2058:
	.string	"CAN_F27DATA1(canx) REG32((canx) + 0x31CU)"
.LASF1922:
	.string	"BKP_DATA22 REG16((BKP) + 0x70U)"
.LASF2200:
	.string	"FDATA_MASK_LOW(regval) (BITS(0,15) & ((uint32_t)(regval) << 0))"
.LASF1149:
	.string	"_FNBIO 0x1000"
.LASF3208:
	.string	"DBG_CTL REG32(DBG + 0x04U)"
.LASF4240:
	.string	"USART_CTS_ENABLE CLT2_CTSEN(1)"
.LASF3011:
	.string	"GPIO_PIN_SOURCE_1 ((uint8_t)0x01U)"
.LASF1501:
	.string	"MSH_CMD_EXPORT_ALIAS(command,alias,desc) FINSH_FUNCTION_EXPORT_ALIAS(command, __cmd_ ##alias, desc)"
.LASF4631:
	.string	"USART_FLAG_PERR"
.LASF2727:
	.string	"UNLOCK_KEY1 ((uint32_t)0xCDEF89ABU)"
.LASF3160:
	.string	"I2C_DMA_ON I2C_CTL1_DMAON"
.LASF1201:
	.string	"F_UNLCK 3"
.LASF4203:
	.string	"CTL0_PM(regval) (BITS(9,10) & ((uint32_t)(regval) << 9))"
.LASF3653:
	.string	"SPI_CTL0_SWNSSEN BIT(9)"
.LASF315:
	.string	"NO_INIT 1"
.LASF1779:
	.string	"ADC_RDATA_RDATA BITS(0,15)"
.LASF2126:
	.string	"CAN_INTEN_PERRIE BIT(9)"
.LASF2963:
	.string	"AFIO_EXTI9_SS BITS(4, 7)"
.LASF702:
	.string	"__CC_SUPPORTS___INLINE__ 1"
.LASF3307:
	.string	"RCU_INT_HXTALSTBIF BIT(3)"
.LASF4625:
	.string	"USART_FLAG_TC"
.LASF581:
	.string	"__SVID_VISIBLE 1"
.LASF988:
	.string	"tzname _tzname"
.LASF948:
	.string	"_BSDTYPES_DEFINED "
.LASF3835:
	.string	"TIMER_DMAINTEN_CH3IE BIT(4)"
.LASF3291:
	.string	"RCU_CFG0_SCS BITS(0,1)"
.LASF847:
	.string	"_REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)"
.LASF969:
	.string	"__timer_t_defined "
.LASF1935:
	.string	"BKP_DATA35 REG16((BKP) + 0xA4U)"
.LASF827:
	.string	"_REENT_EMERGENCY_SIZE 25"
.LASF1067:
	.string	"EINVAL 22"
.LASF894:
	.string	"_INTPTR_T_DECLARED "
.LASF4228:
	.string	"USART_CPL_LOW CTL1_CPL(0)"
.LASF4245:
	.string	"GD32VF103_WWDGT_H "
.LASF3427:
	.string	"APB1RST_REG_OFFSET 0x10U"
.LASF3922:
	.string	"TIMER_CCHP_OAEN BIT(14)"
.LASF1559:
	.string	"RT_SERIAL_DMA_TX 0x02"
.LASF500:
	.string	"RT_DEVICE_FLAG_DMA_RX 0x200"
.LASF3393:
	.string	"RCU_APB1EN_BKPIEN BIT(27)"
.LASF3076:
	.string	"I2C_STAT0(i2cx) REG32((i2cx) + 0x14U)"
.LASF767:
	.string	"_Null_unspecified "
.LASF3886:
	.string	"TIMER_CHCTL1_CH3COMFEN BIT(10)"
.LASF3450:
	.string	"RCU_AHB_CKSYS_DIV128 CFG0_AHBPSC(13)"
.LASF2010:
	.string	"CAN_F7DATA0(canx) REG32((canx) + 0x278U)"
.LASF994:
	.string	"TIMER_ABSTIME 4"
.LASF1480:
	.string	"RT_LIST_OBJECT_INIT(object) { &(object), &(object) }"
.LASF3414:
	.string	"RCU_CFG1_PLL1MF BITS(8,11)"
.LASF374:
	.string	"__RTDEBUG_H__ "
.LASF761:
	.string	"__COPYRIGHT(s) struct __hack"
.LASF1910:
	.string	"BKP_DATA10 REG16((BKP) + 0x40U)"
.LASF2127:
	.string	"CAN_INTEN_BOIE BIT(10)"
.LASF3009:
	.string	"GPIO_EVENT_PIN_15 ((uint8_t)0x0FU)"
.LASF4063:
	.string	"TIMER_OC_MODE_LOW ((uint16_t)0x0040U)"
.LASF2854:
	.string	"GPIO_ISTAT_ISTAT15 BIT(15)"
.LASF1454:
	.string	"SIGURG 16"
.LASF2002:
	.string	"CAN_FW(canx) REG32((canx) + 0x21CU)"
.LASF414:
	.string	"__va_list__ "
.LASF2980:
	.string	"GPIO_MODE_AF_PP ((uint8_t)0x18U)"
.LASF1247:
	.string	"TIOCMBIS 0x5416"
.LASF3485:
	.string	"RCU_PLL_MUL12 CFG0_PLLMF(10)"
.LASF600:
	.string	"_SYS_CDEFS_H_ "
.LASF814:
	.string	"_NULL 0"
.LASF471:
	.string	"RT_THREAD_STAT_SIGNAL 0x10"
.LASF1539:
	.string	"DATA_BITS_7 7"
.LASF2414:
	.string	"GD32VF103_DMA_H "
.LASF834:
	.string	"_REENT_CHECK_RAND48(ptr) "
.LASF204:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF3390:
	.string	"RCU_APB1EN_I2C1EN BIT(22)"
.LASF1522:
	.string	"_RINGBLK_BUF_H_ "
.LASF2345:
	.string	"DAC_SWT_SWTR1 BIT(1)"
.LASF3201:
	.string	"FWDGT_PSC_TIMEOUT ((uint32_t)0x000FFFFFU)"
.LASF2142:
	.string	"CAN_BT_LCMOD BIT(30)"
.LASF4125:
	.string	"GD32VF103_USART_H "
.LASF2275:
	.string	"CAN_FIFO0 ((uint8_t)0x00U)"
.LASF1993:
	.string	"CAN_RFIFOMDATA10(canx) REG32((canx) + 0x1BCU)"
.LASF421:
	.string	"RTT_API "
.LASF3595:
	.string	"RTC_INTEN REG32(RTC + 0x00U)"
.LASF3136:
	.string	"I2C_REGIDX_BIT2(regidx,bitpos,regidx2,bitpos2) (((uint32_t)(regidx2) << 22) | (uint32_t)((bitpos2) << 16) | (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos)))"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF3127:
	.string	"I2C_STAT1_DUMODF BIT(7)"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF3937:
	.string	"TIMER_INT_FLAG_CH1 TIMER_INT_CH1"
.LASF4528:
	.string	"EXTI1_IRQn"
.LASF4393:
	.string	"__tm_mon"
.LASF668:
	.string	"__DOTS , ..."
.LASF1251:
	.string	"TIOCSSOFTCAR 0x541A"
.LASF264:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF3568:
	.string	"RCU_PLL1_MUL15 CFG1_PLL1MF(13)"
.LASF2946:
	.string	"AFIO_PCF0_TIMER2_REMAP BITS(10, 11)"
.LASF1440:
	.string	"SIGQUIT 3"
.LASF423:
	.string	"INIT_BOARD_EXPORT(fn) INIT_EXPORT(fn, \"1\")"
.LASF3217:
	.string	"DBG_CTL_TIMER2_HOLD BIT(12)"
.LASF1934:
	.string	"BKP_DATA34 REG16((BKP) + 0xA0U)"
.LASF3803:
	.string	"TIMER_DMATB(timerx) REG32((timerx) + 0x4CU)"
.LASF3234:
	.string	"PMU_CTL_STBMOD BIT(1)"
.LASF1806:
	.string	"ADC_DATAALIGN_LEFT ADC_CTL1_DAL"
.LASF609:
	.string	"___int_least8_t_defined 1"
.LASF482:
	.string	"RT_IPC_FLAG_PRIO 0x01"
.LASF3865:
	.string	"TIMER_SWEVG_BRKG BIT(7)"
.LASF3367:
	.string	"RCU_APB2EN_PBEN BIT(3)"
.LASF1019:
	.string	"S_IRWXU (S_IRUSR | S_IWUSR | S_IXUSR)"
.LASF1857:
	.string	"ADC_CHANNEL_9 ((uint8_t)0x09U)"
.LASF3090:
	.string	"I2C_CTL0_POAP BIT(11)"
.LASF3748:
	.string	"SPI_DMA_TRANSMIT ((uint8_t)0x00U)"
.LASF174:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1297:
	.string	"TIOCPKT_STOP 4"
.LASF2932:
	.string	"GPIO_LOCK_LK13 BIT(13)"
.LASF1601:
	.string	"__FAST8 "
.LASF3240:
	.string	"PMU_CS_WUF BIT(0)"
.LASF4427:
	.string	"_errno"
.LASF1835:
	.string	"IOFFX_IOFF(regval) (BITS(0,11) & ((uint32_t)(regval) << 0))"
.LASF2984:
	.string	"GPIO_EVENT_PORT_GPIOA ((uint8_t)0x00U)"
.LASF1759:
	.string	"ADC_CTL1_CLB BIT(2)"
.LASF1226:
	.string	"TCGETS 0x5401"
.LASF1817:
	.string	"CTL1_ETSIC(regval) (BITS(12,14) & ((uint32_t)(regval) << 12))"
.LASF324:
	.string	"RT_THREAD_PRIORITY_MAX 32"
.LASF821:
	.string	"_RAND48_SEED_1 (0xabcd)"
.LASF218:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF2507:
	.string	"DMA_PRIORITY_MEDIUM CHCTL_PRIO(1U)"
.LASF209:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF4531:
	.string	"EXTI4_IRQn"
.LASF1240:
	.string	"TIOCGPGRP 0x540F"
.LASF3591:
	.string	"RCU_DEEPSLEEP_V_1_0 DSV_DSLPVS(2)"
.LASF1407:
	.string	"HAVE_SIGINFO 1"
.LASF3588:
	.string	"DSV_DSLPVS(regval) (BITS(0,1) & ((uint32_t)(regval) << 0))"
.LASF4100:
	.string	"TIMER_TRI_OUT_SRC_O1CPRE CTL1_MMC(5)"
.LASF3945:
	.string	"TIMER_FLAG_CH1 TIMER_INTF_CH1IF"
.LASF2301:
	.string	"CAN_INT_ERRN CAN_INTEN_ERRNIE"
.LASF310:
	.string	"__riscv_float_abi_soft 1"
.LASF2246:
	.string	"CAN_BT_BS1_2TQ ((uint8_t)0x01U)"
.LASF350:
	.string	"RT_MAIN_THREAD_STACK_SIZE 2048"
.LASF2420:
	.string	"DMA_CH0CNT(dmax) REG32((dmax) + 0x0CU)"
.LASF4139:
	.string	"USART_STAT_FERR BIT(1)"
.LASF3749:
	.string	"SPI_DMA_RECEIVE ((uint8_t)0x01U)"
.LASF4101:
	.string	"TIMER_TRI_OUT_SRC_O2CPRE CTL1_MMC(6)"
.LASF2780:
	.string	"OB_WP_30 ((uint32_t)0x40000000U)"
.LASF727:
	.string	"__malloc_like __attribute__((__malloc__))"
.LASF3515:
	.string	"RCU_CKOUT0SRC_HXTAL CFG0_CKOUT0SEL(6)"
.LASF2316:
	.string	"DAC1 (1U)"
.LASF1176:
	.string	"FEXLOCK _FEXLOCK"
.LASF221:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF2557:
	.string	"EXTI_PD REG32(EXTI + 0x14U)"
.LASF1242:
	.string	"TIOCOUTQ 0x5411"
.LASF3147:
	.string	"I2C_TRANSMITTER ((uint32_t)0xFFFFFFFEU)"
.LASF1398:
	.string	"CCONFIG_H__ "
.LASF1896:
	.string	"ADC_OVERSAMPLING_RATIO_MUL128 OVSCR_OVSR(6)"
.LASF1437:
	.string	"sigismember(what,sig) (((*(what)) & (1<<(sig))) != 0)"
.LASF1707:
	.string	"ADC_BASE (APB2_BUS_BASE + 0x00002400U)"
.LASF3867:
	.string	"TIMER_CHCTL0_CH0COMFEN BIT(2)"
.LASF1155:
	.string	"O_RDONLY 0"
.LASF2187:
	.string	"CAN_BIT_POS0(val) (((uint32_t)(val) >> 6) & 0x1FU)"
.LASF1733:
	.string	"ADC_IDATA0(adcx) REG32((adcx) + 0x3CU)"
.LASF3644:
	.string	"SPI_I2SCTL(spix) REG32((spix) + 0x1CU)"
.LASF2958:
	.string	"AFIO_EXTI4_SS BITS(0, 3)"
.LASF2048:
	.string	"CAN_F17DATA1(canx) REG32((canx) + 0x24CU)"
.LASF2983:
	.string	"GPIO_OSPEED_50MHZ ((uint8_t)0x03U)"
.LASF3455:
	.string	"RCU_APB1_CKAHB_DIV2 CFG0_APB1PSC(4)"
.LASF744:
	.string	"__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))"
.LASF2093:
	.string	"CAN_TSTAT_MTF1 BIT(8)"
.LASF2973:
	.string	"GPIO_MODE_AIN ((uint8_t)0x00U)"
.LASF1705:
	.string	"EXTI_BASE (APB2_BUS_BASE + 0x00000400U)"
.LASF2284:
	.string	"CAN_FILTERBITS_32BIT ((uint8_t)0x01U)"
.LASF1078:
	.string	"EDOM 33"
.LASF1129:
	.string	"ENOTRECOVERABLE 141"
.LASF3604:
	.string	"RTC_ALRML REG32(RTC + 0x24U)"
.LASF1307:
	.string	"TIOCM_SR 0x010"
.LASF261:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF1615:
	.string	"__int_fast32_t_defined 1"
.LASF2564:
	.string	"EXTI_INTEN_INTEN6 BIT(6)"
.LASF1782:
	.string	"ADC_OVSCR_OVSR BITS(2,4)"
.LASF917:
	.string	"_SUSECONDS_T_DECLARED "
.LASF2810:
	.string	"GPIO_CTL0_CTL1 BITS(6, 7)"
.LASF4317:
	.string	"rt_ubase_t"
.LASF4533:
	.string	"DMA0_Channel1_IRQn"
.LASF4305:
	.string	"signed char"
.LASF164:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF3908:
	.string	"TIMER_CNT_CNT BITS(0,15)"
.LASF1798:
	.string	"ADC_DAUL_INSERTED_PARALLEL_REGULAL_FOLLOWUP_FAST CTL0_SYNCM(3)"
.LASF4469:
	.string	"_mbrlen_state"
.LASF1562:
	.string	"RT_SERIAL_ERR_OVERRUN 0x01"
.LASF136:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF3770:
	.string	"I2S_FLAG_TBE SPI_STAT_TBE"
.LASF4571:
	.string	"DMA1_Channel0_IRQn"
.LASF1815:
	.string	"ADC0_1_EXTTRIG_REGULAR_EXTI_11 CTL1_ETSRC(6)"
.LASF3276:
	.string	"RCU_DSV REG32(RCU + 0x34U)"
.LASF2188:
	.string	"CAN_BIT_POS1(val) ((uint32_t)(val) & 0x1FU)"
.LASF43:
	.string	"__INT32_TYPE__ long int"
.LASF420:
	.string	"rt_inline static __inline"
.LASF1006:
	.string	"S_ISVTX 0001000"
.LASF1174:
	.string	"FDEFER _FDEFER"
.LASF1597:
	.string	"__INT8 \"hh\""
.LASF2580:
	.string	"EXTI_EVEN_EVEN3 BIT(3)"
.LASF4402:
	.string	"_is_cxa"
.LASF63:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF725:
	.string	"__generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)"
.LASF3108:
	.string	"I2C_STAT0_ADDSEND BIT(1)"
.LASF4482:
	.string	"uint8_t"
.LASF439:
	.string	"RT_EFULL 3"
.LASF4434:
	.string	"_locale"
.LASF3892:
	.string	"TIMER_CHCTL1_CH3CAPPSC BITS(10,11)"
.LASF898:
	.string	"_BIG_ENDIAN 4321"
.LASF1128:
	.string	"ECANCELED 140"
.LASF2040:
	.string	"CAN_F9DATA1(canx) REG32((canx) + 0x28CU)"
.LASF3885:
	.string	"TIMER_CHCTL1_CH3MS BITS(8,9)"
.LASF2330:
	.string	"DAC_CTL_DEN0 BIT(0)"
.LASF4576:
	.string	"CAN1_TX_IRQn"
.LASF4168:
	.string	"USART_CTL1_CLEN BIT(8)"
.LASF2598:
	.string	"EXTI_RTEN_RTEN2 BIT(2)"
.LASF787:
	.string	"_SYS_REENT_H_ "
.LASF1621:
	.string	"INT8_MAX (__INT8_MAX__)"
.LASF1117:
	.string	"EPROTONOSUPPORT 123"
.LASF1279:
	.string	"FIONCLEX 0x5450"
.LASF2670:
	.string	"EXTI_PD_PD17 BIT(17)"
.LASF4366:
	.string	"control"
.LASF2230:
	.string	"CAN_ERRN_2 ERR_ERRN(2)"
.LASF489:
	.string	"RT_EVENT_FLAG_CLEAR 0x04"
.LASF2902:
	.string	"GPIO_BOP_CR15 BIT(31)"
.LASF123:
	.string	"__UINT32_C(c) c ## UL"
.LASF1250:
	.string	"TIOCGSOFTCAR 0x5419"
.LASF2800:
	.string	"AFIO_EC REG32(AFIO + 0x00U)"
.LASF920:
	.string	"_TIMEVAL_DEFINED "
.LASF3760:
	.string	"I2S_INT_FLAG_TXURERR ((uint8_t)0x05U)"
.LASF1347:
	.string	"SIOCGIFADDR 0x8915"
.LASF2936:
	.string	"AFIO_EC_PIN BITS(0, 3)"
.LASF4673:
	.string	"gd32_configure"
.LASF79:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF1048:
	.string	"ENOENT 2"
.LASF4310:
	.string	"short unsigned int"
.LASF4380:
	.string	"_mbstate_t"
.LASF4548:
	.string	"TIMER0_Channel_IRQn"
.LASF3238:
	.string	"PMU_CTL_LVDT BITS(5,7)"
.LASF1339:
	.string	"SIOCADDRT 0x890B"
.LASF3461:
	.string	"RCU_APB2_CKAHB_DIV2 CFG0_APB2PSC(4)"
.LASF4038:
	.string	"TIMER_CCHP_PROT_0 CCHP_PROT(1)"
.LASF1099:
	.string	"ECONNRESET 104"
.LASF3586:
	.string	"RCU_I2S2SRC_CKSYS ((uint32_t)0x00000000U)"
.LASF4660:
	.string	"irqn"
.LASF4332:
	.string	"RT_Device_Class_Block"
.LASF4114:
	.string	"SMCFG_ETPSC(regval) (BITS(12, 13) & ((uint32_t)(regval) << 12U))"
.LASF4129:
	.string	"UART4 (USART_BASE+(0x00000C00U))"
.LASF2700:
	.string	"FMC_CTL0_OBPG BIT(4)"
.LASF756:
	.string	"__sym_default(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@@\" #verid)"
.LASF2613:
	.string	"EXTI_RTEN_RTEN17 BIT(17)"
.LASF4472:
	.string	"_wcrtomb_state"
.LASF4584:
	.string	"RESET"
.LASF999:
	.string	"_IFREG 0100000"
.LASF3229:
	.string	"GD32VF103_PMU_H "
.LASF4478:
	.string	"__lock"
.LASF456:
	.string	"RT_TIMER_FLAG_HARD_TIMER 0x0"
.LASF1233:
	.string	"TCSETAF 0x5408"
.LASF3575:
	.string	"RCU_PLL2_MUL11 CFG1_PLL2MF(9)"
.LASF1065:
	.string	"ENOTDIR 20"
.LASF3471:
	.string	"RCU_PLLSRC_IRC8M_DIV2 ((uint32_t)0x00000000U)"
.LASF3693:
	.string	"SPI_SLAVE ((uint32_t)0x00000000U)"
.LASF1012:
	.string	"S_IFDIR _IFDIR"
.LASF3790:
	.string	"TIMER_CHCTL0(timerx) REG32((timerx) + 0x18U)"
.LASF1147:
	.string	"_FTRUNC 0x0400"
.LASF1330:
	.string	"N_HDLC 13"
.LASF203:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF2043:
	.string	"CAN_F12DATA1(canx) REG32((canx) + 0x2A4U)"
.LASF1428:
	.string	"SS_ONSTACK 0x1"
.LASF48:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF942:
	.string	"_IN_ADDR_T_DECLARED "
.LASF2062:
	.string	"CAN_TMDATA1(canx,bank) REG32((canx) + 0x18CU + ((bank) * 0x10U))"
.LASF1648:
	.string	"INT_FAST16_MAX (__INT_FAST16_MAX__)"
.LASF1011:
	.string	"S_IFMT _IFMT"
.LASF4596:
	.string	"RCU_WWDGT"
.LASF4133:
	.string	"USART_BAUD(usartx) REG32((usartx) + (0x00000008U))"
.LASF3856:
	.string	"TIMER_INTF_CH2OF BIT(11)"
.LASF1145:
	.string	"_FEXLOCK 0x0100"
.LASF4015:
	.string	"TIMER_COUNTER_CENTER_BOTH CTL0_CAM(3)"
.LASF3417:
	.string	"RCU_CFG1_I2S1SEL BIT(17)"
.LASF2349:
	.string	"DAC1_R12DH_DAC1_DH BITS(0,11)"
.LASF2683:
	.string	"FMC_PID REG32((FMC) + 0x100U)"
.LASF4301:
	.string	"ECLIC_GROUP_LEVEL3_PRIO1 3"
.LASF2623:
	.string	"EXTI_FTEN_FTEN8 BIT(8)"
.LASF4610:
	.string	"RCU_RTC"
.LASF3452:
	.string	"RCU_AHB_CKSYS_DIV512 CFG0_AHBPSC(15)"
.LASF1702:
	.string	"PMU_BASE (APB1_BUS_BASE + 0x00007000U)"
.LASF2563:
	.string	"EXTI_INTEN_INTEN5 BIT(5)"
.LASF3028:
	.string	"GPIO_PIN_2 BIT(2)"
.LASF3082:
	.string	"I2C_CTL0_SMBSEL BIT(3)"
.LASF3584:
	.string	"RCU_I2S1SRC_CKSYS ((uint32_t)0x00000000U)"
.LASF1905:
	.string	"BKP_DATA5 REG16((BKP) + 0x18U)"
.LASF3302:
	.string	"RCU_CFG0_ADCPSC_2 BIT(28)"
.LASF529:
	.string	"RTGRAPHIC_CTRL_POWERON 1"
.LASF286:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF3000:
	.string	"GPIO_EVENT_PIN_6 ((uint8_t)0x06U)"
.LASF1044:
	.string	"_SYS_ERRNO_H_ "
.LASF3194:
	.string	"FWDGT_PSC_DIV64 ((uint8_t)PSC_PSC(4))"
.LASF2903:
	.string	"GPIO_BC_CR0 BIT(0)"
.LASF4642:
	.string	"USART_INT_FLAG_ERR_FERR"
.LASF4234:
	.string	"USART_DENT_ENABLE CLT2_DENT(1)"
.LASF3394:
	.string	"RCU_APB1EN_PMUEN BIT(28)"
.LASF309:
	.string	"__riscv_xlen 32"
.LASF1193:
	.string	"F_SETLKW 9"
.LASF681:
	.string	"__has_feature(x) 0"
.LASF2821:
	.string	"GPIO_CTL0_MD7 BITS(28, 29)"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1192:
	.string	"F_SETLK 8"
.LASF3024:
	.string	"GPIO_PIN_SOURCE_14 ((uint8_t)0x0EU)"
.LASF1320:
	.string	"N_PPP 3"
.LASF4099:
	.string	"TIMER_TRI_OUT_SRC_O0CPRE CTL1_MMC(4)"
.LASF1381:
	.string	"SIOCDARP 0x8953"
.LASF1833:
	.string	"ADC_SAMPLETIME_71POINT5 SAMPTX_SPT(6)"
.LASF2024:
	.string	"CAN_F21DATA0(canx) REG32((canx) + 0x2E8U)"
.LASF2616:
	.string	"EXTI_FTEN_FTEN1 BIT(1)"
.LASF4319:
	.string	"rt_err_t"
.LASF2173:
	.string	"CAN_RFIFOMDATA1_DB6 BITS(16,23)"
.LASF2456:
	.string	"DMA_CHXCTL_FTFIE BIT(1)"
.LASF2433:
	.string	"DMA_CH3PADDR(dmax) REG32((dmax) + 0x4CU)"
.LASF4118:
	.string	"TIMER_EXT_TRI_PSC_DIV8 SMCFG_ETPSC(3)"
.LASF2444:
	.string	"DMA_CH6CNT(dmax) REG32((dmax) + 0x84U)"
.LASF4146:
	.string	"USART_STAT_LBDF BIT(8)"
.LASF1773:
	.string	"ADC_WDLT_WDLT BITS(0,11)"
.LASF759:
	.string	"__RCSID_SOURCE(s) struct __hack"
.LASF2042:
	.string	"CAN_F11DATA1(canx) REG32((canx) + 0x29CU)"
.LASF1932:
	.string	"BKP_DATA32 REG16((BKP) + 0x98U)"
.LASF3018:
	.string	"GPIO_PIN_SOURCE_8 ((uint8_t)0x08U)"
.LASF2680:
	.string	"FMC_ADDR0 REG32((FMC) + 0x14U)"
.LASF3320:
	.string	"RCU_INT_LXTALSTBIC BIT(17)"
.LASF3911:
	.string	"TIMER_CREP_CREP BITS(0,7)"
.LASF2242:
	.string	"CAN_BT_SJW_2TQ ((uint8_t)0x01U)"
.LASF806:
	.string	"unsigned"
.LASF1664:
	.string	"WCHAR_MIN (__WCHAR_MIN__)"
.LASF543:
	.string	"__NEWLIB__ 3"
.LASF1711:
	.string	"CRC_BASE (AHB1_BUS_BASE + 0x0000B000U)"
.LASF1280:
	.string	"FIOCLEX 0x5451"
.LASF2342:
	.string	"DAC_CTL_DWBW1 BITS(24,27)"
.LASF1098:
	.string	"EPFNOSUPPORT 96"
.LASF3795:
	.string	"TIMER_CAR(timerx) REG32((timerx) + 0x2CU)"
.LASF1088:
	.string	"ENOLINK 67"
.LASF4226:
	.string	"USART_CPH_2CK CTL1_CPH(1)"
.LASF1113:
	.string	"EINPROGRESS 119"
.LASF2714:
	.string	"FMC_PID_PID BITS(0,31)"
.LASF142:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF1445:
	.string	"SIGEMT 7"
.LASF1447:
	.string	"SIGKILL 9"
.LASF202:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1197:
	.string	"F_RSETLKW 13"
.LASF2672:
	.string	"GD32VF103_FMC_H "
.LASF3456:
	.string	"RCU_APB1_CKAHB_DIV4 CFG0_APB1PSC(5)"
.LASF3875:
	.string	"TIMER_CHCTL0_CH1COMCEN BIT(15)"
.LASF4085:
	.string	"SMCFG_TRGSEL(regval) (BITS(4, 6) & ((uint32_t)(regval) << 4U))"
.LASF542:
	.string	"_NEWLIB_VERSION \"3.0.0\""
.LASF3557:
	.string	"RCU_PREDV1_DIV14 CFG1_PREDV1(13)"
.LASF4087:
	.string	"TIMER_SMCFG_TRGSEL_ITI1 SMCFG_TRGSEL(1)"
.LASF742:
	.string	"__hidden __attribute__((__visibility__(\"hidden\")))"
.LASF3492:
	.string	"RCU_PLL_MUL19 (PLLMF_4 | CFG0_PLLMF(2))"
.LASF4073:
	.string	"TIMER_UPDATECTL_CCU ((uint32_t)0x00000000U)"
.LASF4229:
	.string	"USART_CPL_HIGH CTL1_CPL(1)"
.LASF1904:
	.string	"BKP_DATA4 REG16((BKP) + 0x14U)"
.LASF2723:
	.string	"FMC_STAT0_REG_OFFSET 0x0CU"
.LASF2286:
	.string	"CAN_FILTERMODE_LIST ((uint8_t)0x01U)"
.LASF2379:
	.string	"DAC_WAVE_BIT_WIDTH_6 DWBW(5)"
.LASF3112:
	.string	"I2C_STAT0_RBNE BIT(6)"
.LASF2358:
	.string	"DAC0_DO_DAC0_DO BITS(0,11)"
.LASF4662:
	.string	"GDUSART0_INDEX"
.LASF941:
	.string	"quad quad_t"
.LASF1667:
	.string	"WINT_MIN (__WINT_MIN__)"
.LASF1920:
	.string	"BKP_DATA20 REG16((BKP) + 0x68U)"
.LASF1230:
	.string	"TCGETA 0x5405"
.LASF3013:
	.string	"GPIO_PIN_SOURCE_3 ((uint8_t)0x03U)"
.LASF4523:
	.string	"TAMPER_IRQn"
.LASF1574:
	.string	"HXTAL_STARTUP_TIMEOUT ((uint16_t)0xFFFF)"
.LASF235:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF1002:
	.string	"_IFIFO 0010000"
.LASF2590:
	.string	"EXTI_EVEN_EVEN13 BIT(13)"
.LASF2619:
	.string	"EXTI_FTEN_FTEN4 BIT(4)"
.LASF1825:
	.string	"ADC0_1_EXTTRIG_INSERTED_NONE CTL1_ETSIC(7)"
.LASF1040:
	.string	"S_ISSOCK(m) (((m)&_IFMT) == _IFSOCK)"
.LASF781:
	.string	"__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))"
.LASF1730:
	.string	"ADC_RSQ1(adcx) REG32((adcx) + 0x30U)"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF59:
	.string	"__INT_FAST32_TYPE__ int"
.LASF1931:
	.string	"BKP_DATA31 REG16((BKP) + 0x94U)"
.LASF4304:
	.string	"HEAP_END &_heap_end"
.LASF3677:
	.string	"SPI_DATA_DATA BITS(0,15)"
.LASF1200:
	.string	"F_WRLCK 2"
.LASF1894:
	.string	"ADC_OVERSAMPLING_RATIO_MUL32 OVSCR_OVSR(4)"
.LASF287:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF3200:
	.string	"FWDGT_KEY_ENABLE ((uint16_t)0xCCCCU)"
.LASF2929:
	.string	"GPIO_LOCK_LK10 BIT(10)"
.LASF817:
	.string	"_ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}"
.LASF955:
	.string	"_FSBLKCNT_T_DECLARED "
.LASF4524:
	.string	"RTC_IRQn"
.LASF1450:
	.string	"SIGSYS 12"
.LASF3381:
	.string	"RCU_APB1EN_TIMER6EN BIT(5)"
.LASF1030:
	.string	"S_IXOTH 0000001"
.LASF1858:
	.string	"ADC_CHANNEL_10 ((uint8_t)0x0AU)"
.LASF2209:
	.string	"TMDATA1_DB5(regval) (BITS(8,15) & ((uint32_t)(regval) << 8))"
.LASF3489:
	.string	"RCU_PLL_MUL16 CFG0_PLLMF(14)"
.LASF578:
	.string	"__LARGEFILE_VISIBLE 0"
.LASF4659:
	.string	"rx_pin"
.LASF3459:
	.string	"CFG0_APB2PSC(regval) (BITS(11,13) & ((uint32_t)(regval) << 11))"
.LASF2249:
	.string	"CAN_BT_BS1_5TQ ((uint8_t)0x04U)"
.LASF621:
	.string	"_PTRDIFF_T_ "
.LASF3271:
	.string	"RCU_APB1EN REG32(RCU + 0x1CU)"
.LASF1671:
	.string	"UINT16_C(x) __UINT16_C(x)"
.LASF1217:
	.string	"_IOC_WRITE 1U"
.LASF4153:
	.string	"USART_CTL0_REN BIT(2)"
.LASF347:
	.string	"RT_VER_NUM 0x40002"
.LASF951:
	.string	"__clock_t_defined "
.LASF1259:
	.string	"TIOCSETD 0x5423"
.LASF2645:
	.string	"EXTI_SWIEV_SWIEV11 BIT(11)"
.LASF4457:
	.string	"_strtok_last"
.LASF2111:
	.string	"CAN_RFIFO0_RFF0 BIT(3)"
.LASF2759:
	.string	"OB_WP_9 ((uint32_t)0x00000200U)"
.LASF2838:
	.string	"GPIO_CTL1_CTL15 BITS(30, 31)"
.LASF1903:
	.string	"BKP_DATA3 REG16((BKP) + 0x10U)"
.LASF2035:
	.string	"CAN_F4DATA1(canx) REG32((canx) + 0x264U)"
.LASF798:
	.string	"__lock_acquire(lock) __retarget_lock_acquire(lock)"
.LASF3072:
	.string	"I2C_CTL1(i2cx) REG32((i2cx) + 0x04U)"
.LASF2710:
	.string	"FMC_OBSTAT_USER BITS(2,9)"
.LASF3808:
	.string	"TIMER_CTL0_DIR BIT(4)"
.LASF312:
	.string	"__ELF__ 1"
.LASF2969:
	.string	"AFIO_EXTI15_SS BITS(12, 15)"
.LASF220:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF132:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1191:
	.string	"F_GETLK 7"
.LASF3020:
	.string	"GPIO_PIN_SOURCE_10 ((uint8_t)0x0AU)"
.LASF3646:
	.string	"SPI_CTL0_CKPH BIT(0)"
.LASF3033:
	.string	"GPIO_PIN_7 BIT(7)"
.LASF3338:
	.string	"RCU_APB1RST_TIMER1RST BIT(0)"
.LASF3309:
	.string	"RCU_INT_PLL1STBIF BIT(5)"
.LASF4081:
	.string	"TIMER_IC_PSC_DIV1 ((uint16_t)0x0000U)"
.LASF3812:
	.string	"TIMER_CTL1_CCSE BIT(0)"
.LASF1852:
	.string	"ADC_CHANNEL_4 ((uint8_t)0x04U)"
.LASF1126:
	.string	"EILSEQ 138"
.LASF2752:
	.string	"OB_WP_2 ((uint32_t)0x00000004U)"
.LASF4494:
	.string	"_syscall_table_begin"
.LASF399:
	.string	"RT_UINT32_MAX 0xffffffff"
.LASF3199:
	.string	"FWDGT_KEY_RELOAD ((uint16_t)0xAAAAU)"
.LASF4049:
	.string	"TIMER_CCXN_ENABLE ((uint16_t)0x0004U)"
.LASF3900:
	.string	"TIMER_CHCTL2_CH1NEN BIT(6)"
.LASF3980:
	.string	"TIMER_DMACFG_DMATA_CH2CV DMACFG_DMATA(15)"
.LASF1365:
	.string	"SIOCGIFHWADDR 0x8927"
.LASF1930:
	.string	"BKP_DATA30 REG16((BKP) + 0x90U)"
.LASF2999:
	.string	"GPIO_EVENT_PIN_5 ((uint8_t)0x05U)"
.LASF1246:
	.string	"TIOCMGET 0x5415"
.LASF2004:
	.string	"CAN_F1DATA0(canx) REG32((canx) + 0x248U)"
.LASF771:
	.string	"__datatype_type_tag(kind,type) "
.LASF3273:
	.string	"RCU_RSTSCK REG32(RCU + 0x24U)"
.LASF2158:
	.string	"CAN_TMDATA1_DB6 BITS(16,23)"
.LASF2416:
	.string	"DMA1 (DMA_BASE + 0x0400U)"
.LASF921:
	.string	"timerclear(tvp) ((tvp)->tv_sec = (tvp)->tv_usec = 0)"
.LASF1434:
	.string	"sigdelset(what,sig) (*(what) &= ~(1<<(sig)), 0)"
.LASF3830:
	.string	"TIMER_SMCFG_ETP BIT(15)"
.LASF2540:
	.string	"SNCTL_NRW(regval) (BITS(4,5) & ((uint32_t)(regval) << 4))"
.LASF3239:
	.string	"PMU_CTL_BKPWEN BIT(8)"
.LASF3426:
	.string	"AHBRST_REG_OFFSET 0x28U"
.LASF1620:
	.string	"INT8_MIN (-__INT8_MAX__ - 1)"
.LASF3815:
	.string	"TIMER_CTL1_MMC BITS(4,6)"
.LASF3186:
	.string	"FWDGT_RLD_RLD BITS(0,11)"
.LASF39:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF4653:
	.string	"gd32_usart"
.LASF2387:
	.string	"DAC_LFSR_BITS1_0 DAC_WAVE_BIT_WIDTH_2"
.LASF252:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF1841:
	.string	"ADC_INSERTED_CHANNEL ((uint8_t)0x02U)"
.LASF410:
	.string	"_VA_LIST_ "
.LASF4162:
	.string	"USART_CTL0_WM BIT(11)"
.LASF2459:
	.string	"DMA_CHXCTL_DIR BIT(4)"
.LASF1138:
	.string	"_FREAD 0x0001"
.LASF1978:
	.string	"CAN_TMI0(canx) REG32((canx) + 0x180U)"
.LASF4611:
	.string	"RCU_AF"
.LASF1774:
	.string	"ADC_RSQX_RSQN BITS(0,4)"
.LASF134:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF3511:
	.string	"CFG0_CKOUT0SEL(regval) (BITS(24,27) & ((uint32_t)(regval) << 24))"
.LASF1325:
	.string	"N_MASC 8"
.LASF3167:
	.string	"I2C_PECTRANS_DISABLE ((uint32_t)0x00000000U)"
.LASF1502:
	.string	"__RT_DEVICE_H__ "
.LASF2949:
	.string	"AFIO_PCF0_PD01_REMAP BIT(15)"
.LASF2189:
	.string	"STAT_REG_OFFSET ((uint8_t)0x04U)"
.LASF4248:
	.string	"WWDGT_CFG REG32((WWDGT) + 0x00000004U)"
.LASF1086:
	.string	"ETIME 62"
.LASF2473:
	.string	"DMA_CHPADDR(dma,channel) REG32(((dma) + 0x10U) + 0x14U * (uint32_t)(channel))"
.LASF4249:
	.string	"WWDGT_STAT REG32((WWDGT) + 0x00000008U)"
.LASF1266:
	.string	"TIOCSRS485 0x542F"
.LASF1225:
	.string	"FIONWRITE _IOR('f', 121, int)"
.LASF366:
	.string	"RT_PIPE_BUFSZ 512"
.LASF1762:
	.string	"ADC_CTL1_DAL BIT(11)"
.LASF3685:
	.string	"SPI_I2SCTL_PCMSMOD BIT(7)"
.LASF4406:
	.string	"__sbuf"
.LASF2339:
	.string	"DAC_CTL_DTEN1 BIT(18)"
.LASF2108:
	.string	"CAN_TSTAT_TMLS1 BIT(30)"
.LASF1860:
	.string	"ADC_CHANNEL_12 ((uint8_t)0x0CU)"
.LASF3567:
	.string	"RCU_PLL1_MUL14 CFG1_PLL1MF(12)"
.LASF170:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF2165:
	.string	"CAN_RFIFOMP_FI BITS(8,15)"
.LASF416:
	.string	"RT_UNUSED __attribute__((unused))"
.LASF1980:
	.string	"CAN_TMDATA00(canx) REG32((canx) + 0x188U)"
.LASF1360:
	.string	"SIOCSIFMTU 0x8922"
.LASF4665:
	.string	"obj_num"
.LASF3126:
	.string	"I2C_STAT1_HSTSMB BIT(6)"
.LASF2915:
	.string	"GPIO_BC_CR12 BIT(12)"
.LASF1221:
	.string	"_IOR(a,b,c) _IOC(_IOC_READ,(a),(b),sizeof(c))"
.LASF3759:
	.string	"SPI_INT_FLAG_CRCERR ((uint8_t)0x04U)"
.LASF2662:
	.string	"EXTI_PD_PD9 BIT(9)"
.LASF1271:
	.string	"TCSETX 0x5433"
.LASF884:
	.string	"_UINT16_T_DECLARED "
.LASF455:
	.string	"RT_TIMER_FLAG_PERIODIC 0x2"
.LASF1541:
	.string	"DATA_BITS_9 9"
.LASF2074:
	.string	"CAN_CTL_AWU BIT(5)"
.LASF3612:
	.string	"RTC_CTL_CMF BIT(4)"
.LASF2886:
	.string	"GPIO_BOP_BOP15 BIT(15)"
.LASF2986:
	.string	"GPIO_EVENT_PORT_GPIOC ((uint8_t)0x02U)"
.LASF3940:
	.string	"TIMER_INT_FLAG_CMT TIMER_INT_CMT"
.LASF2104:
	.string	"CAN_TSTAT_TME0 BIT(26)"
.LASF3066:
	.string	"GPIO_TIMER1ITI1_REMAP ((uint32_t)0x00202000U)"
.LASF4122:
	.string	"TIMER_HALLINTERFACE_DISABLE ((uint32_t)0x00000000U)"
.LASF585:
	.string	"_POINTER_INT long"
.LASF392:
	.string	"RT_SUBVERSION 0L"
.LASF1391:
	.string	"SIOCDEVPRIVATE 0x89F0"
.LASF747:
	.string	"__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))"
.LASF317:
	.string	"RT_USING_NEWLIB 1"
.LASF1075:
	.string	"EROFS 30"
.LASF3868:
	.string	"TIMER_CHCTL0_CH0COMSEN BIT(3)"
.LASF4645:
	.string	"USART_INT_TC"
.LASF2967:
	.string	"AFIO_EXTI13_SS BITS(4, 7)"
.LASF2089:
	.string	"CAN_TSTAT_MTFNERR0 BIT(1)"
.LASF371:
	.string	"BSP_USING_USART "
.LASF2989:
	.string	"GPIO_PORT_SOURCE_GPIOA ((uint8_t)0x00U)"
.LASF1644:
	.string	"INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)"
.LASF1431:
	.string	"SIG_BLOCK 1"
.LASF4446:
	.string	"__sglue"
.LASF1244:
	.string	"TIOCGWINSZ 0x5413"
.LASF3729:
	.string	"I2S_FRAMEFORMAT_DT16B_CH16B I2SCTL_DTLEN(0)"
.LASF2845:
	.string	"GPIO_ISTAT_ISTAT6 BIT(6)"
.LASF2794:
	.string	"GPIO_CTL1(gpiox) REG32((gpiox) + 0x04U)"
.LASF1372:
	.string	"SIOCSIFPFLAGS 0x8934"
.LASF4646:
	.string	"USART_INT_RBNE"
.LASF733:
	.string	"__fastcall __attribute__((__fastcall__))"
.LASF2131:
	.string	"CAN_INTEN_SLPWIE BIT(17)"
.LASF4277:
	.string	"_BITULL(x) (_AC(1,ULL) << (x))"
.LASF2423:
	.string	"DMA_CH1CTL(dmax) REG32((dmax) + 0x1CU)"
.LASF3005:
	.string	"GPIO_EVENT_PIN_11 ((uint8_t)0x0BU)"
.LASF3465:
	.string	"RCU_CKADC_CKAPB2_DIV2 ((uint32_t)0x00000000U)"
.LASF1792:
	.string	"ADC_SCAN_MODE ADC_CTL0_SM"
.LASF1136:
	.string	"_SYS__DEFAULT_FCNTL_H_ "
.LASF967:
	.string	"__clockid_t_defined "
.LASF1173:
	.string	"FMARK _FMARK"
.LASF2570:
	.string	"EXTI_INTEN_INTEN12 BIT(12)"
.LASF1987:
	.string	"CAN_TMP2(canx) REG32((canx) + 0x1A4U)"
.LASF4481:
	.string	"_global_impure_ptr"
.LASF726:
	.string	"__min_size(x) static (x)"
.LASF3305:
	.string	"RCU_INT_LXTALSTBIF BIT(1)"
.LASF563:
	.string	"_SYS_FEATURES_H "
.LASF2027:
	.string	"CAN_F24DATA0(canx) REG32((canx) + 0x300U)"
.LASF2894:
	.string	"GPIO_BOP_CR7 BIT(23)"
.LASF2266:
	.string	"CAN_BT_BS2_6TQ ((uint8_t)0x05U)"
.LASF3063:
	.string	"GPIO_SWJ_SWDPENABLE_REMAP ((uint32_t)0x00300200U)"
.LASF1787:
	.string	"ADC_FLAG_EOC ADC_STAT_EOC"
.LASF1842:
	.string	"ADC_REGULAR_INSERTED_CHANNEL ((uint8_t)0x03U)"
.LASF2862:
	.string	"GPIO_OCTL_OCTL7 BIT(7)"
.LASF3730:
	.string	"I2S_FRAMEFORMAT_DT16B_CH32B (I2SCTL_DTLEN(0) | SPI_I2SCTL_CHLEN)"
.LASF1371:
	.string	"SIOGIFINDEX SIOCGIFINDEX"
.LASF2298:
	.string	"CAN_INT_WERR CAN_INTEN_WERRIE"
.LASF4145:
	.string	"USART_STAT_TBE BIT(7)"
.LASF3094:
	.string	"I2C_CTL1_I2CCLK BITS(0,5)"
.LASF2909:
	.string	"GPIO_BC_CR6 BIT(6)"
.LASF858:
	.string	"_REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)"
.LASF1636:
	.string	"INT_LEAST32_MAX (__INT_LEAST32_MAX__)"
.LASF4086:
	.string	"TIMER_SMCFG_TRGSEL_ITI0 SMCFG_TRGSEL(0)"
.LASF656:
	.string	"___int_wchar_t_h "
.LASF2970:
	.string	"AFIO_PCF1_EXMC_NADV BIT(10)"
.LASF1284:
	.string	"TIOCSERSWILD 0x5455"
.LASF1385:
	.string	"SIOCGRARP 0x8961"
.LASF487:
	.string	"RT_EVENT_FLAG_AND 0x01"
.LASF3888:
	.string	"TIMER_CHCTL1_CH3COMCTL BITS(12,14)"
.LASF2517:
	.string	"ECLIC_PRIGROUP_LEVEL3_PRIO1 3"
.LASF1438:
	.string	"SIGHUP 1"
.LASF1499:
	.string	"FINSH_FUNCTION_EXPORT_ALIAS(name,alias,desc) FINSH_FUNCTION_EXPORT_CMD(name, alias, desc)"
.LASF3039:
	.string	"GPIO_PIN_13 BIT(13)"
.LASF340:
	.string	"RT_USING_MEMPOOL "
.LASF1899:
	.string	"BKP BKP_BASE"
.LASF2419:
	.string	"DMA_CH0CTL(dmax) REG32((dmax) + 0x08U)"
.LASF1873:
	.string	"ADC_RESOLUTION_12B OVSCR_DRES(0)"
.LASF2353:
	.string	"DACC_R12DH_DAC1_DH BITS(16,27)"
.LASF2364:
	.string	"DAC_TRIGGER_T4_TRGO CTL_DTSEL(3)"
.LASF1159:
	.string	"O_CREAT _FCREAT"
.LASF426:
	.string	"INIT_COMPONENT_EXPORT(fn) INIT_EXPORT(fn, \"4\")"
.LASF3889:
	.string	"TIMER_CHCTL1_CH3COMCEN BIT(15)"
.LASF3714:
	.string	"SPI_PSC_16 CTL0_PSC(3)"
.LASF4061:
	.string	"TIMER_OC_MODE_INACTIVE ((uint16_t)0x0020U)"
.LASF1682:
	.string	"BITS(start,end) ((0xFFFFFFFFUL << (start)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(end))))"
.LASF1412:
	.string	"SI_QUEUE 0x02"
.LASF1809:
	.string	"ADC0_1_EXTTRIG_REGULAR_T0_CH0 CTL1_ETSRC(0)"
.LASF1478:
	.string	"__RT_SERVICE_H__ "
.LASF1229:
	.string	"TCSETSF 0x5404"
.LASF2389:
	.string	"DAC_LFSR_BITS3_0 DAC_WAVE_BIT_WIDTH_4"
.LASF4656:
	.string	"gpio_clk"
.LASF877:
	.string	"__BIT_TYPES_DEFINED__ 1"
.LASF128:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF1790:
	.string	"ADC_FLAG_STRC ADC_STAT_STRC"
.LASF3971:
	.string	"TIMER_DMACFG_DMATA_CHCTL0 DMACFG_DMATA(6)"
.LASF2630:
	.string	"EXTI_FTEN_FTEN15 BIT(15)"
.LASF3258:
	.string	"PMU_FLAG_RESET_WAKEUP ((uint8_t)0x00U)"
.LASF503:
	.string	"RT_DEVICE_OFLAG_CLOSE 0x000"
.LASF242:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF4068:
	.string	"TIMER_OC_SHADOW_DISABLE ((uint16_t)0x0000U)"
.LASF2655:
	.string	"EXTI_PD_PD2 BIT(2)"
.LASF2719:
	.string	"FMC_REG_VALS(offset) (REG32(FMC + ((uint32_t)(offset) >> 12)))"
.LASF647:
	.string	"_WCHAR_T "
.LASF1093:
	.string	"ENOSYS 88"
.LASF1327:
	.string	"N_PROFIBUS_FDL 10"
.LASF1367:
	.string	"SIOCSIFSLAVE 0x8930"
.LASF4256:
	.string	"CFG_PSC(regval) (BITS(7,8) & ((uint32_t)(regval) << 7))"
.LASF3529:
	.string	"RCU_PREDV0_DIV3 CFG1_PREDV0(2)"
.LASF4527:
	.string	"EXTI0_IRQn"
.LASF4097:
	.string	"TIMER_TRI_OUT_SRC_UPDATE CTL1_MMC(2)"
.LASF2106:
	.string	"CAN_TSTAT_TME2 BIT(28)"
.LASF2034:
	.string	"CAN_F3DATA1(canx) REG32((canx) + 0x25CU)"
.LASF4349:
	.string	"RT_Device_Class_Miscellaneous"
.LASF1470:
	.string	"SIGUSR1 30"
.LASF1689:
	.string	"APB1_BUS_BASE ((uint32_t)0x40000000U)"
.LASF777:
	.string	"__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))"
.LASF4144:
	.string	"USART_STAT_TC BIT(6)"
.LASF3065:
	.string	"GPIO_SPI2_REMAP ((uint32_t)0x00201100U)"
.LASF3494:
	.string	"RCU_PLL_MUL21 (PLLMF_4 | CFG0_PLLMF(4))"
.LASF389:
	.ascii	"RT_DEBUG_IN_THREAD_CONTEXT do { "
	.string	"rt_base_t level; level = rt_hw_interrupt_disable(); if (rt_thread_self() == RT_NULL) { rt_kprintf(\"Function[%s] shall not be used before scheduler start\\n\", __FUNCTION__); RT_ASSERT(0) } RT_DEBUG_NOT_IN_INTERRUPT; rt_hw_interrupt_enable(level); } while (0)"
.LASF3181:
	.string	"FWDGT_PSC REG32((FWDGT) + 0x00000004U)"
.LASF819:
	.string	"_REENT_SMALL_CHECK_INIT(ptr) "
.LASF1388:
	.string	"SIOCSIFMAP 0x8971"
.LASF1202:
	.string	"F_UNLKSYS 4"
.LASF3799:
	.string	"TIMER_CH2CV(timerx) REG32((timerx) + 0x3CU)"
.LASF4419:
	.string	"_nbuf"
.LASF2976:
	.string	"GPIO_MODE_IPU ((uint8_t)0x48U)"
.LASF2274:
	.string	"CAN_FF_EXTENDED ((uint32_t)0x00000004U)"
.LASF663:
	.string	"NULL ((void *)0)"
.LASF1631:
	.string	"UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)"
.LASF3129:
	.string	"I2C_CKCFG_CLKC BITS(0,11)"
.LASF2663:
	.string	"EXTI_PD_PD10 BIT(10)"
.LASF1535:
	.string	"BAUD_RATE_2000000 2000000"
.LASF3278:
	.string	"RCU_CTL_IRC8MSTB BIT(1)"
.LASF2783:
	.string	"FMC_TIMEOUT_COUNT ((uint32_t)0x000F0000U)"
.LASF3658:
	.string	"SPI_CTL0_BDOEN BIT(14)"
.LASF4165:
	.string	"USART_CTL1_ADDR BITS(0,3)"
.LASF3696:
	.string	"SPI_TRANSMODE_FULLDUPLEX ((uint32_t)0x00000000U)"
.LASF730:
	.string	"__noinline __attribute__ ((__noinline__))"
.LASF1257:
	.string	"TIOCPKT 0x5420"
.LASF2504:
	.string	"DMA_MEMORY_WIDTH_32BIT CHCTL_MWIDTH(2U)"
.LASF1884:
	.string	"ADC_OVERSAMPLING_SHIFT_4B OVSCR_OVSS(4)"
.LASF2386:
	.string	"DAC_LFSR_BIT0 DAC_WAVE_BIT_WIDTH_1"
.LASF738:
	.string	"__predict_true(exp) __builtin_expect((exp), 1)"
.LASF1801:
	.string	"ADC_DAUL_REGULAL_PARALLEL CTL0_SYNCM(6)"
.LASF1961:
	.string	"RTC_OUTPUT_ALARM_PULSE ((uint16_t)0x0000U)"
.LASF168:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF2641:
	.string	"EXTI_SWIEV_SWIEV7 BIT(7)"
.LASF4355:
	.string	"parent"
.LASF4382:
	.string	"__ULong"
.LASF184:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF4485:
	.string	"_daylight"
.LASF3593:
	.string	"GD32VF103_RTC_H "
.LASF1979:
	.string	"CAN_TMP0(canx) REG32((canx) + 0x184U)"
.LASF1199:
	.string	"F_RDLCK 1"
.LASF2292:
	.string	"CAN_INT_RFNE0 CAN_INTEN_RFNEIE0"
.LASF2452:
	.string	"DMA_INTC_FTFIFC BIT(1)"
.LASF3839:
	.string	"TIMER_DMAINTEN_UPDEN BIT(8)"
.LASF2338:
	.string	"DAC_CTL_DBOFF1 BIT(17)"
.LASF2606:
	.string	"EXTI_RTEN_RTEN10 BIT(10)"
.LASF780:
	.string	"__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))"
.LASF1692:
	.string	"AHB3_BUS_BASE ((uint32_t)0x60000000U)"
.LASF641:
	.string	"_GCC_SIZE_T "
.LASF2866:
	.string	"GPIO_OCTL_OCTL11 BIT(11)"
.LASF736:
	.string	"__unreachable() __builtin_unreachable()"
.LASF4132:
	.string	"USART_DATA(usartx) REG32((usartx) + (0x00000004U))"
.LASF818:
	.string	"_REENT_INIT_ATEXIT _NULL, _ATEXIT_INIT,"
.LASF2758:
	.string	"OB_WP_8 ((uint32_t)0x00000100U)"
.LASF1965:
	.string	"BKP_FLAG_TAMPER BKP_TPCS_TEF"
.LASF1305:
	.string	"TIOCM_RTS 0x004"
.LASF1550:
	.string	"BIT_ORDER_MSB 1"
.LASF1582:
	.string	"__STDINT_EXP(x) __ ##x ##__"
.LASF4572:
	.string	"DMA1_Channel1_IRQn"
.LASF2421:
	.string	"DMA_CH0PADDR(dmax) REG32((dmax) + 0x10U)"
.LASF661:
	.string	"__need_wchar_t"
.LASF1362:
	.string	"SIOCSIFHWADDR 0x8924"
.LASF2161:
	.string	"CAN_RFIFOMI_FF BIT(2)"
.LASF596:
	.string	"_ELIDABLE_INLINE static __inline__"
.LASF141:
	.string	"__GCC_IEC_559 0"
.LASF3038:
	.string	"GPIO_PIN_12 BIT(12)"
.LASF3350:
	.string	"RCU_APB1RST_UART4RST BIT(20)"
.LASF1963:
	.string	"TAMPER_PIN_ACTIVE_HIGH ((uint16_t)0x0000U)"
.LASF4442:
	.string	"_cvtbuf"
.LASF190:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF2120:
	.string	"CAN_INTEN_RFFIE0 BIT(2)"
.LASF1303:
	.string	"TIOCM_LE 0x001"
.LASF4411:
	.string	"_file"
.LASF2692:
	.string	"FMC_OBKEY_OBKEY BITS(0,31)"
.LASF1000:
	.string	"_IFLNK 0120000"
.LASF1354:
	.string	"SIOCSIFNETMASK 0x891c"
.LASF314:
	.string	"USE_M_TIME 1"
.LASF2408:
	.string	"DAC_TRIANGLE_AMPLITUDE_127 DAC_WAVE_BIT_WIDTH_7"
.LASF3847:
	.string	"TIMER_INTF_CH0IF BIT(1)"
.LASF4172:
	.string	"USART_CTL1_STB BITS(12,13)"
.LASF1300:
	.string	"TIOCPKT_DOSTOP 32"
.LASF614:
	.string	"_STDDEF_H "
.LASF2490:
	.string	"DMA_INT_ERR DMA_CHXCTL_ERRIE"
.LASF3153:
	.string	"I2C_DUADEN_ENABLE ((uint32_t)0x00000001U)"
.LASF515:
	.string	"RT_DEVICE_CTRL_CHAR_STREAM 0x10"
.LASF4035:
	.string	"TIMER_OUTAUTO_DISABLE ((uint16_t)0x0000U)"
.LASF630:
	.string	"_SYS_SIZE_T_H "
.LASF82:
	.string	"__SHRT_WIDTH__ 16"
.LASF4230:
	.string	"CLT2_DENR(regval) (BIT(6) & ((uint32_t)(regval) << 6))"
.LASF495:
	.string	"RT_DEVICE_FLAG_STANDALONE 0x008"
.LASF1518:
	.string	"DEFINE_WAIT(name) DEFINE_WAIT_FUNC(name, __wqueue_default_wake)"
.LASF4486:
	.string	"_tzname"
.LASF1406:
	.string	"HAVE_SIGEVENT 1"
.LASF1124:
	.string	"ESTALE 133"
.LASF1063:
	.string	"EXDEV 18"
.LASF397:
	.string	"RT_UINT8_MAX 0xff"
.LASF2634:
	.string	"EXTI_SWIEV_SWIEV0 BIT(0)"
.LASF844:
	.string	"_REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)"
.LASF1432:
	.string	"SIG_UNBLOCK 2"
.LASF3397:
	.string	"RCU_BDCTL_LXTALSTB BIT(1)"
.LASF506:
	.string	"RT_DEVICE_OFLAG_RDWR 0x003"
.LASF2206:
	.string	"TMDATA0_DB2(regval) (BITS(16,23) & ((uint32_t)(regval) << 16))"
.LASF1484:
	.string	"rt_list_for_each_entry(pos,head,member) for (pos = rt_list_entry((head)->next, typeof(*pos), member); &pos->member != (head); pos = rt_list_entry(pos->member.next, typeof(*pos), member))"
.LASF3635:
	.string	"SPI1 SPI_BASE"
.LASF3599:
	.string	"RTC_DIVH REG32(RTC + 0x10U)"
.LASF734:
	.string	"__result_use_check __attribute__((__warn_unused_result__))"
.LASF634:
	.string	"_SIZE_T_ "
.LASF3542:
	.string	"RCU_PREDV0_DIV16 CFG1_PREDV0(15)"
.LASF1846:
	.string	"ADC_INSERTED_CHANNEL_2 ((uint8_t)0x02U)"
.LASF3739:
	.string	"I2S_MODE_MASTERRX I2SCTL_I2SOPMOD(3)"
.LASF470:
	.string	"RT_THREAD_STAT_MASK 0x0f"
.LASF2837:
	.string	"GPIO_CTL1_MD15 BITS(28, 29)"
.LASF720:
	.string	"__packed __attribute__((__packed__))"
.LASF288:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF971:
	.string	"_USECONDS_T_DECLARED "
.LASF2391:
	.string	"DAC_LFSR_BITS5_0 DAC_WAVE_BIT_WIDTH_6"
.LASF2595:
	.string	"EXTI_EVEN_EVEN18 BIT(18)"
.LASF3954:
	.string	"TIMER_FLAG_CH3O TIMER_INTF_CH3OF"
.LASF3556:
	.string	"RCU_PREDV1_DIV13 CFG1_PREDV1(12)"
.LASF1970:
	.string	"CAN_CTL(canx) REG32((canx) + 0x00U)"
.LASF1641:
	.string	"INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)"
.LASF3254:
	.string	"PMU_FLAG_STANDBY PMU_CS_STBF"
.LASF259:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF2219:
	.string	"GET_RFIFOMDATA0_DB3(regval) GET_BITS((uint32_t)(regval), 24, 31)"
.LASF1756:
	.string	"ADC_CTL0_RWDEN BIT(23)"
.LASF666:
	.string	"_GCC_MAX_ALIGN_T "
.LASF1018:
	.string	"S_IFIFO _IFIFO"
.LASF4320:
	.string	"rt_size_t"
.LASF3986:
	.string	"TIMER_DMACFG_DMATC_2TRANSFER DMACFG_DMATC(1)"
.LASF4016:
	.string	"TIMER_PSC_RELOAD_NOW TIMER_SWEVG_UPG"
.LASF4059:
	.string	"TIMER_OC_MODE_TIMING ((uint16_t)0x0000U)"
.LASF3476:
	.string	"RCU_PLL_MUL3 CFG0_PLLMF(1)"
.LASF990:
	.string	"CLOCK_DISABLED 0"
.LASF765:
	.string	"_Nonnull "
.LASF3926:
	.string	"TIMER_DMATB_DMATB BITS(0,15)"
.LASF4311:
	.string	"rt_uint32_t"
.LASF2965:
	.string	"AFIO_EXTI11_SS BITS(12, 15)"
.LASF1278:
	.string	"TIOCGEXCL 0x80045440"
.LASF2077:
	.string	"CAN_CTL_SWRST BIT(15)"
.LASF4324:
	.string	"rt_list_t"
.LASF4025:
	.string	"TIMER_SP_MODE_REPETITIVE ((uint32_t)0x00000000U)"
.LASF937:
	.string	"FD_CLR(n,p) ((p)->fds_bits[(n)/NFDBITS] &= ~(1L << ((n) % NFDBITS)))"
.LASF1886:
	.string	"ADC_OVERSAMPLING_SHIFT_6B OVSCR_OVSS(6)"
.LASF3425:
	.string	"APB2EN_REG_OFFSET 0x18U"
.LASF1253:
	.string	"TIOCLINUX 0x541C"
.LASF3100:
	.string	"I2C_SADDR0_ADDRESS0 BIT(0)"
.LASF3703:
	.string	"SPI_NSS_HARD ((uint32_t)0x00000000U)"
.LASF2885:
	.string	"GPIO_BOP_BOP14 BIT(14)"
.LASF280:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF3498:
	.string	"RCU_PLL_MUL25 (PLLMF_4 | CFG0_PLLMF(8))"
.LASF4480:
	.string	"_impure_ptr"
.LASF2009:
	.string	"CAN_F6DATA0(canx) REG32((canx) + 0x270U)"
.LASF3558:
	.string	"RCU_PREDV1_DIV15 CFG1_PREDV1(14)"
.LASF1731:
	.string	"ADC_RSQ2(adcx) REG32((adcx) + 0x34U)"
.LASF2659:
	.string	"EXTI_PD_PD6 BIT(6)"
.LASF4270:
	.string	"TMR_REG(offset) _REG32(TMR_CTRL_ADDR, offset)"
.LASF1575:
	.string	"IRC8M_VALUE ((uint32_t)8000000)"
.LASF4519:
	.string	"CLIC_INT_BWEI"
.LASF721:
	.string	"__aligned(x) __attribute__((__aligned__(x)))"
.LASF2650:
	.string	"EXTI_SWIEV_SWIEV16 BIT(16)"
.LASF89:
	.string	"__SIZE_WIDTH__ 32"
.LASF1448:
	.string	"SIGBUS 10"
.LASF4391:
	.string	"__tm_hour"
.LASF4418:
	.string	"_ubuf"
.LASF3168:
	.string	"I2C_SALTSEND_ENABLE I2C_CTL0_SALT"
.LASF422:
	.string	"INIT_EXPORT(fn,level) RT_USED const init_fn_t __rt_init_ ##fn SECTION(\".rti_fn.\"level) = fn"
.LASF2262:
	.string	"CAN_BT_BS2_2TQ ((uint8_t)0x01U)"
.LASF1901:
	.string	"BKP_DATA1 REG16((BKP) + 0x08U)"
.LASF631:
	.string	"_T_SIZE_ "
.LASF3713:
	.string	"SPI_PSC_8 CTL0_PSC(2)"
.LASF4362:
	.string	"open"
.LASF352:
	.string	"RT_USING_FINSH "
.LASF2787:
	.string	"GPIOA (GPIO_BASE + 0x00000000U)"
.LASF4629:
	.string	"USART_FLAG_NERR"
.LASF477:
	.string	"RT_THREAD_CTRL_CLOSE 0x01"
.LASF4638:
	.string	"USART_INT_FLAG_LBD"
.LASF902:
	.string	"_QUAD_LOWWORD 0"
.LASF1660:
	.string	"SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)"
.LASF3930:
	.string	"TIMER_INT_CH2 TIMER_DMAINTEN_CH2IE"
.LASF1679:
	.string	"REG16(addr) (*(volatile uint16_t *)(uint32_t)(addr))"
.LASF4620:
	.string	"RCU_SPI0"
.LASF4400:
	.string	"_dso_handle"
.LASF1241:
	.string	"TIOCSPGRP 0x5410"
.LASF2764:
	.string	"OB_WP_14 ((uint32_t)0x00004000U)"
.LASF889:
	.string	"_INT64_T_DECLARED "
.LASF3887:
	.string	"TIMER_CHCTL1_CH3COMSEN BIT(11)"
.LASF356:
	.string	"FINSH_USING_SYMTAB "
.LASF1629:
	.string	"INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)"
.LASF1816:
	.string	"ADC0_1_EXTTRIG_REGULAR_NONE CTL1_ETSRC(7)"
.LASF2399:
	.string	"DAC_ALIGN_12B_R DATA_ALIGN(0)"
.LASF1725:
	.string	"ADC_IOFF2(adcx) REG32((adcx) + 0x1CU)"
.LASF1357:
	.string	"SIOCGIFMEM 0x891f"
.LASF1418:
	.string	"SIGEV_SIGNAL 2"
.LASF52:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF588:
	.string	"__EXPORT "
.LASF3403:
	.string	"RCU_RSTSCK_IRC40KSTB BIT(1)"
.LASF1900:
	.string	"BKP_DATA0 REG16((BKP) + 0x04U)"
.LASF2304:
	.string	"CAN_INT_SLPW CAN_INTEN_SLPWIE"
.LASF4184:
	.string	"USART_CTL2_CTSIE BIT(10)"
.LASF2277:
	.string	"CAN_RFIF_RFL_MASK ((uint32_t)0x00000003U)"
.LASF2422:
	.string	"DMA_CH0MADDR(dmax) REG32((dmax) + 0x14U)"
.LASF3317:
	.string	"RCU_INT_PLL1STBIE BIT(13)"
.LASF1723:
	.string	"ADC_IOFF0(adcx) REG32((adcx) + 0x14U)"
.LASF2927:
	.string	"GPIO_LOCK_LK8 BIT(8)"
.LASF2717:
	.string	"FMC_BIT_POS(val) ((uint32_t)(val) & 0x1FU)"
.LASF3850:
	.string	"TIMER_INTF_CH3IF BIT(4)"
.LASF3735:
	.string	"I2SCTL_I2SOPMOD(regval) (BITS(8,9) & ((uint32_t)(regval) << 8))"
.LASF1957:
	.string	"BKP_DATA0_9(number) REG16((BKP) + 0x04U + (number) * 0x04U)"
.LASF4117:
	.string	"TIMER_EXT_TRI_PSC_DIV4 SMCFG_ETPSC(2)"
.LASF3330:
	.string	"RCU_APB2RST_PCRST BIT(4)"
.LASF2393:
	.string	"DAC_LFSR_BITS7_0 DAC_WAVE_BIT_WIDTH_8"
.LASF840:
	.string	"_REENT_CHECK_SIGNAL_BUF(ptr) "
.LASF2584:
	.string	"EXTI_EVEN_EVEN7 BIT(7)"
.LASF2446:
	.string	"DMA_CH6MADDR(dmax) REG32((dmax) + 0x8CU)"
.LASF2824:
	.string	"GPIO_CTL1_CTL8 BITS(2, 3)"
.LASF3086:
	.string	"I2C_CTL0_SS BIT(7)"
.LASF1819:
	.string	"ADC0_1_EXTTRIG_INSERTED_T0_CH3 CTL1_ETSIC(1)"
.LASF3849:
	.string	"TIMER_INTF_CH2IF BIT(3)"
.LASF3179:
	.string	"FWDGT FWDGT_BASE"
.LASF2846:
	.string	"GPIO_ISTAT_ISTAT7 BIT(7)"
.LASF3723:
	.string	"I2S_AUDIOSAMPLE_32K ((uint32_t)32000U)"
.LASF866:
	.string	"_Kmax (sizeof (size_t) << 3)"
.LASF3864:
	.string	"TIMER_SWEVG_TRGG BIT(6)"
.LASF222:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF1475:
	.string	"SIG_IGN ((_sig_func_ptr)1)"
.LASF757:
	.string	"__FBSDID(s) struct __hack"
.LASF247:
	.string	"__FLT64X_DIG__ 33"
.LASF3822:
	.string	"TIMER_CTL1_ISO2N BIT(13)"
.LASF3668:
	.string	"SPI_STAT_RBNE BIT(0)"
.LASF1565:
	.string	"RT_SERIAL_TX_DATAQUEUE_SIZE 2048"
.LASF2674:
	.string	"OB OB_BASE"
.LASF2602:
	.string	"EXTI_RTEN_RTEN6 BIT(6)"
.LASF872:
	.string	"__need_NULL "
.LASF1052:
	.string	"ENXIO 6"
.LASF186:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF1180:
	.string	"FEXCL _FEXCL"
.LASF4287:
	.string	"ECLIC_INT_ATTR_TRIG_EDGE 0x02"
.LASF2366:
	.string	"DAC_TRIGGER_T3_TRGO CTL_DTSEL(5)"
.LASF1645:
	.string	"INT_FAST8_MAX (__INT_FAST8_MAX__)"
.LASF3069:
	.string	"I2C0 I2C_BASE"
.LASF490:
	.string	"RT_DEVICE_FLAG_DEACTIVATE 0x000"
.LASF360:
	.string	"FINSH_CMD_SIZE 80"
.LASF879:
	.string	"_SYS__STDINT_H "
.LASF2373:
	.string	"DWBW(regval) (BITS(8,11) & ((uint32_t)(regval) << 8))"
.LASF4313:
	.string	"long long int"
.LASF165:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF1473:
	.string	"_SIGNAL_H_ "
.LASF4209:
	.string	"USART_WM_ADDR CTL0_WM(1)"
.LASF3669:
	.string	"SPI_STAT_TBE BIT(1)"
.LASF1378:
	.string	"SIOCSIFBR 0x8941"
.LASF987:
	.string	"_XLOCALE_H "
.LASF3118:
	.string	"I2C_STAT0_PECERR BIT(12)"
.LASF93:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF2553:
	.string	"EXTI_EVEN REG32(EXTI + 0x04U)"
.LASF3999:
	.string	"TIMER_DMACFG_DMATC_15TRANSFER DMACFG_DMATC(14)"
.LASF997:
	.string	"_IFCHR 0020000"
.LASF1274:
	.string	"TIOCSIG 0x40045436"
.LASF2359:
	.string	"DAC1_DO_DAC1_DO BITS(0,11)"
.LASF3286:
	.string	"RCU_CTL_PLLSTB BIT(25)"
.LASF3643:
	.string	"SPI_TCRC(spix) REG32((spix) + 0x18U)"
.LASF1421:
	.string	"SI_QUEUE 2"
.LASF709:
	.string	"__CONCAT(x,y) __CONCAT1(x,y)"
.LASF1888:
	.string	"ADC_OVERSAMPLING_SHIFT_8B OVSCR_OVSS(8)"
.LASF1134:
	.string	"LIBC_FCNTL_H__ "
.LASF567:
	.string	"_DEFAULT_SOURCE 1"
.LASF2576:
	.string	"EXTI_INTEN_INTEN18 BIT(18)"
.LASF1336:
	.string	"SIOCGPGRP 0x8904"
.LASF2567:
	.string	"EXTI_INTEN_INTEN9 BIT(9)"
.LASF1005:
	.string	"S_ISGID 0002000"
.LASF3837:
	.string	"TIMER_DMAINTEN_TRGIE BIT(6)"
.LASF4460:
	.string	"_gamma_signgam"
.LASF2258:
	.string	"CAN_BT_BS1_14TQ ((uint8_t)0x0DU)"
.LASF3416:
	.string	"RCU_CFG1_PREDV0SEL BIT(16)"
.LASF3520:
	.string	"RCU_CKOUT0SRC_CKPLL2 CFG0_CKOUT0SEL(11)"
.LASF1109:
	.string	"ENETDOWN 115"
.LASF4338:
	.string	"RT_Device_Class_Graphic"
.LASF1703:
	.string	"DAC_BASE (APB1_BUS_BASE + 0x00007400U)"
.LASF623:
	.string	"___int_ptrdiff_t_h "
.LASF3579:
	.string	"RCU_PLL2_MUL15 CFG1_PLL2MF(13)"
.LASF667:
	.string	"__PMT(args) args"
.LASF2060:
	.string	"CAN_TMP(canx,bank) REG32((canx) + 0x184U + ((bank) * 0x10U))"
.LASF2979:
	.string	"GPIO_MODE_AF_OD ((uint8_t)0x1CU)"
.LASF4552:
	.string	"I2C0_EV_IRQn"
.LASF3049:
	.string	"GPIO_TIMER0_PARTIAL_REMAP ((uint32_t)0x00160040U)"
.LASF2975:
	.string	"GPIO_MODE_IPD ((uint8_t)0x28U)"
.LASF701:
	.string	"__CC_SUPPORTS___INLINE 1"
.LASF2577:
	.string	"EXTI_EVEN_EVEN0 BIT(0)"
.LASF590:
	.string	"_READ_WRITE_BUFSIZE_TYPE int"
.LASF2065:
	.string	"CAN_RFIFOMI(canx,bank) REG32((canx) + 0x1B0U + ((bank) * 0x10U))"
.LASF2184:
	.string	"CAN_BIT_POS(val) ((uint32_t)(val) & 0x1FU)"
.LASF2410:
	.string	"DAC_TRIANGLE_AMPLITUDE_511 DAC_WAVE_BIT_WIDTH_9"
.LASF1869:
	.string	"ADC_INT_FLAG_WDE ADC_STAT_WDE"
.LASF1252:
	.string	"TIOCINQ FIONREAD"
.LASF4232:
	.string	"USART_DENR_DISABLE CLT2_DENR(0)"
.LASF2678:
	.string	"FMC_STAT0 REG32((FMC) + 0x0CU)"
.LASF139:
	.string	"__INTPTR_WIDTH__ 32"
.LASF3281:
	.string	"RCU_CTL_HXTALEN BIT(16)"
.LASF1525:
	.string	"BAUD_RATE_2400 2400"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF2325:
	.string	"DACC_R12DH REG32(DAC + 0x20U)"
.LASF2816:
	.string	"GPIO_CTL0_CTL4 BITS(18, 19)"
.LASF1881:
	.string	"ADC_OVERSAMPLING_SHIFT_1B OVSCR_OVSS(1)"
.LASF2481:
	.string	"DMA_INT_FLAG_FTF DMA_INTF_FTFIF"
.LASF1419:
	.string	"SIGEV_THREAD 3"
.LASF1776:
	.string	"ADC_ISQ_ISQN BITS(0,4)"
.LASF4396:
	.string	"__tm_yday"
.LASF3906:
	.string	"TIMER_CHCTL2_CH3EN BIT(12)"
.LASF2476:
	.string	"DMA_CHCNT_RESET_VALUE ((uint32_t)0x00000000U)"
.LASF3618:
	.string	"RTC_CNTH_CNT BITS(0,15)"
.LASF2114:
	.string	"CAN_RFIFO1_RFL1 BITS(0,1)"
.LASF3095:
	.string	"I2C_CTL1_ERRIE BIT(8)"
.LASF2743:
	.string	"OB_SPC_SPC_N ((uint32_t)0x0000FF00U)"
.LASF1967:
	.string	"GD32VF103_CAN_H "
.LASF1446:
	.string	"SIGFPE 8"
.LASF1493:
	.string	"__RTM_H__ "
.LASF2148:
	.string	"CAN_TMI_SFID BITS(21,31)"
.LASF2575:
	.string	"EXTI_INTEN_INTEN17 BIT(17)"
.LASF1427:
	.string	"SIGSTKSZ 8192"
.LASF1554:
	.string	"RT_SERIAL_EVENT_TX_DONE 0x02"
.LASF1984:
	.string	"CAN_TMDATA01(canx) REG32((canx) + 0x198U)"
.LASF1073:
	.string	"ENOSPC 28"
.LASF2405:
	.string	"DAC_TRIANGLE_AMPLITUDE_15 DAC_WAVE_BIT_WIDTH_4"
.LASF1895:
	.string	"ADC_OVERSAMPLING_RATIO_MUL64 OVSCR_OVSR(5)"
.LASF4520:
	.string	"CLIC_INT_PMOVI"
.LASF4344:
	.string	"RT_Device_Class_SDIO"
.LASF3378:
	.string	"RCU_APB1EN_TIMER3EN BIT(2)"
.LASF869:
	.string	"_GLOBAL_REENT _global_impure_ptr"
.LASF3496:
	.string	"RCU_PLL_MUL23 (PLLMF_4 | CFG0_PLLMF(6))"
.LASF145:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF4450:
	.string	"_niobs"
.LASF1021:
	.string	"S_IWUSR 0000200"
.LASF208:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF842:
	.string	"_REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)"
.LASF2400:
	.string	"DAC_ALIGN_12B_L DATA_ALIGN(1)"
.LASF2839:
	.string	"GPIO_ISTAT_ISTAT0 BIT(0)"
.LASF1057:
	.string	"EAGAIN 11"
.LASF4214:
	.string	"USART_STB_1BIT CTL1_STB(0)"
.LASF3357:
	.string	"RCU_APB1RST_DACRST BIT(29)"
.LASF1392:
	.string	"SIOCPROTOPRIVATE 0x89E0"
.LASF3131:
	.string	"I2C_CKCFG_FAST BIT(15)"
.LASF4253:
	.string	"WWDGT_CFG_PSC BITS(7,8)"
.LASF2047:
	.string	"CAN_F16DATA1(canx) REG32((canx) + 0x2C4U)"
.LASF483:
	.string	"RT_IPC_CMD_UNKNOWN 0x00"
.LASF3958:
	.string	"TIMER_DMA_CH2D ((uint16_t)TIMER_DMAINTEN_CH2DEN)"
.LASF4337:
	.string	"RT_Device_Class_Sound"
.LASF4649:
	.string	"USART_INT_CTS"
.LASF2080:
	.string	"CAN_STAT_SLPWS BIT(1)"
.LASF4669:
	.string	"__FUNCTION__"
.LASF548:
	.string	"_WANT_REGISTER_FINI 1"
.LASF4225:
	.string	"USART_CPH_1CK CTL1_CPH(0)"
.LASF353:
	.string	"FINSH_THREAD_NAME \"tshell\""
.LASF272:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF3862:
	.string	"TIMER_SWEVG_CH3G BIT(4)"
.LASF4354:
	.string	"rt_device"
.LASF4359:
	.string	"rx_indicate"
.LASF2194:
	.string	"BT_BAUDPSC(regval) (BITS(0,9) & ((uint32_t)(regval) << 0))"
.LASF3333:
	.string	"RCU_APB2RST_ADC0RST BIT(9)"
.LASF977:
	.string	"PTHREAD_SCOPE_PROCESS 0"
.LASF2688:
	.string	"OB_WP2 REG16((OB) + 0x0CU)"
.LASF2765:
	.string	"OB_WP_15 ((uint32_t)0x00008000U)"
.LASF2855:
	.string	"GPIO_OCTL_OCTL0 BIT(0)"
.LASF3866:
	.string	"TIMER_CHCTL0_CH0MS BITS(0,1)"
.LASF1315:
	.string	"TIOCM_OUT2 0x4000"
.LASF1775:
	.string	"ADC_RSQ0_RL BITS(20,23)"
.LASF1486:
	.string	"rt_list_first_entry(ptr,type,member) rt_list_entry((ptr)->next, type, member)"
.LASF3205:
	.string	"GD32VF103_DBG_H "
.LASF3874:
	.string	"TIMER_CHCTL0_CH1COMCTL BITS(12,14)"
.LASF1156:
	.string	"O_WRONLY 1"
.LASF962:
	.string	"_PID_T_DECLARED "
.LASF1239:
	.string	"TIOCSCTTY 0x540E"
.LASF3963:
	.string	"TIMER_DMAREQUEST_CHANNELEVENT ((uint32_t)0x00000000U)"
.LASF2687:
	.string	"OB_WP1 REG16((OB) + 0x0AU)"
.LASF823:
	.string	"_RAND48_MULT_0 (0xe66d)"
.LASF3284:
	.string	"RCU_CTL_CKMEN BIT(19)"
.LASF1396:
	.string	"DT_DIR 0x02"
.LASF1866:
	.string	"ADC_INT_WDE ADC_STAT_WDE"
.LASF162:
	.string	"__DBL_DIG__ 15"
.LASF1299:
	.string	"TIOCPKT_NOSTOP 16"
.LASF2488:
	.string	"DMA_INT_FTF DMA_CHXCTL_FTFIE"
.LASF3740:
	.string	"I2SCTL_I2SSTD(regval) (BITS(4,5) & ((uint32_t)(regval) << 4))"
.LASF754:
	.string	"__warn_references(sym,msg) __asm__(\".section .gnu.warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\"\"); __asm__(\".previous\")"
.LASF2503:
	.string	"DMA_MEMORY_WIDTH_16BIT CHCTL_MWIDTH(1U)"
.LASF1291:
	.string	"TIOCMIWAIT 0x545C"
.LASF2560:
	.string	"EXTI_INTEN_INTEN2 BIT(2)"
.LASF1528:
	.string	"BAUD_RATE_19200 19200"
.LASF181:
	.string	"__DECIMAL_DIG__ 36"
.LASF99:
	.string	"__INT16_MAX__ 0x7fff"
.LASF3718:
	.string	"SPI_PSC_256 CTL0_PSC(7)"
.LASF4493:
	.string	"func"
.LASF648:
	.string	"_T_WCHAR_ "
.LASF396:
	.string	"RT_FALSE 0"
.LASF473:
	.string	"RT_THREAD_STAT_SIGNAL_WAIT 0x20"
.LASF329:
	.string	"RT_IDEL_HOOK_LIST_SIZE 4"
.LASF3227:
	.string	"DBG_LOW_POWER_DEEPSLEEP DBG_CTL_DSLP_HOLD"
.LASF2365:
	.string	"DAC_TRIGGER_T1_TRGO CTL_DTSEL(4)"
.LASF3495:
	.string	"RCU_PLL_MUL22 (PLLMF_4 | CFG0_PLLMF(5))"
.LASF4353:
	.string	"rt_device_t"
.LASF1206:
	.string	"AT_SYMLINK_FOLLOW 4"
.LASF2172:
	.string	"CAN_RFIFOMDATA1_DB5 BITS(8,15)"
.LASF3400:
	.string	"RCU_BDCTL_RTCEN BIT(15)"
.LASF1542:
	.string	"STOP_BITS_1 0"
.LASF1400:
	.string	"LIBC_VERSION \"newlib 3.0.0\""
.LASF3046:
	.string	"GPIO_USART1_REMAP ((uint32_t)0x00000008U)"
.LASF3057:
	.string	"GPIO_CAN0_PARTIAL_REMAP ((uint32_t)0x001D4000U)"
.LASF3598:
	.string	"RTC_PSCL REG32(RTC + 0x0CU)"
.LASF3805:
	.string	"TIMER_CTL0_UPDIS BIT(1)"
.LASF2827:
	.string	"GPIO_CTL1_MD10 BITS(8, 9)"
.LASF2513:
	.string	"GD32VF103_ECLIC_H "
.LASF3171:
	.string	"I2C_ARP_DISABLE ((uint32_t)0x00000000U)"
.LASF2629:
	.string	"EXTI_FTEN_FTEN14 BIT(14)"
.LASF1944:
	.string	"BKP_TPCS REG16((BKP) + 0x34U)"
.LASF3689:
	.string	"SPI_I2SPSC_DIV BITS(0,7)"
.LASF984:
	.string	"_PTHREAD_COND_INITIALIZER ((pthread_cond_t) 0xFFFFFFFF)"
.LASF643:
	.string	"__size_t "
.LASF1304:
	.string	"TIOCM_DTR 0x002"
.LASF2668:
	.string	"EXTI_PD_PD15 BIT(15)"
.LASF380:
	.string	"RT_DEBUG_THREAD 0"
.LASF3243:
	.string	"PMU_CS_WUPEN BIT(8)"
.LASF525:
	.string	"RT_DEVICE_CTRL_RTC_SET_ALARM 0x13"
.LASF3289:
	.string	"RCU_CTL_PLL2EN BIT(28)"
.LASF3308:
	.string	"RCU_INT_PLLSTBIF BIT(4)"
.LASF665:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF2348:
	.string	"DAC0_R8DH_DAC0_DH BITS(0,7)"
.LASF3728:
	.string	"I2SCTL_DTLEN(regval) (BITS(1,2) & ((uint32_t)(regval) << 1))"
.LASF1190:
	.string	"F_SETOWN 6"
.LASF3817:
	.string	"TIMER_CTL1_ISO0 BIT(8)"
.LASF1921:
	.string	"BKP_DATA21 REG16((BKP) + 0x6CU)"
.LASF1326:
	.string	"N_R3964 9"
.LASF837:
	.string	"_REENT_CHECK_ASCTIME_BUF(ptr) "
.LASF3316:
	.string	"RCU_INT_PLLSTBIE BIT(12)"
.LASF3819:
	.string	"TIMER_CTL1_ISO1 BIT(10)"
.LASF629:
	.string	"_SIZE_T "
.LASF2806:
	.string	"AFIO_PCF1 REG32(AFIO + 0x1CU)"
.LASF3687:
	.string	"SPI_I2SCTL_I2SEN BIT(10)"
.LASF121:
	.string	"__UINT16_C(c) c"
.LASF3052:
	.string	"GPIO_TIMER1_PARTIAL_REMAP1 ((uint32_t)0x00180200U)"
.LASF2611:
	.string	"EXTI_RTEN_RTEN15 BIT(15)"
.LASF4283:
	.string	"ECLIC_INT_IE_OFFSET _AC(0x1001,UL)"
.LASF3135:
	.string	"I2C_BIT_POS(val) ((uint32_t)(val) & 0x1FU)"
.LASF2813:
	.string	"GPIO_CTL0_MD3 BITS(12, 13)"
.LASF527:
	.string	"RT_DEVICE_CTRL_CURSOR_SET_TYPE 0x11"
.LASF3851:
	.string	"TIMER_INTF_CMTIF BIT(5)"
.LASF1416:
	.string	"_SYS_SIGNAL_H "
.LASF740:
	.string	"__null_sentinel __attribute__((__sentinel__))"
.LASF2880:
	.string	"GPIO_BOP_BOP9 BIT(9)"
.LASF369:
	.string	"RT_USING_LIBC "
.LASF3781:
	.string	"TIMER4 (TIMER_BASE + 0x00000C00U)"
.LASF613:
	.string	"__EXP"
.LASF290:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF961:
	.string	"_GID_T_DECLARED "
.LASF674:
	.string	"__attribute_pure__ "
.LASF1983:
	.string	"CAN_TMP1(canx) REG32((canx) + 0x194U)"
.LASF4389:
	.string	"__tm_sec"
.LASF3344:
	.string	"RCU_APB1RST_WWDGTRST BIT(11)"
.LASF746:
	.string	"__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))"
.LASF2788:
	.string	"GPIOB (GPIO_BASE + 0x00000400U)"
.LASF4104:
	.string	"TIMER_SLAVE_MODE_DISABLE SMCFG_SMC(0)"
.LASF2124:
	.string	"CAN_INTEN_RFOIE1 BIT(6)"
.LASF459:
	.string	"RT_TIMER_CTRL_GET_TIME 0x1"
.LASF2107:
	.string	"CAN_TSTAT_TMLS0 BIT(29)"
.LASF718:
	.string	"__unused __attribute__((__unused__))"
.LASF4495:
	.string	"_syscall_table_end"
.LASF1650:
	.string	"INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)"
.LASF4420:
	.string	"_blksize"
.LASF4189:
	.string	"USART_BIT_POS(val) ((uint32_t)(val) & (0x0000001FU))"
.LASF1020:
	.string	"S_IRUSR 0000400"
.LASF2463:
	.string	"DMA_CHXCTL_PWIDTH BITS(8,9)"
.LASF3969:
	.string	"TIMER_DMACFG_DMATA_INTF DMACFG_DMATA(4)"
.LASF1956:
	.string	"BKP_TPCS_TIF BIT(9)"
.LASF1714:
	.string	"GD32VF103_LIBOPT_H "
.LASF3825:
	.string	"TIMER_SMCFG_TRGS BITS(4,6)"
.LASF4522:
	.string	"LVD_IRQn"
.LASF3709:
	.string	"SPI_CK_PL_HIGH_PH_2EDGE (SPI_CTL0_CKPL | SPI_CTL0_CKPH)"
.LASF2912:
	.string	"GPIO_BC_CR9 BIT(9)"
.LASF3913:
	.string	"TIMER_CH1CV_CH1VAL BITS(0,15)"
.LASF612:
	.string	"___int_least64_t_defined 1"
.LASF1337:
	.string	"SIOCGSTAMP 0x8906"
.LASF993:
	.string	"CLOCK_REALTIME (clockid_t)1"
.LASF194:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF959:
	.string	"_DEV_T_DECLARED "
.LASF4543:
	.string	"CAN0_EWMC_IRQn"
.LASF3007:
	.string	"GPIO_EVENT_PIN_13 ((uint8_t)0x0DU)"
.LASF2020:
	.string	"CAN_F17DATA0(canx) REG32((canx) + 0x2C8U)"
.LASF2535:
	.string	"EXMC_SNTCFG_AHLD BITS(4,7)"
.LASF2978:
	.string	"GPIO_MODE_OUT_PP ((uint8_t)0x10U)"
.LASF4259:
	.string	"WWDGT_CFG_PSC_DIV4 CFG_PSC(2)"
.LASF2791:
	.string	"GPIOE (GPIO_BASE + 0x00001000U)"
.LASF4279:
	.string	"ECLIC_CFG_OFFSET 0x0"
.LASF4609:
	.string	"RCU_DAC"
.LASF3915:
	.string	"TIMER_CH3CV_CH3VAL BITS(0,15)"
.LASF4408:
	.string	"_size"
.LASF3952:
	.string	"TIMER_FLAG_CH1O TIMER_INTF_CH1OF"
.LASF2279:
	.string	"CAN_EFID_MASK ((uint32_t)0x1FFFFFFFU)"
.LASF3249:
	.string	"PMU_LVDT_4 CTL_LVDT(4)"
.LASF3914:
	.string	"TIMER_CH2CV_CH2VAL BITS(0,15)"
.LASF4375:
	.string	"wint_t"
.LASF2212:
	.string	"GET_RFIFOMI_EFID(regval) GET_BITS((uint32_t)(regval), 3, 31)"
.LASF2341:
	.string	"DAC_CTL_DWM1 BITS(22,23)"
.LASF1165:
	.string	"FAPPEND _FAPPEND"
.LASF3202:
	.string	"FWDGT_RLD_TIMEOUT ((uint32_t)0x000FFFFFU)"
.LASF3003:
	.string	"GPIO_EVENT_PIN_9 ((uint8_t)0x09U)"
.LASF2754:
	.string	"OB_WP_4 ((uint32_t)0x00000010U)"
.LASF1658:
	.string	"UINTMAX_MAX (__UINTMAX_MAX__)"
.LASF956:
	.string	"_ID_T_DECLARED "
.LASF1849:
	.string	"ADC_CHANNEL_1 ((uint8_t)0x01U)"
.LASF3032:
	.string	"GPIO_PIN_6 BIT(6)"
.LASF1767:
	.string	"ADC_CTL1_SWICST BIT(21)"
.LASF2455:
	.string	"DMA_CHXCTL_CHEN BIT(0)"
.LASF3280:
	.string	"RCU_CTL_IRC8MCALIB BITS(8,15)"
.LASF1732:
	.string	"ADC_ISQ(adcx) REG32((adcx) + 0x38U)"
.LASF4069:
	.string	"TIMER_OC_FAST_ENABLE ((uint16_t)0x0004)"
.LASF271:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF2739:
	.string	"OB_USER_MASK ((uint8_t)0xF0U)"
.LASF1637:
	.string	"UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)"
.LASF982:
	.string	"PTHREAD_CREATE_JOINABLE 1"
.LASF4372:
	.string	"_off_t"
.LASF2835:
	.string	"GPIO_CTL1_MD14 BITS(24, 25)"
.LASF364:
	.string	"FINSH_ARG_MAX 10"
.LASF4275:
	.string	"_AT(T,X) ((T)(X))"
.LASF4312:
	.string	"unsigned int"
.LASF385:
	.string	"RT_DEBUG_CONTEXT_CHECK 1"
.LASF3130:
	.string	"I2C_CKCFG_DTCY BIT(14)"
.LASF1112:
	.string	"EHOSTUNREACH 118"
.LASF3454:
	.string	"RCU_APB1_CKAHB_DIV1 CFG0_APB1PSC(0)"
.LASF1612:
	.string	"__int_least64_t_defined 1"
.LASF3080:
	.string	"I2C_CTL0_I2CEN BIT(0)"
.LASF1958:
	.string	"BKP_DATA10_41(number) REG16((BKP) + 0x40U + ((number)-10U) * 0x04U)"
.LASF4066:
	.string	"TIMER_OC_MODE_PWM1 ((uint16_t)0x0070U)"
.LASF3801:
	.string	"TIMER_CCHP(timerx) REG32((timerx) + 0x44U)"
.LASF377:
	.string	"RT_DEBUG_MODULE 0"
.LASF3943:
	.string	"TIMER_FLAG_UP TIMER_INTF_UPIF"
.LASF2495:
	.string	"DMA_MEMORY_INCREASE_DISABLE ((uint8_t)0x0000U)"
.LASF2873:
	.string	"GPIO_BOP_BOP2 BIT(2)"
.LASF2324:
	.string	"DAC1_R8DH REG32(DAC + 0x1CU)"
.LASF233:
	.string	"__FLT32X_DIG__ 15"
.LASF4116:
	.string	"TIMER_EXT_TRI_PSC_DIV2 SMCFG_ETPSC(1)"
.LASF2347:
	.string	"DAC0_L12DH_DAC0_DH BITS(4,15)"
.LASF2820:
	.string	"GPIO_CTL0_CTL6 BITS(26, 27)"
.LASF2736:
	.string	"OB_STDBY_NRST ((uint8_t)0x04U)"
.LASF2487:
	.string	"DMA_FLAG_ERR DMA_INTF_ERRIF"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
