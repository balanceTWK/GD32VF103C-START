# 1 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
# 1 "/home/tang/workspace/RISC-V/GD32VF103C-START//"
# 1 "<built-in>"
#define __STDC__ 1
#define __STDC_VERSION__ 201710L
#define __STDC_UTF_16__ 1
#define __STDC_UTF_32__ 1
#define __STDC_HOSTED__ 1
#define __GNUC__ 8
#define __GNUC_MINOR__ 2
#define __GNUC_PATCHLEVEL__ 0
#define __VERSION__ "8.2.0"
#define __ATOMIC_RELAXED 0
#define __ATOMIC_SEQ_CST 5
#define __ATOMIC_ACQUIRE 2
#define __ATOMIC_RELEASE 3
#define __ATOMIC_ACQ_REL 4
#define __ATOMIC_CONSUME 1
#define __FINITE_MATH_ONLY__ 0
#define __SIZEOF_INT__ 4
#define __SIZEOF_LONG__ 4
#define __SIZEOF_LONG_LONG__ 8
#define __SIZEOF_SHORT__ 2
#define __SIZEOF_FLOAT__ 4
#define __SIZEOF_DOUBLE__ 8
#define __SIZEOF_LONG_DOUBLE__ 16
#define __SIZEOF_SIZE_T__ 4
#define __CHAR_BIT__ 8
#define __BIGGEST_ALIGNMENT__ 16
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __SIZEOF_POINTER__ 4
#define __SIZE_TYPE__ unsigned int
#define __PTRDIFF_TYPE__ int
#define __WCHAR_TYPE__ int
#define __WINT_TYPE__ unsigned int
#define __INTMAX_TYPE__ long long int
#define __UINTMAX_TYPE__ long long unsigned int
#define __CHAR16_TYPE__ short unsigned int
#define __CHAR32_TYPE__ long unsigned int
#define __SIG_ATOMIC_TYPE__ int
#define __INT8_TYPE__ signed char
#define __INT16_TYPE__ short int
#define __INT32_TYPE__ long int
#define __INT64_TYPE__ long long int
#define __UINT8_TYPE__ unsigned char
#define __UINT16_TYPE__ short unsigned int
#define __UINT32_TYPE__ long unsigned int
#define __UINT64_TYPE__ long long unsigned int
#define __INT_LEAST8_TYPE__ signed char
#define __INT_LEAST16_TYPE__ short int
#define __INT_LEAST32_TYPE__ long int
#define __INT_LEAST64_TYPE__ long long int
#define __UINT_LEAST8_TYPE__ unsigned char
#define __UINT_LEAST16_TYPE__ short unsigned int
#define __UINT_LEAST32_TYPE__ long unsigned int
#define __UINT_LEAST64_TYPE__ long long unsigned int
#define __INT_FAST8_TYPE__ int
#define __INT_FAST16_TYPE__ int
#define __INT_FAST32_TYPE__ int
#define __INT_FAST64_TYPE__ long long int
#define __UINT_FAST8_TYPE__ unsigned int
#define __UINT_FAST16_TYPE__ unsigned int
#define __UINT_FAST32_TYPE__ unsigned int
#define __UINT_FAST64_TYPE__ long long unsigned int
#define __INTPTR_TYPE__ int
#define __UINTPTR_TYPE__ unsigned int
#define __has_include(STR) __has_include__(STR)
#define __has_include_next(STR) __has_include_next__(STR)
#define __GXX_ABI_VERSION 1013
#define __SCHAR_MAX__ 0x7f
#define __SHRT_MAX__ 0x7fff
#define __INT_MAX__ 0x7fffffff
#define __LONG_MAX__ 0x7fffffffL
#define __LONG_LONG_MAX__ 0x7fffffffffffffffLL
#define __WCHAR_MAX__ 0x7fffffff
#define __WCHAR_MIN__ (-__WCHAR_MAX__ - 1)
#define __WINT_MAX__ 0xffffffffU
#define __WINT_MIN__ 0U
#define __PTRDIFF_MAX__ 0x7fffffff
#define __SIZE_MAX__ 0xffffffffU
#define __SCHAR_WIDTH__ 8
#define __SHRT_WIDTH__ 16
#define __INT_WIDTH__ 32
#define __LONG_WIDTH__ 32
#define __LONG_LONG_WIDTH__ 64
#define __WCHAR_WIDTH__ 32
#define __WINT_WIDTH__ 32
#define __PTRDIFF_WIDTH__ 32
#define __SIZE_WIDTH__ 32
#define __INTMAX_MAX__ 0x7fffffffffffffffLL
#define __INTMAX_C(c) c ## LL
#define __UINTMAX_MAX__ 0xffffffffffffffffULL
#define __UINTMAX_C(c) c ## ULL
#define __INTMAX_WIDTH__ 64
#define __SIG_ATOMIC_MAX__ 0x7fffffff
#define __SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
#define __SIG_ATOMIC_WIDTH__ 32
#define __INT8_MAX__ 0x7f
#define __INT16_MAX__ 0x7fff
#define __INT32_MAX__ 0x7fffffffL
#define __INT64_MAX__ 0x7fffffffffffffffLL
#define __UINT8_MAX__ 0xff
#define __UINT16_MAX__ 0xffff
#define __UINT32_MAX__ 0xffffffffUL
#define __UINT64_MAX__ 0xffffffffffffffffULL
#define __INT_LEAST8_MAX__ 0x7f
#define __INT8_C(c) c
#define __INT_LEAST8_WIDTH__ 8
#define __INT_LEAST16_MAX__ 0x7fff
#define __INT16_C(c) c
#define __INT_LEAST16_WIDTH__ 16
#define __INT_LEAST32_MAX__ 0x7fffffffL
#define __INT32_C(c) c ## L
#define __INT_LEAST32_WIDTH__ 32
#define __INT_LEAST64_MAX__ 0x7fffffffffffffffLL
#define __INT64_C(c) c ## LL
#define __INT_LEAST64_WIDTH__ 64
#define __UINT_LEAST8_MAX__ 0xff
#define __UINT8_C(c) c
#define __UINT_LEAST16_MAX__ 0xffff
#define __UINT16_C(c) c
#define __UINT_LEAST32_MAX__ 0xffffffffUL
#define __UINT32_C(c) c ## UL
#define __UINT_LEAST64_MAX__ 0xffffffffffffffffULL
#define __UINT64_C(c) c ## ULL
#define __INT_FAST8_MAX__ 0x7fffffff
#define __INT_FAST8_WIDTH__ 32
#define __INT_FAST16_MAX__ 0x7fffffff
#define __INT_FAST16_WIDTH__ 32
#define __INT_FAST32_MAX__ 0x7fffffff
#define __INT_FAST32_WIDTH__ 32
#define __INT_FAST64_MAX__ 0x7fffffffffffffffLL
#define __INT_FAST64_WIDTH__ 64
#define __UINT_FAST8_MAX__ 0xffffffffU
#define __UINT_FAST16_MAX__ 0xffffffffU
#define __UINT_FAST32_MAX__ 0xffffffffU
#define __UINT_FAST64_MAX__ 0xffffffffffffffffULL
#define __INTPTR_MAX__ 0x7fffffff
#define __INTPTR_WIDTH__ 32
#define __UINTPTR_MAX__ 0xffffffffU
#define __GCC_IEC_559 0
#define __GCC_IEC_559_COMPLEX 0
#define __FLT_EVAL_METHOD__ 0
#define __FLT_EVAL_METHOD_TS_18661_3__ 0
#define __DEC_EVAL_METHOD__ 2
#define __FLT_RADIX__ 2
#define __FLT_MANT_DIG__ 24
#define __FLT_DIG__ 6
#define __FLT_MIN_EXP__ (-125)
#define __FLT_MIN_10_EXP__ (-37)
#define __FLT_MAX_EXP__ 128
#define __FLT_MAX_10_EXP__ 38
#define __FLT_DECIMAL_DIG__ 9
#define __FLT_MAX__ 3.40282346638528859811704183484516925e+38F
#define __FLT_MIN__ 1.17549435082228750796873653722224568e-38F
#define __FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F
#define __FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F
#define __FLT_HAS_DENORM__ 1
#define __FLT_HAS_INFINITY__ 1
#define __FLT_HAS_QUIET_NAN__ 1
#define __DBL_MANT_DIG__ 53
#define __DBL_DIG__ 15
#define __DBL_MIN_EXP__ (-1021)
#define __DBL_MIN_10_EXP__ (-307)
#define __DBL_MAX_EXP__ 1024
#define __DBL_MAX_10_EXP__ 308
#define __DBL_DECIMAL_DIG__ 17
#define __DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)
#define __DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)
#define __DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)
#define __DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)
#define __DBL_HAS_DENORM__ 1
#define __DBL_HAS_INFINITY__ 1
#define __DBL_HAS_QUIET_NAN__ 1
#define __LDBL_MANT_DIG__ 113
#define __LDBL_DIG__ 33
#define __LDBL_MIN_EXP__ (-16381)
#define __LDBL_MIN_10_EXP__ (-4931)
#define __LDBL_MAX_EXP__ 16384
#define __LDBL_MAX_10_EXP__ 4932
#define __DECIMAL_DIG__ 36
#define __LDBL_DECIMAL_DIG__ 36
#define __LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L
#define __LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L
#define __LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L
#define __LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L
#define __LDBL_HAS_DENORM__ 1
#define __LDBL_HAS_INFINITY__ 1
#define __LDBL_HAS_QUIET_NAN__ 1
#define __FLT32_MANT_DIG__ 24
#define __FLT32_DIG__ 6
#define __FLT32_MIN_EXP__ (-125)
#define __FLT32_MIN_10_EXP__ (-37)
#define __FLT32_MAX_EXP__ 128
#define __FLT32_MAX_10_EXP__ 38
#define __FLT32_DECIMAL_DIG__ 9
#define __FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32
#define __FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32
#define __FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32
#define __FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32
#define __FLT32_HAS_DENORM__ 1
#define __FLT32_HAS_INFINITY__ 1
#define __FLT32_HAS_QUIET_NAN__ 1
#define __FLT64_MANT_DIG__ 53
#define __FLT64_DIG__ 15
#define __FLT64_MIN_EXP__ (-1021)
#define __FLT64_MIN_10_EXP__ (-307)
#define __FLT64_MAX_EXP__ 1024
#define __FLT64_MAX_10_EXP__ 308
#define __FLT64_DECIMAL_DIG__ 17
#define __FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64
#define __FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64
#define __FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64
#define __FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64
#define __FLT64_HAS_DENORM__ 1
#define __FLT64_HAS_INFINITY__ 1
#define __FLT64_HAS_QUIET_NAN__ 1
#define __FLT128_MANT_DIG__ 113
#define __FLT128_DIG__ 33
#define __FLT128_MIN_EXP__ (-16381)
#define __FLT128_MIN_10_EXP__ (-4931)
#define __FLT128_MAX_EXP__ 16384
#define __FLT128_MAX_10_EXP__ 4932
#define __FLT128_DECIMAL_DIG__ 36
#define __FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128
#define __FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128
#define __FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128
#define __FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128
#define __FLT128_HAS_DENORM__ 1
#define __FLT128_HAS_INFINITY__ 1
#define __FLT128_HAS_QUIET_NAN__ 1
#define __FLT32X_MANT_DIG__ 53
#define __FLT32X_DIG__ 15
#define __FLT32X_MIN_EXP__ (-1021)
#define __FLT32X_MIN_10_EXP__ (-307)
#define __FLT32X_MAX_EXP__ 1024
#define __FLT32X_MAX_10_EXP__ 308
#define __FLT32X_DECIMAL_DIG__ 17
#define __FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x
#define __FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x
#define __FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x
#define __FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x
#define __FLT32X_HAS_DENORM__ 1
#define __FLT32X_HAS_INFINITY__ 1
#define __FLT32X_HAS_QUIET_NAN__ 1
#define __FLT64X_MANT_DIG__ 113
#define __FLT64X_DIG__ 33
#define __FLT64X_MIN_EXP__ (-16381)
#define __FLT64X_MIN_10_EXP__ (-4931)
#define __FLT64X_MAX_EXP__ 16384
#define __FLT64X_MAX_10_EXP__ 4932
#define __FLT64X_DECIMAL_DIG__ 36
#define __FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x
#define __FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x
#define __FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x
#define __FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x
#define __FLT64X_HAS_DENORM__ 1
#define __FLT64X_HAS_INFINITY__ 1
#define __FLT64X_HAS_QUIET_NAN__ 1
#define __DEC32_MANT_DIG__ 7
#define __DEC32_MIN_EXP__ (-94)
#define __DEC32_MAX_EXP__ 97
#define __DEC32_MIN__ 1E-95DF
#define __DEC32_MAX__ 9.999999E96DF
#define __DEC32_EPSILON__ 1E-6DF
#define __DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
#define __DEC64_MANT_DIG__ 16
#define __DEC64_MIN_EXP__ (-382)
#define __DEC64_MAX_EXP__ 385
#define __DEC64_MIN__ 1E-383DD
#define __DEC64_MAX__ 9.999999999999999E384DD
#define __DEC64_EPSILON__ 1E-15DD
#define __DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
#define __DEC128_MANT_DIG__ 34
#define __DEC128_MIN_EXP__ (-6142)
#define __DEC128_MAX_EXP__ 6145
#define __DEC128_MIN__ 1E-6143DL
#define __DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
#define __DEC128_EPSILON__ 1E-33DL
#define __DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
#define __REGISTER_PREFIX__ 
#define __USER_LABEL_PREFIX__ 
#define __GNUC_STDC_INLINE__ 1
#define __NO_INLINE__ 1
#define __CHAR_UNSIGNED__ 1
#define __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
#define __GCC_ATOMIC_BOOL_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR16_T_LOCK_FREE 1
#define __GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
#define __GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
#define __GCC_ATOMIC_SHORT_LOCK_FREE 1
#define __GCC_ATOMIC_INT_LOCK_FREE 2
#define __GCC_ATOMIC_LONG_LOCK_FREE 2
#define __GCC_ATOMIC_LLONG_LOCK_FREE 1
#define __GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
#define __GCC_ATOMIC_POINTER_LOCK_FREE 2
#define __GCC_HAVE_DWARF2_CFI_ASM 1
#define __PRAGMA_REDEFINE_EXTNAME 1
#define __SIZEOF_WCHAR_T__ 4
#define __SIZEOF_WINT_T__ 4
#define __SIZEOF_PTRDIFF_T__ 4
#define __riscv 1
#define __riscv_compressed 1
#define __riscv_atomic 1
#define __riscv_mul 1
#define __riscv_div 1
#define __riscv_muldiv 1
#define __riscv_xlen 32
#define __riscv_float_abi_soft 1
#define __riscv_cmodel_medany 1
#define __ELF__ 1
# 1 "<command-line>"
#define USE_PLIC 1
#define USE_M_TIME 1
#define NO_INIT 1
#define HAVE_CCONFIG_H 1
#define RT_USING_NEWLIB 1
# 1 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
# 34 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_timer.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_timer.h"
#define GD32VF103_TIMER_H 

# 1 "libraries/GD32VF103_standard_peripheral/gd32vf103.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/gd32vf103.h"
#define GD32VF103_H 
# 52 "libraries/GD32VF103_standard_peripheral/gd32vf103.h"
#define __I volatile const

#define __O volatile
#define __IO volatile


#define HXTAL_VALUE ((uint32_t)8000000)



#define HXTAL_STARTUP_TIMEOUT ((uint16_t)0xFFFF)




#define IRC8M_VALUE ((uint32_t)8000000)




#define IRC8M_STARTUP_TIMEOUT ((uint16_t)0x0500)




#define IRC40K_VALUE ((uint32_t)40000)




#define LXTAL_VALUE ((uint32_t)32768)



typedef enum IRQn
{
 CLIC_INT_RESERVED = 0,
 CLIC_INT_SFT = 3,
 CLIC_INT_TMR = 7,
 CLIC_INT_BWEI = 17,
 CLIC_INT_PMOVI = 18,


    WWDGT_IRQn = 19,
    LVD_IRQn = 20,
    TAMPER_IRQn = 21,
    RTC_IRQn = 22,
    FMC_IRQn = 23,
    RCU_CTC_IRQn = 24,
    EXTI0_IRQn = 25,
    EXTI1_IRQn = 26,
    EXTI2_IRQn = 27,
    EXTI3_IRQn = 28,
    EXTI4_IRQn = 29,
    DMA0_Channel0_IRQn = 30,
    DMA0_Channel1_IRQn = 31,
    DMA0_Channel2_IRQn = 32,
    DMA0_Channel3_IRQn = 33,
    DMA0_Channel4_IRQn = 34,
    DMA0_Channel5_IRQn = 35,
    DMA0_Channel6_IRQn = 36,
    ADC0_1_IRQn = 37,
    CAN0_TX_IRQn = 38,
    CAN0_RX0_IRQn = 39,
    CAN0_RX1_IRQn = 40,
    CAN0_EWMC_IRQn = 41,
    EXTI5_9_IRQn = 42,
    TIMER0_BRK_IRQn = 43,
    TIMER0_UP_IRQn = 44,
    TIMER0_TRG_CMT_IRQn = 45,
    TIMER0_Channel_IRQn = 46,
    TIMER1_IRQn = 47,
    TIMER2_IRQn = 48,
    TIMER3_IRQn = 49,
    I2C0_EV_IRQn = 50,
    I2C0_ER_IRQn = 51,
    I2C1_EV_IRQn = 52,
    I2C1_ER_IRQn = 53,
    SPI0_IRQn = 54,
    SPI1_IRQn = 55,
    USART0_IRQn = 56,
    USART1_IRQn = 57,
    USART2_IRQn = 58,
    EXTI10_15_IRQn = 59,
    RTC_ALARM_IRQn = 60,
    USBFS_WKUP_IRQn = 61,

    EXMC_IRQn = 67,

    TIMER4_IRQn = 69,
    SPI2_IRQn = 70,
    UART3_IRQn = 71,
    UART4_IRQn = 72,
    TIMER5_IRQn = 73,
    TIMER6_IRQn = 74,
    DMA1_Channel0_IRQn = 75,
    DMA1_Channel1_IRQn = 76,
    DMA1_Channel2_IRQn = 77,
    DMA1_Channel3_IRQn = 78,
    DMA1_Channel4_IRQn = 79,

    CAN1_TX_IRQn = 82,
    CAN1_RX0_IRQn = 83,
    CAN1_RX1_IRQn = 84,
    CAN1_EWMC_IRQn = 85,
    USBFS_IRQn = 86,

 ECLIC_NUM_INTERRUPTS
} IRQn_Type;


# 1 "libraries/GD32VF103_standard_peripheral/system_gd32vf103.h" 1
# 39 "libraries/GD32VF103_standard_peripheral/system_gd32vf103.h"
#define SYSTEM_GD32VF103_H 





# 1 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 1 3
# 10 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define _STDINT_H 

# 1 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 1 3





#define _MACHINE__DEFAULT_TYPES_H 

# 1 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 1 3
# 22 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#define _SYS_FEATURES_H 





# 1 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/_newlib_version.h" 1 3



#define _NEWLIB_VERSION_H__ 1

#define _NEWLIB_VERSION "3.0.0"
#define __NEWLIB__ 3
#define __NEWLIB_MINOR__ 0
#define __NEWLIB_PATCHLEVEL__ 0
# 29 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 2 3




#define __GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))






#define __GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
# 131 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#undef _DEFAULT_SOURCE
#define _DEFAULT_SOURCE 1



#undef _POSIX_SOURCE
#define _POSIX_SOURCE 1
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 200809L
# 158 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#undef _ATFILE_SOURCE
#define _ATFILE_SOURCE 1
# 247 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#define __ATFILE_VISIBLE 1





#define __BSD_VISIBLE 1







#define __GNU_VISIBLE 0




#define __ISO_C_VISIBLE 2011
# 277 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#define __LARGEFILE_VISIBLE 0



#define __MISC_VISIBLE 1





#define __POSIX_VISIBLE 200809
# 303 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#define __SVID_VISIBLE 1
# 319 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#define __XSI_VISIBLE 0
# 330 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/features.h" 3
#define __SSP_FORTIFY_LEVEL 0
# 9 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 2 3






#define __EXP(x) __ ##x ##__
# 26 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
#define __have_longlong64 1






#define __have_long32 1








# 41 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;



#define ___int8_t_defined 1







typedef short int __int16_t;

typedef short unsigned int __uint16_t;



#define ___int16_t_defined 1
# 77 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;



#define ___int32_t_defined 1
# 103 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;



#define ___int64_t_defined 1
# 134 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;



#define ___int_least8_t_defined 1
# 160 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;



#define ___int_least16_t_defined 1
# 182 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;



#define ___int_least32_t_defined 1
# 200 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;



#define ___int_least64_t_defined 1







typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 244 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/machine/_default_types.h" 3
#undef __EXP
# 13 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 2 3
# 1 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 1 3
# 10 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define _SYS__INTSUP_H 





#define __STDINT_EXP(x) __ ##x ##__
# 35 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
       
       
       
       
       
       
       
#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef __int20
#undef long
#define signed +0
#define unsigned +0
#define char +0
#define short +1
#define __int20 +2
#define int +2
#define long +4
# 64 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define _INTPTR_EQ_INT 






#define _INT32_EQ_LONG 







#define __INT8 "hh"
# 90 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __INT16 "h"
# 101 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __INT32 "l"
# 110 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __INT64 "ll"






#define __FAST8 
# 126 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __FAST16 






#define __FAST32 
# 144 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __FAST64 "ll"



#define __LEAST8 "hh"
# 159 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __LEAST16 "h"
# 170 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __LEAST32 "l"
# 179 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#define __LEAST64 "ll"

#undef signed
#undef unsigned
#undef char
#undef short
#undef int
#undef long
       
       
       
       
       
# 191 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_intsup.h" 3
#undef __int20
       
       
# 14 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 2 3
# 1 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_stdint.h" 1 3
# 10 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_stdint.h" 3
#define _SYS__STDINT_H 
# 20 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;
#define _INT8_T_DECLARED 


typedef __uint8_t uint8_t ;
#define _UINT8_T_DECLARED 

#define __int8_t_defined 1




typedef __int16_t int16_t ;
#define _INT16_T_DECLARED 


typedef __uint16_t uint16_t ;
#define _UINT16_T_DECLARED 

#define __int16_t_defined 1




typedef __int32_t int32_t ;
#define _INT32_T_DECLARED 


typedef __uint32_t uint32_t ;
#define _UINT32_T_DECLARED 

#define __int32_t_defined 1




typedef __int64_t int64_t ;
#define _INT64_T_DECLARED 


typedef __uint64_t uint64_t ;
#define _UINT64_T_DECLARED 

#define __int64_t_defined 1



typedef __intmax_t intmax_t;
#define _INTMAX_T_DECLARED 



typedef __uintmax_t uintmax_t;
#define _UINTMAX_T_DECLARED 



typedef __intptr_t intptr_t;
#define _INTPTR_T_DECLARED 



typedef __uintptr_t uintptr_t;
#define _UINTPTR_T_DECLARED 
# 15 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 2 3






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;
#define __int_least8_t_defined 1



typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;
#define __int_least16_t_defined 1



typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;
#define __int_least32_t_defined 1



typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
#define __int_least64_t_defined 1
# 51 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
#define __int_fast8_t_defined 1







  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
#define __int_fast16_t_defined 1







  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
#define __int_fast32_t_defined 1







  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
#define __int_fast64_t_defined 1
# 128 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INTPTR_MIN (-__INTPTR_MAX__ - 1)
#define INTPTR_MAX (__INTPTR_MAX__)
#define UINTPTR_MAX (__UINTPTR_MAX__)
# 152 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT8_MIN (-__INT8_MAX__ - 1)
#define INT8_MAX (__INT8_MAX__)
#define UINT8_MAX (__UINT8_MAX__)







#define INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)
#define INT_LEAST8_MAX (__INT_LEAST8_MAX__)
#define UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)
# 174 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT16_MIN (-__INT16_MAX__ - 1)
#define INT16_MAX (__INT16_MAX__)
#define UINT16_MAX (__UINT16_MAX__)







#define INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)
#define INT_LEAST16_MAX (__INT_LEAST16_MAX__)
#define UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)
# 196 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT32_MIN (-__INT32_MAX__ - 1)
#define INT32_MAX (__INT32_MAX__)
#define UINT32_MAX (__UINT32_MAX__)
# 212 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)
#define INT_LEAST32_MAX (__INT_LEAST32_MAX__)
#define UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)
# 230 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT64_MIN (-__INT64_MAX__ - 1)
#define INT64_MAX (__INT64_MAX__)
#define UINT64_MAX (__UINT64_MAX__)
# 246 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)
#define INT_LEAST64_MAX (__INT_LEAST64_MAX__)
#define UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)
# 262 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)
#define INT_FAST8_MAX (__INT_FAST8_MAX__)
#define UINT_FAST8_MAX (__UINT_FAST8_MAX__)
# 278 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)
#define INT_FAST16_MAX (__INT_FAST16_MAX__)
#define UINT_FAST16_MAX (__UINT_FAST16_MAX__)
# 294 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)
#define INT_FAST32_MAX (__INT_FAST32_MAX__)
#define UINT_FAST32_MAX (__UINT_FAST32_MAX__)
# 310 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)
#define INT_FAST64_MAX (__INT_FAST64_MAX__)
#define UINT_FAST64_MAX (__UINT_FAST64_MAX__)
# 326 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INTMAX_MAX (__INTMAX_MAX__)
#define INTMAX_MIN (-INTMAX_MAX - 1)







#define UINTMAX_MAX (__UINTMAX_MAX__)







#define SIZE_MAX (__SIZE_MAX__)





#define SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)
#define SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))



#define PTRDIFF_MAX (__PTRDIFF_MAX__)



#define PTRDIFF_MIN (-PTRDIFF_MAX - 1)




#define WCHAR_MIN (__WCHAR_MIN__)
# 374 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define WCHAR_MAX (__WCHAR_MAX__)
# 384 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define WINT_MAX (__WINT_MAX__)




#define WINT_MIN (__WINT_MIN__)






#define INT8_C(x) __INT8_C(x)
#define UINT8_C(x) __UINT8_C(x)
# 408 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT16_C(x) __INT16_C(x)
#define UINT16_C(x) __UINT16_C(x)
# 420 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT32_C(x) __INT32_C(x)
#define UINT32_C(x) __UINT32_C(x)
# 433 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INT64_C(x) __INT64_C(x)
#define UINT64_C(x) __UINT64_C(x)
# 449 "/home/tang/toolchains/riscv-none-gcc/8.2.0-2.2-20190521-0004/riscv-none-embed/include/stdint.h" 3
#define INTMAX_C(x) __INTMAX_C(x)
#define UINTMAX_C(x) __UINTMAX_C(x)
# 46 "libraries/GD32VF103_standard_peripheral/system_gd32vf103.h" 2



# 48 "libraries/GD32VF103_standard_peripheral/system_gd32vf103.h"
extern uint32_t SystemCoreClock;



extern void SystemInit(void);

extern void SystemCoreClockUpdate(void);
# 164 "libraries/GD32VF103_standard_peripheral/gd32vf103.h" 2



typedef enum {DISABLE = 0, ENABLE = !DISABLE} EventStatus, ControlStatus;
typedef enum {FALSE = 0, TRUE = !FALSE} bool;
typedef enum {RESET = 0, SET = 1,MAX = 0X7FFFFFFF} FlagStatus;
typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrStatus;


#define REG32(addr) (*(volatile uint32_t *)(uint32_t)(addr))
#define REG16(addr) (*(volatile uint16_t *)(uint32_t)(addr))
#define REG8(addr) (*(volatile uint8_t *)(uint32_t)(addr))
#define BIT(x) ((uint32_t)((uint32_t)0x01U<<(x)))
#define BITS(start,end) ((0xFFFFFFFFUL << (start)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(end))))
#define GET_BITS(regval,start,end) (((regval) & BITS((start),(end))) >> (start))


#define FLASH_BASE ((uint32_t)0x08000000U)
#define SRAM_BASE ((uint32_t)0x20000000U)
#define OB_BASE ((uint32_t)0x1FFFF800U)
#define DBG_BASE ((uint32_t)0xE0042000U)
#define EXMC_BASE ((uint32_t)0xA0000000U)


#define APB1_BUS_BASE ((uint32_t)0x40000000U)
#define APB2_BUS_BASE ((uint32_t)0x40010000U)
#define AHB1_BUS_BASE ((uint32_t)0x40018000U)
#define AHB3_BUS_BASE ((uint32_t)0x60000000U)


#define TIMER_BASE (APB1_BUS_BASE + 0x00000000U)
#define RTC_BASE (APB1_BUS_BASE + 0x00002800U)
#define WWDGT_BASE (APB1_BUS_BASE + 0x00002C00U)
#define FWDGT_BASE (APB1_BUS_BASE + 0x00003000U)
#define SPI_BASE (APB1_BUS_BASE + 0x00003800U)
#define USART_BASE (APB1_BUS_BASE + 0x00004400U)
#define I2C_BASE (APB1_BUS_BASE + 0x00005400U)
#define CAN_BASE (APB1_BUS_BASE + 0x00006400U)
#define BKP_BASE (APB1_BUS_BASE + 0x00006C00U)
#define PMU_BASE (APB1_BUS_BASE + 0x00007000U)
#define DAC_BASE (APB1_BUS_BASE + 0x00007400U)


#define AFIO_BASE (APB2_BUS_BASE + 0x00000000U)
#define EXTI_BASE (APB2_BUS_BASE + 0x00000400U)
#define GPIO_BASE (APB2_BUS_BASE + 0x00000800U)
#define ADC_BASE (APB2_BUS_BASE + 0x00002400U)


#define DMA_BASE (AHB1_BUS_BASE + 0x00008000U)
#define RCU_BASE (AHB1_BUS_BASE + 0x00009000U)
#define FMC_BASE (AHB1_BUS_BASE + 0x0000A000U)
#define CRC_BASE (AHB1_BUS_BASE + 0x0000B000U)
#define USBFS_BASE (AHB1_BUS_BASE + 0x0FFE8000U)



#define USE_STDPERIPH_DRIVER 


# 1 "board/gd32vf103_libopt.h" 1
# 36 "board/gd32vf103_libopt.h"
#define GD32VF103_LIBOPT_H 

# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_adc.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_adc.h"
#define GD32VF103_ADC_H 

# 1 "libraries/GD32VF103_standard_peripheral/gd32vf103.h" 1
# 39 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_adc.h" 2


#define ADC0 ADC_BASE
#define ADC1 (ADC_BASE + 0x400U)


#define ADC_STAT(adcx) REG32((adcx) + 0x00U)
#define ADC_CTL0(adcx) REG32((adcx) + 0x04U)
#define ADC_CTL1(adcx) REG32((adcx) + 0x08U)
#define ADC_SAMPT0(adcx) REG32((adcx) + 0x0CU)
#define ADC_SAMPT1(adcx) REG32((adcx) + 0x10U)
#define ADC_IOFF0(adcx) REG32((adcx) + 0x14U)
#define ADC_IOFF1(adcx) REG32((adcx) + 0x18U)
#define ADC_IOFF2(adcx) REG32((adcx) + 0x1CU)
#define ADC_IOFF3(adcx) REG32((adcx) + 0x20U)
#define ADC_WDHT(adcx) REG32((adcx) + 0x24U)
#define ADC_WDLT(adcx) REG32((adcx) + 0x28U)
#define ADC_RSQ0(adcx) REG32((adcx) + 0x2CU)
#define ADC_RSQ1(adcx) REG32((adcx) + 0x30U)
#define ADC_RSQ2(adcx) REG32((adcx) + 0x34U)
#define ADC_ISQ(adcx) REG32((adcx) + 0x38U)
#define ADC_IDATA0(adcx) REG32((adcx) + 0x3CU)
#define ADC_IDATA1(adcx) REG32((adcx) + 0x40U)
#define ADC_IDATA2(adcx) REG32((adcx) + 0x44U)
#define ADC_IDATA3(adcx) REG32((adcx) + 0x48U)
#define ADC_RDATA(adcx) REG32((adcx) + 0x4CU)
#define ADC_OVSCR(adcx) REG32((adcx) + 0x80U)



#define ADC_STAT_WDE BIT(0)
#define ADC_STAT_EOC BIT(1)
#define ADC_STAT_EOIC BIT(2)
#define ADC_STAT_STIC BIT(3)
#define ADC_STAT_STRC BIT(4)


#define ADC_CTL0_WDCHSEL BITS(0,4)
#define ADC_CTL0_EOCIE BIT(5)
#define ADC_CTL0_WDEIE BIT(6)
#define ADC_CTL0_EOICIE BIT(7)
#define ADC_CTL0_SM BIT(8)
#define ADC_CTL0_WDSC BIT(9)
#define ADC_CTL0_ICA BIT(10)
#define ADC_CTL0_DISRC BIT(11)
#define ADC_CTL0_DISIC BIT(12)
#define ADC_CTL0_DISNUM BITS(13,15)
#define ADC_CTL0_SYNCM BITS(16,19)
#define ADC_CTL0_IWDEN BIT(22)
#define ADC_CTL0_RWDEN BIT(23)


#define ADC_CTL1_ADCON BIT(0)
#define ADC_CTL1_CTN BIT(1)
#define ADC_CTL1_CLB BIT(2)
#define ADC_CTL1_RSTCLB BIT(3)
#define ADC_CTL1_DMA BIT(8)
#define ADC_CTL1_DAL BIT(11)
#define ADC_CTL1_ETSIC BITS(12,14)
#define ADC_CTL1_ETEIC BIT(15)
#define ADC_CTL1_ETSRC BITS(17,19)
#define ADC_CTL1_ETERC BIT(20)
#define ADC_CTL1_SWICST BIT(21)
#define ADC_CTL1_SWRCST BIT(22)
#define ADC_CTL1_TSVREN BIT(23)


#define ADC_SAMPTX_SPTN BITS(0,2)


#define ADC_IOFFX_IOFF BITS(0,11)


#define ADC_WDHT_WDHT BITS(0,11)


#define ADC_WDLT_WDLT BITS(0,11)


#define ADC_RSQX_RSQN BITS(0,4)
#define ADC_RSQ0_RL BITS(20,23)


#define ADC_ISQ_ISQN BITS(0,4)
#define ADC_ISQ_IL BITS(20,21)


#define ADC_IDATAX_IDATAN BITS(0,15)


#define ADC_RDATA_RDATA BITS(0,15)
#define ADC_RDATA_ADC1RDTR BITS(16,31)


#define ADC_OVSCR_OVSEN BIT(0)
#define ADC_OVSCR_OVSR BITS(2,4)
#define ADC_OVSCR_OVSS BITS(5,8)
#define ADC_OVSCR_TOVS BIT(9)
#define ADC_OVSCR_DRES BITS(12,13)



#define ADC_FLAG_WDE ADC_STAT_WDE
#define ADC_FLAG_EOC ADC_STAT_EOC
#define ADC_FLAG_EOIC ADC_STAT_EOIC
#define ADC_FLAG_STIC ADC_STAT_STIC
#define ADC_FLAG_STRC ADC_STAT_STRC


#define CTL0_DISNUM(regval) (BITS(13,15) & ((uint32_t)(regval) << 13))


#define ADC_SCAN_MODE ADC_CTL0_SM


#define ADC_INSERTED_CHANNEL_AUTO ADC_CTL0_ICA


#define CTL0_SYNCM(regval) (BITS(16,19) & ((uint32_t)(regval) << 16))
#define ADC_MODE_FREE CTL0_SYNCM(0)
#define ADC_DAUL_REGULAL_PARALLEL_INSERTED_PARALLEL CTL0_SYNCM(1)
#define ADC_DAUL_REGULAL_PARALLEL_INSERTED_ROTATION CTL0_SYNCM(2)
#define ADC_DAUL_INSERTED_PARALLEL_REGULAL_FOLLOWUP_FAST CTL0_SYNCM(3)
#define ADC_DAUL_INSERTED_PARALLEL_REGULAL_FOLLOWUP_SLOW CTL0_SYNCM(4)
#define ADC_DAUL_INSERTED_PARALLEL CTL0_SYNCM(5)
#define ADC_DAUL_REGULAL_PARALLEL CTL0_SYNCM(6)
#define ADC_DAUL_REGULAL_FOLLOWUP_FAST CTL0_SYNCM(7)
#define ADC_DAUL_REGULAL_FOLLOWUP_SLOW CTL0_SYNCM(8)
#define ADC_DAUL_INSERTED_TRIGGER_ROTATION CTL0_SYNCM(9)


#define ADC_DATAALIGN_RIGHT ((uint32_t)0x00000000U)
#define ADC_DATAALIGN_LEFT ADC_CTL1_DAL


#define ADC_CONTINUOUS_MODE ADC_CTL1_CTN


#define CTL1_ETSRC(regval) (BITS(17,19) & ((uint32_t)(regval) << 17))

#define ADC0_1_EXTTRIG_REGULAR_T0_CH0 CTL1_ETSRC(0)
#define ADC0_1_EXTTRIG_REGULAR_T0_CH1 CTL1_ETSRC(1)
#define ADC0_1_EXTTRIG_REGULAR_T0_CH2 CTL1_ETSRC(2)
#define ADC0_1_EXTTRIG_REGULAR_T1_CH1 CTL1_ETSRC(3)
#define ADC0_1_EXTTRIG_REGULAR_T2_TRGO CTL1_ETSRC(4)
#define ADC0_1_EXTTRIG_REGULAR_T3_CH3 CTL1_ETSRC(5)
#define ADC0_1_EXTTRIG_REGULAR_EXTI_11 CTL1_ETSRC(6)
#define ADC0_1_EXTTRIG_REGULAR_NONE CTL1_ETSRC(7)


#define CTL1_ETSIC(regval) (BITS(12,14) & ((uint32_t)(regval) << 12))

#define ADC0_1_EXTTRIG_INSERTED_T0_TRGO CTL1_ETSIC(0)
#define ADC0_1_EXTTRIG_INSERTED_T0_CH3 CTL1_ETSIC(1)
#define ADC0_1_EXTTRIG_INSERTED_T1_TRGO CTL1_ETSIC(2)
#define ADC0_1_EXTTRIG_INSERTED_T1_CH0 CTL1_ETSIC(3)
#define ADC0_1_EXTTRIG_INSERTED_T2_CH3 CTL1_ETSIC(4)
#define ADC0_1_EXTTRIG_INSERTED_T3_TRGO CTL1_ETSIC(5)
#define ADC0_1_EXTTRIG_INSERTED_EXTI_15 CTL1_ETSIC(6)
#define ADC0_1_EXTTRIG_INSERTED_NONE CTL1_ETSIC(7)


#define SAMPTX_SPT(regval) (BITS(0,2) & ((uint32_t)(regval) << 0))
#define ADC_SAMPLETIME_1POINT5 SAMPTX_SPT(0)
#define ADC_SAMPLETIME_7POINT5 SAMPTX_SPT(1)
#define ADC_SAMPLETIME_13POINT5 SAMPTX_SPT(2)
#define ADC_SAMPLETIME_28POINT5 SAMPTX_SPT(3)
#define ADC_SAMPLETIME_41POINT5 SAMPTX_SPT(4)
#define ADC_SAMPLETIME_55POINT5 SAMPTX_SPT(5)
#define ADC_SAMPLETIME_71POINT5 SAMPTX_SPT(6)
#define ADC_SAMPLETIME_239POINT5 SAMPTX_SPT(7)


#define IOFFX_IOFF(regval) (BITS(0,11) & ((uint32_t)(regval) << 0))


#define WDHT_WDHT(regval) (BITS(0,11) & ((uint32_t)(regval) << 0))


#define WDLT_WDLT(regval) (BITS(0,11) & ((uint32_t)(regval) << 0))


#define RSQ0_RL(regval) (BITS(20,23) & ((uint32_t)(regval) << 20))


#define ISQ_IL(regval) (BITS(20,21) & ((uint32_t)(regval) << 20))


#define ADC_REGULAR_CHANNEL ((uint8_t)0x01U)
#define ADC_INSERTED_CHANNEL ((uint8_t)0x02U)
#define ADC_REGULAR_INSERTED_CHANNEL ((uint8_t)0x03U)

#define ADC_CHANNEL_DISCON_DISABLE ((uint8_t)0x04U)


#define ADC_INSERTED_CHANNEL_0 ((uint8_t)0x00U)
#define ADC_INSERTED_CHANNEL_1 ((uint8_t)0x01U)
#define ADC_INSERTED_CHANNEL_2 ((uint8_t)0x02U)
#define ADC_INSERTED_CHANNEL_3 ((uint8_t)0x03U)


#define ADC_CHANNEL_0 ((uint8_t)0x00U)
#define ADC_CHANNEL_1 ((uint8_t)0x01U)
#define ADC_CHANNEL_2 ((uint8_t)0x02U)
#define ADC_CHANNEL_3 ((uint8_t)0x03U)
#define ADC_CHANNEL_4 ((uint8_t)0x04U)
#define ADC_CHANNEL_5 ((uint8_t)0x05U)
#define ADC_CHANNEL_6 ((uint8_t)0x06U)
#define ADC_CHANNEL_7 ((uint8_t)0x07U)
#define ADC_CHANNEL_8 ((uint8_t)0x08U)
#define ADC_CHANNEL_9 ((uint8_t)0x09U)
#define ADC_CHANNEL_10 ((uint8_t)0x0AU)
#define ADC_CHANNEL_11 ((uint8_t)0x0BU)
#define ADC_CHANNEL_12 ((uint8_t)0x0CU)
#define ADC_CHANNEL_13 ((uint8_t)0x0DU)
#define ADC_CHANNEL_14 ((uint8_t)0x0EU)
#define ADC_CHANNEL_15 ((uint8_t)0x0FU)
#define ADC_CHANNEL_16 ((uint8_t)0x10U)
#define ADC_CHANNEL_17 ((uint8_t)0x11U)


#define ADC_INT_WDE ADC_STAT_WDE
#define ADC_INT_EOC ADC_STAT_EOC
#define ADC_INT_EOIC ADC_STAT_EOIC


#define ADC_INT_FLAG_WDE ADC_STAT_WDE
#define ADC_INT_FLAG_EOC ADC_STAT_EOC
#define ADC_INT_FLAG_EOIC ADC_STAT_EOIC


#define OVSCR_DRES(regval) (BITS(12,13) & ((uint32_t)(regval) << 12))
#define ADC_RESOLUTION_12B OVSCR_DRES(0)
#define ADC_RESOLUTION_10B OVSCR_DRES(1)
#define ADC_RESOLUTION_8B OVSCR_DRES(2)
#define ADC_RESOLUTION_6B OVSCR_DRES(3)


#define ADC_OVERSAMPLING_ALL_CONVERT 0
#define ADC_OVERSAMPLING_ONE_CONVERT 1


#define OVSCR_OVSS(regval) (BITS(5,8) & ((uint32_t)(regval) << 5))
#define ADC_OVERSAMPLING_SHIFT_NONE OVSCR_OVSS(0)
#define ADC_OVERSAMPLING_SHIFT_1B OVSCR_OVSS(1)
#define ADC_OVERSAMPLING_SHIFT_2B OVSCR_OVSS(2)
#define ADC_OVERSAMPLING_SHIFT_3B OVSCR_OVSS(3)
#define ADC_OVERSAMPLING_SHIFT_4B OVSCR_OVSS(4)
#define ADC_OVERSAMPLING_SHIFT_5B OVSCR_OVSS(5)
#define ADC_OVERSAMPLING_SHIFT_6B OVSCR_OVSS(6)
#define ADC_OVERSAMPLING_SHIFT_7B OVSCR_OVSS(7)
#define ADC_OVERSAMPLING_SHIFT_8B OVSCR_OVSS(8)


#define OVSCR_OVSR(regval) (BITS(2,4) & ((uint32_t)(regval) << 2))
#define ADC_OVERSAMPLING_RATIO_MUL2 OVSCR_OVSR(0)
#define ADC_OVERSAMPLING_RATIO_MUL4 OVSCR_OVSR(1)
#define ADC_OVERSAMPLING_RATIO_MUL8 OVSCR_OVSR(2)
#define ADC_OVERSAMPLING_RATIO_MUL16 OVSCR_OVSR(3)
#define ADC_OVERSAMPLING_RATIO_MUL32 OVSCR_OVSR(4)
#define ADC_OVERSAMPLING_RATIO_MUL64 OVSCR_OVSR(5)
#define ADC_OVERSAMPLING_RATIO_MUL128 OVSCR_OVSR(6)
#define ADC_OVERSAMPLING_RATIO_MUL256 OVSCR_OVSR(7)




void adc_deinit(uint32_t adc_periph);

void adc_mode_config(uint32_t mode);

void adc_special_function_config(uint32_t adc_periph, uint32_t function, ControlStatus newvalue);

void adc_data_alignment_config(uint32_t adc_periph, uint32_t data_alignment);

void adc_enable(uint32_t adc_periph);

void adc_disable(uint32_t adc_periph);

void adc_calibration_enable(uint32_t adc_periph);

void adc_tempsensor_vrefint_enable(void);

void adc_tempsensor_vrefint_disable(void);



void adc_dma_mode_enable(uint32_t adc_periph);

void adc_dma_mode_disable(uint32_t adc_periph);



void adc_discontinuous_mode_config(uint32_t adc_periph, uint8_t adc_channel_group, uint8_t length);


void adc_channel_length_config(uint32_t adc_periph, uint8_t adc_channel_group, uint32_t length);

void adc_regular_channel_config(uint32_t adc_periph, uint8_t rank, uint8_t adc_channel, uint32_t sample_time);

void adc_inserted_channel_config(uint32_t adc_periph, uint8_t rank, uint8_t adc_channel, uint32_t sample_time);

void adc_inserted_channel_offset_config(uint32_t adc_periph, uint8_t inserted_channel, uint16_t offset);


void adc_external_trigger_source_config(uint32_t adc_periph, uint8_t adc_channel_group, uint32_t external_trigger_source);

void adc_external_trigger_config(uint32_t adc_periph, uint8_t adc_channel_group, ControlStatus newvalue);

void adc_software_trigger_enable(uint32_t adc_periph, uint8_t adc_channel_group);



uint16_t adc_regular_data_read(uint32_t adc_periph);

uint16_t adc_inserted_data_read(uint32_t adc_periph, uint8_t inserted_channel);

uint32_t adc_sync_mode_convert_value_read(void);



void adc_watchdog_single_channel_enable(uint32_t adc_periph, uint8_t adc_channel);

void adc_watchdog_group_channel_enable(uint32_t adc_periph, uint8_t adc_channel_group);

void adc_watchdog_disable(uint32_t adc_periph);

void adc_watchdog_threshold_config(uint32_t adc_periph, uint16_t low_threshold, uint16_t high_threshold);



FlagStatus adc_flag_get(uint32_t adc_periph, uint32_t adc_flag);

void adc_flag_clear(uint32_t adc_periph, uint32_t adc_flag);

FlagStatus adc_regular_software_startconv_flag_get(uint32_t adc_periph);

FlagStatus adc_inserted_software_startconv_flag_get(uint32_t adc_periph);

FlagStatus adc_interrupt_flag_get(uint32_t adc_periph, uint32_t adc_interrupt);

void adc_interrupt_flag_clear(uint32_t adc_periph, uint32_t adc_interrupt);

void adc_interrupt_enable(uint32_t adc_periph, uint32_t adc_interrupt);

void adc_interrupt_disable(uint32_t adc_periph, uint32_t adc_interrupt);



void adc_resolution_config(uint32_t adc_periph, uint32_t resolution);

void adc_oversample_mode_config(uint32_t adc_periph, uint8_t mode, uint16_t shift, uint8_t ratio);

void adc_oversample_mode_enable(uint32_t adc_periph);

void adc_oversample_mode_disable(uint32_t adc_periph);
# 39 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_bkp.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_bkp.h"
#define GD32VF103_BKP_H 




#define BKP BKP_BASE


#define BKP_DATA0 REG16((BKP) + 0x04U)
#define BKP_DATA1 REG16((BKP) + 0x08U)
#define BKP_DATA2 REG16((BKP) + 0x0CU)
#define BKP_DATA3 REG16((BKP) + 0x10U)
#define BKP_DATA4 REG16((BKP) + 0x14U)
#define BKP_DATA5 REG16((BKP) + 0x18U)
#define BKP_DATA6 REG16((BKP) + 0x1CU)
#define BKP_DATA7 REG16((BKP) + 0x20U)
#define BKP_DATA8 REG16((BKP) + 0x24U)
#define BKP_DATA9 REG16((BKP) + 0x28U)
#define BKP_DATA10 REG16((BKP) + 0x40U)
#define BKP_DATA11 REG16((BKP) + 0x44U)
#define BKP_DATA12 REG16((BKP) + 0x48U)
#define BKP_DATA13 REG16((BKP) + 0x4CU)
#define BKP_DATA14 REG16((BKP) + 0x50U)
#define BKP_DATA15 REG16((BKP) + 0x54U)
#define BKP_DATA16 REG16((BKP) + 0x58U)
#define BKP_DATA17 REG16((BKP) + 0x5CU)
#define BKP_DATA18 REG16((BKP) + 0x60U)
#define BKP_DATA19 REG16((BKP) + 0x64U)
#define BKP_DATA20 REG16((BKP) + 0x68U)
#define BKP_DATA21 REG16((BKP) + 0x6CU)
#define BKP_DATA22 REG16((BKP) + 0x70U)
#define BKP_DATA23 REG16((BKP) + 0x74U)
#define BKP_DATA24 REG16((BKP) + 0x78U)
#define BKP_DATA25 REG16((BKP) + 0x7CU)
#define BKP_DATA26 REG16((BKP) + 0x80U)
#define BKP_DATA27 REG16((BKP) + 0x84U)
#define BKP_DATA28 REG16((BKP) + 0x88U)
#define BKP_DATA29 REG16((BKP) + 0x8CU)
#define BKP_DATA30 REG16((BKP) + 0x90U)
#define BKP_DATA31 REG16((BKP) + 0x94U)
#define BKP_DATA32 REG16((BKP) + 0x98U)
#define BKP_DATA33 REG16((BKP) + 0x9CU)
#define BKP_DATA34 REG16((BKP) + 0xA0U)
#define BKP_DATA35 REG16((BKP) + 0xA4U)
#define BKP_DATA36 REG16((BKP) + 0xA8U)
#define BKP_DATA37 REG16((BKP) + 0xACU)
#define BKP_DATA38 REG16((BKP) + 0xB0U)
#define BKP_DATA39 REG16((BKP) + 0xB4U)
#define BKP_DATA40 REG16((BKP) + 0xB8U)
#define BKP_DATA41 REG16((BKP) + 0xBCU)
#define BKP_OCTL REG16((BKP) + 0x2CU)
#define BKP_TPCTL REG16((BKP) + 0x30U)
#define BKP_TPCS REG16((BKP) + 0x34U)



#define BKP_DATA BITS(0,15)


#define BKP_OCTL_RCCV BITS(0,6)
#define BKP_OCTL_COEN BIT(7)
#define BKP_OCTL_ASOEN BIT(8)
#define BKP_OCTL_ROSEL BIT(9)


#define BKP_TPCTL_TPEN BIT(0)
#define BKP_TPCTL_TPAL BIT(1)


#define BKP_TPCS_TER BIT(0)
#define BKP_TPCS_TIR BIT(1)
#define BKP_TPCS_TPIE BIT(2)
#define BKP_TPCS_TEF BIT(8)
#define BKP_TPCS_TIF BIT(9)



typedef enum
{
    BKP_DATA_0 = 1,
    BKP_DATA_1,
    BKP_DATA_2,
    BKP_DATA_3,
    BKP_DATA_4,
    BKP_DATA_5,
    BKP_DATA_6,
    BKP_DATA_7,
    BKP_DATA_8,
    BKP_DATA_9,
    BKP_DATA_10,
    BKP_DATA_11,
    BKP_DATA_12,
    BKP_DATA_13,
    BKP_DATA_14,
    BKP_DATA_15,
    BKP_DATA_16,
    BKP_DATA_17,
    BKP_DATA_18,
    BKP_DATA_19,
    BKP_DATA_20,
    BKP_DATA_21,
    BKP_DATA_22,
    BKP_DATA_23,
    BKP_DATA_24,
    BKP_DATA_25,
    BKP_DATA_26,
    BKP_DATA_27,
    BKP_DATA_28,
    BKP_DATA_29,
    BKP_DATA_30,
    BKP_DATA_31,
    BKP_DATA_32,
    BKP_DATA_33,
    BKP_DATA_34,
    BKP_DATA_35,
    BKP_DATA_36,
    BKP_DATA_37,
    BKP_DATA_38,
    BKP_DATA_39,
    BKP_DATA_40,
    BKP_DATA_41,
}bkp_data_register_enum;


#define BKP_DATA0_9(number) REG16((BKP) + 0x04U + (number) * 0x04U)
#define BKP_DATA10_41(number) REG16((BKP) + 0x40U + ((number)-10U) * 0x04U)


#define BKP_DATA_GET(regval) GET_BITS((uint32_t)(regval), 0, 15)


#define OCTL_RCCV(regval) (BITS(0,6) & ((uint32_t)(regval) << 0))


#define RTC_OUTPUT_ALARM_PULSE ((uint16_t)0x0000U)
#define RTC_OUTPUT_SECOND_PULSE ((uint16_t)0x0200U)


#define TAMPER_PIN_ACTIVE_HIGH ((uint16_t)0x0000U)
#define TAMPER_PIN_ACTIVE_LOW ((uint16_t)0x0002U)


#define BKP_FLAG_TAMPER BKP_TPCS_TEF


#define BKP_INT_FLAG_TAMPER BKP_TPCS_TIF



void bkp_deinit(void);

void bkp_data_write(bkp_data_register_enum register_number, uint16_t data);

uint16_t bkp_data_read(bkp_data_register_enum register_number);



void bkp_rtc_calibration_output_enable(void);

void bkp_rtc_calibration_output_disable(void);

void bkp_rtc_signal_output_enable(void);

void bkp_rtc_signal_output_disable(void);

void bkp_rtc_output_select(uint16_t outputsel);

void bkp_rtc_calibration_value_set(uint8_t value);



void bkp_tamper_detection_enable(void);

void bkp_tamper_detection_disable(void);

void bkp_tamper_active_level_set(uint16_t level);



void bkp_interrupt_enable(void);

void bkp_interrupt_disable(void);

FlagStatus bkp_flag_get(void);

void bkp_flag_clear(void);

FlagStatus bkp_interrupt_flag_get(void);

void bkp_interrupt_flag_clear(void);
# 40 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_can.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_can.h"
#define GD32VF103_CAN_H 




#define CAN0 CAN_BASE
#define CAN1 (CAN0 + 0x00000400U)


#define CAN_CTL(canx) REG32((canx) + 0x00U)
#define CAN_STAT(canx) REG32((canx) + 0x04U)
#define CAN_TSTAT(canx) REG32((canx) + 0x08U)
#define CAN_RFIFO0(canx) REG32((canx) + 0x0CU)
#define CAN_RFIFO1(canx) REG32((canx) + 0x10U)
#define CAN_INTEN(canx) REG32((canx) + 0x14U)
#define CAN_ERR(canx) REG32((canx) + 0x18U)
#define CAN_BT(canx) REG32((canx) + 0x1CU)
#define CAN_TMI0(canx) REG32((canx) + 0x180U)
#define CAN_TMP0(canx) REG32((canx) + 0x184U)
#define CAN_TMDATA00(canx) REG32((canx) + 0x188U)
#define CAN_TMDATA10(canx) REG32((canx) + 0x18CU)
#define CAN_TMI1(canx) REG32((canx) + 0x190U)
#define CAN_TMP1(canx) REG32((canx) + 0x194U)
#define CAN_TMDATA01(canx) REG32((canx) + 0x198U)
#define CAN_TMDATA11(canx) REG32((canx) + 0x19CU)
#define CAN_TMI2(canx) REG32((canx) + 0x1A0U)
#define CAN_TMP2(canx) REG32((canx) + 0x1A4U)
#define CAN_TMDATA02(canx) REG32((canx) + 0x1A8U)
#define CAN_TMDATA12(canx) REG32((canx) + 0x1ACU)
#define CAN_RFIFOMI0(canx) REG32((canx) + 0x1B0U)
#define CAN_RFIFOMP0(canx) REG32((canx) + 0x1B4U)
#define CAN_RFIFOMDATA00(canx) REG32((canx) + 0x1B8U)
#define CAN_RFIFOMDATA10(canx) REG32((canx) + 0x1BCU)
#define CAN_RFIFOMI1(canx) REG32((canx) + 0x1C0U)
#define CAN_RFIFOMP1(canx) REG32((canx) + 0x1C4U)
#define CAN_RFIFOMDATA01(canx) REG32((canx) + 0x1C8U)
#define CAN_RFIFOMDATA11(canx) REG32((canx) + 0x1CCU)
#define CAN_FCTL(canx) REG32((canx) + 0x200U)
#define CAN_FMCFG(canx) REG32((canx) + 0x204U)
#define CAN_FSCFG(canx) REG32((canx) + 0x20CU)
#define CAN_FAFIFO(canx) REG32((canx) + 0x214U)
#define CAN_FW(canx) REG32((canx) + 0x21CU)
#define CAN_F0DATA0(canx) REG32((canx) + 0x240U)
#define CAN_F1DATA0(canx) REG32((canx) + 0x248U)
#define CAN_F2DATA0(canx) REG32((canx) + 0x250U)
#define CAN_F3DATA0(canx) REG32((canx) + 0x258U)
#define CAN_F4DATA0(canx) REG32((canx) + 0x260U)
#define CAN_F5DATA0(canx) REG32((canx) + 0x268U)
#define CAN_F6DATA0(canx) REG32((canx) + 0x270U)
#define CAN_F7DATA0(canx) REG32((canx) + 0x278U)
#define CAN_F8DATA0(canx) REG32((canx) + 0x280U)
#define CAN_F9DATA0(canx) REG32((canx) + 0x288U)
#define CAN_F10DATA0(canx) REG32((canx) + 0x290U)
#define CAN_F11DATA0(canx) REG32((canx) + 0x298U)
#define CAN_F12DATA0(canx) REG32((canx) + 0x2A0U)
#define CAN_F13DATA0(canx) REG32((canx) + 0x2A8U)
#define CAN_F14DATA0(canx) REG32((canx) + 0x2B0U)
#define CAN_F15DATA0(canx) REG32((canx) + 0x2B8U)
#define CAN_F16DATA0(canx) REG32((canx) + 0x2C0U)
#define CAN_F17DATA0(canx) REG32((canx) + 0x2C8U)
#define CAN_F18DATA0(canx) REG32((canx) + 0x2D0U)
#define CAN_F19DATA0(canx) REG32((canx) + 0x2D8U)
#define CAN_F20DATA0(canx) REG32((canx) + 0x2E0U)
#define CAN_F21DATA0(canx) REG32((canx) + 0x2E8U)
#define CAN_F22DATA0(canx) REG32((canx) + 0x2F0U)
#define CAN_F23DATA0(canx) REG32((canx) + 0x3F8U)
#define CAN_F24DATA0(canx) REG32((canx) + 0x300U)
#define CAN_F25DATA0(canx) REG32((canx) + 0x308U)
#define CAN_F26DATA0(canx) REG32((canx) + 0x310U)
#define CAN_F27DATA0(canx) REG32((canx) + 0x318U)
#define CAN_F0DATA1(canx) REG32((canx) + 0x244U)
#define CAN_F1DATA1(canx) REG32((canx) + 0x24CU)
#define CAN_F2DATA1(canx) REG32((canx) + 0x254U)
#define CAN_F3DATA1(canx) REG32((canx) + 0x25CU)
#define CAN_F4DATA1(canx) REG32((canx) + 0x264U)
#define CAN_F5DATA1(canx) REG32((canx) + 0x26CU)
#define CAN_F6DATA1(canx) REG32((canx) + 0x274U)
#define CAN_F7DATA1(canx) REG32((canx) + 0x27CU)
#define CAN_F8DATA1(canx) REG32((canx) + 0x284U)
#define CAN_F9DATA1(canx) REG32((canx) + 0x28CU)
#define CAN_F10DATA1(canx) REG32((canx) + 0x294U)
#define CAN_F11DATA1(canx) REG32((canx) + 0x29CU)
#define CAN_F12DATA1(canx) REG32((canx) + 0x2A4U)
#define CAN_F13DATA1(canx) REG32((canx) + 0x2ACU)
#define CAN_F14DATA1(canx) REG32((canx) + 0x2B4U)
#define CAN_F15DATA1(canx) REG32((canx) + 0x2BCU)
#define CAN_F16DATA1(canx) REG32((canx) + 0x2C4U)
#define CAN_F17DATA1(canx) REG32((canx) + 0x24CU)
#define CAN_F18DATA1(canx) REG32((canx) + 0x2D4U)
#define CAN_F19DATA1(canx) REG32((canx) + 0x2DCU)
#define CAN_F20DATA1(canx) REG32((canx) + 0x2E4U)
#define CAN_F21DATA1(canx) REG32((canx) + 0x2ECU)
#define CAN_F22DATA1(canx) REG32((canx) + 0x2F4U)
#define CAN_F23DATA1(canx) REG32((canx) + 0x2FCU)
#define CAN_F24DATA1(canx) REG32((canx) + 0x304U)
#define CAN_F25DATA1(canx) REG32((canx) + 0x30CU)
#define CAN_F26DATA1(canx) REG32((canx) + 0x314U)
#define CAN_F27DATA1(canx) REG32((canx) + 0x31CU)


#define CAN_TMI(canx,bank) REG32((canx) + 0x180U + ((bank) * 0x10U))
#define CAN_TMP(canx,bank) REG32((canx) + 0x184U + ((bank) * 0x10U))
#define CAN_TMDATA0(canx,bank) REG32((canx) + 0x188U + ((bank) * 0x10U))
#define CAN_TMDATA1(canx,bank) REG32((canx) + 0x18CU + ((bank) * 0x10U))


#define CAN_FDATA0(canx,bank) REG32((canx) + 0x240U + ((bank) * 0x8U) + 0x0U)
#define CAN_FDATA1(canx,bank) REG32((canx) + 0x240U + ((bank) * 0x8U) + 0x4U)


#define CAN_RFIFOMI(canx,bank) REG32((canx) + 0x1B0U + ((bank) * 0x10U))
#define CAN_RFIFOMP(canx,bank) REG32((canx) + 0x1B4U + ((bank) * 0x10U))
#define CAN_RFIFOMDATA0(canx,bank) REG32((canx) + 0x1B8U + ((bank) * 0x10U))
#define CAN_RFIFOMDATA1(canx,bank) REG32((canx) + 0x1BCU + ((bank) * 0x10U))



#define CAN_CTL_IWMOD BIT(0)
#define CAN_CTL_SLPWMOD BIT(1)
#define CAN_CTL_TFO BIT(2)
#define CAN_CTL_RFOD BIT(3)
#define CAN_CTL_ARD BIT(4)
#define CAN_CTL_AWU BIT(5)
#define CAN_CTL_ABOR BIT(6)
#define CAN_CTL_TTC BIT(7)
#define CAN_CTL_SWRST BIT(15)
#define CAN_CTL_DFZ BIT(16)


#define CAN_STAT_IWS BIT(0)
#define CAN_STAT_SLPWS BIT(1)
#define CAN_STAT_ERRIF BIT(2)
#define CAN_STAT_WUIF BIT(3)
#define CAN_STAT_SLPIF BIT(4)
#define CAN_STAT_TS BIT(8)
#define CAN_STAT_RS BIT(9)
#define CAN_STAT_LASTRX BIT(10)
#define CAN_STAT_RXL BIT(11)


#define CAN_TSTAT_MTF0 BIT(0)
#define CAN_TSTAT_MTFNERR0 BIT(1)
#define CAN_TSTAT_MAL0 BIT(2)
#define CAN_TSTAT_MTE0 BIT(3)
#define CAN_TSTAT_MST0 BIT(7)
#define CAN_TSTAT_MTF1 BIT(8)
#define CAN_TSTAT_MTFNERR1 BIT(9)
#define CAN_TSTAT_MAL1 BIT(10)
#define CAN_TSTAT_MTE1 BIT(11)
#define CAN_TSTAT_MST1 BIT(15)
#define CAN_TSTAT_MTF2 BIT(16)
#define CAN_TSTAT_MTFNERR2 BIT(17)
#define CAN_TSTAT_MAL2 BIT(18)
#define CAN_TSTAT_MTE2 BIT(19)
#define CAN_TSTAT_MST2 BIT(23)
#define CAN_TSTAT_NUM BITS(24,25)
#define CAN_TSTAT_TME0 BIT(26)
#define CAN_TSTAT_TME1 BIT(27)
#define CAN_TSTAT_TME2 BIT(28)
#define CAN_TSTAT_TMLS0 BIT(29)
#define CAN_TSTAT_TMLS1 BIT(30)
#define CAN_TSTAT_TMLS2 BIT(31)


#define CAN_RFIFO0_RFL0 BITS(0,1)
#define CAN_RFIFO0_RFF0 BIT(3)
#define CAN_RFIFO0_RFO0 BIT(4)
#define CAN_RFIFO0_RFD0 BIT(5)


#define CAN_RFIFO1_RFL1 BITS(0,1)
#define CAN_RFIFO1_RFF1 BIT(3)
#define CAN_RFIFO1_RFO1 BIT(4)
#define CAN_RFIFO1_RFD1 BIT(5)


#define CAN_INTEN_TMEIE BIT(0)
#define CAN_INTEN_RFNEIE0 BIT(1)
#define CAN_INTEN_RFFIE0 BIT(2)
#define CAN_INTEN_RFOIE0 BIT(3)
#define CAN_INTEN_RFNEIE1 BIT(4)
#define CAN_INTEN_RFFIE1 BIT(5)
#define CAN_INTEN_RFOIE1 BIT(6)
#define CAN_INTEN_WERRIE BIT(8)
#define CAN_INTEN_PERRIE BIT(9)
#define CAN_INTEN_BOIE BIT(10)
#define CAN_INTEN_ERRNIE BIT(11)
#define CAN_INTEN_ERRIE BIT(15)
#define CAN_INTEN_WIE BIT(16)
#define CAN_INTEN_SLPWIE BIT(17)


#define CAN_ERR_WERR BIT(0)
#define CAN_ERR_PERR BIT(1)
#define CAN_ERR_BOERR BIT(2)
#define CAN_ERR_ERRN BITS(4,6)
#define CAN_ERR_TECNT BITS(16,23)
#define CAN_ERR_RECNT BITS(24,31)


#define CAN_BT_BAUDPSC BITS(0,9)
#define CAN_BT_BS1 BITS(16,19)
#define CAN_BT_BS2 BITS(20,22)
#define CAN_BT_SJW BITS(24,25)
#define CAN_BT_LCMOD BIT(30)
#define CAN_BT_SCMOD BIT(31)


#define CAN_TMI_TEN BIT(0)
#define CAN_TMI_FT BIT(1)
#define CAN_TMI_FF BIT(2)
#define CAN_TMI_EFID BITS(3,31)
#define CAN_TMI_SFID BITS(21,31)


#define CAN_TMP_DLENC BITS(0,3)
#define CAN_TMP_TSEN BIT(8)
#define CAN_TMP_TS BITS(16,31)


#define CAN_TMDATA0_DB0 BITS(0,7)
#define CAN_TMDATA0_DB1 BITS(8,15)
#define CAN_TMDATA0_DB2 BITS(16,23)
#define CAN_TMDATA0_DB3 BITS(24,31)


#define CAN_TMDATA1_DB4 BITS(0,7)
#define CAN_TMDATA1_DB5 BITS(8,15)
#define CAN_TMDATA1_DB6 BITS(16,23)
#define CAN_TMDATA1_DB7 BITS(24,31)


#define CAN_RFIFOMI_FT BIT(1)
#define CAN_RFIFOMI_FF BIT(2)
#define CAN_RFIFOMI_EFID BITS(3,31)
#define CAN_RFIFOMI_SFID BITS(21,31)


#define CAN_RFIFOMP_DLENC BITS(0,3)
#define CAN_RFIFOMP_FI BITS(8,15)
#define CAN_RFIFOMP_TS BITS(16,31)


#define CAN_RFIFOMDATA0_DB0 BITS(0,7)
#define CAN_RFIFOMDATA0_DB1 BITS(8,15)
#define CAN_RFIFOMDATA0_DB2 BITS(16,23)
#define CAN_RFIFOMDATA0_DB3 BITS(24,31)


#define CAN_RFIFOMDATA1_DB4 BITS(0,7)
#define CAN_RFIFOMDATA1_DB5 BITS(8,15)
#define CAN_RFIFOMDATA1_DB6 BITS(16,23)
#define CAN_RFIFOMDATA1_DB7 BITS(24,31)


#define CAN_FCTL_FLD BIT(0)
#define CAN_FCTL_HBC1F BITS(8,13)


#define CAN_FMCFG_FMOD(regval) BIT(regval)


#define CAN_FSCFG_FS(regval) BIT(regval)


#define CAN_FAFIFOR_FAF(regval) BIT(regval)


#define CAN_FW_FW(regval) BIT(regval)


#define CAN_FDATA_FD(regval) BIT(regval)



#define CAN_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))
#define CAN_REG_VAL(canx,offset) (REG32((canx) + ((uint32_t)(offset) >> 6)))
#define CAN_BIT_POS(val) ((uint32_t)(val) & 0x1FU)

#define CAN_REGIDX_BITS(regidx,bitpos0,bitpos1) (((uint32_t)(regidx) << 12) | ((uint32_t)(bitpos0) << 6) | (uint32_t)(bitpos1))
#define CAN_REG_VALS(canx,offset) (REG32((canx) + ((uint32_t)(offset) >> 12)))
#define CAN_BIT_POS0(val) (((uint32_t)(val) >> 6) & 0x1FU)
#define CAN_BIT_POS1(val) ((uint32_t)(val) & 0x1FU)


#define STAT_REG_OFFSET ((uint8_t)0x04U)
#define TSTAT_REG_OFFSET ((uint8_t)0x08U)
#define RFIFO0_REG_OFFSET ((uint8_t)0x0CU)
#define RFIFO1_REG_OFFSET ((uint8_t)0x10U)
#define ERR_REG_OFFSET ((uint8_t)0x18U)


typedef enum {

 CAN_FLAG_MTE2 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(19U)),
 CAN_FLAG_MTE1 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(11U)),
 CAN_FLAG_MTE0 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(3U)),
 CAN_FLAG_MTF2 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(16U)),
 CAN_FLAG_MTF1 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(8U)),
 CAN_FLAG_MTF0 = (((uint32_t)(((uint8_t)0x08U)) << 6) | (uint32_t)(0U)),

 CAN_FLAG_RFO0 = (((uint32_t)(((uint8_t)0x0CU)) << 6) | (uint32_t)(4U)),
 CAN_FLAG_RFF0 = (((uint32_t)(((uint8_t)0x0CU)) << 6) | (uint32_t)(3U)),

 CAN_FLAG_RFO1 = (((uint32_t)(((uint8_t)0x10U)) << 6) | (uint32_t)(4U)),
 CAN_FLAG_RFF1 = (((uint32_t)(((uint8_t)0x10U)) << 6) | (uint32_t)(3U)),

 CAN_FLAG_BOERR = (((uint32_t)(((uint8_t)0x18U)) << 6) | (uint32_t)(2U)),
 CAN_FLAG_PERR = (((uint32_t)(((uint8_t)0x18U)) << 6) | (uint32_t)(1U)),
 CAN_FLAG_WERR = (((uint32_t)(((uint8_t)0x18U)) << 6) | (uint32_t)(0U)),
} can_flag_enum;


typedef enum {

 CAN_INT_FLAG_SLPIF = (((uint32_t)(((uint8_t)0x04U)) << 12) | ((uint32_t)(4U) << 6) | (uint32_t)(17U)),
 CAN_INT_FLAG_WUIF = (((uint32_t)(((uint8_t)0x04U)) << 12) | ((uint32_t)(3U) << 6) | (uint32_t)(16)),
 CAN_INT_FLAG_ERRIF = (((uint32_t)(((uint8_t)0x04U)) << 12) | ((uint32_t)(2U) << 6) | (uint32_t)(15)),

 CAN_INT_FLAG_MTF2 = (((uint32_t)(((uint8_t)0x08U)) << 12) | ((uint32_t)(16U) << 6) | (uint32_t)(0U)),
 CAN_INT_FLAG_MTF1 = (((uint32_t)(((uint8_t)0x08U)) << 12) | ((uint32_t)(8U) << 6) | (uint32_t)(0U)),
 CAN_INT_FLAG_MTF0 = (((uint32_t)(((uint8_t)0x08U)) << 12) | ((uint32_t)(0U) << 6) | (uint32_t)(0U)),

 CAN_INT_FLAG_RFO0 = (((uint32_t)(((uint8_t)0x0CU)) << 12) | ((uint32_t)(4U) << 6) | (uint32_t)(3U)),
 CAN_INT_FLAG_RFF0 = (((uint32_t)(((uint8_t)0x0CU)) << 12) | ((uint32_t)(3U) << 6) | (uint32_t)(2U)),

 CAN_INT_FLAG_RFO1 = (((uint32_t)(((uint8_t)0x10U)) << 12) | ((uint32_t)(4U) << 6) | (uint32_t)(6U)),
 CAN_INT_FLAG_RFF1 = (((uint32_t)(((uint8_t)0x10U)) << 12) | ((uint32_t)(3U) << 6) | (uint32_t)(5U)),
} can_interrupt_flag_enum;


typedef struct {
 uint8_t working_mode;
 uint8_t resync_jump_width;
 uint8_t time_segment_1;
 uint8_t time_segment_2;
 ControlStatus time_triggered;
 ControlStatus auto_bus_off_recovery;
 ControlStatus auto_wake_up;
 ControlStatus auto_retrans;
 ControlStatus rec_fifo_overwrite;
 ControlStatus trans_fifo_order;
 uint16_t prescaler;
} can_parameter_struct;


typedef struct {
 uint32_t tx_sfid;
 uint32_t tx_efid;
 uint8_t tx_ff;
 uint8_t tx_ft;
 uint8_t tx_dlen;
 uint8_t tx_data[8];
} can_trasnmit_message_struct;


typedef struct {
 uint32_t rx_sfid;
 uint32_t rx_efid;
 uint8_t rx_ff;
 uint8_t rx_ft;
 uint8_t rx_dlen;
 uint8_t rx_data[8];
 uint8_t rx_fi;
} can_receive_message_struct;


typedef struct {
 uint16_t filter_list_high;
 uint16_t filter_list_low;
 uint16_t filter_mask_high;
 uint16_t filter_mask_low;
 uint16_t filter_fifo_number;
 uint16_t filter_number;
 uint16_t filter_mode;
 uint16_t filter_bits;
 ControlStatus filter_enable;
} can_filter_parameter_struct;


typedef enum {
 CAN_ERROR_NONE = 0,
 CAN_ERROR_FILL,
 CAN_ERROR_FORMATE,
 CAN_ERROR_ACK,
 CAN_ERROR_BITRECESSIVE,
 CAN_ERROR_BITDOMINANTER,
 CAN_ERROR_CRC,
 CAN_ERROR_SOFTWARECFG,
} can_error_enum;


typedef enum {
 CAN_TRANSMIT_FAILED = 0,
 CAN_TRANSMIT_OK = 1,
 CAN_TRANSMIT_PENDING = 2,
 CAN_TRANSMIT_NOMAILBOX = 4,
} can_transmit_state_enum;

typedef enum {
 CAN_INIT_STRUCT = 0,
 CAN_FILTER_STRUCT,
 CAN_TX_MESSAGE_STRUCT,
 CAN_RX_MESSAGE_STRUCT,
} can_struct_type_enum;


#define BT_BAUDPSC(regval) (BITS(0,9) & ((uint32_t)(regval) << 0))


#define BT_BS1(regval) (BITS(16,19) & ((uint32_t)(regval) << 16))


#define BT_BS2(regval) (BITS(20,22) & ((uint32_t)(regval) << 20))


#define BT_SJW(regval) (BITS(24,25) & ((uint32_t)(regval) << 24))


#define BT_MODE(regval) (BITS(30,31) & ((uint32_t)(regval) << 30))


#define FDATA_MASK_HIGH(regval) (BITS(16,31) & ((uint32_t)(regval) << 16))


#define FDATA_MASK_LOW(regval) (BITS(0,15) & ((uint32_t)(regval) << 0))


#define FCTL_HBC1F(regval) (BITS(8,13) & ((uint32_t)(regval) << 8))


#define TMI_EFID(regval) (BITS(3,31) & ((uint32_t)(regval) << 3))


#define TMI_SFID(regval) (BITS(21,31) & ((uint32_t)(regval) << 21))


#define TMDATA0_DB0(regval) (BITS(0,7) & ((uint32_t)(regval) << 0))


#define TMDATA0_DB1(regval) (BITS(8,15) & ((uint32_t)(regval) << 8))


#define TMDATA0_DB2(regval) (BITS(16,23) & ((uint32_t)(regval) << 16))


#define TMDATA0_DB3(regval) (BITS(24,31) & ((uint32_t)(regval) << 24))


#define TMDATA1_DB4(regval) (BITS(0,7) & ((uint32_t)(regval) << 0))


#define TMDATA1_DB5(regval) (BITS(8,15) & ((uint32_t)(regval) << 8))


#define TMDATA1_DB6(regval) (BITS(16,23) & ((uint32_t)(regval) << 16))


#define TMDATA1_DB7(regval) (BITS(24,31) & ((uint32_t)(regval) << 24))


#define GET_RFIFOMI_EFID(regval) GET_BITS((uint32_t)(regval), 3, 31)


#define GET_RFIFOMI_SFID(regval) GET_BITS((uint32_t)(regval), 21, 31)


#define GET_RFIFOMP_DLENC(regval) GET_BITS((uint32_t)(regval), 0, 3)


#define GET_RFIFOMP_FI(regval) GET_BITS((uint32_t)(regval), 8, 15)


#define GET_RFIFOMDATA0_DB0(regval) GET_BITS((uint32_t)(regval), 0, 7)


#define GET_RFIFOMDATA0_DB1(regval) GET_BITS((uint32_t)(regval), 8, 15)


#define GET_RFIFOMDATA0_DB2(regval) GET_BITS((uint32_t)(regval), 16, 23)


#define GET_RFIFOMDATA0_DB3(regval) GET_BITS((uint32_t)(regval), 24, 31)


#define GET_RFIFOMDATA1_DB4(regval) GET_BITS((uint32_t)(regval), 0, 7)


#define GET_RFIFOMDATA1_DB5(regval) GET_BITS((uint32_t)(regval), 8, 15)


#define GET_RFIFOMDATA1_DB6(regval) GET_BITS((uint32_t)(regval), 16, 23)


#define GET_RFIFOMDATA1_DB7(regval) GET_BITS((uint32_t)(regval), 24, 31)


#define GET_ERR_ERRN(regval) GET_BITS((uint32_t)(regval), 4, 6)


#define GET_ERR_TECNT(regval) GET_BITS((uint32_t)(regval), 16, 23)


#define GET_ERR_RECNT(regval) GET_BITS((uint32_t)(regval), 24, 31)


#define ERR_ERRN(regval) (BITS(4,6) & ((uint32_t)(regval) << 4))
#define CAN_ERRN_0 ERR_ERRN(0)
#define CAN_ERRN_1 ERR_ERRN(1)
#define CAN_ERRN_2 ERR_ERRN(2)
#define CAN_ERRN_3 ERR_ERRN(3)
#define CAN_ERRN_4 ERR_ERRN(4)
#define CAN_ERRN_5 ERR_ERRN(5)
#define CAN_ERRN_6 ERR_ERRN(6)
#define CAN_ERRN_7 ERR_ERRN(7)

#define CAN_STATE_PENDING ((uint32_t)0x00000000U)


#define CAN_NORMAL_MODE ((uint8_t)0x00U)
#define CAN_LOOPBACK_MODE ((uint8_t)0x01U)
#define CAN_SILENT_MODE ((uint8_t)0x02U)
#define CAN_SILENT_LOOPBACK_MODE ((uint8_t)0x03U)


#define CAN_BT_SJW_1TQ ((uint8_t)0x00U)
#define CAN_BT_SJW_2TQ ((uint8_t)0x01U)
#define CAN_BT_SJW_3TQ ((uint8_t)0x02U)
#define CAN_BT_SJW_4TQ ((uint8_t)0x03U)


#define CAN_BT_BS1_1TQ ((uint8_t)0x00U)
#define CAN_BT_BS1_2TQ ((uint8_t)0x01U)
#define CAN_BT_BS1_3TQ ((uint8_t)0x02U)
#define CAN_BT_BS1_4TQ ((uint8_t)0x03U)
#define CAN_BT_BS1_5TQ ((uint8_t)0x04U)
#define CAN_BT_BS1_6TQ ((uint8_t)0x05U)
#define CAN_BT_BS1_7TQ ((uint8_t)0x06U)
#define CAN_BT_BS1_8TQ ((uint8_t)0x07U)
#define CAN_BT_BS1_9TQ ((uint8_t)0x08U)
#define CAN_BT_BS1_10TQ ((uint8_t)0x09U)
#define CAN_BT_BS1_11TQ ((uint8_t)0x0AU)
#define CAN_BT_BS1_12TQ ((uint8_t)0x0BU)
#define CAN_BT_BS1_13TQ ((uint8_t)0x0CU)
#define CAN_BT_BS1_14TQ ((uint8_t)0x0DU)
#define CAN_BT_BS1_15TQ ((uint8_t)0x0EU)
#define CAN_BT_BS1_16TQ ((uint8_t)0x0FU)


#define CAN_BT_BS2_1TQ ((uint8_t)0x00U)
#define CAN_BT_BS2_2TQ ((uint8_t)0x01U)
#define CAN_BT_BS2_3TQ ((uint8_t)0x02U)
#define CAN_BT_BS2_4TQ ((uint8_t)0x03U)
#define CAN_BT_BS2_5TQ ((uint8_t)0x04U)
#define CAN_BT_BS2_6TQ ((uint8_t)0x05U)
#define CAN_BT_BS2_7TQ ((uint8_t)0x06U)
#define CAN_BT_BS2_8TQ ((uint8_t)0x07U)


#define CAN_MAILBOX0 ((uint8_t)0x00U)
#define CAN_MAILBOX1 ((uint8_t)0x01U)
#define CAN_MAILBOX2 ((uint8_t)0x02U)
#define CAN_NOMAILBOX ((uint8_t)0x03U)


#define CAN_FF_STANDARD ((uint32_t)0x00000000U)
#define CAN_FF_EXTENDED ((uint32_t)0x00000004U)


#define CAN_FIFO0 ((uint8_t)0x00U)
#define CAN_FIFO1 ((uint8_t)0x01U)


#define CAN_RFIF_RFL_MASK ((uint32_t)0x00000003U)

#define CAN_SFID_MASK ((uint32_t)0x000007FFU)
#define CAN_EFID_MASK ((uint32_t)0x1FFFFFFFU)


#define CAN_MODE_INITIALIZE ((uint8_t)0x01U)
#define CAN_MODE_NORMAL ((uint8_t)0x02U)
#define CAN_MODE_SLEEP ((uint8_t)0x04U)


#define CAN_FILTERBITS_16BIT ((uint8_t)0x00U)
#define CAN_FILTERBITS_32BIT ((uint8_t)0x01U)


#define CAN_FILTERMODE_MASK ((uint8_t)0x00U)
#define CAN_FILTERMODE_LIST ((uint8_t)0x01U)


#define CAN_FILTER_MASK_16BITS ((uint32_t)0x0000FFFFU)


#define CAN_FT_DATA ((uint32_t)0x00000000U)
#define CAN_FT_REMOTE ((uint32_t)0x00000002U)


#define CAN_TIMEOUT ((uint32_t)0x0000FFFFU)


#define CAN_INT_TME CAN_INTEN_TMEIE
#define CAN_INT_RFNE0 CAN_INTEN_RFNEIE0
#define CAN_INT_RFF0 CAN_INTEN_RFFIE0
#define CAN_INT_RFO0 CAN_INTEN_RFOIE0
#define CAN_INT_RFNE1 CAN_INTEN_RFNEIE1
#define CAN_INT_RFF1 CAN_INTEN_RFFIE1
#define CAN_INT_RFO1 CAN_INTEN_RFOIE1
#define CAN_INT_WERR CAN_INTEN_WERRIE
#define CAN_INT_PERR CAN_INTEN_PERRIE
#define CAN_INT_BO CAN_INTEN_BOIE
#define CAN_INT_ERRN CAN_INTEN_ERRNIE
#define CAN_INT_ERR CAN_INTEN_ERRIE
#define CAN_INT_WAKEUP CAN_INTEN_WIE
#define CAN_INT_SLPW CAN_INTEN_SLPWIE



void can_deinit(uint32_t can_periph);

void can_struct_para_init(can_struct_type_enum type, void* p_struct);

ErrStatus can_init(uint32_t can_periph,
  can_parameter_struct* can_parameter_init);

void can_filter_init(can_filter_parameter_struct* can_filter_parameter_init);

void can1_filter_start_bank(uint8_t start_bank);


void can_debug_freeze_enable(uint32_t can_periph);

void can_debug_freeze_disable(uint32_t can_periph);

void can_time_trigger_mode_enable(uint32_t can_periph);

void can_time_trigger_mode_disable(uint32_t can_periph);



uint8_t can_message_transmit(uint32_t can_periph,
  can_trasnmit_message_struct* transmit_message);

can_transmit_state_enum can_transmit_states(uint32_t can_periph,
  uint8_t mailbox_number);

void can_transmission_stop(uint32_t can_periph, uint8_t mailbox_number);

void can_message_receive(uint32_t can_periph, uint8_t fifo_number,
  can_receive_message_struct* receive_message);

void can_fifo_release(uint32_t can_periph, uint8_t fifo_number);

uint8_t can_receive_message_length_get(uint32_t can_periph, uint8_t fifo_number);

ErrStatus can_working_mode_set(uint32_t can_periph, uint8_t working_mode);

ErrStatus can_wakeup(uint32_t can_periph);


can_error_enum can_error_get(uint32_t can_periph);

uint8_t can_receive_error_number_get(uint32_t can_periph);

uint8_t can_transmit_error_number_get(uint32_t can_periph);


void can_interrupt_enable(uint32_t can_periph, uint32_t interrupt);

void can_interrupt_disable(uint32_t can_periph, uint32_t interrupt);

FlagStatus can_flag_get(uint32_t can_periph, can_flag_enum flag);

void can_flag_clear(uint32_t can_periph, can_flag_enum flag);

FlagStatus can_interrupt_flag_get(uint32_t can_periph,
  can_interrupt_flag_enum flag);

void can_interrupt_flag_clear(uint32_t can_periph, can_interrupt_flag_enum flag);
# 41 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_crc.h" 1
# 37 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_crc.h"
#define GD32VF103_CRC_H 




#define CRC CRC_BASE


#define CRC_DATA REG32(CRC + 0x00U)
#define CRC_FDATA REG32(CRC + 0x04U)
#define CRC_CTL REG32(CRC + 0x08U)



#define CRC_DATA_DATA BITS(0, 31)


#define CRC_FDATA_FDATA BITS(0, 7)


#define CRC_CTL_RST BIT(0)



void crc_deinit(void);


void crc_data_register_reset(void);

uint32_t crc_data_register_read(void);


uint8_t crc_free_data_register_read(void);

void crc_free_data_register_write(uint8_t free_data);


uint32_t crc_single_data_calculate(uint32_t sdata);

uint32_t crc_block_data_calculate(uint32_t array[], uint32_t size);
# 42 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dac.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dac.h"
#define GD32VF103_DAC_H 




#define DAC DAC_BASE
#define DAC0 (0U)
#define DAC1 (1U)


#define DAC_CTL REG32(DAC + 0x00U)
#define DAC_SWT REG32(DAC + 0x04U)
#define DAC0_R12DH REG32(DAC + 0x08U)
#define DAC0_L12DH REG32(DAC + 0x0CU)
#define DAC0_R8DH REG32(DAC + 0x10U)
#define DAC1_R12DH REG32(DAC + 0x14U)
#define DAC1_L12DH REG32(DAC + 0x18U)
#define DAC1_R8DH REG32(DAC + 0x1CU)
#define DACC_R12DH REG32(DAC + 0x20U)
#define DACC_L12DH REG32(DAC + 0x24U)
#define DACC_R8DH REG32(DAC + 0x28U)
#define DAC0_DO REG32(DAC + 0x2CU)
#define DAC1_DO REG32(DAC + 0x30U)



#define DAC_CTL_DEN0 BIT(0)
#define DAC_CTL_DBOFF0 BIT(1)
#define DAC_CTL_DTEN0 BIT(2)
#define DAC_CTL_DTSEL0 BITS(3,5)
#define DAC_CTL_DWM0 BITS(6,7)
#define DAC_CTL_DWBW0 BITS(8,11)
#define DAC_CTL_DDMAEN0 BIT(12)
#define DAC_CTL_DEN1 BIT(16)
#define DAC_CTL_DBOFF1 BIT(17)
#define DAC_CTL_DTEN1 BIT(18)
#define DAC_CTL_DTSEL1 BITS(19,21)
#define DAC_CTL_DWM1 BITS(22,23)
#define DAC_CTL_DWBW1 BITS(24,27)
#define DAC_CTL_DDMAEN1 BIT(28)


#define DAC_SWT_SWTR0 BIT(0)
#define DAC_SWT_SWTR1 BIT(1)


#define DAC0_R12DH_DAC0_DH BITS(0,11)


#define DAC0_L12DH_DAC0_DH BITS(4,15)


#define DAC0_R8DH_DAC0_DH BITS(0,7)


#define DAC1_R12DH_DAC1_DH BITS(0,11)


#define DAC1_L12DH_DAC1_DH BITS(4,15)


#define DAC1_R8DH_DAC1_DH BITS(0,7)


#define DACC_R12DH_DAC0_DH BITS(0,11)
#define DACC_R12DH_DAC1_DH BITS(16,27)


#define DACC_L12DH_DAC0_DH BITS(4,15)
#define DACC_L12DH_DAC1_DH BITS(20,31)


#define DACC_R8DH_DAC0_DH BITS(0,7)
#define DACC_R8DH_DAC1_DH BITS(8,15)


#define DAC0_DO_DAC0_DO BITS(0,11)


#define DAC1_DO_DAC1_DO BITS(0,11)



#define CTL_DTSEL(regval) (BITS(3,5) & ((uint32_t)(regval) << 3))
#define DAC_TRIGGER_T5_TRGO CTL_DTSEL(0)
#define DAC_TRIGGER_T2_TRGO CTL_DTSEL(1)
#define DAC_TRIGGER_T6_TRGO CTL_DTSEL(2)
#define DAC_TRIGGER_T4_TRGO CTL_DTSEL(3)
#define DAC_TRIGGER_T1_TRGO CTL_DTSEL(4)
#define DAC_TRIGGER_T3_TRGO CTL_DTSEL(5)
#define DAC_TRIGGER_EXTI_9 CTL_DTSEL(6)
#define DAC_TRIGGER_SOFTWARE CTL_DTSEL(7)


#define CTL_DWM(regval) (BITS(6,7) & ((uint32_t)(regval) << 6))
#define DAC_WAVE_DISABLE CTL_DWM(0)
#define DAC_WAVE_MODE_LFSR CTL_DWM(1)
#define DAC_WAVE_MODE_TRIANGLE CTL_DWM(2)


#define DWBW(regval) (BITS(8,11) & ((uint32_t)(regval) << 8))
#define DAC_WAVE_BIT_WIDTH_1 DWBW(0)
#define DAC_WAVE_BIT_WIDTH_2 DWBW(1)
#define DAC_WAVE_BIT_WIDTH_3 DWBW(2)
#define DAC_WAVE_BIT_WIDTH_4 DWBW(3)
#define DAC_WAVE_BIT_WIDTH_5 DWBW(4)
#define DAC_WAVE_BIT_WIDTH_6 DWBW(5)
#define DAC_WAVE_BIT_WIDTH_7 DWBW(6)
#define DAC_WAVE_BIT_WIDTH_8 DWBW(7)
#define DAC_WAVE_BIT_WIDTH_9 DWBW(8)
#define DAC_WAVE_BIT_WIDTH_10 DWBW(9)
#define DAC_WAVE_BIT_WIDTH_11 DWBW(10)
#define DAC_WAVE_BIT_WIDTH_12 DWBW(11)


#define DAC_LFSR_BIT0 DAC_WAVE_BIT_WIDTH_1
#define DAC_LFSR_BITS1_0 DAC_WAVE_BIT_WIDTH_2
#define DAC_LFSR_BITS2_0 DAC_WAVE_BIT_WIDTH_3
#define DAC_LFSR_BITS3_0 DAC_WAVE_BIT_WIDTH_4
#define DAC_LFSR_BITS4_0 DAC_WAVE_BIT_WIDTH_5
#define DAC_LFSR_BITS5_0 DAC_WAVE_BIT_WIDTH_6
#define DAC_LFSR_BITS6_0 DAC_WAVE_BIT_WIDTH_7
#define DAC_LFSR_BITS7_0 DAC_WAVE_BIT_WIDTH_8
#define DAC_LFSR_BITS8_0 DAC_WAVE_BIT_WIDTH_9
#define DAC_LFSR_BITS9_0 DAC_WAVE_BIT_WIDTH_10
#define DAC_LFSR_BITS10_0 DAC_WAVE_BIT_WIDTH_11
#define DAC_LFSR_BITS11_0 DAC_WAVE_BIT_WIDTH_12


#define DATA_ALIGN(regval) (BITS(0,1) & ((uint32_t)(regval) << 0))
#define DAC_ALIGN_12B_R DATA_ALIGN(0)
#define DAC_ALIGN_12B_L DATA_ALIGN(1)
#define DAC_ALIGN_8B_R DATA_ALIGN(2)

#define DAC_TRIANGLE_AMPLITUDE_1 DAC_WAVE_BIT_WIDTH_1
#define DAC_TRIANGLE_AMPLITUDE_3 DAC_WAVE_BIT_WIDTH_2
#define DAC_TRIANGLE_AMPLITUDE_7 DAC_WAVE_BIT_WIDTH_3
#define DAC_TRIANGLE_AMPLITUDE_15 DAC_WAVE_BIT_WIDTH_4
#define DAC_TRIANGLE_AMPLITUDE_31 DAC_WAVE_BIT_WIDTH_5
#define DAC_TRIANGLE_AMPLITUDE_63 DAC_WAVE_BIT_WIDTH_6
#define DAC_TRIANGLE_AMPLITUDE_127 DAC_WAVE_BIT_WIDTH_7
#define DAC_TRIANGLE_AMPLITUDE_255 DAC_WAVE_BIT_WIDTH_8
#define DAC_TRIANGLE_AMPLITUDE_511 DAC_WAVE_BIT_WIDTH_9
#define DAC_TRIANGLE_AMPLITUDE_1023 DAC_WAVE_BIT_WIDTH_10
#define DAC_TRIANGLE_AMPLITUDE_2047 DAC_WAVE_BIT_WIDTH_11
#define DAC_TRIANGLE_AMPLITUDE_4095 DAC_WAVE_BIT_WIDTH_12




void dac_deinit(void);

void dac_enable(uint32_t dac_periph);

void dac_disable(uint32_t dac_periph);

void dac_dma_enable(uint32_t dac_periph);

void dac_dma_disable(uint32_t dac_periph);

void dac_output_buffer_enable(uint32_t dac_periph);

void dac_output_buffer_disable(uint32_t dac_periph);

uint16_t dac_output_value_get(uint32_t dac_periph);

void dac_data_set(uint32_t dac_periph, uint32_t dac_align, uint16_t data);



void dac_trigger_enable(uint32_t dac_periph);

void dac_trigger_disable(uint32_t dac_periph);

void dac_trigger_source_config(uint32_t dac_periph, uint32_t triggersource);

void dac_software_trigger_enable(uint32_t dac_periph);

void dac_software_trigger_disable(uint32_t dac_periph);



void dac_wave_mode_config(uint32_t dac_periph, uint32_t wave_mode);

void dac_wave_bit_width_config(uint32_t dac_periph, uint32_t bit_width);

void dac_lfsr_noise_config(uint32_t dac_periph, uint32_t unmask_bits);

void dac_triangle_noise_config(uint32_t dac_periph, uint32_t amplitude);



void dac_concurrent_enable(void);

void dac_concurrent_disable(void);

void dac_concurrent_software_trigger_enable(void);

void dac_concurrent_software_trigger_disable(void);

void dac_concurrent_output_buffer_enable(void);

void dac_concurrent_output_buffer_disable(void);

void dac_concurrent_data_set(uint32_t dac_align, uint16_t data0, uint16_t data1);
# 43 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dma.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dma.h"
#define GD32VF103_DMA_H 




#define DMA0 (DMA_BASE)
#define DMA1 (DMA_BASE + 0x0400U)


#define DMA_INTF(dmax) REG32((dmax) + 0x00U)
#define DMA_INTC(dmax) REG32((dmax) + 0x04U)

#define DMA_CH0CTL(dmax) REG32((dmax) + 0x08U)
#define DMA_CH0CNT(dmax) REG32((dmax) + 0x0CU)
#define DMA_CH0PADDR(dmax) REG32((dmax) + 0x10U)
#define DMA_CH0MADDR(dmax) REG32((dmax) + 0x14U)

#define DMA_CH1CTL(dmax) REG32((dmax) + 0x1CU)
#define DMA_CH1CNT(dmax) REG32((dmax) + 0x20U)
#define DMA_CH1PADDR(dmax) REG32((dmax) + 0x24U)
#define DMA_CH1MADDR(dmax) REG32((dmax) + 0x28U)

#define DMA_CH2CTL(dmax) REG32((dmax) + 0x30U)
#define DMA_CH2CNT(dmax) REG32((dmax) + 0x34U)
#define DMA_CH2PADDR(dmax) REG32((dmax) + 0x38U)
#define DMA_CH2MADDR(dmax) REG32((dmax) + 0x3CU)

#define DMA_CH3CTL(dmax) REG32((dmax) + 0x44U)
#define DMA_CH3CNT(dmax) REG32((dmax) + 0x48U)
#define DMA_CH3PADDR(dmax) REG32((dmax) + 0x4CU)
#define DMA_CH3MADDR(dmax) REG32((dmax) + 0x50U)

#define DMA_CH4CTL(dmax) REG32((dmax) + 0x58U)
#define DMA_CH4CNT(dmax) REG32((dmax) + 0x5CU)
#define DMA_CH4PADDR(dmax) REG32((dmax) + 0x60U)
#define DMA_CH4MADDR(dmax) REG32((dmax) + 0x64U)

#define DMA_CH5CTL(dmax) REG32((dmax) + 0x6CU)
#define DMA_CH5CNT(dmax) REG32((dmax) + 0x70U)
#define DMA_CH5PADDR(dmax) REG32((dmax) + 0x74U)
#define DMA_CH5MADDR(dmax) REG32((dmax) + 0x78U)

#define DMA_CH6CTL(dmax) REG32((dmax) + 0x80U)
#define DMA_CH6CNT(dmax) REG32((dmax) + 0x84U)
#define DMA_CH6PADDR(dmax) REG32((dmax) + 0x88U)
#define DMA_CH6MADDR(dmax) REG32((dmax) + 0x8CU)



#define DMA_INTF_GIF BIT(0)
#define DMA_INTF_FTFIF BIT(1)
#define DMA_INTF_HTFIF BIT(2)
#define DMA_INTF_ERRIF BIT(3)


#define DMA_INTC_GIFC BIT(0)
#define DMA_INTC_FTFIFC BIT(1)
#define DMA_INTC_HTFIFC BIT(2)
#define DMA_INTC_ERRIFC BIT(3)


#define DMA_CHXCTL_CHEN BIT(0)
#define DMA_CHXCTL_FTFIE BIT(1)
#define DMA_CHXCTL_HTFIE BIT(2)
#define DMA_CHXCTL_ERRIE BIT(3)
#define DMA_CHXCTL_DIR BIT(4)
#define DMA_CHXCTL_CMEN BIT(5)
#define DMA_CHXCTL_PNAGA BIT(6)
#define DMA_CHXCTL_MNAGA BIT(7)
#define DMA_CHXCTL_PWIDTH BITS(8,9)
#define DMA_CHXCTL_MWIDTH BITS(10,11)
#define DMA_CHXCTL_PRIO BITS(12,13)
#define DMA_CHXCTL_M2M BIT(14)


#define DMA_CHXCNT_CNT BITS(0,15)


#define DMA_CHXPADDR_PADDR BITS(0,31)


#define DMA_CHXMADDR_MADDR BITS(0,31)



typedef enum
{
    DMA_CH0 = 0,
    DMA_CH1,
    DMA_CH2,
    DMA_CH3,
    DMA_CH4,
    DMA_CH5,
    DMA_CH6
} dma_channel_enum;


typedef struct
{
    uint32_t periph_addr;
    uint32_t periph_width;
    uint32_t memory_addr;
    uint32_t memory_width;
    uint32_t number;
    uint32_t priority;
    uint8_t periph_inc;
    uint8_t memory_inc;
    uint8_t direction;

} dma_parameter_struct;

#define DMA_FLAG_ADD(flag,shift) ((flag) << ((shift) * 4U))


#define DMA_CHCTL(dma,channel) REG32(((dma) + 0x08U) + 0x14U * (uint32_t)(channel))
#define DMA_CHCNT(dma,channel) REG32(((dma) + 0x0CU) + 0x14U * (uint32_t)(channel))
#define DMA_CHPADDR(dma,channel) REG32(((dma) + 0x10U) + 0x14U * (uint32_t)(channel))
#define DMA_CHMADDR(dma,channel) REG32(((dma) + 0x14U) + 0x14U * (uint32_t)(channel))


#define DMA_CHCTL_RESET_VALUE ((uint32_t)0x00000000U)
#define DMA_CHCNT_RESET_VALUE ((uint32_t)0x00000000U)
#define DMA_CHPADDR_RESET_VALUE ((uint32_t)0x00000000U)
#define DMA_CHMADDR_RESET_VALUE ((uint32_t)0x00000000U)
#define DMA_CHINTF_RESET_VALUE (DMA_INTF_GIF | DMA_INTF_FTFIF | DMA_INTF_HTFIF | DMA_INTF_ERRIF)




#define DMA_INT_FLAG_G DMA_INTF_GIF
#define DMA_INT_FLAG_FTF DMA_INTF_FTFIF
#define DMA_INT_FLAG_HTF DMA_INTF_HTFIF
#define DMA_INT_FLAG_ERR DMA_INTF_ERRIF


#define DMA_FLAG_G DMA_INTF_GIF
#define DMA_FLAG_FTF DMA_INTF_FTFIF
#define DMA_FLAG_HTF DMA_INTF_HTFIF
#define DMA_FLAG_ERR DMA_INTF_ERRIF



#define DMA_INT_FTF DMA_CHXCTL_FTFIE
#define DMA_INT_HTF DMA_CHXCTL_HTFIE
#define DMA_INT_ERR DMA_CHXCTL_ERRIE


#define DMA_PERIPHERAL_TO_MEMORY ((uint8_t)0x0000U)
#define DMA_MEMORY_TO_PERIPHERAL ((uint8_t)0x0001U)


#define DMA_PERIPH_INCREASE_DISABLE ((uint8_t)0x0000U)
#define DMA_PERIPH_INCREASE_ENABLE ((uint8_t)0x0001U)


#define DMA_MEMORY_INCREASE_DISABLE ((uint8_t)0x0000U)
#define DMA_MEMORY_INCREASE_ENABLE ((uint8_t)0x0001U)


#define CHCTL_PWIDTH(regval) (BITS(8,9) & ((uint32_t)(regval) << 8))
#define DMA_PERIPHERAL_WIDTH_8BIT CHCTL_PWIDTH(0U)
#define DMA_PERIPHERAL_WIDTH_16BIT CHCTL_PWIDTH(1U)
#define DMA_PERIPHERAL_WIDTH_32BIT CHCTL_PWIDTH(2U)


#define CHCTL_MWIDTH(regval) (BITS(10,11) & ((uint32_t)(regval) << 10))
#define DMA_MEMORY_WIDTH_8BIT CHCTL_MWIDTH(0U)
#define DMA_MEMORY_WIDTH_16BIT CHCTL_MWIDTH(1U)
#define DMA_MEMORY_WIDTH_32BIT CHCTL_MWIDTH(2U)


#define CHCTL_PRIO(regval) (BITS(12,13) & ((uint32_t)(regval) << 12))
#define DMA_PRIORITY_LOW CHCTL_PRIO(0U)
#define DMA_PRIORITY_MEDIUM CHCTL_PRIO(1U)
#define DMA_PRIORITY_HIGH CHCTL_PRIO(2U)
#define DMA_PRIORITY_ULTRA_HIGH CHCTL_PRIO(3U)


#define DMA_MEMORY_TO_MEMORY_DISABLE ((uint32_t)0x00000000U)
#define DMA_MEMORY_TO_MEMORY_ENABLE ((uint32_t)0x00000001U)



#define DMA_CHANNEL_CNT_MASK DMA_CHXCNT_CNT




void dma_deinit(uint32_t dma_periph, dma_channel_enum channelx);

void dma_struct_para_init(dma_parameter_struct* init_struct);

void dma_init(uint32_t dma_periph, dma_channel_enum channelx, dma_parameter_struct *init_struct);

void dma_circulation_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_circulation_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_memory_to_memory_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_memory_to_memory_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_channel_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_channel_disable(uint32_t dma_periph, dma_channel_enum channelx);



void dma_periph_address_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t address);

void dma_memory_address_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t address);

void dma_transfer_number_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t number);

uint32_t dma_transfer_number_get(uint32_t dma_periph, dma_channel_enum channelx);

void dma_priority_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t priority);

void dma_memory_width_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t mwidth);

void dma_periph_width_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t pwidth);

void dma_memory_increase_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_memory_increase_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_periph_increase_enable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_periph_increase_disable(uint32_t dma_periph, dma_channel_enum channelx);

void dma_transfer_direction_config(uint32_t dma_periph, dma_channel_enum channelx, uint32_t direction);



FlagStatus dma_flag_get(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

void dma_flag_clear(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

FlagStatus dma_interrupt_flag_get(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

void dma_interrupt_flag_clear(uint32_t dma_periph, dma_channel_enum channelx, uint32_t flag);

void dma_interrupt_enable(uint32_t dma_periph, dma_channel_enum channelx, uint32_t source);

void dma_interrupt_disable(uint32_t dma_periph, dma_channel_enum channelx, uint32_t source);
# 44 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_eclic.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_eclic.h"
#define GD32VF103_ECLIC_H 




#define ECLIC_PRIGROUP_LEVEL0_PRIO4 0
#define ECLIC_PRIGROUP_LEVEL1_PRIO3 1
#define ECLIC_PRIGROUP_LEVEL2_PRIO2 2
#define ECLIC_PRIGROUP_LEVEL3_PRIO1 3
#define ECLIC_PRIGROUP_LEVEL4_PRIO0 4

#define __SEV eclic_send_event



void eclic_priority_group_set(uint32_t prigroup);

void eclic_irq_enable(uint32_t source, uint8_t level, uint8_t priority);

void eclic_irq_disable(uint32_t source);


void eclic_system_reset(void);

void eclic_send_event(void);
# 45 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_exmc.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_exmc.h"
#define GD32VF103_EXMC_H 




#define EXMC (EXMC_BASE)



#define EXMC_SNCTL0 REG32(EXMC + 0x00U)
#define EXMC_SNTCFG0 REG32(EXMC + 0x04U)
#define EXMC_SNWTCFG0 REG32(EXMC + 0x104U)




#define EXMC_SNCTL_NRBKEN BIT(0)
#define EXMC_SNCTL_NRMUX BIT(1)
#define EXMC_SNCTL_NRTP BITS(2,3)
#define EXMC_SNCTL_NRW BITS(4,5)
#define EXMC_SNCTL_NREN BIT(6)
#define EXMC_SNCTL_NRWTPOL BIT(9)
#define EXMC_SNCTL_WREN BIT(12)
#define EXMC_SNCTL_NRWTEN BIT(13)
#define EXMC_SNCTL_ASYNCWAIT BIT(15)


#define EXMC_SNTCFG_ASET BITS(0,3)
#define EXMC_SNTCFG_AHLD BITS(4,7)
#define EXMC_SNTCFG_DSET BITS(8,15)
#define EXMC_SNTCFG_BUSLAT BITS(16,19)



typedef struct
{
    uint32_t bus_latency;
    uint32_t asyn_data_setuptime;
    uint32_t asyn_address_holdtime;
    uint32_t asyn_address_setuptime;
}exmc_norsram_timing_parameter_struct;


typedef struct
{
    uint32_t norsram_region;
    uint32_t asyn_wait;
    uint32_t nwait_signal;
    uint32_t memory_write;
    uint32_t nwait_polarity;
    uint32_t databus_width;
    uint32_t memory_type;
    uint32_t address_data_mux;
    exmc_norsram_timing_parameter_struct* read_write_timing;
}exmc_norsram_parameter_struct;


#define EXMC_SNCTL(region) REG32(EXMC + 0x08U * (region))
#define EXMC_SNTCFG(region) REG32(EXMC + 0x04U + 0x08U * (region))


#define SNCTL_NRW(regval) (BITS(4,5) & ((uint32_t)(regval) << 4))
#define EXMC_NOR_DATABUS_WIDTH_8B SNCTL_NRW(0)
#define EXMC_NOR_DATABUS_WIDTH_16B SNCTL_NRW(1)


#define SNCTL_NRTP(regval) (BITS(2,3) & ((uint32_t)(regval) << 2))
#define EXMC_MEMORY_TYPE_SRAM SNCTL_NRTP(0)
#define EXMC_MEMORY_TYPE_PSRAM SNCTL_NRTP(1)
#define EXMC_MEMORY_TYPE_NOR SNCTL_NRTP(2)


#define EXMC_BANK0_NORSRAM_REGION0 ((uint32_t)0x00000000U)


#define EXMC_NWAIT_POLARITY_LOW ((uint32_t)0x00000000U)
#define EXMC_NWAIT_POLARITY_HIGH ((uint32_t)0x00000200U)



void exmc_norsram_deinit(uint32_t norsram_region);

void exmc_norsram_struct_para_init(exmc_norsram_parameter_struct* exmc_norsram_init_struct);

void exmc_norsram_init(exmc_norsram_parameter_struct* exmc_norsram_init_struct);

void exmc_norsram_enable(uint32_t norsram_region);

void exmc_norsram_disable(uint32_t norsram_region);
# 46 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_exti.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_exti.h"
#define GD32VF103_EXTI_H 




#define EXTI EXTI_BASE


#define EXTI_INTEN REG32(EXTI + 0x00U)
#define EXTI_EVEN REG32(EXTI + 0x04U)
#define EXTI_RTEN REG32(EXTI + 0x08U)
#define EXTI_FTEN REG32(EXTI + 0x0CU)
#define EXTI_SWIEV REG32(EXTI + 0x10U)
#define EXTI_PD REG32(EXTI + 0x14U)



#define EXTI_INTEN_INTEN0 BIT(0)
#define EXTI_INTEN_INTEN1 BIT(1)
#define EXTI_INTEN_INTEN2 BIT(2)
#define EXTI_INTEN_INTEN3 BIT(3)
#define EXTI_INTEN_INTEN4 BIT(4)
#define EXTI_INTEN_INTEN5 BIT(5)
#define EXTI_INTEN_INTEN6 BIT(6)
#define EXTI_INTEN_INTEN7 BIT(7)
#define EXTI_INTEN_INTEN8 BIT(8)
#define EXTI_INTEN_INTEN9 BIT(9)
#define EXTI_INTEN_INTEN10 BIT(10)
#define EXTI_INTEN_INTEN11 BIT(11)
#define EXTI_INTEN_INTEN12 BIT(12)
#define EXTI_INTEN_INTEN13 BIT(13)
#define EXTI_INTEN_INTEN14 BIT(14)
#define EXTI_INTEN_INTEN15 BIT(15)
#define EXTI_INTEN_INTEN16 BIT(16)
#define EXTI_INTEN_INTEN17 BIT(17)
#define EXTI_INTEN_INTEN18 BIT(18)


#define EXTI_EVEN_EVEN0 BIT(0)
#define EXTI_EVEN_EVEN1 BIT(1)
#define EXTI_EVEN_EVEN2 BIT(2)
#define EXTI_EVEN_EVEN3 BIT(3)
#define EXTI_EVEN_EVEN4 BIT(4)
#define EXTI_EVEN_EVEN5 BIT(5)
#define EXTI_EVEN_EVEN6 BIT(6)
#define EXTI_EVEN_EVEN7 BIT(7)
#define EXTI_EVEN_EVEN8 BIT(8)
#define EXTI_EVEN_EVEN9 BIT(9)
#define EXTI_EVEN_EVEN10 BIT(10)
#define EXTI_EVEN_EVEN11 BIT(11)
#define EXTI_EVEN_EVEN12 BIT(12)
#define EXTI_EVEN_EVEN13 BIT(13)
#define EXTI_EVEN_EVEN14 BIT(14)
#define EXTI_EVEN_EVEN15 BIT(15)
#define EXTI_EVEN_EVEN16 BIT(16)
#define EXTI_EVEN_EVEN17 BIT(17)
#define EXTI_EVEN_EVEN18 BIT(18)


#define EXTI_RTEN_RTEN0 BIT(0)
#define EXTI_RTEN_RTEN1 BIT(1)
#define EXTI_RTEN_RTEN2 BIT(2)
#define EXTI_RTEN_RTEN3 BIT(3)
#define EXTI_RTEN_RTEN4 BIT(4)
#define EXTI_RTEN_RTEN5 BIT(5)
#define EXTI_RTEN_RTEN6 BIT(6)
#define EXTI_RTEN_RTEN7 BIT(7)
#define EXTI_RTEN_RTEN8 BIT(8)
#define EXTI_RTEN_RTEN9 BIT(9)
#define EXTI_RTEN_RTEN10 BIT(10)
#define EXTI_RTEN_RTEN11 BIT(11)
#define EXTI_RTEN_RTEN12 BIT(12)
#define EXTI_RTEN_RTEN13 BIT(13)
#define EXTI_RTEN_RTEN14 BIT(14)
#define EXTI_RTEN_RTEN15 BIT(15)
#define EXTI_RTEN_RTEN16 BIT(16)
#define EXTI_RTEN_RTEN17 BIT(17)
#define EXTI_RTEN_RTEN18 BIT(18)


#define EXTI_FTEN_FTEN0 BIT(0)
#define EXTI_FTEN_FTEN1 BIT(1)
#define EXTI_FTEN_FTEN2 BIT(2)
#define EXTI_FTEN_FTEN3 BIT(3)
#define EXTI_FTEN_FTEN4 BIT(4)
#define EXTI_FTEN_FTEN5 BIT(5)
#define EXTI_FTEN_FTEN6 BIT(6)
#define EXTI_FTEN_FTEN7 BIT(7)
#define EXTI_FTEN_FTEN8 BIT(8)
#define EXTI_FTEN_FTEN9 BIT(9)
#define EXTI_FTEN_FTEN10 BIT(10)
#define EXTI_FTEN_FTEN11 BIT(11)
#define EXTI_FTEN_FTEN12 BIT(12)
#define EXTI_FTEN_FTEN13 BIT(13)
#define EXTI_FTEN_FTEN14 BIT(14)
#define EXTI_FTEN_FTEN15 BIT(15)
#define EXTI_FTEN_FTEN16 BIT(16)
#define EXTI_FTEN_FTEN17 BIT(17)
#define EXTI_FTEN_FTEN18 BIT(18)


#define EXTI_SWIEV_SWIEV0 BIT(0)
#define EXTI_SWIEV_SWIEV1 BIT(1)
#define EXTI_SWIEV_SWIEV2 BIT(2)
#define EXTI_SWIEV_SWIEV3 BIT(3)
#define EXTI_SWIEV_SWIEV4 BIT(4)
#define EXTI_SWIEV_SWIEV5 BIT(5)
#define EXTI_SWIEV_SWIEV6 BIT(6)
#define EXTI_SWIEV_SWIEV7 BIT(7)
#define EXTI_SWIEV_SWIEV8 BIT(8)
#define EXTI_SWIEV_SWIEV9 BIT(9)
#define EXTI_SWIEV_SWIEV10 BIT(10)
#define EXTI_SWIEV_SWIEV11 BIT(11)
#define EXTI_SWIEV_SWIEV12 BIT(12)
#define EXTI_SWIEV_SWIEV13 BIT(13)
#define EXTI_SWIEV_SWIEV14 BIT(14)
#define EXTI_SWIEV_SWIEV15 BIT(15)
#define EXTI_SWIEV_SWIEV16 BIT(16)
#define EXTI_SWIEV_SWIEV17 BIT(17)
#define EXTI_SWIEV_SWIEV18 BIT(18)


#define EXTI_PD_PD0 BIT(0)
#define EXTI_PD_PD1 BIT(1)
#define EXTI_PD_PD2 BIT(2)
#define EXTI_PD_PD3 BIT(3)
#define EXTI_PD_PD4 BIT(4)
#define EXTI_PD_PD5 BIT(5)
#define EXTI_PD_PD6 BIT(6)
#define EXTI_PD_PD7 BIT(7)
#define EXTI_PD_PD8 BIT(8)
#define EXTI_PD_PD9 BIT(9)
#define EXTI_PD_PD10 BIT(10)
#define EXTI_PD_PD11 BIT(11)
#define EXTI_PD_PD12 BIT(12)
#define EXTI_PD_PD13 BIT(13)
#define EXTI_PD_PD14 BIT(14)
#define EXTI_PD_PD15 BIT(15)
#define EXTI_PD_PD16 BIT(16)
#define EXTI_PD_PD17 BIT(17)
#define EXTI_PD_PD18 BIT(18)



typedef enum {
    EXTI_0 = ((uint32_t)((uint32_t)0x01U<<(0))),
    EXTI_1 = ((uint32_t)((uint32_t)0x01U<<(1))),
    EXTI_2 = ((uint32_t)((uint32_t)0x01U<<(2))),
    EXTI_3 = ((uint32_t)((uint32_t)0x01U<<(3))),
    EXTI_4 = ((uint32_t)((uint32_t)0x01U<<(4))),
    EXTI_5 = ((uint32_t)((uint32_t)0x01U<<(5))),
    EXTI_6 = ((uint32_t)((uint32_t)0x01U<<(6))),
    EXTI_7 = ((uint32_t)((uint32_t)0x01U<<(7))),
    EXTI_8 = ((uint32_t)((uint32_t)0x01U<<(8))),
    EXTI_9 = ((uint32_t)((uint32_t)0x01U<<(9))),
    EXTI_10 = ((uint32_t)((uint32_t)0x01U<<(10))),
    EXTI_11 = ((uint32_t)((uint32_t)0x01U<<(11))),
    EXTI_12 = ((uint32_t)((uint32_t)0x01U<<(12))),
    EXTI_13 = ((uint32_t)((uint32_t)0x01U<<(13))),
    EXTI_14 = ((uint32_t)((uint32_t)0x01U<<(14))),
    EXTI_15 = ((uint32_t)((uint32_t)0x01U<<(15))),
    EXTI_16 = ((uint32_t)((uint32_t)0x01U<<(16))),
    EXTI_17 = ((uint32_t)((uint32_t)0x01U<<(17))),
    EXTI_18 = ((uint32_t)((uint32_t)0x01U<<(18))),
} exti_line_enum;


typedef enum {
    EXTI_INTERRUPT = 0,
    EXTI_EVENT
} exti_mode_enum;


typedef enum {
    EXTI_TRIG_RISING = 0,
    EXTI_TRIG_FALLING,
    EXTI_TRIG_BOTH
} exti_trig_type_enum;




void exti_deinit(void);

void exti_init(exti_line_enum linex, exti_mode_enum mode, exti_trig_type_enum trig_type);

void exti_interrupt_enable(exti_line_enum linex);

void exti_event_enable(exti_line_enum linex);

void exti_interrupt_disable(exti_line_enum linex);

void exti_event_disable(exti_line_enum linex);



FlagStatus exti_flag_get(exti_line_enum linex);

void exti_flag_clear(exti_line_enum linex);

FlagStatus exti_interrupt_flag_get(exti_line_enum linex);

void exti_interrupt_flag_clear(exti_line_enum linex);

void exti_software_interrupt_enable(exti_line_enum linex);

void exti_software_interrupt_disable(exti_line_enum linex);
# 47 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_fmc.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_fmc.h"
#define GD32VF103_FMC_H 




#define FMC FMC_BASE
#define OB OB_BASE


#define FMC_WS REG32((FMC) + 0x00U)
#define FMC_KEY0 REG32((FMC) + 0x04U)
#define FMC_OBKEY REG32((FMC) + 0x08U)
#define FMC_STAT0 REG32((FMC) + 0x0CU)
#define FMC_CTL0 REG32((FMC) + 0x10U)
#define FMC_ADDR0 REG32((FMC) + 0x14U)
#define FMC_OBSTAT REG32((FMC) + 0x1CU)
#define FMC_WP REG32((FMC) + 0x20U)
#define FMC_PID REG32((FMC) + 0x100U)

#define OB_SPC REG16((OB) + 0x00U)
#define OB_USER REG16((OB) + 0x02U)
#define OB_WP0 REG16((OB) + 0x08U)
#define OB_WP1 REG16((OB) + 0x0AU)
#define OB_WP2 REG16((OB) + 0x0CU)
#define OB_WP3 REG16((OB) + 0x0EU)



#define FMC_WS_WSCNT BITS(0,2)


#define FMC_KEY0_KEY BITS(0,31)


#define FMC_OBKEY_OBKEY BITS(0,31)


#define FMC_STAT0_BUSY BIT(0)
#define FMC_STAT0_PGERR BIT(2)
#define FMC_STAT0_WPERR BIT(4)
#define FMC_STAT0_ENDF BIT(5)


#define FMC_CTL0_PG BIT(0)
#define FMC_CTL0_PER BIT(1)
#define FMC_CTL0_MER BIT(2)
#define FMC_CTL0_OBPG BIT(4)
#define FMC_CTL0_OBER BIT(5)
#define FMC_CTL0_START BIT(6)
#define FMC_CTL0_LK BIT(7)
#define FMC_CTL0_OBWEN BIT(9)
#define FMC_CTL0_ERRIE BIT(10)
#define FMC_CTL0_ENDIE BIT(12)


#define FMC_ADDR0_ADDR BITS(0,31)


#define FMC_OBSTAT_OBERR BIT(0)
#define FMC_OBSTAT_SPC BIT(1)
#define FMC_OBSTAT_USER BITS(2,9)
#define FMC_OBSTAT_DATA BITS(10,25)


#define FMC_WP_WP BITS(0,31)


#define FMC_WSEN_WSEN BIT(0)


#define FMC_PID_PID BITS(0,31)



#define FMC_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))
#define FMC_REG_VAL(offset) (REG32(FMC + ((uint32_t)(offset) >> 6)))
#define FMC_BIT_POS(val) ((uint32_t)(val) & 0x1FU)
#define FMC_REGIDX_BITS(regidx,bitpos0,bitpos1) (((uint32_t)(regidx) << 12) | ((uint32_t)(bitpos0) << 6) | (uint32_t)(bitpos1))
#define FMC_REG_VALS(offset) (REG32(FMC + ((uint32_t)(offset) >> 12)))
#define FMC_BIT_POS0(val) (((uint32_t)(val) >> 6) & 0x1FU)
#define FMC_BIT_POS1(val) ((uint32_t)(val) & 0x1FU)
#define FMC_REG_OFFSET_GET(flag) ((uint32_t)(flag) >> 12)


#define FMC_STAT0_REG_OFFSET 0x0CU
#define FMC_CTL0_REG_OFFSET 0x10U
#define FMC_OBSTAT_REG_OFFSET 0x1CU


typedef enum
{
    FMC_READY,
    FMC_BUSY,
    FMC_PGERR,
    FMC_WPERR,
    FMC_TOERR,
}fmc_state_enum;


typedef enum
{
    FMC_INT_END = (((uint32_t)(0x10U) << 6) | (uint32_t)(12U)),
    FMC_INT_ERR = (((uint32_t)(0x10U) << 6) | (uint32_t)(10U)),
}fmc_int_enum;


typedef enum
{
    FMC_FLAG_BUSY = (((uint32_t)(0x0CU) << 6) | (uint32_t)(0U)),
    FMC_FLAG_PGERR = (((uint32_t)(0x0CU) << 6) | (uint32_t)(2U)),
    FMC_FLAG_WPERR = (((uint32_t)(0x0CU) << 6) | (uint32_t)(4U)),
    FMC_FLAG_END = (((uint32_t)(0x0CU) << 6) | (uint32_t)(5U)),
    FMC_FLAG_OBERR = (((uint32_t)(0x1CU) << 6) | (uint32_t)(0U)),
}fmc_flag_enum;


typedef enum
{
    FMC_INT_FLAG_PGERR = (((uint32_t)(0x0CU) << 12) | ((uint32_t)(2U) << 6) | (uint32_t)(10U)),
    FMC_INT_FLAG_WPERR = (((uint32_t)(0x0CU) << 12) | ((uint32_t)(4U) << 6) | (uint32_t)(10U)),
    FMC_INT_FLAG_END = (((uint32_t)(0x0CU) << 12) | ((uint32_t)(5U) << 6) | (uint32_t)(12U)),
}fmc_interrupt_flag_enum;


#define UNLOCK_KEY0 ((uint32_t)0x45670123U)
#define UNLOCK_KEY1 ((uint32_t)0xCDEF89ABU)


#define WS_WSCNT(regval) (BITS(0,2) & ((uint32_t)(regval)))
#define WS_WSCNT_0 WS_WSCNT(0)
#define WS_WSCNT_1 WS_WSCNT(1)
#define WS_WSCNT_2 WS_WSCNT(2)


#define OB_FWDGT_SW ((uint8_t)0x01U)
#define OB_FWDGT_HW ((uint8_t)0x00U)


#define OB_DEEPSLEEP_NRST ((uint8_t)0x02U)
#define OB_DEEPSLEEP_RST ((uint8_t)0x00U)


#define OB_STDBY_NRST ((uint8_t)0x04U)
#define OB_STDBY_RST ((uint8_t)0x00U)


#define OB_BOOT_B0 ((uint8_t)0x08U)

#define OB_USER_MASK ((uint8_t)0xF0U)


#define FMC_NSPC ((uint8_t)0xA5U)
#define FMC_USPC ((uint8_t)0xBBU)


#define OB_SPC_SPC ((uint32_t)0x000000FFU)
#define OB_SPC_SPC_N ((uint32_t)0x0000FF00U)


#define OB_USER_USER ((uint32_t)0x00FF0000U)
#define OB_USER_USER_N ((uint32_t)0xFF000000U)


#define OB_WP0_WP0 ((uint32_t)0x000000FFU)


#define OB_WP1_WP1 ((uint32_t)0x0000FF00U)


#define OB_WP2_WP2 ((uint32_t)0x00FF0000U)


#define OB_WP3_WP3 ((uint32_t)0xFF000000U)


#define OB_WP_0 ((uint32_t)0x00000001U)
#define OB_WP_1 ((uint32_t)0x00000002U)
#define OB_WP_2 ((uint32_t)0x00000004U)
#define OB_WP_3 ((uint32_t)0x00000008U)
#define OB_WP_4 ((uint32_t)0x00000010U)
#define OB_WP_5 ((uint32_t)0x00000020U)
#define OB_WP_6 ((uint32_t)0x00000040U)
#define OB_WP_7 ((uint32_t)0x00000080U)
#define OB_WP_8 ((uint32_t)0x00000100U)
#define OB_WP_9 ((uint32_t)0x00000200U)
#define OB_WP_10 ((uint32_t)0x00000400U)
#define OB_WP_11 ((uint32_t)0x00000800U)
#define OB_WP_12 ((uint32_t)0x00001000U)
#define OB_WP_13 ((uint32_t)0x00002000U)
#define OB_WP_14 ((uint32_t)0x00004000U)
#define OB_WP_15 ((uint32_t)0x00008000U)
#define OB_WP_16 ((uint32_t)0x00010000U)
#define OB_WP_17 ((uint32_t)0x00020000U)
#define OB_WP_18 ((uint32_t)0x00040000U)
#define OB_WP_19 ((uint32_t)0x00080000U)
#define OB_WP_20 ((uint32_t)0x00100000U)
#define OB_WP_21 ((uint32_t)0x00200000U)
#define OB_WP_22 ((uint32_t)0x00400000U)
#define OB_WP_23 ((uint32_t)0x00800000U)
#define OB_WP_24 ((uint32_t)0x01000000U)
#define OB_WP_25 ((uint32_t)0x02000000U)
#define OB_WP_26 ((uint32_t)0x04000000U)
#define OB_WP_27 ((uint32_t)0x08000000U)
#define OB_WP_28 ((uint32_t)0x10000000U)
#define OB_WP_29 ((uint32_t)0x20000000U)
#define OB_WP_30 ((uint32_t)0x40000000U)
#define OB_WP_31 ((uint32_t)0x80000000U)
#define OB_WP_ALL ((uint32_t)0xFFFFFFFFU)


#define FMC_TIMEOUT_COUNT ((uint32_t)0x000F0000U)


#define FMC_SIZE (*(uint16_t *)0x1FFFF7E0U)
#define SRAM_SIZE (*(uint16_t *)0x1FFFF7E2U)




void fmc_wscnt_set(uint32_t wscnt);

void fmc_unlock(void);

void fmc_lock(void);

fmc_state_enum fmc_page_erase(uint32_t page_address);

fmc_state_enum fmc_mass_erase(void);

fmc_state_enum fmc_word_program(uint32_t address, uint32_t data);

fmc_state_enum fmc_halfword_program(uint32_t address, uint16_t data);



void ob_unlock(void);

void ob_lock(void);

fmc_state_enum ob_erase(void);

fmc_state_enum ob_write_protection_enable(uint32_t ob_wp);

fmc_state_enum ob_security_protection_config(uint8_t ob_spc);

fmc_state_enum ob_user_write(uint8_t ob_fwdgt, uint8_t ob_deepsleep, uint8_t ob_stdby, uint8_t ob_boot);

fmc_state_enum ob_data_program(uint32_t address, uint8_t data);

uint8_t ob_user_get(void);

uint16_t ob_data_get(void);

uint32_t ob_write_protection_get(void);

FlagStatus ob_spc_get(void);



void fmc_interrupt_enable(uint32_t interrupt);

void fmc_interrupt_disable(uint32_t interrupt);

FlagStatus fmc_flag_get(uint32_t flag);

void fmc_flag_clear(uint32_t flag);

FlagStatus fmc_interrupt_flag_get(fmc_interrupt_flag_enum flag);

void fmc_interrupt_flag_clear(fmc_interrupt_flag_enum flag);

fmc_state_enum fmc_state_get(void);

fmc_state_enum fmc_ready_wait(uint32_t timeout);
# 48 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_gpio.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_gpio.h"
#define GD32VF103_GPIO_H 




#define GPIOA (GPIO_BASE + 0x00000000U)
#define GPIOB (GPIO_BASE + 0x00000400U)
#define GPIOC (GPIO_BASE + 0x00000800U)
#define GPIOD (GPIO_BASE + 0x00000C00U)
#define GPIOE (GPIO_BASE + 0x00001000U)


#define AFIO AFIO_BASE




#define GPIO_CTL0(gpiox) REG32((gpiox) + 0x00U)
#define GPIO_CTL1(gpiox) REG32((gpiox) + 0x04U)
#define GPIO_ISTAT(gpiox) REG32((gpiox) + 0x08U)
#define GPIO_OCTL(gpiox) REG32((gpiox) + 0x0CU)
#define GPIO_BOP(gpiox) REG32((gpiox) + 0x10U)
#define GPIO_BC(gpiox) REG32((gpiox) + 0x14U)
#define GPIO_LOCK(gpiox) REG32((gpiox) + 0x18U)


#define AFIO_EC REG32(AFIO + 0x00U)
#define AFIO_PCF0 REG32(AFIO + 0x04U)
#define AFIO_EXTISS0 REG32(AFIO + 0x08U)
#define AFIO_EXTISS1 REG32(AFIO + 0x0CU)
#define AFIO_EXTISS2 REG32(AFIO + 0x10U)
#define AFIO_EXTISS3 REG32(AFIO + 0x14U)
#define AFIO_PCF1 REG32(AFIO + 0x1CU)



#define GPIO_CTL0_MD0 BITS(0, 1)
#define GPIO_CTL0_CTL0 BITS(2, 3)
#define GPIO_CTL0_MD1 BITS(4, 5)
#define GPIO_CTL0_CTL1 BITS(6, 7)
#define GPIO_CTL0_MD2 BITS(8, 9)
#define GPIO_CTL0_CTL2 BITS(10, 11)
#define GPIO_CTL0_MD3 BITS(12, 13)
#define GPIO_CTL0_CTL3 BITS(14, 15)
#define GPIO_CTL0_MD4 BITS(16, 17)
#define GPIO_CTL0_CTL4 BITS(18, 19)
#define GPIO_CTL0_MD5 BITS(20, 21)
#define GPIO_CTL0_CTL5 BITS(22, 23)
#define GPIO_CTL0_MD6 BITS(24, 25)
#define GPIO_CTL0_CTL6 BITS(26, 27)
#define GPIO_CTL0_MD7 BITS(28, 29)
#define GPIO_CTL0_CTL7 BITS(30, 31)


#define GPIO_CTL1_MD8 BITS(0, 1)
#define GPIO_CTL1_CTL8 BITS(2, 3)
#define GPIO_CTL1_MD9 BITS(4, 5)
#define GPIO_CTL1_CTL9 BITS(6, 7)
#define GPIO_CTL1_MD10 BITS(8, 9)
#define GPIO_CTL1_CTL10 BITS(10, 11)
#define GPIO_CTL1_MD11 BITS(12, 13)
#define GPIO_CTL1_CTL11 BITS(14, 15)
#define GPIO_CTL1_MD12 BITS(16, 17)
#define GPIO_CTL1_CTL12 BITS(18, 19)
#define GPIO_CTL1_MD13 BITS(20, 21)
#define GPIO_CTL1_CTL13 BITS(22, 23)
#define GPIO_CTL1_MD14 BITS(24, 25)
#define GPIO_CTL1_CTL14 BITS(26, 27)
#define GPIO_CTL1_MD15 BITS(28, 29)
#define GPIO_CTL1_CTL15 BITS(30, 31)


#define GPIO_ISTAT_ISTAT0 BIT(0)
#define GPIO_ISTAT_ISTAT1 BIT(1)
#define GPIO_ISTAT_ISTAT2 BIT(2)
#define GPIO_ISTAT_ISTAT3 BIT(3)
#define GPIO_ISTAT_ISTAT4 BIT(4)
#define GPIO_ISTAT_ISTAT5 BIT(5)
#define GPIO_ISTAT_ISTAT6 BIT(6)
#define GPIO_ISTAT_ISTAT7 BIT(7)
#define GPIO_ISTAT_ISTAT8 BIT(8)
#define GPIO_ISTAT_ISTAT9 BIT(9)
#define GPIO_ISTAT_ISTAT10 BIT(10)
#define GPIO_ISTAT_ISTAT11 BIT(11)
#define GPIO_ISTAT_ISTAT12 BIT(12)
#define GPIO_ISTAT_ISTAT13 BIT(13)
#define GPIO_ISTAT_ISTAT14 BIT(14)
#define GPIO_ISTAT_ISTAT15 BIT(15)


#define GPIO_OCTL_OCTL0 BIT(0)
#define GPIO_OCTL_OCTL1 BIT(1)
#define GPIO_OCTL_OCTL2 BIT(2)
#define GPIO_OCTL_OCTL3 BIT(3)
#define GPIO_OCTL_OCTL4 BIT(4)
#define GPIO_OCTL_OCTL5 BIT(5)
#define GPIO_OCTL_OCTL6 BIT(6)
#define GPIO_OCTL_OCTL7 BIT(7)
#define GPIO_OCTL_OCTL8 BIT(8)
#define GPIO_OCTL_OCTL9 BIT(9)
#define GPIO_OCTL_OCTL10 BIT(10)
#define GPIO_OCTL_OCTL11 BIT(11)
#define GPIO_OCTL_OCTL12 BIT(12)
#define GPIO_OCTL_OCTL13 BIT(13)
#define GPIO_OCTL_OCTL14 BIT(14)
#define GPIO_OCTL_OCTL15 BIT(15)


#define GPIO_BOP_BOP0 BIT(0)
#define GPIO_BOP_BOP1 BIT(1)
#define GPIO_BOP_BOP2 BIT(2)
#define GPIO_BOP_BOP3 BIT(3)
#define GPIO_BOP_BOP4 BIT(4)
#define GPIO_BOP_BOP5 BIT(5)
#define GPIO_BOP_BOP6 BIT(6)
#define GPIO_BOP_BOP7 BIT(7)
#define GPIO_BOP_BOP8 BIT(8)
#define GPIO_BOP_BOP9 BIT(9)
#define GPIO_BOP_BOP10 BIT(10)
#define GPIO_BOP_BOP11 BIT(11)
#define GPIO_BOP_BOP12 BIT(12)
#define GPIO_BOP_BOP13 BIT(13)
#define GPIO_BOP_BOP14 BIT(14)
#define GPIO_BOP_BOP15 BIT(15)
#define GPIO_BOP_CR0 BIT(16)
#define GPIO_BOP_CR1 BIT(17)
#define GPIO_BOP_CR2 BIT(18)
#define GPIO_BOP_CR3 BIT(19)
#define GPIO_BOP_CR4 BIT(20)
#define GPIO_BOP_CR5 BIT(21)
#define GPIO_BOP_CR6 BIT(22)
#define GPIO_BOP_CR7 BIT(23)
#define GPIO_BOP_CR8 BIT(24)
#define GPIO_BOP_CR9 BIT(25)
#define GPIO_BOP_CR10 BIT(26)
#define GPIO_BOP_CR11 BIT(27)
#define GPIO_BOP_CR12 BIT(28)
#define GPIO_BOP_CR13 BIT(29)
#define GPIO_BOP_CR14 BIT(30)
#define GPIO_BOP_CR15 BIT(31)


#define GPIO_BC_CR0 BIT(0)
#define GPIO_BC_CR1 BIT(1)
#define GPIO_BC_CR2 BIT(2)
#define GPIO_BC_CR3 BIT(3)
#define GPIO_BC_CR4 BIT(4)
#define GPIO_BC_CR5 BIT(5)
#define GPIO_BC_CR6 BIT(6)
#define GPIO_BC_CR7 BIT(7)
#define GPIO_BC_CR8 BIT(8)
#define GPIO_BC_CR9 BIT(9)
#define GPIO_BC_CR10 BIT(10)
#define GPIO_BC_CR11 BIT(11)
#define GPIO_BC_CR12 BIT(12)
#define GPIO_BC_CR13 BIT(13)
#define GPIO_BC_CR14 BIT(14)
#define GPIO_BC_CR15 BIT(15)


#define GPIO_LOCK_LK0 BIT(0)
#define GPIO_LOCK_LK1 BIT(1)
#define GPIO_LOCK_LK2 BIT(2)
#define GPIO_LOCK_LK3 BIT(3)
#define GPIO_LOCK_LK4 BIT(4)
#define GPIO_LOCK_LK5 BIT(5)
#define GPIO_LOCK_LK6 BIT(6)
#define GPIO_LOCK_LK7 BIT(7)
#define GPIO_LOCK_LK8 BIT(8)
#define GPIO_LOCK_LK9 BIT(9)
#define GPIO_LOCK_LK10 BIT(10)
#define GPIO_LOCK_LK11 BIT(11)
#define GPIO_LOCK_LK12 BIT(12)
#define GPIO_LOCK_LK13 BIT(13)
#define GPIO_LOCK_LK14 BIT(14)
#define GPIO_LOCK_LK15 BIT(15)
#define GPIO_LOCK_LKK BIT(16)


#define AFIO_EC_PIN BITS(0, 3)
#define AFIO_EC_PORT BITS(4, 6)
#define AFIO_EC_EOE BIT(7)



#define AFIO_PCF0_SPI0_REMAP BIT(0)
#define AFIO_PCF0_I2C0_REMAP BIT(1)
#define AFIO_PCF0_USART0_REMAP BIT(2)
#define AFIO_PCF0_USART1_REMAP BIT(3)
#define AFIO_PCF0_USART2_REMAP BITS(4, 5)
#define AFIO_PCF0_TIMER0_REMAP BITS(6, 7)
#define AFIO_PCF0_TIMER1_REMAP BITS(8, 9)
#define AFIO_PCF0_TIMER2_REMAP BITS(10, 11)
#define AFIO_PCF0_TIMER3_REMAP BIT(12)
#define AFIO_PCF0_CAN_REMAP BITS(13, 14)
#define AFIO_PCF0_PD01_REMAP BIT(15)
#define AFIO_PCF0_TIMER4CH3_IREMAP BIT(16)
#define AFIO_PCF0_SWJ_CFG BITS(24, 26)
#define AFIO_PCF0_SPI2_REMAP BIT(28)
#define AFIO_PCF0_TIMER1_ITI1_REMAP BIT(29)


#define AFIO_EXTI0_SS BITS(0, 3)
#define AFIO_EXTI1_SS BITS(4, 7)
#define AFIO_EXTI2_SS BITS(8, 11)
#define AFIO_EXTI3_SS BITS(12, 15)


#define AFIO_EXTI4_SS BITS(0, 3)
#define AFIO_EXTI5_SS BITS(4, 7)
#define AFIO_EXTI6_SS BITS(8, 11)
#define AFIO_EXTI7_SS BITS(12, 15)


#define AFIO_EXTI8_SS BITS(0, 3)
#define AFIO_EXTI9_SS BITS(4, 7)
#define AFIO_EXTI10_SS BITS(8, 11)
#define AFIO_EXTI11_SS BITS(12, 15)


#define AFIO_EXTI12_SS BITS(0, 3)
#define AFIO_EXTI13_SS BITS(4, 7)
#define AFIO_EXTI14_SS BITS(8, 11)
#define AFIO_EXTI15_SS BITS(12, 15)


#define AFIO_PCF1_EXMC_NADV BIT(10)


typedef FlagStatus bit_status;


#define GPIO_MODE_SET(n,mode) ((uint32_t)((uint32_t)(mode) << (4U * (n))))
#define GPIO_MODE_MASK(n) (0xFU << (4U * (n)))


#define GPIO_MODE_AIN ((uint8_t)0x00U)
#define GPIO_MODE_IN_FLOATING ((uint8_t)0x04U)
#define GPIO_MODE_IPD ((uint8_t)0x28U)
#define GPIO_MODE_IPU ((uint8_t)0x48U)
#define GPIO_MODE_OUT_OD ((uint8_t)0x14U)
#define GPIO_MODE_OUT_PP ((uint8_t)0x10U)
#define GPIO_MODE_AF_OD ((uint8_t)0x1CU)
#define GPIO_MODE_AF_PP ((uint8_t)0x18U)


#define GPIO_OSPEED_10MHZ ((uint8_t)0x01U)
#define GPIO_OSPEED_2MHZ ((uint8_t)0x02U)
#define GPIO_OSPEED_50MHZ ((uint8_t)0x03U)


#define GPIO_EVENT_PORT_GPIOA ((uint8_t)0x00U)
#define GPIO_EVENT_PORT_GPIOB ((uint8_t)0x01U)
#define GPIO_EVENT_PORT_GPIOC ((uint8_t)0x02U)
#define GPIO_EVENT_PORT_GPIOD ((uint8_t)0x03U)
#define GPIO_EVENT_PORT_GPIOE ((uint8_t)0x04U)


#define GPIO_PORT_SOURCE_GPIOA ((uint8_t)0x00U)
#define GPIO_PORT_SOURCE_GPIOB ((uint8_t)0x01U)
#define GPIO_PORT_SOURCE_GPIOC ((uint8_t)0x02U)
#define GPIO_PORT_SOURCE_GPIOD ((uint8_t)0x03U)
#define GPIO_PORT_SOURCE_GPIOE ((uint8_t)0x04U)


#define GPIO_EVENT_PIN_0 ((uint8_t)0x00U)
#define GPIO_EVENT_PIN_1 ((uint8_t)0x01U)
#define GPIO_EVENT_PIN_2 ((uint8_t)0x02U)
#define GPIO_EVENT_PIN_3 ((uint8_t)0x03U)
#define GPIO_EVENT_PIN_4 ((uint8_t)0x04U)
#define GPIO_EVENT_PIN_5 ((uint8_t)0x05U)
#define GPIO_EVENT_PIN_6 ((uint8_t)0x06U)
#define GPIO_EVENT_PIN_7 ((uint8_t)0x07U)
#define GPIO_EVENT_PIN_8 ((uint8_t)0x08U)
#define GPIO_EVENT_PIN_9 ((uint8_t)0x09U)
#define GPIO_EVENT_PIN_10 ((uint8_t)0x0AU)
#define GPIO_EVENT_PIN_11 ((uint8_t)0x0BU)
#define GPIO_EVENT_PIN_12 ((uint8_t)0x0CU)
#define GPIO_EVENT_PIN_13 ((uint8_t)0x0DU)
#define GPIO_EVENT_PIN_14 ((uint8_t)0x0EU)
#define GPIO_EVENT_PIN_15 ((uint8_t)0x0FU)


#define GPIO_PIN_SOURCE_0 ((uint8_t)0x00U)
#define GPIO_PIN_SOURCE_1 ((uint8_t)0x01U)
#define GPIO_PIN_SOURCE_2 ((uint8_t)0x02U)
#define GPIO_PIN_SOURCE_3 ((uint8_t)0x03U)
#define GPIO_PIN_SOURCE_4 ((uint8_t)0x04U)
#define GPIO_PIN_SOURCE_5 ((uint8_t)0x05U)
#define GPIO_PIN_SOURCE_6 ((uint8_t)0x06U)
#define GPIO_PIN_SOURCE_7 ((uint8_t)0x07U)
#define GPIO_PIN_SOURCE_8 ((uint8_t)0x08U)
#define GPIO_PIN_SOURCE_9 ((uint8_t)0x09U)
#define GPIO_PIN_SOURCE_10 ((uint8_t)0x0AU)
#define GPIO_PIN_SOURCE_11 ((uint8_t)0x0BU)
#define GPIO_PIN_SOURCE_12 ((uint8_t)0x0CU)
#define GPIO_PIN_SOURCE_13 ((uint8_t)0x0DU)
#define GPIO_PIN_SOURCE_14 ((uint8_t)0x0EU)
#define GPIO_PIN_SOURCE_15 ((uint8_t)0x0FU)


#define GPIO_PIN_0 BIT(0)
#define GPIO_PIN_1 BIT(1)
#define GPIO_PIN_2 BIT(2)
#define GPIO_PIN_3 BIT(3)
#define GPIO_PIN_4 BIT(4)
#define GPIO_PIN_5 BIT(5)
#define GPIO_PIN_6 BIT(6)
#define GPIO_PIN_7 BIT(7)
#define GPIO_PIN_8 BIT(8)
#define GPIO_PIN_9 BIT(9)
#define GPIO_PIN_10 BIT(10)
#define GPIO_PIN_11 BIT(11)
#define GPIO_PIN_12 BIT(12)
#define GPIO_PIN_13 BIT(13)
#define GPIO_PIN_14 BIT(14)
#define GPIO_PIN_15 BIT(15)
#define GPIO_PIN_ALL BITS(0, 15)


#define GPIO_SPI0_REMAP ((uint32_t)0x00000001U)
#define GPIO_I2C0_REMAP ((uint32_t)0x00000002U)
#define GPIO_USART0_REMAP ((uint32_t)0x00000004U)
#define GPIO_USART1_REMAP ((uint32_t)0x00000008U)
#define GPIO_USART2_PARTIAL_REMAP ((uint32_t)0x00140010U)
#define GPIO_USART2_FULL_REMAP ((uint32_t)0x00140030U)
#define GPIO_TIMER0_PARTIAL_REMAP ((uint32_t)0x00160040U)
#define GPIO_TIMER0_FULL_REMAP ((uint32_t)0x001600C0U)
#define GPIO_TIMER1_PARTIAL_REMAP0 ((uint32_t)0x00180100U)
#define GPIO_TIMER1_PARTIAL_REMAP1 ((uint32_t)0x00180200U)
#define GPIO_TIMER1_FULL_REMAP ((uint32_t)0x00180300U)
#define GPIO_TIMER2_PARTIAL_REMAP ((uint32_t)0x001A0800U)
#define GPIO_TIMER2_FULL_REMAP ((uint32_t)0x001A0C00U)
#define GPIO_TIMER3_REMAP ((uint32_t)0x00001000U)
#define GPIO_CAN0_PARTIAL_REMAP ((uint32_t)0x001D4000U)
#define GPIO_CAN0_FULL_REMAP ((uint32_t)0x001D6000U)
#define GPIO_PD01_REMAP ((uint32_t)0x00008000U)
#define GPIO_TIMER4CH3_IREMAP ((uint32_t)0x00200001U)
#define GPIO_CAN1_REMAP ((uint32_t)0x00200040U)
#define GPIO_SWJ_NONJTRST_REMAP ((uint32_t)0x00300100U)
#define GPIO_SWJ_SWDPENABLE_REMAP ((uint32_t)0x00300200U)
#define GPIO_SWJ_DISABLE_REMAP ((uint32_t)0x00300400U)
#define GPIO_SPI2_REMAP ((uint32_t)0x00201100U)
#define GPIO_TIMER1ITI1_REMAP ((uint32_t)0x00202000U)
#define GPIO_EXMC_NADV_REMAP ((uint32_t)0x80000400U)



void gpio_deinit(uint32_t gpio_periph);

void gpio_afio_deinit(void);

void gpio_init(uint32_t gpio_periph,uint32_t mode,uint32_t speed,uint32_t pin);


void gpio_bit_set(uint32_t gpio_periph, uint32_t pin);

void gpio_bit_reset(uint32_t gpio_periph, uint32_t pin);

void gpio_bit_write(uint32_t gpio_periph, uint32_t pin, bit_status bit_value);

void gpio_port_write(uint32_t gpio_periph, uint16_t data);


FlagStatus gpio_input_bit_get(uint32_t gpio_periph, uint32_t pin);

uint16_t gpio_input_port_get(uint32_t gpio_periph);

FlagStatus gpio_output_bit_get(uint32_t gpio_periph, uint32_t pin);

uint16_t gpio_output_port_get(uint32_t gpio_periph);


void gpio_pin_remap_config(uint32_t remap, ControlStatus newvalue);


void gpio_exti_source_select(uint8_t output_port, uint8_t output_pin);

void gpio_event_output_config(uint8_t output_port, uint8_t output_pin);

void gpio_event_output_enable(void);

void gpio_event_output_disable(void);


void gpio_pin_lock(uint32_t gpio_periph, uint32_t pin);
# 49 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_i2c.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_i2c.h"
#define GD32VF103_I2C_H 




#define I2C0 I2C_BASE
#define I2C1 (I2C_BASE + 0x00000400U)


#define I2C_CTL0(i2cx) REG32((i2cx) + 0x00U)
#define I2C_CTL1(i2cx) REG32((i2cx) + 0x04U)
#define I2C_SADDR0(i2cx) REG32((i2cx) + 0x08U)
#define I2C_SADDR1(i2cx) REG32((i2cx) + 0x0CU)
#define I2C_DATA(i2cx) REG32((i2cx) + 0x10U)
#define I2C_STAT0(i2cx) REG32((i2cx) + 0x14U)
#define I2C_STAT1(i2cx) REG32((i2cx) + 0x18U)
#define I2C_CKCFG(i2cx) REG32((i2cx) + 0x1CU)
#define I2C_RT(i2cx) REG32((i2cx) + 0x20U)



#define I2C_CTL0_I2CEN BIT(0)
#define I2C_CTL0_SMBEN BIT(1)
#define I2C_CTL0_SMBSEL BIT(3)
#define I2C_CTL0_ARPEN BIT(4)
#define I2C_CTL0_PECEN BIT(5)
#define I2C_CTL0_GCEN BIT(6)
#define I2C_CTL0_SS BIT(7)
#define I2C_CTL0_START BIT(8)
#define I2C_CTL0_STOP BIT(9)
#define I2C_CTL0_ACKEN BIT(10)
#define I2C_CTL0_POAP BIT(11)
#define I2C_CTL0_PECTRANS BIT(12)
#define I2C_CTL0_SALT BIT(13)
#define I2C_CTL0_SRESET BIT(15)


#define I2C_CTL1_I2CCLK BITS(0,5)
#define I2C_CTL1_ERRIE BIT(8)
#define I2C_CTL1_EVIE BIT(9)
#define I2C_CTL1_BUFIE BIT(10)
#define I2C_CTL1_DMAON BIT(11)
#define I2C_CTL1_DMALST BIT(12)


#define I2C_SADDR0_ADDRESS0 BIT(0)
#define I2C_SADDR0_ADDRESS BITS(1,7)
#define I2C_SADDR0_ADDRESS_H BITS(8,9)
#define I2C_SADDR0_ADDFORMAT BIT(15)


#define I2C_SADDR1_DUADEN BIT(0)
#define I2C_SADDR1_ADDRESS2 BITS(1,7)


#define I2C_DATA_TRB BITS(0,7)


#define I2C_STAT0_SBSEND BIT(0)
#define I2C_STAT0_ADDSEND BIT(1)
#define I2C_STAT0_BTC BIT(2)
#define I2C_STAT0_ADD10SEND BIT(3)
#define I2C_STAT0_STPDET BIT(4)
#define I2C_STAT0_RBNE BIT(6)
#define I2C_STAT0_TBE BIT(7)
#define I2C_STAT0_BERR BIT(8)
#define I2C_STAT0_LOSTARB BIT(9)
#define I2C_STAT0_AERR BIT(10)
#define I2C_STAT0_OUERR BIT(11)
#define I2C_STAT0_PECERR BIT(12)
#define I2C_STAT0_SMBTO BIT(14)
#define I2C_STAT0_SMBALT BIT(15)


#define I2C_STAT1_MASTER BIT(0)
#define I2C_STAT1_I2CBSY BIT(1)
#define I2C_STAT1_TR BIT(2)
#define I2C_STAT1_RXGC BIT(4)
#define I2C_STAT1_DEFSMB BIT(5)
#define I2C_STAT1_HSTSMB BIT(6)
#define I2C_STAT1_DUMODF BIT(7)
#define I2C_STAT1_PECV BITS(8,15)


#define I2C_CKCFG_CLKC BITS(0,11)
#define I2C_CKCFG_DTCY BIT(14)
#define I2C_CKCFG_FAST BIT(15)


#define I2C_RT_RISETIME BITS(0,5)



#define I2C_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))
#define I2C_REG_VAL(i2cx,offset) (REG32((i2cx) + (((uint32_t)(offset) & 0xFFFFU) >> 6)))
#define I2C_BIT_POS(val) ((uint32_t)(val) & 0x1FU)
#define I2C_REGIDX_BIT2(regidx,bitpos,regidx2,bitpos2) (((uint32_t)(regidx2) << 22) | (uint32_t)((bitpos2) << 16) | (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos)))

#define I2C_REG_VAL2(i2cx,offset) (REG32((i2cx) + ((uint32_t)(offset) >> 22)))
#define I2C_BIT_POS2(val) (((uint32_t)(val) & 0x1F0000U) >> 16)


#define I2C_CTL1_REG_OFFSET 0x04U
#define I2C_STAT0_REG_OFFSET 0x14U
#define I2C_STAT1_REG_OFFSET 0x18U


typedef enum {

    I2C_FLAG_SBSEND = (((uint32_t)(0x14U) << 6) | (uint32_t)(0U)),
    I2C_FLAG_ADDSEND = (((uint32_t)(0x14U) << 6) | (uint32_t)(1U)),
    I2C_FLAG_BTC = (((uint32_t)(0x14U) << 6) | (uint32_t)(2U)),
    I2C_FLAG_ADD10SEND = (((uint32_t)(0x14U) << 6) | (uint32_t)(3U)),
    I2C_FLAG_STPDET = (((uint32_t)(0x14U) << 6) | (uint32_t)(4U)),
    I2C_FLAG_RBNE = (((uint32_t)(0x14U) << 6) | (uint32_t)(6U)),
    I2C_FLAG_TBE = (((uint32_t)(0x14U) << 6) | (uint32_t)(7U)),
    I2C_FLAG_BERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(8U)),
    I2C_FLAG_LOSTARB = (((uint32_t)(0x14U) << 6) | (uint32_t)(9U)),
    I2C_FLAG_AERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(10U)),
    I2C_FLAG_OUERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(11U)),
    I2C_FLAG_PECERR = (((uint32_t)(0x14U) << 6) | (uint32_t)(12U)),
    I2C_FLAG_SMBTO = (((uint32_t)(0x14U) << 6) | (uint32_t)(14U)),
    I2C_FLAG_SMBALT = (((uint32_t)(0x14U) << 6) | (uint32_t)(15U)),

    I2C_FLAG_MASTER = (((uint32_t)(0x18U) << 6) | (uint32_t)(0U)),
    I2C_FLAG_I2CBSY = (((uint32_t)(0x18U) << 6) | (uint32_t)(1U)),
    I2C_FLAG_TR = (((uint32_t)(0x18U) << 6) | (uint32_t)(2U)),
    I2C_FLAG_RXGC = (((uint32_t)(0x18U) << 6) | (uint32_t)(4U)),
    I2C_FLAG_DEFSMB = (((uint32_t)(0x18U) << 6) | (uint32_t)(5U)),
    I2C_FLAG_HSTSMB = (((uint32_t)(0x18U) << 6) | (uint32_t)(6U)),
    I2C_FLAG_DUMODF = (((uint32_t)(0x18U) << 6) | (uint32_t)(7U)),
} i2c_flag_enum;


typedef enum {

    I2C_INT_FLAG_SBSEND = (((uint32_t)(0x14U) << 22) | (uint32_t)((0U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_ADDSEND = (((uint32_t)(0x14U) << 22) | (uint32_t)((1U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_BTC = (((uint32_t)(0x14U) << 22) | (uint32_t)((2U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_ADD10SEND = (((uint32_t)(0x14U) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_STPDET = (((uint32_t)(0x14U) << 22) | (uint32_t)((4U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_RBNE = (((uint32_t)(0x14U) << 22) | (uint32_t)((6U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_TBE = (((uint32_t)(0x14U) << 22) | (uint32_t)((7U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(9U))),
    I2C_INT_FLAG_BERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((8U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_LOSTARB = (((uint32_t)(0x14U) << 22) | (uint32_t)((9U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_AERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((10U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_OUERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((11U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_PECERR = (((uint32_t)(0x14U) << 22) | (uint32_t)((12U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_SMBTO = (((uint32_t)(0x14U) << 22) | (uint32_t)((14U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),
    I2C_INT_FLAG_SMBALT = (((uint32_t)(0x14U) << 22) | (uint32_t)((15U) << 16) | (((uint32_t)(0x04U) << 6) | (uint32_t)(8U))),
} i2c_interrupt_flag_enum;


typedef enum {

    I2C_INT_ERR = (((uint32_t)(0x04U) << 6) | (uint32_t)(8U)),
    I2C_INT_EV = (((uint32_t)(0x04U) << 6) | (uint32_t)(9U)),
    I2C_INT_BUF = (((uint32_t)(0x04U) << 6) | (uint32_t)(10U)),
} i2c_interrupt_enum;


#define I2C_I2CMODE_ENABLE ((uint32_t)0x00000000U)
#define I2C_SMBUSMODE_ENABLE I2C_CTL0_SMBEN


#define I2C_SMBUS_DEVICE ((uint32_t)0x00000000U)
#define I2C_SMBUS_HOST I2C_CTL0_SMBSEL


#define I2C_RECEIVER ((uint32_t)0x00000001U)
#define I2C_TRANSMITTER ((uint32_t)0xFFFFFFFEU)


#define I2C_ACK_DISABLE ((uint32_t)0x00000000U)
#define I2C_ACK_ENABLE ((uint32_t)0x00000001U)


#define I2C_ACKPOS_NEXT ((uint32_t)0x00000000U)
#define I2C_ACKPOS_CURRENT ((uint32_t)0x00000001U)


#define I2C_DUADEN_DISABLE ((uint32_t)0x00000000U)
#define I2C_DUADEN_ENABLE ((uint32_t)0x00000001U)


#define I2C_SCLSTRETCH_ENABLE ((uint32_t)0x00000000U)
#define I2C_SCLSTRETCH_DISABLE I2C_CTL0_SS


#define I2C_GCEN_ENABLE I2C_CTL0_GCEN
#define I2C_GCEN_DISABLE ((uint32_t)0x00000000U)


#define I2C_SRESET_SET I2C_CTL0_SRESET
#define I2C_SRESET_RESET ((uint32_t)0x00000000U)



#define I2C_DMA_ON I2C_CTL1_DMAON
#define I2C_DMA_OFF ((uint32_t)0x00000000U)


#define I2C_DMALST_ON I2C_CTL1_DMALST
#define I2C_DMALST_OFF ((uint32_t)0x00000000U)



#define I2C_PEC_ENABLE I2C_CTL0_PECEN
#define I2C_PEC_DISABLE ((uint32_t)0x00000000U)


#define I2C_PECTRANS_ENABLE I2C_CTL0_PECTRANS
#define I2C_PECTRANS_DISABLE ((uint32_t)0x00000000U)



#define I2C_SALTSEND_ENABLE I2C_CTL0_SALT
#define I2C_SALTSEND_DISABLE ((uint32_t)0x00000000U)


#define I2C_ARP_ENABLE I2C_CTL0_ARPEN
#define I2C_ARP_DISABLE ((uint32_t)0x00000000U)


#define DATA_TRANS(regval) (BITS(0,7) & ((uint32_t)(regval) << 0))


#define DATA_RECV(regval) GET_BITS((uint32_t)(regval), 0, 7)


#define I2C_DTCY_2 ((uint32_t)0x00000000U)
#define I2C_DTCY_16_9 I2C_CKCFG_DTCY


#define I2C_ADDFORMAT_7BITS ((uint32_t)0x00000000U)
#define I2C_ADDFORMAT_10BITS I2C_SADDR0_ADDFORMAT



void i2c_deinit(uint32_t i2c_periph);

void i2c_clock_config(uint32_t i2c_periph, uint32_t clkspeed, uint32_t dutycyc);

void i2c_mode_addr_config(uint32_t i2c_periph, uint32_t mode,uint32_t addformat, uint32_t addr);

void i2c_smbus_type_config(uint32_t i2c_periph, uint32_t type);

void i2c_ack_config(uint32_t i2c_periph, uint32_t ack);

void i2c_ackpos_config(uint32_t i2c_periph, uint32_t pos);

void i2c_master_addressing(uint32_t i2c_periph, uint32_t addr,uint32_t trandirection);

void i2c_saddr1_config(uint32_t i2c_periph,uint32_t addr);

void i2c_dualaddr_enable(uint32_t i2c_periph, uint32_t dualaddr);

void i2c_dualaddr_disable(uint32_t i2c_periph);

void i2c_enable(uint32_t i2c_periph);

void i2c_disable(uint32_t i2c_periph);


void i2c_start_on_bus(uint32_t i2c_periph);

void i2c_stop_on_bus(uint32_t i2c_periph);

void i2c_data_transmit(uint32_t i2c_periph, uint8_t data);

uint8_t i2c_data_receive(uint32_t i2c_periph);

void i2c_dma_enable(uint32_t i2c_periph, uint32_t dmastate);

void i2c_dma_last_transfer_config(uint32_t i2c_periph, uint32_t dmalast);

void i2c_stretch_scl_low_config(uint32_t i2c_periph, uint32_t stretchpara);

void i2c_slave_response_to_gcall_config(uint32_t i2c_periph, uint32_t gcallpara);

void i2c_software_reset_config(uint32_t i2c_periph, uint32_t sreset);


void i2c_pec_enable(uint32_t i2c_periph, uint32_t pecstate);

void i2c_pec_transfer_enable(uint32_t i2c_periph, uint32_t pecpara);

uint8_t i2c_pec_value_get(uint32_t i2c_periph);

void i2c_smbus_issue_alert(uint32_t i2c_periph, uint32_t smbuspara);

void i2c_smbus_arp_enable(uint32_t i2c_periph, uint32_t arpstate);


FlagStatus i2c_flag_get(uint32_t i2c_periph, i2c_flag_enum flag);

void i2c_flag_clear(uint32_t i2c_periph, i2c_flag_enum flag);

void i2c_interrupt_enable(uint32_t i2c_periph, i2c_interrupt_enum interrupt);

void i2c_interrupt_disable(uint32_t i2c_periph, i2c_interrupt_enum interrupt);

FlagStatus i2c_interrupt_flag_get(uint32_t i2c_periph,i2c_interrupt_flag_enum int_flag);

void i2c_interrupt_flag_clear(uint32_t i2c_periph,i2c_interrupt_flag_enum int_flag);
# 50 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_fwdgt.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_fwdgt.h"
#define GD32VF103_FWDGT_H 




#define FWDGT FWDGT_BASE


#define FWDGT_CTL REG32((FWDGT) + 0x00000000U)
#define FWDGT_PSC REG32((FWDGT) + 0x00000004U)
#define FWDGT_RLD REG32((FWDGT) + 0x00000008U)
#define FWDGT_STAT REG32((FWDGT) + 0x0000000CU)



#define FWDGT_CTL_CMD BITS(0,15)


#define FWDGT_PSC_PSC BITS(0,2)


#define FWDGT_RLD_RLD BITS(0,11)


#define FWDGT_STAT_PUD BIT(0)
#define FWDGT_STAT_RUD BIT(1)



#define PSC_PSC(regval) (BITS(0,2) & ((uint32_t)(regval) << 0))
#define FWDGT_PSC_DIV4 ((uint8_t)PSC_PSC(0))
#define FWDGT_PSC_DIV8 ((uint8_t)PSC_PSC(1))
#define FWDGT_PSC_DIV16 ((uint8_t)PSC_PSC(2))
#define FWDGT_PSC_DIV32 ((uint8_t)PSC_PSC(3))
#define FWDGT_PSC_DIV64 ((uint8_t)PSC_PSC(4))
#define FWDGT_PSC_DIV128 ((uint8_t)PSC_PSC(5))
#define FWDGT_PSC_DIV256 ((uint8_t)PSC_PSC(6))


#define FWDGT_WRITEACCESS_ENABLE ((uint16_t)0x5555U)
#define FWDGT_WRITEACCESS_DISABLE ((uint16_t)0x0000U)
#define FWDGT_KEY_RELOAD ((uint16_t)0xAAAAU)
#define FWDGT_KEY_ENABLE ((uint16_t)0xCCCCU)


#define FWDGT_PSC_TIMEOUT ((uint32_t)0x000FFFFFU)
#define FWDGT_RLD_TIMEOUT ((uint32_t)0x000FFFFFU)


#define FWDGT_FLAG_PUD FWDGT_STAT_PUD
#define FWDGT_FLAG_RUD FWDGT_STAT_RUD



void fwdgt_write_enable(void);

void fwdgt_write_disable(void);

void fwdgt_enable(void);


void fwdgt_counter_reload(void);

ErrStatus fwdgt_config(uint16_t reload_value, uint8_t prescaler_div);


FlagStatus fwdgt_flag_get(uint16_t flag);
# 51 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dbg.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_dbg.h"
#define GD32VF103_DBG_H 




#define DBG DBG_BASE


#define DBG_ID REG32(DBG + 0x00U)
#define DBG_CTL REG32(DBG + 0x04U)



#define DBG_ID_ID_CODE BITS(0,31)


#define DBG_CTL_SLP_HOLD BIT(0)
#define DBG_CTL_DSLP_HOLD BIT(1)
#define DBG_CTL_STB_HOLD BIT(2)
#define DBG_CTL_FWDGT_HOLD BIT(8)
#define DBG_CTL_WWDGT_HOLD BIT(9)
#define DBG_CTL_TIMER0_HOLD BIT(10)
#define DBG_CTL_TIMER1_HOLD BIT(11)
#define DBG_CTL_TIMER2_HOLD BIT(12)
#define DBG_CTL_TIMER3_HOLD BIT(13)
#define DBG_CTL_CAN0_HOLD BIT(14)
#define DBG_CTL_I2C0_HOLD BIT(15)
#define DBG_CTL_I2C1_HOLD BIT(16)
#define DBG_CTL_TIMER4_HOLD BIT(18)
#define DBG_CTL_TIMER5_HOLD BIT(19)
#define DBG_CTL_TIMER6_HOLD BIT(20)
#define DBG_CTL_CAN1_HOLD BIT(21)



typedef enum
{
    DBG_FWDGT_HOLD = ((uint32_t)((uint32_t)0x01U<<(8))),
    DBG_WWDGT_HOLD = ((uint32_t)((uint32_t)0x01U<<(9))),
    DBG_TIMER0_HOLD = ((uint32_t)((uint32_t)0x01U<<(10))),
    DBG_TIMER1_HOLD = ((uint32_t)((uint32_t)0x01U<<(11))),
    DBG_TIMER2_HOLD = ((uint32_t)((uint32_t)0x01U<<(12))),
    DBG_TIMER3_HOLD = ((uint32_t)((uint32_t)0x01U<<(13))),
    DBG_CAN0_HOLD = ((uint32_t)((uint32_t)0x01U<<(14))),
    DBG_I2C0_HOLD = ((uint32_t)((uint32_t)0x01U<<(15))),
    DBG_I2C1_HOLD = ((uint32_t)((uint32_t)0x01U<<(16))),
    DBG_TIMER4_HOLD = ((uint32_t)((uint32_t)0x01U<<(17))),
    DBG_TIMER5_HOLD = ((uint32_t)((uint32_t)0x01U<<(18))),
    DBG_TIMER6_HOLD = ((uint32_t)((uint32_t)0x01U<<(19))),
    DBG_CAN1_HOLD = ((uint32_t)((uint32_t)0x01U<<(21))),
}dbg_periph_enum;


#define DBG_LOW_POWER_SLEEP DBG_CTL_SLP_HOLD
#define DBG_LOW_POWER_DEEPSLEEP DBG_CTL_DSLP_HOLD
#define DBG_LOW_POWER_STANDBY DBG_CTL_STB_HOLD



uint32_t dbg_id_get(void);



void dbg_low_power_enable(uint32_t dbg_low_power);

void dbg_low_power_disable(uint32_t dbg_low_power);



void dbg_periph_enable(dbg_periph_enum dbg_periph);

void dbg_periph_disable(dbg_periph_enum dbg_periph);
# 52 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_pmu.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_pmu.h"
#define GD32VF103_PMU_H 




#define PMU PMU_BASE


#define PMU_CTL REG32((PMU) + 0x00U)
#define PMU_CS REG32((PMU) + 0x04U)



#define PMU_CTL_LDOLP BIT(0)
#define PMU_CTL_STBMOD BIT(1)
#define PMU_CTL_WURST BIT(2)
#define PMU_CTL_STBRST BIT(3)
#define PMU_CTL_LVDEN BIT(4)
#define PMU_CTL_LVDT BITS(5,7)
#define PMU_CTL_BKPWEN BIT(8)


#define PMU_CS_WUF BIT(0)
#define PMU_CS_STBF BIT(1)
#define PMU_CS_LVDF BIT(2)
#define PMU_CS_WUPEN BIT(8)



#define CTL_LVDT(regval) (BITS(5,7)&((uint32_t)(regval) << 5))
#define PMU_LVDT_0 CTL_LVDT(0)
#define PMU_LVDT_1 CTL_LVDT(1)
#define PMU_LVDT_2 CTL_LVDT(2)
#define PMU_LVDT_3 CTL_LVDT(3)
#define PMU_LVDT_4 CTL_LVDT(4)
#define PMU_LVDT_5 CTL_LVDT(5)
#define PMU_LVDT_6 CTL_LVDT(6)
#define PMU_LVDT_7 CTL_LVDT(7)


#define PMU_FLAG_WAKEUP PMU_CS_WUF
#define PMU_FLAG_STANDBY PMU_CS_STBF
#define PMU_FLAG_LVD PMU_CS_LVDF


#define PMU_LDO_NORMAL ((uint32_t)0x00000000U)
#define PMU_LDO_LOWPOWER PMU_CTL_LDOLP


#define PMU_FLAG_RESET_WAKEUP ((uint8_t)0x00U)
#define PMU_FLAG_RESET_STANDBY ((uint8_t)0x01U)


#define WFI_CMD ((uint8_t)0x00U)
#define WFE_CMD ((uint8_t)0x01U)



void pmu_deinit(void);


void pmu_lvd_select(uint32_t lvdt_n);

void pmu_lvd_disable(void);



void pmu_to_sleepmode(uint8_t sleepmodecmd);

void pmu_to_deepsleepmode(uint32_t ldo, uint8_t deepsleepmodecmd);

void pmu_to_standbymode(uint8_t standbymodecmd);

void pmu_wakeup_pin_enable(void);

void pmu_wakeup_pin_disable(void);



void pmu_backup_write_enable(void);

void pmu_backup_write_disable(void);



FlagStatus pmu_flag_get(uint32_t flag);

void pmu_flag_clear(uint32_t flag_reset);
# 53 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_rcu.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_rcu.h"
#define GD32VF103_RCU_H 




#define RCU RCU_BASE



#define RCU_CTL REG32(RCU + 0x00U)
#define RCU_CFG0 REG32(RCU + 0x04U)
#define RCU_INT REG32(RCU + 0x08U)
#define RCU_APB2RST REG32(RCU + 0x0CU)
#define RCU_APB1RST REG32(RCU + 0x10U)
#define RCU_AHBEN REG32(RCU + 0x14U)
#define RCU_APB2EN REG32(RCU + 0x18U)
#define RCU_APB1EN REG32(RCU + 0x1CU)
#define RCU_BDCTL REG32(RCU + 0x20U)
#define RCU_RSTSCK REG32(RCU + 0x24U)
#define RCU_AHBRST REG32(RCU + 0x28U)
#define RCU_CFG1 REG32(RCU + 0x2CU)
#define RCU_DSV REG32(RCU + 0x34U)




#define RCU_CTL_IRC8MEN BIT(0)
#define RCU_CTL_IRC8MSTB BIT(1)
#define RCU_CTL_IRC8MADJ BITS(3,7)
#define RCU_CTL_IRC8MCALIB BITS(8,15)
#define RCU_CTL_HXTALEN BIT(16)
#define RCU_CTL_HXTALSTB BIT(17)
#define RCU_CTL_HXTALBPS BIT(18)
#define RCU_CTL_CKMEN BIT(19)
#define RCU_CTL_PLLEN BIT(24)
#define RCU_CTL_PLLSTB BIT(25)
#define RCU_CTL_PLL1EN BIT(26)
#define RCU_CTL_PLL1STB BIT(27)
#define RCU_CTL_PLL2EN BIT(28)
#define RCU_CTL_PLL2STB BIT(29)


#define RCU_CFG0_SCS BITS(0,1)
#define RCU_CFG0_SCSS BITS(2,3)
#define RCU_CFG0_AHBPSC BITS(4,7)
#define RCU_CFG0_APB1PSC BITS(8,10)
#define RCU_CFG0_APB2PSC BITS(11,13)
#define RCU_CFG0_ADCPSC BITS(14,15)
#define RCU_CFG0_PLLSEL BIT(16)
#define RCU_CFG0_PREDV0_LSB BIT(17)
#define RCU_CFG0_PLLMF BITS(18,21)
#define RCU_CFG0_USBFSPSC BITS(22,23)
#define RCU_CFG0_CKOUT0SEL BITS(24,27)
#define RCU_CFG0_ADCPSC_2 BIT(28)
#define RCU_CFG0_PLLMF_4 BIT(29)


#define RCU_INT_IRC40KSTBIF BIT(0)
#define RCU_INT_LXTALSTBIF BIT(1)
#define RCU_INT_IRC8MSTBIF BIT(2)
#define RCU_INT_HXTALSTBIF BIT(3)
#define RCU_INT_PLLSTBIF BIT(4)
#define RCU_INT_PLL1STBIF BIT(5)
#define RCU_INT_PLL2STBIF BIT(6)
#define RCU_INT_CKMIF BIT(7)
#define RCU_INT_IRC40KSTBIE BIT(8)
#define RCU_INT_LXTALSTBIE BIT(9)
#define RCU_INT_IRC8MSTBIE BIT(10)
#define RCU_INT_HXTALSTBIE BIT(11)
#define RCU_INT_PLLSTBIE BIT(12)
#define RCU_INT_PLL1STBIE BIT(13)
#define RCU_INT_PLL2STBIE BIT(14)
#define RCU_INT_IRC40KSTBIC BIT(16)
#define RCU_INT_LXTALSTBIC BIT(17)
#define RCU_INT_IRC8MSTBIC BIT(18)
#define RCU_INT_HXTALSTBIC BIT(19)
#define RCU_INT_PLLSTBIC BIT(20)
#define RCU_INT_PLL1STBIC BIT(21)
#define RCU_INT_PLL2STBIC BIT(22)
#define RCU_INT_CKMIC BIT(23)


#define RCU_APB2RST_AFRST BIT(0)
#define RCU_APB2RST_PARST BIT(2)
#define RCU_APB2RST_PBRST BIT(3)
#define RCU_APB2RST_PCRST BIT(4)
#define RCU_APB2RST_PDRST BIT(5)
#define RCU_APB2RST_PERST BIT(6)
#define RCU_APB2RST_ADC0RST BIT(9)
#define RCU_APB2RST_ADC1RST BIT(10)
#define RCU_APB2RST_TIMER0RST BIT(11)
#define RCU_APB2RST_SPI0RST BIT(12)
#define RCU_APB2RST_USART0RST BIT(14)


#define RCU_APB1RST_TIMER1RST BIT(0)
#define RCU_APB1RST_TIMER2RST BIT(1)
#define RCU_APB1RST_TIMER3RST BIT(2)
#define RCU_APB1RST_TIMER4RST BIT(3)
#define RCU_APB1RST_TIMER5RST BIT(4)
#define RCU_APB1RST_TIMER6RST BIT(5)

#define RCU_APB1RST_WWDGTRST BIT(11)
#define RCU_APB1RST_SPI1RST BIT(14)
#define RCU_APB1RST_SPI2RST BIT(15)
#define RCU_APB1RST_USART1RST BIT(17)
#define RCU_APB1RST_USART2RST BIT(18)
#define RCU_APB1RST_UART3RST BIT(19)
#define RCU_APB1RST_UART4RST BIT(20)
#define RCU_APB1RST_I2C0RST BIT(21)
#define RCU_APB1RST_I2C1RST BIT(22)
#define RCU_APB1RST_CAN0RST BIT(25)
#define RCU_APB1RST_CAN1RST BIT(26)
#define RCU_APB1RST_BKPIRST BIT(27)
#define RCU_APB1RST_PMURST BIT(28)
#define RCU_APB1RST_DACRST BIT(29)


#define RCU_AHBEN_DMA0EN BIT(0)
#define RCU_AHBEN_DMA1EN BIT(1)
#define RCU_AHBEN_SRAMSPEN BIT(2)
#define RCU_AHBEN_FMCSPEN BIT(4)
#define RCU_AHBEN_CRCEN BIT(6)
#define RCU_AHBEN_EXMCEN BIT(8)
#define RCU_AHBEN_USBFSEN BIT(12)


#define RCU_APB2EN_AFEN BIT(0)
#define RCU_APB2EN_PAEN BIT(2)
#define RCU_APB2EN_PBEN BIT(3)
#define RCU_APB2EN_PCEN BIT(4)
#define RCU_APB2EN_PDEN BIT(5)
#define RCU_APB2EN_PEEN BIT(6)
#define RCU_APB2EN_ADC0EN BIT(9)
#define RCU_APB2EN_ADC1EN BIT(10)
#define RCU_APB2EN_TIMER0EN BIT(11)
#define RCU_APB2EN_SPI0EN BIT(12)
#define RCU_APB2EN_USART0EN BIT(14)


#define RCU_APB1EN_TIMER1EN BIT(0)
#define RCU_APB1EN_TIMER2EN BIT(1)
#define RCU_APB1EN_TIMER3EN BIT(2)
#define RCU_APB1EN_TIMER4EN BIT(3)
#define RCU_APB1EN_TIMER5EN BIT(4)
#define RCU_APB1EN_TIMER6EN BIT(5)
#define RCU_APB1EN_WWDGTEN BIT(11)
#define RCU_APB1EN_SPI1EN BIT(14)
#define RCU_APB1EN_SPI2EN BIT(15)
#define RCU_APB1EN_USART1EN BIT(17)
#define RCU_APB1EN_USART2EN BIT(18)
#define RCU_APB1EN_UART3EN BIT(19)
#define RCU_APB1EN_UART4EN BIT(20)
#define RCU_APB1EN_I2C0EN BIT(21)
#define RCU_APB1EN_I2C1EN BIT(22)
#define RCU_APB1EN_CAN0EN BIT(25)
#define RCU_APB1EN_CAN1EN BIT(26)
#define RCU_APB1EN_BKPIEN BIT(27)
#define RCU_APB1EN_PMUEN BIT(28)
#define RCU_APB1EN_DACEN BIT(29)


#define RCU_BDCTL_LXTALEN BIT(0)
#define RCU_BDCTL_LXTALSTB BIT(1)
#define RCU_BDCTL_LXTALBPS BIT(2)
#define RCU_BDCTL_RTCSRC BITS(8,9)
#define RCU_BDCTL_RTCEN BIT(15)
#define RCU_BDCTL_BKPRST BIT(16)


#define RCU_RSTSCK_IRC40KEN BIT(0)
#define RCU_RSTSCK_IRC40KSTB BIT(1)
#define RCU_RSTSCK_RSTFC BIT(24)
#define RCU_RSTSCK_EPRSTF BIT(26)
#define RCU_RSTSCK_PORRSTF BIT(27)
#define RCU_RSTSCK_SWRSTF BIT(28)
#define RCU_RSTSCK_FWDGTRSTF BIT(29)
#define RCU_RSTSCK_WWDGTRSTF BIT(30)
#define RCU_RSTSCK_LPRSTF BIT(31)


#define RCU_AHBRST_USBFSRST BIT(12)


#define RCU_CFG1_PREDV0 BITS(0,3)
#define RCU_CFG1_PREDV1 BITS(4,7)
#define RCU_CFG1_PLL1MF BITS(8,11)
#define RCU_CFG1_PLL2MF BITS(12,15)
#define RCU_CFG1_PREDV0SEL BIT(16)
#define RCU_CFG1_I2S1SEL BIT(17)
#define RCU_CFG1_I2S2SEL BIT(18)


#define RCU_DSV_DSLPVS BITS(0,1)



#define RCU_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))
#define RCU_REG_VAL(periph) (REG32(RCU + ((uint32_t)(periph) >> 6)))
#define RCU_BIT_POS(val) ((uint32_t)(val) & 0x1FU)



#define AHBEN_REG_OFFSET 0x14U
#define APB1EN_REG_OFFSET 0x1CU
#define APB2EN_REG_OFFSET 0x18U


#define AHBRST_REG_OFFSET 0x28U
#define APB1RST_REG_OFFSET 0x10U
#define APB2RST_REG_OFFSET 0x0CU
#define RSTSCK_REG_OFFSET 0x24U


#define CTL_REG_OFFSET 0x00U
#define BDCTL_REG_OFFSET 0x20U


#define INT_REG_OFFSET 0x08U


#define CFG0_REG_OFFSET 0x04U
#define CFG1_REG_OFFSET 0x2CU


typedef enum {

 RCU_DMA0 = (((uint32_t)(0x14U) << 6) | (uint32_t)(0U)),
 RCU_DMA1 = (((uint32_t)(0x14U) << 6) | (uint32_t)(1U)),
 RCU_CRC = (((uint32_t)(0x14U) << 6) | (uint32_t)(6U)),
 RCU_EXMC = (((uint32_t)(0x14U) << 6) | (uint32_t)(8U)),
 RCU_USBFS = (((uint32_t)(0x14U) << 6) | (uint32_t)(12U)),

 RCU_TIMER1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(0U)),
 RCU_TIMER2 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(1U)),
 RCU_TIMER3 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(2U)),
 RCU_TIMER4 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(3U)),
 RCU_TIMER5 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(4U)),
 RCU_TIMER6 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(5U)),
 RCU_WWDGT = (((uint32_t)(0x1CU) << 6) | (uint32_t)(11U)),
 RCU_SPI1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(14U)),
 RCU_SPI2 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(15U)),
 RCU_USART1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(17U)),
 RCU_USART2 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(18U)),
 RCU_UART3 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(19U)),
 RCU_UART4 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(20U)),
 RCU_I2C0 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(21U)),
 RCU_I2C1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(22U)),
 RCU_CAN0 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(25U)),
 RCU_CAN1 = (((uint32_t)(0x1CU) << 6) | (uint32_t)(26U)),
 RCU_BKPI = (((uint32_t)(0x1CU) << 6) | (uint32_t)(27U)),
 RCU_PMU = (((uint32_t)(0x1CU) << 6) | (uint32_t)(28U)),
 RCU_DAC = (((uint32_t)(0x1CU) << 6) | (uint32_t)(29U)),
 RCU_RTC = (((uint32_t)(0x20U) << 6) | (uint32_t)(15U)),

 RCU_AF = (((uint32_t)(0x18U) << 6) | (uint32_t)(0U)),
 RCU_GPIOA = (((uint32_t)(0x18U) << 6) | (uint32_t)(2U)),
 RCU_GPIOB = (((uint32_t)(0x18U) << 6) | (uint32_t)(3U)),
 RCU_GPIOC = (((uint32_t)(0x18U) << 6) | (uint32_t)(4U)),
 RCU_GPIOD = (((uint32_t)(0x18U) << 6) | (uint32_t)(5U)),
 RCU_GPIOE = (((uint32_t)(0x18U) << 6) | (uint32_t)(6U)),
 RCU_ADC0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(9U)),
 RCU_ADC1 = (((uint32_t)(0x18U) << 6) | (uint32_t)(10U)),
 RCU_TIMER0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(11U)),
 RCU_SPI0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(12U)),
 RCU_USART0 = (((uint32_t)(0x18U) << 6) | (uint32_t)(14U)),
} rcu_periph_enum;


typedef enum {

 RCU_SRAM_SLP = (((uint32_t)(0x14U) << 6) | (uint32_t)(2U)),
 RCU_FMC_SLP = (((uint32_t)(0x14U) << 6) | (uint32_t)(4U)),
} rcu_periph_sleep_enum;


typedef enum {

 RCU_USBFSRST = (((uint32_t)(0x28U) << 6) | (uint32_t)(12U)),

 RCU_TIMER1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(0U)),
 RCU_TIMER2RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(1U)),
 RCU_TIMER3RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(2U)),
 RCU_TIMER4RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(3U)),
 RCU_TIMER5RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(4U)),
 RCU_TIMER6RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(5U)),
 RCU_WWDGTRST = (((uint32_t)(0x10U) << 6) | (uint32_t)(11U)),
 RCU_SPI1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(14U)),
 RCU_SPI2RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(15U)),
 RCU_USART1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(17U)),
 RCU_USART2RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(18U)),
 RCU_UART3RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(19U)),
 RCU_UART4RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(20U)),
 RCU_I2C0RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(21U)),
 RCU_I2C1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(22U)),
 RCU_CAN0RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(25U)),
 RCU_CAN1RST = (((uint32_t)(0x10U) << 6) | (uint32_t)(26U)),
 RCU_BKPIRST = (((uint32_t)(0x10U) << 6) | (uint32_t)(27U)),
 RCU_PMURST = (((uint32_t)(0x10U) << 6) | (uint32_t)(28U)),
 RCU_DACRST = (((uint32_t)(0x10U) << 6) | (uint32_t)(29U)),

 RCU_AFRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(0U)),
 RCU_GPIOARST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(2U)),
 RCU_GPIOBRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(3U)),
 RCU_GPIOCRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(4U)),
 RCU_GPIODRST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(5U)),
 RCU_GPIOERST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(6U)),
 RCU_ADC0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(9U)),
 RCU_ADC1RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(10U)),
 RCU_TIMER0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(11U)),
 RCU_SPI0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(12U)),
 RCU_USART0RST = (((uint32_t)(0x0CU) << 6) | (uint32_t)(14U)),
} rcu_periph_reset_enum;


typedef enum {

 RCU_FLAG_IRC8MSTB = (((uint32_t)(0x00U) << 6) | (uint32_t)(1U)),
 RCU_FLAG_HXTALSTB = (((uint32_t)(0x00U) << 6) | (uint32_t)(17U)),
 RCU_FLAG_PLLSTB = (((uint32_t)(0x00U) << 6) | (uint32_t)(25U)),
 RCU_FLAG_PLL1STB = (((uint32_t)(0x00U) << 6) | (uint32_t)(27U)),
 RCU_FLAG_PLL2STB = (((uint32_t)(0x00U) << 6) | (uint32_t)(29U)),
 RCU_FLAG_LXTALSTB = (((uint32_t)(0x20U) << 6) | (uint32_t)(1U)),
 RCU_FLAG_IRC40KSTB = (((uint32_t)(0x24U) << 6) | (uint32_t)(1U)),

 RCU_FLAG_EPRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(26U)),
 RCU_FLAG_PORRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(27U)),
 RCU_FLAG_SWRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(28U)),
 RCU_FLAG_FWDGTRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(29U)),
 RCU_FLAG_WWDGTRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(30U)),
 RCU_FLAG_LPRST = (((uint32_t)(0x24U) << 6) | (uint32_t)(31U)),
} rcu_flag_enum;


typedef enum {
 RCU_INT_FLAG_IRC40KSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(0U)),
 RCU_INT_FLAG_LXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(1U)),
 RCU_INT_FLAG_IRC8MSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(2U)),
 RCU_INT_FLAG_HXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(3U)),
 RCU_INT_FLAG_PLLSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(4U)),
 RCU_INT_FLAG_PLL1STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(5U)),
 RCU_INT_FLAG_PLL2STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(6U)),
 RCU_INT_FLAG_CKM = (((uint32_t)(0x08U) << 6) | (uint32_t)(7U)),
} rcu_int_flag_enum;


typedef enum {
 RCU_INT_FLAG_IRC40KSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(16U)),
 RCU_INT_FLAG_LXTALSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(17U)),
 RCU_INT_FLAG_IRC8MSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(18U)),
 RCU_INT_FLAG_HXTALSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(19U)),
 RCU_INT_FLAG_PLLSTB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(20U)),
 RCU_INT_FLAG_PLL1STB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(21U)),
 RCU_INT_FLAG_PLL2STB_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(22U)),
 RCU_INT_FLAG_CKM_CLR = (((uint32_t)(0x08U) << 6) | (uint32_t)(23U)),
} rcu_int_flag_clear_enum;


typedef enum {
 RCU_INT_IRC40KSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(8U)),
 RCU_INT_LXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(9U)),
 RCU_INT_IRC8MSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(10U)),
 RCU_INT_HXTALSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(11U)),
 RCU_INT_PLLSTB = (((uint32_t)(0x08U) << 6) | (uint32_t)(12U)),
 RCU_INT_PLL1STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(13U)),
 RCU_INT_PLL2STB = (((uint32_t)(0x08U) << 6) | (uint32_t)(14U)),
} rcu_int_enum;


typedef enum {
    RCU_HXTAL = (((uint32_t)(0x00U) << 6) | (uint32_t)(16U)),
    RCU_LXTAL = (((uint32_t)(0x20U) << 6) | (uint32_t)(0U)),
    RCU_IRC8M = (((uint32_t)(0x00U) << 6) | (uint32_t)(0U)),
    RCU_IRC40K = (((uint32_t)(0x24U) << 6) | (uint32_t)(0U)),
    RCU_PLL_CK = (((uint32_t)(0x00U) << 6) | (uint32_t)(24U)),
    RCU_PLL1_CK = (((uint32_t)(0x00U) << 6) | (uint32_t)(26U)),
    RCU_PLL2_CK = (((uint32_t)(0x00U) << 6) | (uint32_t)(28U)),
} rcu_osci_type_enum;


typedef enum {
    CK_SYS = 0,
    CK_AHB,
    CK_APB1,
    CK_APB2,
} rcu_clock_freq_enum;



#define CFG0_SCS(regval) (BITS(0,1) & ((uint32_t)(regval) << 0))
#define RCU_CKSYSSRC_IRC8M CFG0_SCS(0)
#define RCU_CKSYSSRC_HXTAL CFG0_SCS(1)
#define RCU_CKSYSSRC_PLL CFG0_SCS(2)


#define CFG0_SCSS(regval) (BITS(2,3) & ((uint32_t)(regval) << 2))
#define RCU_SCSS_IRC8M CFG0_SCSS(0)
#define RCU_SCSS_HXTAL CFG0_SCSS(1)
#define RCU_SCSS_PLL CFG0_SCSS(2)


#define CFG0_AHBPSC(regval) (BITS(4,7) & ((uint32_t)(regval) << 4))
#define RCU_AHB_CKSYS_DIV1 CFG0_AHBPSC(0)
#define RCU_AHB_CKSYS_DIV2 CFG0_AHBPSC(8)
#define RCU_AHB_CKSYS_DIV4 CFG0_AHBPSC(9)
#define RCU_AHB_CKSYS_DIV8 CFG0_AHBPSC(10)
#define RCU_AHB_CKSYS_DIV16 CFG0_AHBPSC(11)
#define RCU_AHB_CKSYS_DIV64 CFG0_AHBPSC(12)
#define RCU_AHB_CKSYS_DIV128 CFG0_AHBPSC(13)
#define RCU_AHB_CKSYS_DIV256 CFG0_AHBPSC(14)
#define RCU_AHB_CKSYS_DIV512 CFG0_AHBPSC(15)


#define CFG0_APB1PSC(regval) (BITS(8,10) & ((uint32_t)(regval) << 8))
#define RCU_APB1_CKAHB_DIV1 CFG0_APB1PSC(0)
#define RCU_APB1_CKAHB_DIV2 CFG0_APB1PSC(4)
#define RCU_APB1_CKAHB_DIV4 CFG0_APB1PSC(5)
#define RCU_APB1_CKAHB_DIV8 CFG0_APB1PSC(6)
#define RCU_APB1_CKAHB_DIV16 CFG0_APB1PSC(7)


#define CFG0_APB2PSC(regval) (BITS(11,13) & ((uint32_t)(regval) << 11))
#define RCU_APB2_CKAHB_DIV1 CFG0_APB2PSC(0)
#define RCU_APB2_CKAHB_DIV2 CFG0_APB2PSC(4)
#define RCU_APB2_CKAHB_DIV4 CFG0_APB2PSC(5)
#define RCU_APB2_CKAHB_DIV8 CFG0_APB2PSC(6)
#define RCU_APB2_CKAHB_DIV16 CFG0_APB2PSC(7)


#define RCU_CKADC_CKAPB2_DIV2 ((uint32_t)0x00000000U)
#define RCU_CKADC_CKAPB2_DIV4 ((uint32_t)0x00000001U)
#define RCU_CKADC_CKAPB2_DIV6 ((uint32_t)0x00000002U)
#define RCU_CKADC_CKAPB2_DIV8 ((uint32_t)0x00000003U)
#define RCU_CKADC_CKAPB2_DIV12 ((uint32_t)0x00000005U)
#define RCU_CKADC_CKAPB2_DIV16 ((uint32_t)0x00000007U)


#define RCU_PLLSRC_IRC8M_DIV2 ((uint32_t)0x00000000U)
#define RCU_PLLSRC_HXTAL RCU_CFG0_PLLSEL


#define PLLMF_4 RCU_CFG0_PLLMF_4

#define CFG0_PLLMF(regval) (BITS(18,21) & ((uint32_t)(regval) << 18))
#define RCU_PLL_MUL2 CFG0_PLLMF(0)
#define RCU_PLL_MUL3 CFG0_PLLMF(1)
#define RCU_PLL_MUL4 CFG0_PLLMF(2)
#define RCU_PLL_MUL5 CFG0_PLLMF(3)
#define RCU_PLL_MUL6 CFG0_PLLMF(4)
#define RCU_PLL_MUL7 CFG0_PLLMF(5)
#define RCU_PLL_MUL8 CFG0_PLLMF(6)
#define RCU_PLL_MUL9 CFG0_PLLMF(7)
#define RCU_PLL_MUL10 CFG0_PLLMF(8)
#define RCU_PLL_MUL11 CFG0_PLLMF(9)
#define RCU_PLL_MUL12 CFG0_PLLMF(10)
#define RCU_PLL_MUL13 CFG0_PLLMF(11)
#define RCU_PLL_MUL14 CFG0_PLLMF(12)
#define RCU_PLL_MUL6_5 CFG0_PLLMF(13)
#define RCU_PLL_MUL16 CFG0_PLLMF(14)
#define RCU_PLL_MUL17 (PLLMF_4 | CFG0_PLLMF(0))
#define RCU_PLL_MUL18 (PLLMF_4 | CFG0_PLLMF(1))
#define RCU_PLL_MUL19 (PLLMF_4 | CFG0_PLLMF(2))
#define RCU_PLL_MUL20 (PLLMF_4 | CFG0_PLLMF(3))
#define RCU_PLL_MUL21 (PLLMF_4 | CFG0_PLLMF(4))
#define RCU_PLL_MUL22 (PLLMF_4 | CFG0_PLLMF(5))
#define RCU_PLL_MUL23 (PLLMF_4 | CFG0_PLLMF(6))
#define RCU_PLL_MUL24 (PLLMF_4 | CFG0_PLLMF(7))
#define RCU_PLL_MUL25 (PLLMF_4 | CFG0_PLLMF(8))
#define RCU_PLL_MUL26 (PLLMF_4 | CFG0_PLLMF(9))
#define RCU_PLL_MUL27 (PLLMF_4 | CFG0_PLLMF(10))
#define RCU_PLL_MUL28 (PLLMF_4 | CFG0_PLLMF(11))
#define RCU_PLL_MUL29 (PLLMF_4 | CFG0_PLLMF(12))
#define RCU_PLL_MUL30 (PLLMF_4 | CFG0_PLLMF(13))
#define RCU_PLL_MUL31 (PLLMF_4 | CFG0_PLLMF(14))
#define RCU_PLL_MUL32 (PLLMF_4 | CFG0_PLLMF(15))


#define CFG0_USBPSC(regval) (BITS(22,23) & ((uint32_t)(regval) << 22))
#define RCU_CKUSB_CKPLL_DIV1_5 CFG0_USBPSC(0)
#define RCU_CKUSB_CKPLL_DIV1 CFG0_USBPSC(1)
#define RCU_CKUSB_CKPLL_DIV2_5 CFG0_USBPSC(2)
#define RCU_CKUSB_CKPLL_DIV2 CFG0_USBPSC(3)


#define CFG0_CKOUT0SEL(regval) (BITS(24,27) & ((uint32_t)(regval) << 24))
#define RCU_CKOUT0SRC_NONE CFG0_CKOUT0SEL(0)
#define RCU_CKOUT0SRC_CKSYS CFG0_CKOUT0SEL(4)
#define RCU_CKOUT0SRC_IRC8M CFG0_CKOUT0SEL(5)
#define RCU_CKOUT0SRC_HXTAL CFG0_CKOUT0SEL(6)
#define RCU_CKOUT0SRC_CKPLL_DIV2 CFG0_CKOUT0SEL(7)
#define RCU_CKOUT0SRC_CKPLL1 CFG0_CKOUT0SEL(8)
#define RCU_CKOUT0SRC_CKPLL2_DIV2 CFG0_CKOUT0SEL(9)
#define RCU_CKOUT0SRC_EXT1 CFG0_CKOUT0SEL(10)
#define RCU_CKOUT0SRC_CKPLL2 CFG0_CKOUT0SEL(11)


#define BDCTL_RTCSRC(regval) (BITS(8,9) & ((uint32_t)(regval) << 8))
#define RCU_RTCSRC_NONE BDCTL_RTCSRC(0)
#define RCU_RTCSRC_LXTAL BDCTL_RTCSRC(1)
#define RCU_RTCSRC_IRC40K BDCTL_RTCSRC(2)
#define RCU_RTCSRC_HXTAL_DIV_128 BDCTL_RTCSRC(3)


#define CFG1_PREDV0(regval) (BITS(0,3) & ((uint32_t)(regval) << 0))
#define RCU_PREDV0_DIV1 CFG1_PREDV0(0)
#define RCU_PREDV0_DIV2 CFG1_PREDV0(1)
#define RCU_PREDV0_DIV3 CFG1_PREDV0(2)
#define RCU_PREDV0_DIV4 CFG1_PREDV0(3)
#define RCU_PREDV0_DIV5 CFG1_PREDV0(4)
#define RCU_PREDV0_DIV6 CFG1_PREDV0(5)
#define RCU_PREDV0_DIV7 CFG1_PREDV0(6)
#define RCU_PREDV0_DIV8 CFG1_PREDV0(7)
#define RCU_PREDV0_DIV9 CFG1_PREDV0(8)
#define RCU_PREDV0_DIV10 CFG1_PREDV0(9)
#define RCU_PREDV0_DIV11 CFG1_PREDV0(10)
#define RCU_PREDV0_DIV12 CFG1_PREDV0(11)
#define RCU_PREDV0_DIV13 CFG1_PREDV0(12)
#define RCU_PREDV0_DIV14 CFG1_PREDV0(13)
#define RCU_PREDV0_DIV15 CFG1_PREDV0(14)
#define RCU_PREDV0_DIV16 CFG1_PREDV0(15)


#define CFG1_PREDV1(regval) (BITS(4,7) & ((uint32_t)(regval) << 4))
#define RCU_PREDV1_DIV1 CFG1_PREDV1(0)
#define RCU_PREDV1_DIV2 CFG1_PREDV1(1)
#define RCU_PREDV1_DIV3 CFG1_PREDV1(2)
#define RCU_PREDV1_DIV4 CFG1_PREDV1(3)
#define RCU_PREDV1_DIV5 CFG1_PREDV1(4)
#define RCU_PREDV1_DIV6 CFG1_PREDV1(5)
#define RCU_PREDV1_DIV7 CFG1_PREDV1(6)
#define RCU_PREDV1_DIV8 CFG1_PREDV1(7)
#define RCU_PREDV1_DIV9 CFG1_PREDV1(8)
#define RCU_PREDV1_DIV10 CFG1_PREDV1(9)
#define RCU_PREDV1_DIV11 CFG1_PREDV1(10)
#define RCU_PREDV1_DIV12 CFG1_PREDV1(11)
#define RCU_PREDV1_DIV13 CFG1_PREDV1(12)
#define RCU_PREDV1_DIV14 CFG1_PREDV1(13)
#define RCU_PREDV1_DIV15 CFG1_PREDV1(14)
#define RCU_PREDV1_DIV16 CFG1_PREDV1(15)


#define CFG1_PLL1MF(regval) (BITS(8,11) & ((uint32_t)(regval) << 8))
#define RCU_PLL1_MUL8 CFG1_PLL1MF(6)
#define RCU_PLL1_MUL9 CFG1_PLL1MF(7)
#define RCU_PLL1_MUL10 CFG1_PLL1MF(8)
#define RCU_PLL1_MUL11 CFG1_PLL1MF(9)
#define RCU_PLL1_MUL12 CFG1_PLL1MF(10)
#define RCU_PLL1_MUL13 CFG1_PLL1MF(11)
#define RCU_PLL1_MUL14 CFG1_PLL1MF(12)
#define RCU_PLL1_MUL15 CFG1_PLL1MF(13)
#define RCU_PLL1_MUL16 CFG1_PLL1MF(14)
#define RCU_PLL1_MUL20 CFG1_PLL1MF(15)


#define CFG1_PLL2MF(regval) (BITS(12,15) & ((uint32_t)(regval) << 12))
#define RCU_PLL2_MUL8 CFG1_PLL2MF(6)
#define RCU_PLL2_MUL9 CFG1_PLL2MF(7)
#define RCU_PLL2_MUL10 CFG1_PLL2MF(8)
#define RCU_PLL2_MUL11 CFG1_PLL2MF(9)
#define RCU_PLL2_MUL12 CFG1_PLL2MF(10)
#define RCU_PLL2_MUL13 CFG1_PLL2MF(11)
#define RCU_PLL2_MUL14 CFG1_PLL2MF(12)
#define RCU_PLL2_MUL15 CFG1_PLL2MF(13)
#define RCU_PLL2_MUL16 CFG1_PLL2MF(14)
#define RCU_PLL2_MUL20 CFG1_PLL2MF(15)



#define RCU_PREDV0SRC_HXTAL ((uint32_t)0x00000000U)
#define RCU_PREDV0SRC_CKPLL1 RCU_CFG1_PREDV0SEL


#define RCU_I2S1SRC_CKSYS ((uint32_t)0x00000000U)
#define RCU_I2S1SRC_CKPLL2_MUL2 RCU_CFG1_I2S1SEL


#define RCU_I2S2SRC_CKSYS ((uint32_t)0x00000000U)
#define RCU_I2S2SRC_CKPLL2_MUL2 RCU_CFG1_I2S2SEL



#define DSV_DSLPVS(regval) (BITS(0,1) & ((uint32_t)(regval) << 0))
#define RCU_DEEPSLEEP_V_1_2 DSV_DSLPVS(0)
#define RCU_DEEPSLEEP_V_1_1 DSV_DSLPVS(1)
#define RCU_DEEPSLEEP_V_1_0 DSV_DSLPVS(2)
#define RCU_DEEPSLEEP_V_0_9 DSV_DSLPVS(3)




void rcu_deinit(void);

void rcu_periph_clock_enable(rcu_periph_enum periph);

void rcu_periph_clock_disable(rcu_periph_enum periph);

void rcu_periph_clock_sleep_enable(rcu_periph_sleep_enum periph);

void rcu_periph_clock_sleep_disable(rcu_periph_sleep_enum periph);

void rcu_periph_reset_enable(rcu_periph_reset_enum periph_reset);

void rcu_periph_reset_disable(rcu_periph_reset_enum periph_reset);

void rcu_bkp_reset_enable(void);

void rcu_bkp_reset_disable(void);



void rcu_system_clock_source_config(uint32_t ck_sys);

uint32_t rcu_system_clock_source_get(void);

void rcu_ahb_clock_config(uint32_t ck_ahb);

void rcu_apb1_clock_config(uint32_t ck_apb1);

void rcu_apb2_clock_config(uint32_t ck_apb2);

void rcu_ckout0_config(uint32_t ckout0_src);

void rcu_pll_config(uint32_t pll_src, uint32_t pll_mul);


void rcu_predv0_config(uint32_t predv0_source, uint32_t predv0_div);

void rcu_predv1_config(uint32_t predv1_div);

void rcu_pll1_config(uint32_t pll_mul);

void rcu_pll2_config(uint32_t pll_mul);



void rcu_adc_clock_config(uint32_t adc_psc);

void rcu_usb_clock_config(uint32_t usb_psc);

void rcu_rtc_clock_config(uint32_t rtc_clock_source);


void rcu_i2s1_clock_config(uint32_t i2s_clock_source);

void rcu_i2s2_clock_config(uint32_t i2s_clock_source);



FlagStatus rcu_flag_get(rcu_flag_enum flag);

void rcu_all_reset_flag_clear(void);

FlagStatus rcu_interrupt_flag_get(rcu_int_flag_enum int_flag);

void rcu_interrupt_flag_clear(rcu_int_flag_clear_enum int_flag_clear);

void rcu_interrupt_enable(rcu_int_enum stab_int);

void rcu_interrupt_disable(rcu_int_enum stab_int);



ErrStatus rcu_osci_stab_wait(rcu_osci_type_enum osci);

void rcu_osci_on(rcu_osci_type_enum osci);

void rcu_osci_off(rcu_osci_type_enum osci);

void rcu_osci_bypass_mode_enable(rcu_osci_type_enum osci);

void rcu_osci_bypass_mode_disable(rcu_osci_type_enum osci);

void rcu_hxtal_clock_monitor_enable(void);

void rcu_hxtal_clock_monitor_disable(void);


void rcu_irc8m_adjust_value_set(uint32_t irc8m_adjval);

void rcu_deepsleep_voltage_set(uint32_t dsvol);


uint32_t rcu_clock_freq_get(rcu_clock_freq_enum clock);
# 54 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_rtc.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_rtc.h"
#define GD32VF103_RTC_H 




#define RTC RTC_BASE


#define RTC_INTEN REG32(RTC + 0x00U)
#define RTC_CTL REG32(RTC + 0x04U)
#define RTC_PSCH REG32(RTC + 0x08U)
#define RTC_PSCL REG32(RTC + 0x0CU)
#define RTC_DIVH REG32(RTC + 0x10U)
#define RTC_DIVL REG32(RTC + 0x14U)
#define RTC_CNTH REG32(RTC + 0x18U)
#define RTC_CNTL REG32(RTC + 0x1CU)
#define RTC_ALRMH REG32(RTC + 0x20U)
#define RTC_ALRML REG32(RTC + 0x24U)



#define RTC_INTEN_SCIE BIT(0)
#define RTC_INTEN_ALRMIE BIT(1)
#define RTC_INTEN_OVIE BIT(2)


#define RTC_CTL_SCIF BIT(0)
#define RTC_CTL_ALRMIF BIT(1)
#define RTC_CTL_OVIF BIT(2)
#define RTC_CTL_RSYNF BIT(3)
#define RTC_CTL_CMF BIT(4)
#define RTC_CTL_LWOFF BIT(5)


#define RTC_PSCH_PSC BITS(0,3)


#define RTC_PSCL_PSC BITS(0,15)


#define RTC_DIVH_DIV BITS(0,3)


#define RTC_DIVL_DIV BITS(0,15)


#define RTC_CNTH_CNT BITS(0,15)


#define RTC_CNTL_CNT BITS(0,15)


#define RTC_ALRMH_ALRM BITS(0,15)


#define RTC_ALRML_ALRM BITS(0,15)



#define RTC_INT_SECOND RTC_INTEN_SCIE
#define RTC_INT_ALARM RTC_INTEN_ALRMIE
#define RTC_INT_OVERFLOW RTC_INTEN_OVIE


#define RTC_INT_FLAG_SECOND RTC_CTL_SCIF
#define RTC_INT_FLAG_ALARM RTC_CTL_ALRMIF
#define RTC_INT_FLAG_OVERFLOW RTC_CTL_OVIF


#define RTC_FLAG_SECOND RTC_CTL_SCIF
#define RTC_FLAG_ALARM RTC_CTL_ALRMIF
#define RTC_FLAG_OVERFLOW RTC_CTL_OVIF
#define RTC_FLAG_RSYN RTC_CTL_RSYNF
#define RTC_FLAG_LWOF RTC_CTL_LWOFF




void rtc_configuration_mode_enter(void);

void rtc_configuration_mode_exit(void);

void rtc_counter_set(uint32_t cnt);

void rtc_prescaler_set(uint32_t psc);



void rtc_lwoff_wait(void);

void rtc_register_sync_wait(void);

void rtc_alarm_config(uint32_t alarm);

uint32_t rtc_counter_get(void);

uint32_t rtc_divider_get(void);



FlagStatus rtc_flag_get(uint32_t flag);

void rtc_flag_clear(uint32_t flag);

FlagStatus rtc_interrupt_flag_get(uint32_t flag);

void rtc_interrupt_flag_clear(uint32_t flag);

void rtc_interrupt_enable(uint32_t interrupt);

void rtc_interrupt_disable(uint32_t interrupt);
# 55 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_spi.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_spi.h"
#define GD32VF10X_SPI_H 




#define SPI0 (SPI_BASE + 0x0000F800U)
#define SPI1 SPI_BASE
#define SPI2 (SPI_BASE + 0x00000400U)


#define SPI_CTL0(spix) REG32((spix) + 0x00U)
#define SPI_CTL1(spix) REG32((spix) + 0x04U)
#define SPI_STAT(spix) REG32((spix) + 0x08U)
#define SPI_DATA(spix) REG32((spix) + 0x0CU)
#define SPI_CRCPOLY(spix) REG32((spix) + 0x10U)
#define SPI_RCRC(spix) REG32((spix) + 0x14U)
#define SPI_TCRC(spix) REG32((spix) + 0x18U)
#define SPI_I2SCTL(spix) REG32((spix) + 0x1CU)
#define SPI_I2SPSC(spix) REG32((spix) + 0x20U)



#define SPI_CTL0_CKPH BIT(0)
#define SPI_CTL0_CKPL BIT(1)
#define SPI_CTL0_MSTMOD BIT(2)
#define SPI_CTL0_PSC BITS(3,5)
#define SPI_CTL0_SPIEN BIT(6)
#define SPI_CTL0_LF BIT(7)
#define SPI_CTL0_SWNSS BIT(8)
#define SPI_CTL0_SWNSSEN BIT(9)
#define SPI_CTL0_RO BIT(10)
#define SPI_CTL0_FF16 BIT(11)
#define SPI_CTL0_CRCNT BIT(12)
#define SPI_CTL0_CRCEN BIT(13)
#define SPI_CTL0_BDOEN BIT(14)
#define SPI_CTL0_BDEN BIT(15)


#define SPI_CTL1_DMAREN BIT(0)
#define SPI_CTL1_DMATEN BIT(1)
#define SPI_CTL1_NSSDRV BIT(2)
#define SPI_CTL1_NSSP BIT(3)
#define SPI_CTL1_TMOD BIT(4)
#define SPI_CTL1_ERRIE BIT(5)
#define SPI_CTL1_RBNEIE BIT(6)
#define SPI_CTL1_TBEIE BIT(7)


#define SPI_STAT_RBNE BIT(0)
#define SPI_STAT_TBE BIT(1)
#define SPI_STAT_I2SCH BIT(2)
#define SPI_STAT_TXURERR BIT(3)
#define SPI_STAT_CRCERR BIT(4)
#define SPI_STAT_CONFERR BIT(5)
#define SPI_STAT_RXORERR BIT(6)
#define SPI_STAT_TRANS BIT(7)
#define SPI_STAT_FERR BIT(8)


#define SPI_DATA_DATA BITS(0,15)


#define SPI_CRCPOLY_CRCPOLY BITS(0,15)


#define SPI_RCRC_RCRC BITS(0,15)


#define SPI_TCRC_TCRC BITS(0,15)


#define SPI_I2SCTL_CHLEN BIT(0)
#define SPI_I2SCTL_DTLEN BITS(1,2)
#define SPI_I2SCTL_CKPL BIT(3)
#define SPI_I2SCTL_I2SSTD BITS(4,5)
#define SPI_I2SCTL_PCMSMOD BIT(7)
#define SPI_I2SCTL_I2SOPMOD BITS(8,9)
#define SPI_I2SCTL_I2SEN BIT(10)
#define SPI_I2SCTL_I2SSEL BIT(11)


#define SPI_I2SPSC_DIV BITS(0,7)
#define SPI_I2SPSC_OF BIT(8)
#define SPI_I2SPSC_MCKOEN BIT(9)



typedef struct
{
    uint32_t device_mode;
    uint32_t trans_mode;
    uint32_t frame_size;
    uint32_t nss;
    uint32_t endian;
    uint32_t clock_polarity_phase;
    uint32_t prescale;
}spi_parameter_struct;


#define SPI_MASTER (SPI_CTL0_MSTMOD | SPI_CTL0_SWNSS)
#define SPI_SLAVE ((uint32_t)0x00000000U)


#define SPI_BIDIRECTIONAL_TRANSMIT SPI_CTL0_BDOEN
#define SPI_BIDIRECTIONAL_RECEIVE (~SPI_CTL0_BDOEN)


#define SPI_TRANSMODE_FULLDUPLEX ((uint32_t)0x00000000U)
#define SPI_TRANSMODE_RECEIVEONLY SPI_CTL0_RO
#define SPI_TRANSMODE_BDRECEIVE SPI_CTL0_BDEN
#define SPI_TRANSMODE_BDTRANSMIT (SPI_CTL0_BDEN | SPI_CTL0_BDOEN)


#define SPI_FRAMESIZE_16BIT SPI_CTL0_FF16
#define SPI_FRAMESIZE_8BIT ((uint32_t)0x00000000U)


#define SPI_NSS_SOFT SPI_CTL0_SWNSSEN
#define SPI_NSS_HARD ((uint32_t)0x00000000U)


#define SPI_ENDIAN_MSB ((uint32_t)0x00000000U)
#define SPI_ENDIAN_LSB SPI_CTL0_LF


#define SPI_CK_PL_LOW_PH_1EDGE ((uint32_t)0x00000000U)
#define SPI_CK_PL_HIGH_PH_1EDGE SPI_CTL0_CKPL
#define SPI_CK_PL_LOW_PH_2EDGE SPI_CTL0_CKPH
#define SPI_CK_PL_HIGH_PH_2EDGE (SPI_CTL0_CKPL | SPI_CTL0_CKPH)


#define CTL0_PSC(regval) (BITS(3,5) & ((uint32_t)(regval) << 3))
#define SPI_PSC_2 CTL0_PSC(0)
#define SPI_PSC_4 CTL0_PSC(1)
#define SPI_PSC_8 CTL0_PSC(2)
#define SPI_PSC_16 CTL0_PSC(3)
#define SPI_PSC_32 CTL0_PSC(4)
#define SPI_PSC_64 CTL0_PSC(5)
#define SPI_PSC_128 CTL0_PSC(6)
#define SPI_PSC_256 CTL0_PSC(7)


#define I2S_AUDIOSAMPLE_8K ((uint32_t)8000U)
#define I2S_AUDIOSAMPLE_11K ((uint32_t)11025U)
#define I2S_AUDIOSAMPLE_16K ((uint32_t)16000U)
#define I2S_AUDIOSAMPLE_22K ((uint32_t)22050U)
#define I2S_AUDIOSAMPLE_32K ((uint32_t)32000U)
#define I2S_AUDIOSAMPLE_44K ((uint32_t)44100U)
#define I2S_AUDIOSAMPLE_48K ((uint32_t)48000U)
#define I2S_AUDIOSAMPLE_96K ((uint32_t)96000U)
#define I2S_AUDIOSAMPLE_192K ((uint32_t)192000U)


#define I2SCTL_DTLEN(regval) (BITS(1,2) & ((uint32_t)(regval) << 1))
#define I2S_FRAMEFORMAT_DT16B_CH16B I2SCTL_DTLEN(0)
#define I2S_FRAMEFORMAT_DT16B_CH32B (I2SCTL_DTLEN(0) | SPI_I2SCTL_CHLEN)
#define I2S_FRAMEFORMAT_DT24B_CH32B (I2SCTL_DTLEN(1) | SPI_I2SCTL_CHLEN)
#define I2S_FRAMEFORMAT_DT32B_CH32B (I2SCTL_DTLEN(2) | SPI_I2SCTL_CHLEN)


#define I2S_MCKOUT_DISABLE ((uint32_t)0x00000000U)
#define I2S_MCKOUT_ENABLE SPI_I2SPSC_MCKOEN


#define I2SCTL_I2SOPMOD(regval) (BITS(8,9) & ((uint32_t)(regval) << 8))
#define I2S_MODE_SLAVETX I2SCTL_I2SOPMOD(0)
#define I2S_MODE_SLAVERX I2SCTL_I2SOPMOD(1)
#define I2S_MODE_MASTERTX I2SCTL_I2SOPMOD(2)
#define I2S_MODE_MASTERRX I2SCTL_I2SOPMOD(3)


#define I2SCTL_I2SSTD(regval) (BITS(4,5) & ((uint32_t)(regval) << 4))
#define I2S_STD_PHILLIPS I2SCTL_I2SSTD(0)
#define I2S_STD_MSB I2SCTL_I2SSTD(1)
#define I2S_STD_LSB I2SCTL_I2SSTD(2)
#define I2S_STD_PCMSHORT I2SCTL_I2SSTD(3)
#define I2S_STD_PCMLONG (I2SCTL_I2SSTD(3) | SPI_I2SCTL_PCMSMOD)


#define I2S_CKPL_LOW ((uint32_t)0x00000000U)
#define I2S_CKPL_HIGH SPI_I2SCTL_CKPL


#define SPI_DMA_TRANSMIT ((uint8_t)0x00U)
#define SPI_DMA_RECEIVE ((uint8_t)0x01U)


#define SPI_CRC_TX ((uint8_t)0x00U)
#define SPI_CRC_RX ((uint8_t)0x01U)


#define SPI_I2S_INT_TBE ((uint8_t)0x00U)
#define SPI_I2S_INT_RBNE ((uint8_t)0x01U)
#define SPI_I2S_INT_ERR ((uint8_t)0x02U)


#define SPI_I2S_INT_FLAG_TBE ((uint8_t)0x00U)
#define SPI_I2S_INT_FLAG_RBNE ((uint8_t)0x01U)
#define SPI_I2S_INT_FLAG_RXORERR ((uint8_t)0x02U)
#define SPI_INT_FLAG_CONFERR ((uint8_t)0x03U)
#define SPI_INT_FLAG_CRCERR ((uint8_t)0x04U)
#define I2S_INT_FLAG_TXURERR ((uint8_t)0x05U)
#define SPI_I2S_INT_FLAG_FERR ((uint8_t)0x06U)


#define SPI_FLAG_RBNE SPI_STAT_RBNE
#define SPI_FLAG_TBE SPI_STAT_TBE
#define SPI_FLAG_CRCERR SPI_STAT_CRCERR
#define SPI_FLAG_CONFERR SPI_STAT_CONFERR
#define SPI_FLAG_RXORERR SPI_STAT_RXORERR
#define SPI_FLAG_TRANS SPI_STAT_TRANS
#define SPI_FLAG_FERR SPI_STAT_FERR
#define I2S_FLAG_RBNE SPI_STAT_RBNE
#define I2S_FLAG_TBE SPI_STAT_TBE
#define I2S_FLAG_CH SPI_STAT_I2SCH
#define I2S_FLAG_TXURERR SPI_STAT_TXURERR
#define I2S_FLAG_RXORERR SPI_STAT_RXORERR
#define I2S_FLAG_TRANS SPI_STAT_TRANS
#define I2S_FLAG_FERR SPI_STAT_FERR




void spi_i2s_deinit(uint32_t spi_periph);

void spi_struct_para_init(spi_parameter_struct* spi_struct);

void spi_init(uint32_t spi_periph, spi_parameter_struct* spi_struct);

void spi_enable(uint32_t spi_periph);

void spi_disable(uint32_t spi_periph);


void i2s_init(uint32_t spi_periph, uint32_t mode, uint32_t standard, uint32_t ckpl);

void i2s_psc_config(uint32_t spi_periph, uint32_t audiosample, uint32_t frameformat, uint32_t mckout);

void i2s_enable(uint32_t spi_periph);

void i2s_disable(uint32_t spi_periph);



void spi_nss_output_enable(uint32_t spi_periph);

void spi_nss_output_disable(uint32_t spi_periph);

void spi_nss_internal_high(uint32_t spi_periph);

void spi_nss_internal_low(uint32_t spi_periph);



void spi_dma_enable(uint32_t spi_periph, uint8_t dma);

void spi_dma_disable(uint32_t spi_periph, uint8_t dma);



void spi_i2s_data_frame_format_config(uint32_t spi_periph, uint16_t frame_format);

void spi_i2s_data_transmit(uint32_t spi_periph, uint16_t data);

uint16_t spi_i2s_data_receive(uint32_t spi_periph);

void spi_bidirectional_transfer_config(uint32_t spi_periph, uint32_t transfer_direction);



void spi_crc_polynomial_set(uint32_t spi_periph, uint16_t crc_poly);

uint16_t spi_crc_polynomial_get(uint32_t spi_periph);

void spi_crc_on(uint32_t spi_periph);

void spi_crc_off(uint32_t spi_periph);

void spi_crc_next(uint32_t spi_periph);

uint16_t spi_crc_get(uint32_t spi_periph, uint8_t crc);



void spi_ti_mode_enable(uint32_t spi_periph);

void spi_ti_mode_disable(uint32_t spi_periph);



void spi_nssp_mode_enable(uint32_t spi_periph);

void spi_nssp_mode_disable(uint32_t spi_periph);


void spi_i2s_interrupt_enable(uint32_t spi_periph, uint8_t interrupt);

void spi_i2s_interrupt_disable(uint32_t spi_periph, uint8_t interrupt);

FlagStatus spi_i2s_interrupt_flag_get(uint32_t spi_periph, uint8_t interrupt);

FlagStatus spi_i2s_flag_get(uint32_t spi_periph, uint32_t flag);

void spi_crc_error_clear(uint32_t spi_periph);
# 56 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_timer.h" 1
# 57 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_usart.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_usart.h"
#define GD32VF103_USART_H 




#define USART1 USART_BASE
#define USART2 (USART_BASE+(0x00000400U))
#define UART3 (USART_BASE+(0x00000800U))
#define UART4 (USART_BASE+(0x00000C00U))
#define USART0 (USART_BASE+(0x0000F400U))


#define USART_STAT(usartx) REG32((usartx) + (0x00000000U))
#define USART_DATA(usartx) REG32((usartx) + (0x00000004U))
#define USART_BAUD(usartx) REG32((usartx) + (0x00000008U))
#define USART_CTL0(usartx) REG32((usartx) + (0x0000000CU))
#define USART_CTL1(usartx) REG32((usartx) + (0x00000010U))
#define USART_CTL2(usartx) REG32((usartx) + (0x00000014U))
#define USART_GP(usartx) REG32((usartx) + (0x00000018U))



#define USART_STAT_PERR BIT(0)
#define USART_STAT_FERR BIT(1)
#define USART_STAT_NERR BIT(2)
#define USART_STAT_ORERR BIT(3)
#define USART_STAT_IDLEF BIT(4)
#define USART_STAT_RBNE BIT(5)
#define USART_STAT_TC BIT(6)
#define USART_STAT_TBE BIT(7)
#define USART_STAT_LBDF BIT(8)
#define USART_STAT_CTSF BIT(9)


#define USART_DATA_DATA BITS(0,8)


#define USART_BAUD_FRADIV BITS(0,3)
#define USART_BAUD_INTDIV BITS(4,15)


#define USART_CTL0_SBKCMD BIT(0)
#define USART_CTL0_RWU BIT(1)
#define USART_CTL0_REN BIT(2)
#define USART_CTL0_TEN BIT(3)
#define USART_CTL0_IDLEIE BIT(4)
#define USART_CTL0_RBNEIE BIT(5)
#define USART_CTL0_TCIE BIT(6)
#define USART_CTL0_TBEIE BIT(7)
#define USART_CTL0_PERRIE BIT(8)
#define USART_CTL0_PM BIT(9)
#define USART_CTL0_PCEN BIT(10)
#define USART_CTL0_WM BIT(11)
#define USART_CTL0_WL BIT(12)
#define USART_CTL0_UEN BIT(13)


#define USART_CTL1_ADDR BITS(0,3)
#define USART_CTL1_LBLEN BIT(5)
#define USART_CTL1_LBDIE BIT(6)
#define USART_CTL1_CLEN BIT(8)
#define USART_CTL1_CPH BIT(9)
#define USART_CTL1_CPL BIT(10)
#define USART_CTL1_CKEN BIT(11)
#define USART_CTL1_STB BITS(12,13)
#define USART_CTL1_LMEN BIT(14)


#define USART_CTL2_ERRIE BIT(0)
#define USART_CTL2_IREN BIT(1)
#define USART_CTL2_IRLP BIT(2)
#define USART_CTL2_HDEN BIT(3)
#define USART_CTL2_NKEN BIT(4)
#define USART_CTL2_SCEN BIT(5)
#define USART_CTL2_DENR BIT(6)
#define USART_CTL2_DENT BIT(7)
#define USART_CTL2_RTSEN BIT(8)
#define USART_CTL2_CTSEN BIT(9)
#define USART_CTL2_CTSIE BIT(10)


#define USART_GP_PSC BITS(0,7)
#define USART_GP_GUAT BITS(8,15)



#define USART_REGIDX_BIT(regidx,bitpos) (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos))
#define USART_REG_VAL(usartx,offset) (REG32((usartx) + (((uint32_t)(offset) & (0x0000FFFFU)) >> 6)))
#define USART_BIT_POS(val) ((uint32_t)(val) & (0x0000001FU))
#define USART_REGIDX_BIT2(regidx,bitpos,regidx2,bitpos2) (((uint32_t)(regidx2) << 22) | (uint32_t)((bitpos2) << 16) | (((uint32_t)(regidx) << 6) | (uint32_t)(bitpos)))

#define USART_REG_VAL2(usartx,offset) (REG32((usartx) + ((uint32_t)(offset) >> 22)))
#define USART_BIT_POS2(val) (((uint32_t)(val) & (0x001F0000U)) >> 16)


#define USART_STAT_REG_OFFSET (0x00000000U)
#define USART_CTL0_REG_OFFSET (0x0000000CU)
#define USART_CTL1_REG_OFFSET (0x00000010U)
#define USART_CTL2_REG_OFFSET (0x00000014U)


typedef enum
{

    USART_FLAG_CTSF = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(9U)),
    USART_FLAG_LBDF = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(8U)),
    USART_FLAG_TBE = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(7U)),
    USART_FLAG_TC = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(6U)),
    USART_FLAG_RBNE = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(5U)),
    USART_FLAG_IDLEF = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(4U)),
    USART_FLAG_ORERR = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(3U)),
    USART_FLAG_NERR = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(2U)),
    USART_FLAG_FERR = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(1U)),
    USART_FLAG_PERR = (((uint32_t)((0x00000000U)) << 6) | (uint32_t)(0U)),
}usart_flag_enum;


typedef enum
{

    USART_INT_FLAG_PERR = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((0U) << 16) | (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(8U))),
    USART_INT_FLAG_TBE = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((7U) << 16) | (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(7U))),
    USART_INT_FLAG_TC = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((6U) << 16) | (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(6U))),
    USART_INT_FLAG_RBNE = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((5U) << 16) | (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(5U))),
    USART_INT_FLAG_RBNE_ORERR = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(5U))),
    USART_INT_FLAG_IDLE = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((4U) << 16) | (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(4U))),

    USART_INT_FLAG_LBD = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((8U) << 16) | (((uint32_t)((0x00000010U)) << 6) | (uint32_t)(6U))),

    USART_INT_FLAG_CTS = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((9U) << 16) | (((uint32_t)((0x00000014U)) << 6) | (uint32_t)(10U))),
    USART_INT_FLAG_ERR_ORERR = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((3U) << 16) | (((uint32_t)((0x00000014U)) << 6) | (uint32_t)(0U))),
    USART_INT_FLAG_ERR_NERR = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((2U) << 16) | (((uint32_t)((0x00000014U)) << 6) | (uint32_t)(0U))),
    USART_INT_FLAG_ERR_FERR = (((uint32_t)((0x00000000U)) << 22) | (uint32_t)((1U) << 16) | (((uint32_t)((0x00000014U)) << 6) | (uint32_t)(0U))),
}usart_interrupt_flag_enum;


typedef enum
{

    USART_INT_PERR = (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(8U)),
    USART_INT_TBE = (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(7U)),
    USART_INT_TC = (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(6U)),
    USART_INT_RBNE = (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(5U)),
    USART_INT_IDLE = (((uint32_t)((0x0000000CU)) << 6) | (uint32_t)(4U)),

    USART_INT_LBD = (((uint32_t)((0x00000010U)) << 6) | (uint32_t)(6U)),

    USART_INT_CTS = (((uint32_t)((0x00000014U)) << 6) | (uint32_t)(10U)),
    USART_INT_ERR = (((uint32_t)((0x00000014U)) << 6) | (uint32_t)(0U)),
}usart_interrupt_enum;


#define CTL0_REN(regval) (BIT(2) & ((uint32_t)(regval) << 2))
#define USART_RECEIVE_ENABLE CTL0_REN(1)
#define USART_RECEIVE_DISABLE CTL0_REN(0)


#define CTL0_TEN(regval) (BIT(3) & ((uint32_t)(regval) << 3))
#define USART_TRANSMIT_ENABLE CTL0_TEN(1)
#define USART_TRANSMIT_DISABLE CTL0_TEN(0)


#define CTL0_PM(regval) (BITS(9,10) & ((uint32_t)(regval) << 9))
#define USART_PM_NONE CTL0_PM(0)
#define USART_PM_EVEN CTL0_PM(2)
#define USART_PM_ODD CTL0_PM(3)


#define CTL0_WM(regval) (BIT(11) & ((uint32_t)(regval) << 11))
#define USART_WM_IDLE CTL0_WM(0)
#define USART_WM_ADDR CTL0_WM(1)


#define CTL0_WL(regval) (BIT(12) & ((uint32_t)(regval) << 12))
#define USART_WL_8BIT CTL0_WL(0)
#define USART_WL_9BIT CTL0_WL(1)


#define CTL1_STB(regval) (BITS(12,13) & ((uint32_t)(regval) << 12))
#define USART_STB_1BIT CTL1_STB(0)
#define USART_STB_0_5BIT CTL1_STB(1)
#define USART_STB_2BIT CTL1_STB(2)
#define USART_STB_1_5BIT CTL1_STB(3)


#define CTL1_LBLEN(regval) (BIT(5) & ((uint32_t)(regval) << 5))
#define USART_LBLEN_10B CTL1_LBLEN(0)
#define USART_LBLEN_11B CTL1_LBLEN(1)


#define CTL1_CLEN(regval) (BIT(8) & ((uint32_t)(regval) << 8))
#define USART_CLEN_NONE CTL1_CLEN(0)
#define USART_CLEN_EN CTL1_CLEN(1)


#define CTL1_CPH(regval) (BIT(9) & ((uint32_t)(regval) << 9))
#define USART_CPH_1CK CTL1_CPH(0)
#define USART_CPH_2CK CTL1_CPH(1)


#define CTL1_CPL(regval) (BIT(10) & ((uint32_t)(regval) << 10))
#define USART_CPL_LOW CTL1_CPL(0)
#define USART_CPL_HIGH CTL1_CPL(1)


#define CLT2_DENR(regval) (BIT(6) & ((uint32_t)(regval) << 6))
#define USART_DENR_ENABLE CLT2_DENR(1)
#define USART_DENR_DISABLE CLT2_DENR(0)


#define CLT2_DENT(regval) (BIT(7) & ((uint32_t)(regval) << 7))
#define USART_DENT_ENABLE CLT2_DENT(1)
#define USART_DENT_DISABLE CLT2_DENT(0)


#define CLT2_RTSEN(regval) (BIT(8) & ((uint32_t)(regval) << 8))
#define USART_RTS_ENABLE CLT2_RTSEN(1)
#define USART_RTS_DISABLE CLT2_RTSEN(0)


#define CLT2_CTSEN(regval) (BIT(9) & ((uint32_t)(regval) << 9))
#define USART_CTS_ENABLE CLT2_CTSEN(1)
#define USART_CTS_DISABLE CLT2_CTSEN(0)


#define CTL2_IRLP(regval) (BIT(2) & ((uint32_t)(regval) << 2))
#define USART_IRLP_LOW CTL2_IRLP(1)
#define USART_IRLP_NORMAL CTL2_IRLP(0)




void usart_deinit(uint32_t usart_periph);

void usart_baudrate_set(uint32_t usart_periph, uint32_t baudval);

void usart_parity_config(uint32_t usart_periph, uint32_t paritycfg);

void usart_word_length_set(uint32_t usart_periph, uint32_t wlen);

void usart_stop_bit_set(uint32_t usart_periph, uint32_t stblen);



void usart_enable(uint32_t usart_periph);

void usart_disable(uint32_t usart_periph);

void usart_transmit_config(uint32_t usart_periph, uint32_t txconfig);

void usart_receive_config(uint32_t usart_periph, uint32_t rxconfig);

void usart_data_transmit(uint32_t usart_periph, uint32_t data);

uint16_t usart_data_receive(uint32_t usart_periph);



void usart_address_config(uint32_t usart_periph, uint8_t addr);

void usart_mute_mode_enable(uint32_t usart_periph);

void usart_mute_mode_disable(uint32_t usart_periph);

void usart_mute_mode_wakeup_config(uint32_t usart_periph, uint32_t wmethod);



void usart_lin_mode_enable(uint32_t usart_periph);

void usart_lin_mode_disable(uint32_t usart_periph);

void usart_lin_break_detection_length_config(uint32_t usart_periph, uint32_t lblen);

void usart_send_break(uint32_t usart_periph);



void usart_halfduplex_enable(uint32_t usart_periph);

void usart_halfduplex_disable(uint32_t usart_periph);



void usart_synchronous_clock_enable(uint32_t usart_periph);

void usart_synchronous_clock_disable(uint32_t usart_periph);

void usart_synchronous_clock_config(uint32_t usart_periph, uint32_t clen, uint32_t cph, uint32_t cpl);



void usart_guard_time_config(uint32_t usart_periph, uint32_t gaut);

void usart_smartcard_mode_enable(uint32_t usart_periph);

void usart_smartcard_mode_disable(uint32_t usart_periph);

void usart_smartcard_mode_nack_enable(uint32_t usart_periph);

void usart_smartcard_mode_nack_disable(uint32_t usart_periph);



void usart_irda_mode_enable(uint32_t usart_periph);

void usart_irda_mode_disable(uint32_t usart_periph);

void usart_prescaler_config(uint32_t usart_periph, uint8_t psc);

void usart_irda_lowpower_config(uint32_t usart_periph, uint32_t irlp);



void usart_hardware_flow_rts_config(uint32_t usart_periph, uint32_t rtsconfig);

void usart_hardware_flow_cts_config(uint32_t usart_periph, uint32_t ctsconfig);


void usart_dma_receive_config(uint32_t usart_periph, uint32_t dmacmd);

void usart_dma_transmit_config(uint32_t usart_periph, uint32_t dmacmd);



FlagStatus usart_flag_get(uint32_t usart_periph, usart_flag_enum flag);

void usart_flag_clear(uint32_t usart_periph, usart_flag_enum flag);



void usart_interrupt_enable(uint32_t usart_periph, uint32_t int_flag);

void usart_interrupt_disable(uint32_t usart_periph, uint32_t int_flag);

FlagStatus usart_interrupt_flag_get(uint32_t usart_periph, uint32_t int_flag);

void usart_interrupt_flag_clear(uint32_t usart_periph, uint32_t flag);
# 58 "board/gd32vf103_libopt.h" 2
# 1 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_wwdgt.h" 1
# 36 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_wwdgt.h"
#define GD32VF103_WWDGT_H 




#define WWDGT WWDGT_BASE


#define WWDGT_CTL REG32((WWDGT) + 0x00000000U)
#define WWDGT_CFG REG32((WWDGT) + 0x00000004U)
#define WWDGT_STAT REG32((WWDGT) + 0x00000008U)



#define WWDGT_CTL_CNT BITS(0,6)
#define WWDGT_CTL_WDGTEN BIT(7)


#define WWDGT_CFG_WIN BITS(0,6)
#define WWDGT_CFG_PSC BITS(7,8)
#define WWDGT_CFG_EWIE BIT(9)


#define WWDGT_STAT_EWIF BIT(0)


#define CFG_PSC(regval) (BITS(7,8) & ((uint32_t)(regval) << 7))
#define WWDGT_CFG_PSC_DIV1 CFG_PSC(0)
#define WWDGT_CFG_PSC_DIV2 CFG_PSC(1)
#define WWDGT_CFG_PSC_DIV4 CFG_PSC(2)
#define WWDGT_CFG_PSC_DIV8 CFG_PSC(3)



void wwdgt_deinit(void);

void wwdgt_enable(void);


void wwdgt_counter_update(uint16_t counter_value);

void wwdgt_config(uint16_t counter, uint16_t window, uint32_t prescaler);


void wwdgt_interrupt_enable(void);

FlagStatus wwdgt_flag_get(void);

void wwdgt_flag_clear(void);
# 59 "board/gd32vf103_libopt.h" 2
# 1 "libraries/n22/drivers/n22_func.h" 1



#define N22_FUNC_H 


# 1 "libraries/n22/drivers/n22_tmr.h" 1



#define N22_TMR_H 

#define TMR_MSIP 0xFFC
#define TMR_MSIP_size 0x4
#define TMR_MTIMECMP 0x8
#define TMR_MTIMECMP_size 0x8
#define TMR_MTIME 0x0
#define TMR_MTIME_size 0x8

#define TMR_CTRL_ADDR 0xd1000000
#define TMR_REG(offset) _REG32(TMR_CTRL_ADDR, offset)
#define TMR_FREQ ((uint32_t)SystemCoreClock/4)
# 8 "libraries/n22/drivers/n22_func.h" 2
# 1 "libraries/n22/drivers/n22_eclic.h" 1



#define N22_ECLIC_H 
# 1 "libraries/n22/drivers/riscv_const.h" 1




#define _RISCV_CONST_H 





#define _AC(X,Y) (X ##Y)
#define _AT(T,X) ((T)(X))


#define _BITUL(x) (_AC(1,UL) << (x))
#define _BITULL(x) (_AC(1,ULL) << (x))
# 6 "libraries/n22/drivers/n22_eclic.h" 2

#define ECLICINTCTLBITS 4




#define ECLIC_CFG_OFFSET 0x0

#define ECLIC_INFO_OFFSET 0x4

#define ECLIC_MTH_OFFSET 0xB


#define ECLIC_INT_IP_OFFSET _AC(0x1000,UL)

#define ECLIC_INT_IE_OFFSET _AC(0x1001,UL)

#define ECLIC_INT_ATTR_OFFSET _AC(0x1002,UL)

#define ECLIC_INT_ATTR_SHV 0x01
#define ECLIC_INT_ATTR_TRIG_LEVEL 0x00
#define ECLIC_INT_ATTR_TRIG_EDGE 0x02
#define ECLIC_INT_ATTR_TRIG_POS 0x00
#define ECLIC_INT_ATTR_TRIG_NEG 0x04


#define ECLIC_INT_CTRL_OFFSET _AC(0x1003,UL)



#define ECLIC_ADDR_BASE 0xd2000000


#define ECLIC_CFG_NLBITS_MASK _AC(0x1E,UL)
#define ECLIC_CFG_NLBITS_LSB (1u)

#define MSIP_HANDLER eclic_msip_handler
#define MTIME_HANDLER eclic_mtip_handler
#define BWEI_HANDLER eclic_bwei_handler
#define PMOVI_HANDLER eclic_pmovi_handler
# 9 "libraries/n22/drivers/n22_func.h" 2

#define ECLIC_GROUP_LEVEL0_PRIO4 0
#define ECLIC_GROUP_LEVEL1_PRIO3 1
#define ECLIC_GROUP_LEVEL2_PRIO2 2
#define ECLIC_GROUP_LEVEL3_PRIO1 3
#define ECLIC_GROUP_LEVEL4_PRIO0 4

void switch_m2u_mode();
uint32_t get_tmr_freq();
uint32_t mtime_lo(void);
uint32_t mtime_hi(void);
uint64_t get_timer_value();
uint64_t get_instret_value();
uint64_t get_cycle_value();

void eclic_init(uint32_t num_irq);

void eclic_enable_interrupt(uint32_t source);
void eclic_disable_interrupt(uint32_t source);

void eclic_set_pending(uint32_t source);
void eclic_clear_pending(uint32_t source);

void eclic_set_intctrl(uint32_t source, uint8_t intctrl);
uint8_t eclic_get_intctrl(uint32_t source);

void eclic_set_intattr(uint32_t source, uint8_t intattr);
uint8_t eclic_get_intattr(uint32_t source);

void eclic_set_ecliccfg(uint8_t ecliccfg);
uint8_t eclic_get_ecliccfg();

void eclic_set_mth(uint8_t mth);
uint8_t eclic_get_mth();

void eclic_set_nlbits(uint8_t nlbits);
uint8_t eclic_get_nlbits();

uint8_t eclic_set_int_level(uint32_t source, uint8_t level);
uint8_t eclic_get_int_level(uint32_t source);

uint8_t eclic_set_int_priority(uint32_t source, uint8_t priority);
uint8_t eclic_get_int_priority(uint32_t source);

void eclic_mode_enable();
void eclic_set_shv(uint32_t source, uint8_t shv);
void eclic_set_trig(uint32_t source, uint8_t trig);






__attribute__( ( always_inline ) ) static inline void __WFI(void) {
 __asm volatile ("wfi");
}







__attribute__( ( always_inline ) ) static inline void __WFE(void)
{
  __asm volatile ("wfi");
}

void close_timer(void);
void open_timer(void);
void enable_timer_interrupt(void);
void clear_timer_interrupt(void);
# 60 "board/gd32vf103_libopt.h" 2
# 225 "libraries/GD32VF103_standard_peripheral/gd32vf103.h" 2
# 39 "libraries/GD32VF103_standard_peripheral/Include/gd32vf103_timer.h" 2


#define TIMER0 (TIMER_BASE + 0x00012C00U)
#define TIMER1 (TIMER_BASE + 0x00000000U)
#define TIMER2 (TIMER_BASE + 0x00000400U)
#define TIMER3 (TIMER_BASE + 0x00000800U)
#define TIMER4 (TIMER_BASE + 0x00000C00U)
#define TIMER5 (TIMER_BASE + 0x00001000U)
#define TIMER6 (TIMER_BASE + 0x00001400U)


#define TIMER_CTL0(timerx) REG32((timerx) + 0x00U)
#define TIMER_CTL1(timerx) REG32((timerx) + 0x04U)
#define TIMER_SMCFG(timerx) REG32((timerx) + 0x08U)
#define TIMER_DMAINTEN(timerx) REG32((timerx) + 0x0CU)
#define TIMER_INTF(timerx) REG32((timerx) + 0x10U)
#define TIMER_SWEVG(timerx) REG32((timerx) + 0x14U)
#define TIMER_CHCTL0(timerx) REG32((timerx) + 0x18U)
#define TIMER_CHCTL1(timerx) REG32((timerx) + 0x1CU)
#define TIMER_CHCTL2(timerx) REG32((timerx) + 0x20U)
#define TIMER_CNT(timerx) REG32((timerx) + 0x24U)
#define TIMER_PSC(timerx) REG32((timerx) + 0x28U)
#define TIMER_CAR(timerx) REG32((timerx) + 0x2CU)
#define TIMER_CREP(timerx) REG32((timerx) + 0x30U)
#define TIMER_CH0CV(timerx) REG32((timerx) + 0x34U)
#define TIMER_CH1CV(timerx) REG32((timerx) + 0x38U)
#define TIMER_CH2CV(timerx) REG32((timerx) + 0x3CU)
#define TIMER_CH3CV(timerx) REG32((timerx) + 0x40U)
#define TIMER_CCHP(timerx) REG32((timerx) + 0x44U)
#define TIMER_DMACFG(timerx) REG32((timerx) + 0x48U)
#define TIMER_DMATB(timerx) REG32((timerx) + 0x4CU)



#define TIMER_CTL0_CEN BIT(0)
#define TIMER_CTL0_UPDIS BIT(1)
#define TIMER_CTL0_UPS BIT(2)
#define TIMER_CTL0_SPM BIT(3)
#define TIMER_CTL0_DIR BIT(4)
#define TIMER_CTL0_CAM BITS(5,6)
#define TIMER_CTL0_ARSE BIT(7)
#define TIMER_CTL0_CKDIV BITS(8,9)


#define TIMER_CTL1_CCSE BIT(0)
#define TIMER_CTL1_CCUC BIT(2)
#define TIMER_CTL1_DMAS BIT(3)
#define TIMER_CTL1_MMC BITS(4,6)
#define TIMER_CTL1_TI0S BIT(7)
#define TIMER_CTL1_ISO0 BIT(8)
#define TIMER_CTL1_ISO0N BIT(9)
#define TIMER_CTL1_ISO1 BIT(10)
#define TIMER_CTL1_ISO1N BIT(11)
#define TIMER_CTL1_ISO2 BIT(12)
#define TIMER_CTL1_ISO2N BIT(13)
#define TIMER_CTL1_ISO3 BIT(14)


#define TIMER_SMCFG_SMC BITS(0,2)
#define TIMER_SMCFG_TRGS BITS(4,6)
#define TIMER_SMCFG_MSM BIT(7)
#define TIMER_SMCFG_ETFC BITS(8,11)
#define TIMER_SMCFG_ETPSC BITS(12,13)
#define TIMER_SMCFG_SMC1 BIT(14)
#define TIMER_SMCFG_ETP BIT(15)


#define TIMER_DMAINTEN_UPIE BIT(0)
#define TIMER_DMAINTEN_CH0IE BIT(1)
#define TIMER_DMAINTEN_CH1IE BIT(2)
#define TIMER_DMAINTEN_CH2IE BIT(3)
#define TIMER_DMAINTEN_CH3IE BIT(4)
#define TIMER_DMAINTEN_CMTIE BIT(5)
#define TIMER_DMAINTEN_TRGIE BIT(6)
#define TIMER_DMAINTEN_BRKIE BIT(7)
#define TIMER_DMAINTEN_UPDEN BIT(8)
#define TIMER_DMAINTEN_CH0DEN BIT(9)
#define TIMER_DMAINTEN_CH1DEN BIT(10)
#define TIMER_DMAINTEN_CH2DEN BIT(11)
#define TIMER_DMAINTEN_CH3DEN BIT(12)
#define TIMER_DMAINTEN_CMTDEN BIT(13)
#define TIMER_DMAINTEN_TRGDEN BIT(14)


#define TIMER_INTF_UPIF BIT(0)
#define TIMER_INTF_CH0IF BIT(1)
#define TIMER_INTF_CH1IF BIT(2)
#define TIMER_INTF_CH2IF BIT(3)
#define TIMER_INTF_CH3IF BIT(4)
#define TIMER_INTF_CMTIF BIT(5)
#define TIMER_INTF_TRGIF BIT(6)
#define TIMER_INTF_BRKIF BIT(7)
#define TIMER_INTF_CH0OF BIT(9)
#define TIMER_INTF_CH1OF BIT(10)
#define TIMER_INTF_CH2OF BIT(11)
#define TIMER_INTF_CH3OF BIT(12)


#define TIMER_SWEVG_UPG BIT(0)
#define TIMER_SWEVG_CH0G BIT(1)
#define TIMER_SWEVG_CH1G BIT(2)
#define TIMER_SWEVG_CH2G BIT(3)
#define TIMER_SWEVG_CH3G BIT(4)
#define TIMER_SWEVG_CMTG BIT(5)
#define TIMER_SWEVG_TRGG BIT(6)
#define TIMER_SWEVG_BRKG BIT(7)



#define TIMER_CHCTL0_CH0MS BITS(0,1)
#define TIMER_CHCTL0_CH0COMFEN BIT(2)
#define TIMER_CHCTL0_CH0COMSEN BIT(3)
#define TIMER_CHCTL0_CH0COMCTL BITS(4,6)
#define TIMER_CHCTL0_CH0COMCEN BIT(7)
#define TIMER_CHCTL0_CH1MS BITS(8,9)
#define TIMER_CHCTL0_CH1COMFEN BIT(10)
#define TIMER_CHCTL0_CH1COMSEN BIT(11)
#define TIMER_CHCTL0_CH1COMCTL BITS(12,14)
#define TIMER_CHCTL0_CH1COMCEN BIT(15)

#define TIMER_CHCTL0_CH0CAPPSC BITS(2,3)
#define TIMER_CHCTL0_CH0CAPFLT BITS(4,7)
#define TIMER_CHCTL0_CH1CAPPSC BITS(10,11)
#define TIMER_CHCTL0_CH1CAPFLT BITS(12,15)



#define TIMER_CHCTL1_CH2MS BITS(0,1)
#define TIMER_CHCTL1_CH2COMFEN BIT(2)
#define TIMER_CHCTL1_CH2COMSEN BIT(3)
#define TIMER_CHCTL1_CH2COMCTL BITS(4,6)
#define TIMER_CHCTL1_CH2COMCEN BIT(7)
#define TIMER_CHCTL1_CH3MS BITS(8,9)
#define TIMER_CHCTL1_CH3COMFEN BIT(10)
#define TIMER_CHCTL1_CH3COMSEN BIT(11)
#define TIMER_CHCTL1_CH3COMCTL BITS(12,14)
#define TIMER_CHCTL1_CH3COMCEN BIT(15)

#define TIMER_CHCTL1_CH2CAPPSC BITS(2,3)
#define TIMER_CHCTL1_CH2CAPFLT BITS(4,7)
#define TIMER_CHCTL1_CH3CAPPSC BITS(10,11)
#define TIMER_CHCTL1_CH3CAPFLT BITS(12,15)


#define TIMER_CHCTL2_CH0EN BIT(0)
#define TIMER_CHCTL2_CH0P BIT(1)
#define TIMER_CHCTL2_CH0NEN BIT(2)
#define TIMER_CHCTL2_CH0NP BIT(3)
#define TIMER_CHCTL2_CH1EN BIT(4)
#define TIMER_CHCTL2_CH1P BIT(5)
#define TIMER_CHCTL2_CH1NEN BIT(6)
#define TIMER_CHCTL2_CH1NP BIT(7)
#define TIMER_CHCTL2_CH2EN BIT(8)
#define TIMER_CHCTL2_CH2P BIT(9)
#define TIMER_CHCTL2_CH2NEN BIT(10)
#define TIMER_CHCTL2_CH2NP BIT(11)
#define TIMER_CHCTL2_CH3EN BIT(12)
#define TIMER_CHCTL2_CH3P BIT(13)


#define TIMER_CNT_CNT BITS(0,15)


#define TIMER_PSC_PSC BITS(0,15)


#define TIMER_CAR_CARL BITS(0,15)


#define TIMER_CREP_CREP BITS(0,7)


#define TIMER_CH0CV_CH0VAL BITS(0,15)


#define TIMER_CH1CV_CH1VAL BITS(0,15)


#define TIMER_CH2CV_CH2VAL BITS(0,15)


#define TIMER_CH3CV_CH3VAL BITS(0,15)


#define TIMER_CCHP_DTCFG BITS(0,7)
#define TIMER_CCHP_PROT BITS(8,9)
#define TIMER_CCHP_IOS BIT(10)
#define TIMER_CCHP_ROS BIT(11)
#define TIMER_CCHP_BRKEN BIT(12)
#define TIMER_CCHP_BRKP BIT(13)
#define TIMER_CCHP_OAEN BIT(14)
#define TIMER_CCHP_POEN BIT(15)


#define TIMER_DMACFG_DMATA BITS(0,4)
#define TIMER_DMACFG_DMATC BITS(8,12)


#define TIMER_DMATB_DMATB BITS(0,15)



typedef struct
{
    uint16_t prescaler;
    uint16_t alignedmode;
    uint16_t counterdirection;
    uint32_t period;
    uint16_t clockdivision;
    uint8_t repetitioncounter;
}timer_parameter_struct;


typedef struct
{
    uint16_t runoffstate;
    uint16_t ideloffstate;
    uint16_t deadtime;
    uint16_t breakpolarity;
    uint16_t outputautostate;
    uint16_t protectmode;
    uint16_t breakstate;
}timer_break_parameter_struct;


typedef struct
{
    uint16_t outputstate;
    uint16_t outputnstate;
    uint16_t ocpolarity;
    uint16_t ocnpolarity;
    uint16_t ocidlestate;
    uint16_t ocnidlestate;
}timer_oc_parameter_struct;


typedef struct
{
    uint16_t icpolarity;
    uint16_t icselection;
    uint16_t icprescaler;
    uint16_t icfilter;
}timer_ic_parameter_struct;


#define TIMER_INT_UP TIMER_DMAINTEN_UPIE
#define TIMER_INT_CH0 TIMER_DMAINTEN_CH0IE
#define TIMER_INT_CH1 TIMER_DMAINTEN_CH1IE
#define TIMER_INT_CH2 TIMER_DMAINTEN_CH2IE
#define TIMER_INT_CH3 TIMER_DMAINTEN_CH3IE
#define TIMER_INT_CMT TIMER_DMAINTEN_CMTIE
#define TIMER_INT_TRG TIMER_DMAINTEN_TRGIE
#define TIMER_INT_BRK TIMER_DMAINTEN_BRKIE


#define TIMER_INT_FLAG_UP TIMER_INT_UP
#define TIMER_INT_FLAG_CH0 TIMER_INT_CH0
#define TIMER_INT_FLAG_CH1 TIMER_INT_CH1
#define TIMER_INT_FLAG_CH2 TIMER_INT_CH2
#define TIMER_INT_FLAG_CH3 TIMER_INT_CH3
#define TIMER_INT_FLAG_CMT TIMER_INT_CMT
#define TIMER_INT_FLAG_TRG TIMER_INT_TRG
#define TIMER_INT_FLAG_BRK TIMER_INT_BRK


#define TIMER_FLAG_UP TIMER_INTF_UPIF
#define TIMER_FLAG_CH0 TIMER_INTF_CH0IF
#define TIMER_FLAG_CH1 TIMER_INTF_CH1IF
#define TIMER_FLAG_CH2 TIMER_INTF_CH2IF
#define TIMER_FLAG_CH3 TIMER_INTF_CH3IF
#define TIMER_FLAG_CMT TIMER_INTF_CMTIF
#define TIMER_FLAG_TRG TIMER_INTF_TRGIF
#define TIMER_FLAG_BRK TIMER_INTF_BRKIF
#define TIMER_FLAG_CH0O TIMER_INTF_CH0OF
#define TIMER_FLAG_CH1O TIMER_INTF_CH1OF
#define TIMER_FLAG_CH2O TIMER_INTF_CH2OF
#define TIMER_FLAG_CH3O TIMER_INTF_CH3OF


#define TIMER_DMA_UPD ((uint16_t)TIMER_DMAINTEN_UPDEN)
#define TIMER_DMA_CH0D ((uint16_t)TIMER_DMAINTEN_CH0DEN)
#define TIMER_DMA_CH1D ((uint16_t)TIMER_DMAINTEN_CH1DEN)
#define TIMER_DMA_CH2D ((uint16_t)TIMER_DMAINTEN_CH2DEN)
#define TIMER_DMA_CH3D ((uint16_t)TIMER_DMAINTEN_CH3DEN)
#define TIMER_DMA_CMTD ((uint16_t)TIMER_DMAINTEN_CMTDEN)
#define TIMER_DMA_TRGD ((uint16_t)TIMER_DMAINTEN_TRGDEN)


#define TIMER_DMAREQUEST_UPDATEEVENT TIMER_CTL1_DMAS
#define TIMER_DMAREQUEST_CHANNELEVENT ((uint32_t)0x00000000U)


#define DMACFG_DMATA(regval) (BITS(0, 4) & ((uint32_t)(regval) << 0U))
#define TIMER_DMACFG_DMATA_CTL0 DMACFG_DMATA(0)
#define TIMER_DMACFG_DMATA_CTL1 DMACFG_DMATA(1)
#define TIMER_DMACFG_DMATA_SMCFG DMACFG_DMATA(2)
#define TIMER_DMACFG_DMATA_DMAINTEN DMACFG_DMATA(3)
#define TIMER_DMACFG_DMATA_INTF DMACFG_DMATA(4)
#define TIMER_DMACFG_DMATA_SWEVG DMACFG_DMATA(5)
#define TIMER_DMACFG_DMATA_CHCTL0 DMACFG_DMATA(6)
#define TIMER_DMACFG_DMATA_CHCTL1 DMACFG_DMATA(7)
#define TIMER_DMACFG_DMATA_CHCTL2 DMACFG_DMATA(8)
#define TIMER_DMACFG_DMATA_CNT DMACFG_DMATA(9)
#define TIMER_DMACFG_DMATA_PSC DMACFG_DMATA(10)
#define TIMER_DMACFG_DMATA_CAR DMACFG_DMATA(11)
#define TIMER_DMACFG_DMATA_CREP DMACFG_DMATA(12)
#define TIMER_DMACFG_DMATA_CH0CV DMACFG_DMATA(13)
#define TIMER_DMACFG_DMATA_CH1CV DMACFG_DMATA(14)
#define TIMER_DMACFG_DMATA_CH2CV DMACFG_DMATA(15)
#define TIMER_DMACFG_DMATA_CH3CV DMACFG_DMATA(16)
#define TIMER_DMACFG_DMATA_CCHP DMACFG_DMATA(17)
#define TIMER_DMACFG_DMATA_DMACFG DMACFG_DMATA(18)


#define DMACFG_DMATC(regval) (BITS(8, 12) & ((uint32_t)(regval) << 8U))
#define TIMER_DMACFG_DMATC_1TRANSFER DMACFG_DMATC(0)
#define TIMER_DMACFG_DMATC_2TRANSFER DMACFG_DMATC(1)
#define TIMER_DMACFG_DMATC_3TRANSFER DMACFG_DMATC(2)
#define TIMER_DMACFG_DMATC_4TRANSFER DMACFG_DMATC(3)
#define TIMER_DMACFG_DMATC_5TRANSFER DMACFG_DMATC(4)
#define TIMER_DMACFG_DMATC_6TRANSFER DMACFG_DMATC(5)
#define TIMER_DMACFG_DMATC_7TRANSFER DMACFG_DMATC(6)
#define TIMER_DMACFG_DMATC_8TRANSFER DMACFG_DMATC(7)
#define TIMER_DMACFG_DMATC_9TRANSFER DMACFG_DMATC(8)
#define TIMER_DMACFG_DMATC_10TRANSFER DMACFG_DMATC(9)
#define TIMER_DMACFG_DMATC_11TRANSFER DMACFG_DMATC(10)
#define TIMER_DMACFG_DMATC_12TRANSFER DMACFG_DMATC(11)
#define TIMER_DMACFG_DMATC_13TRANSFER DMACFG_DMATC(12)
#define TIMER_DMACFG_DMATC_14TRANSFER DMACFG_DMATC(13)
#define TIMER_DMACFG_DMATC_15TRANSFER DMACFG_DMATC(14)
#define TIMER_DMACFG_DMATC_16TRANSFER DMACFG_DMATC(15)
#define TIMER_DMACFG_DMATC_17TRANSFER DMACFG_DMATC(16)
#define TIMER_DMACFG_DMATC_18TRANSFER DMACFG_DMATC(17)


#define TIMER_EVENT_SRC_UPG ((uint16_t)0x0001U)
#define TIMER_EVENT_SRC_CH0G ((uint16_t)0x0002U)
#define TIMER_EVENT_SRC_CH1G ((uint16_t)0x0004U)
#define TIMER_EVENT_SRC_CH2G ((uint16_t)0x0008U)
#define TIMER_EVENT_SRC_CH3G ((uint16_t)0x0010U)
#define TIMER_EVENT_SRC_CMTG ((uint16_t)0x0020U)
#define TIMER_EVENT_SRC_TRGG ((uint16_t)0x0040U)
#define TIMER_EVENT_SRC_BRKG ((uint16_t)0x0080U)


#define CTL0_CAM(regval) ((uint16_t)(BITS(5, 6) & ((uint32_t)(regval) << 5U)))
#define TIMER_COUNTER_EDGE CTL0_CAM(0)
#define TIMER_COUNTER_CENTER_DOWN CTL0_CAM(1)
#define TIMER_COUNTER_CENTER_UP CTL0_CAM(2)
#define TIMER_COUNTER_CENTER_BOTH CTL0_CAM(3)


#define TIMER_PSC_RELOAD_NOW TIMER_SWEVG_UPG
#define TIMER_PSC_RELOAD_UPDATE ((uint32_t)0x00000000U)


#define TIMER_COUNTER_UP ((uint16_t)0x0000U)
#define TIMER_COUNTER_DOWN ((uint16_t)TIMER_CTL0_DIR)


#define CTL0_CKDIV(regval) ((uint16_t)(BITS(8, 9) & ((uint32_t)(regval) << 8U)))
#define TIMER_CKDIV_DIV1 CTL0_CKDIV(0)
#define TIMER_CKDIV_DIV2 CTL0_CKDIV(1)
#define TIMER_CKDIV_DIV4 CTL0_CKDIV(2)


#define TIMER_SP_MODE_SINGLE TIMER_CTL0_SPM
#define TIMER_SP_MODE_REPETITIVE ((uint32_t)0x00000000U)


#define TIMER_UPDATE_SRC_REGULAR TIMER_CTL0_UPS
#define TIMER_UPDATE_SRC_GLOBAL ((uint32_t)0x00000000U)


#define TIMER_ROS_STATE_ENABLE ((uint16_t)TIMER_CCHP_ROS)
#define TIMER_ROS_STATE_DISABLE ((uint16_t)0x0000U)



#define TIMER_IOS_STATE_ENABLE ((uint16_t)TIMER_CCHP_IOS)
#define TIMER_IOS_STATE_DISABLE ((uint16_t)0x0000U)


#define TIMER_BREAK_POLARITY_LOW ((uint16_t)0x0000U)
#define TIMER_BREAK_POLARITY_HIGH ((uint16_t)TIMER_CCHP_BRKP)


#define TIMER_OUTAUTO_ENABLE ((uint16_t)TIMER_CCHP_OAEN)
#define TIMER_OUTAUTO_DISABLE ((uint16_t)0x0000U)


#define CCHP_PROT(regval) ((uint16_t)(BITS(8, 9) & ((uint32_t)(regval) << 8U)))
#define TIMER_CCHP_PROT_OFF CCHP_PROT(0)
#define TIMER_CCHP_PROT_0 CCHP_PROT(1)
#define TIMER_CCHP_PROT_1 CCHP_PROT(2)
#define TIMER_CCHP_PROT_2 CCHP_PROT(3)


#define TIMER_BREAK_ENABLE ((uint16_t)TIMER_CCHP_BRKEN)
#define TIMER_BREAK_DISABLE ((uint16_t)0x0000U)


#define TIMER_CH_0 ((uint16_t)0x0000U)
#define TIMER_CH_1 ((uint16_t)0x0001U)
#define TIMER_CH_2 ((uint16_t)0x0002U)
#define TIMER_CH_3 ((uint16_t)0x0003U)


#define TIMER_CCX_ENABLE ((uint16_t)0x0001U)
#define TIMER_CCX_DISABLE ((uint16_t)0x0000U)


#define TIMER_CCXN_ENABLE ((uint16_t)0x0004U)
#define TIMER_CCXN_DISABLE ((uint16_t)0x0000U)


#define TIMER_OC_POLARITY_HIGH ((uint16_t)0x0000U)
#define TIMER_OC_POLARITY_LOW ((uint16_t)0x0002U)


#define TIMER_OCN_POLARITY_HIGH ((uint16_t)0x0000U)
#define TIMER_OCN_POLARITY_LOW ((uint16_t)0x0008U)


#define TIMER_OC_IDLE_STATE_HIGH ((uint16_t)0x0100)
#define TIMER_OC_IDLE_STATE_LOW ((uint16_t)0x0000)


#define TIMER_OCN_IDLE_STATE_HIGH ((uint16_t)0x0200U)
#define TIMER_OCN_IDLE_STATE_LOW ((uint16_t)0x0000U)


#define TIMER_OC_MODE_TIMING ((uint16_t)0x0000U)
#define TIMER_OC_MODE_ACTIVE ((uint16_t)0x0010U)
#define TIMER_OC_MODE_INACTIVE ((uint16_t)0x0020U)
#define TIMER_OC_MODE_TOGGLE ((uint16_t)0x0030U)
#define TIMER_OC_MODE_LOW ((uint16_t)0x0040U)
#define TIMER_OC_MODE_HIGH ((uint16_t)0x0050U)
#define TIMER_OC_MODE_PWM0 ((uint16_t)0x0060U)
#define TIMER_OC_MODE_PWM1 ((uint16_t)0x0070U)


#define TIMER_OC_SHADOW_ENABLE ((uint16_t)0x0008U)
#define TIMER_OC_SHADOW_DISABLE ((uint16_t)0x0000U)


#define TIMER_OC_FAST_ENABLE ((uint16_t)0x0004)
#define TIMER_OC_FAST_DISABLE ((uint16_t)0x0000)


#define TIMER_OC_CLEAR_ENABLE ((uint16_t)0x0080U)
#define TIMER_OC_CLEAR_DISABLE ((uint16_t)0x0000U)


#define TIMER_UPDATECTL_CCU ((uint32_t)0x00000000U)
#define TIMER_UPDATECTL_CCUTRI TIMER_CTL1_CCUC


#define TIMER_IC_POLARITY_RISING ((uint16_t)0x0000U)
#define TIMER_IC_POLARITY_FALLING ((uint16_t)0x0002U)
#define TIMER_IC_POLARITY_BOTH_EDGE ((uint16_t)0x000AU)


#define TIMER_IC_SELECTION_DIRECTTI ((uint16_t)0x0001U)
#define TIMER_IC_SELECTION_INDIRECTTI ((uint16_t)0x0002U)
#define TIMER_IC_SELECTION_ITS ((uint16_t)0x0003U)


#define TIMER_IC_PSC_DIV1 ((uint16_t)0x0000U)
#define TIMER_IC_PSC_DIV2 ((uint16_t)0x0004U)
#define TIMER_IC_PSC_DIV4 ((uint16_t)0x0008U)
#define TIMER_IC_PSC_DIV8 ((uint16_t)0x000CU)


#define SMCFG_TRGSEL(regval) (BITS(4, 6) & ((uint32_t)(regval) << 4U))
#define TIMER_SMCFG_TRGSEL_ITI0 SMCFG_TRGSEL(0)
#define TIMER_SMCFG_TRGSEL_ITI1 SMCFG_TRGSEL(1)
#define TIMER_SMCFG_TRGSEL_ITI2 SMCFG_TRGSEL(2)
#define TIMER_SMCFG_TRGSEL_ITI3 SMCFG_TRGSEL(3)
#define TIMER_SMCFG_TRGSEL_CI0F_ED SMCFG_TRGSEL(4)
#define TIMER_SMCFG_TRGSEL_CI0FE0 SMCFG_TRGSEL(5)
#define TIMER_SMCFG_TRGSEL_CI1FE1 SMCFG_TRGSEL(6)
#define TIMER_SMCFG_TRGSEL_ETIFP SMCFG_TRGSEL(7)


#define CTL1_MMC(regval) (BITS(4, 6) & ((uint32_t)(regval) << 4U))
#define TIMER_TRI_OUT_SRC_RESET CTL1_MMC(0)
#define TIMER_TRI_OUT_SRC_ENABLE CTL1_MMC(1)
#define TIMER_TRI_OUT_SRC_UPDATE CTL1_MMC(2)
#define TIMER_TRI_OUT_SRC_CH0 CTL1_MMC(3)
#define TIMER_TRI_OUT_SRC_O0CPRE CTL1_MMC(4)
#define TIMER_TRI_OUT_SRC_O1CPRE CTL1_MMC(5)
#define TIMER_TRI_OUT_SRC_O2CPRE CTL1_MMC(6)
#define TIMER_TRI_OUT_SRC_O3CPRE CTL1_MMC(7)


#define SMCFG_SMC(regval) (BITS(0, 2) & ((uint32_t)(regval) << 0U))
#define TIMER_SLAVE_MODE_DISABLE SMCFG_SMC(0)
#define TIMER_ENCODER_MODE0 SMCFG_SMC(1)
#define TIMER_ENCODER_MODE1 SMCFG_SMC(2)
#define TIMER_ENCODER_MODE2 SMCFG_SMC(3)
#define TIMER_SLAVE_MODE_RESTART SMCFG_SMC(4)
#define TIMER_SLAVE_MODE_PAUSE SMCFG_SMC(5)
#define TIMER_SLAVE_MODE_EVENT SMCFG_SMC(6)
#define TIMER_SLAVE_MODE_EXTERNAL0 SMCFG_SMC(7)


#define TIMER_MASTER_SLAVE_MODE_ENABLE TIMER_SMCFG_MSM
#define TIMER_MASTER_SLAVE_MODE_DISABLE ((uint32_t)0x00000000U)


#define SMCFG_ETPSC(regval) (BITS(12, 13) & ((uint32_t)(regval) << 12U))
#define TIMER_EXT_TRI_PSC_OFF SMCFG_ETPSC(0)
#define TIMER_EXT_TRI_PSC_DIV2 SMCFG_ETPSC(1)
#define TIMER_EXT_TRI_PSC_DIV4 SMCFG_ETPSC(2)
#define TIMER_EXT_TRI_PSC_DIV8 SMCFG_ETPSC(3)


#define TIMER_ETP_FALLING TIMER_SMCFG_ETP
#define TIMER_ETP_RISING ((uint32_t)0x00000000U)


#define TIMER_HALLINTERFACE_ENABLE TIMER_CTL1_TI0S
#define TIMER_HALLINTERFACE_DISABLE ((uint32_t)0x00000000U)


#define TIMER_CHVSEL_ENABLE ((uint16_t)TIMER_CFG_OUTSEL)
#define TIMER_CHVSEL_DISABLE ((uint16_t)0x0000U)




void timer_deinit(uint32_t timer_periph);

void timer_struct_para_init(timer_parameter_struct* initpara);

void timer_init(uint32_t timer_periph, timer_parameter_struct* initpara);

void timer_enable(uint32_t timer_periph);

void timer_disable(uint32_t timer_periph);

void timer_auto_reload_shadow_enable(uint32_t timer_periph);

void timer_auto_reload_shadow_disable(uint32_t timer_periph);

void timer_update_event_enable(uint32_t timer_periph);

void timer_update_event_disable(uint32_t timer_periph);

void timer_counter_alignment(uint32_t timer_periph, uint16_t aligned);

void timer_counter_up_direction(uint32_t timer_periph);

void timer_counter_down_direction(uint32_t timer_periph);


void timer_prescaler_config(uint32_t timer_periph, uint16_t prescaler, uint32_t pscreload);

void timer_repetition_value_config(uint32_t timer_periph, uint16_t repetition);

void timer_autoreload_value_config(uint32_t timer_periph, uint16_t autoreload);

void timer_counter_value_config(uint32_t timer_periph, uint16_t counter);

uint32_t timer_counter_read(uint32_t timer_periph);

uint16_t timer_prescaler_read(uint32_t timer_periph);

void timer_single_pulse_mode_config(uint32_t timer_periph, uint32_t spmode);

void timer_update_source_config(uint32_t timer_periph, uint32_t update);



void timer_dma_enable(uint32_t timer_periph, uint16_t dma);

void timer_dma_disable(uint32_t timer_periph, uint16_t dma);

void timer_channel_dma_request_source_select(uint32_t timer_periph, uint32_t dma_request);

void timer_dma_transfer_config(uint32_t timer_periph, uint32_t dma_baseaddr, uint32_t dma_lenth);

void timer_event_software_generate(uint32_t timer_periph, uint16_t event);



void timer_break_struct_para_init(timer_break_parameter_struct* breakpara);

void timer_break_config(uint32_t timer_periph, timer_break_parameter_struct* breakpara);

void timer_break_enable(uint32_t timer_periph);

void timer_break_disable(uint32_t timer_periph);

void timer_automatic_output_enable(uint32_t timer_periph);

void timer_automatic_output_disable(uint32_t timer_periph);

void timer_primary_output_config(uint32_t timer_periph, ControlStatus newvalue);

void timer_channel_control_shadow_config(uint32_t timer_periph, ControlStatus newvalue);

void timer_channel_control_shadow_update_config(uint32_t timer_periph, uint32_t ccuctl);



void timer_channel_output_struct_para_init(timer_oc_parameter_struct* ocpara);

void timer_channel_output_config(uint32_t timer_periph, uint16_t channel, timer_oc_parameter_struct* ocpara);

void timer_channel_output_mode_config(uint32_t timer_periph, uint16_t channel, uint16_t ocmode);

void timer_channel_output_pulse_value_config(uint32_t timer_periph, uint16_t channel, uint32_t pulse);

void timer_channel_output_shadow_config(uint32_t timer_periph, uint16_t channel, uint16_t ocshadow);

void timer_channel_output_fast_config(uint32_t timer_periph, uint16_t channel, uint16_t ocfast);

void timer_channel_output_clear_config(uint32_t timer_periph, uint16_t channel, uint16_t occlear);

void timer_channel_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocpolarity);

void timer_channel_complementary_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnpolarity);

void timer_channel_output_state_config(uint32_t timer_periph, uint16_t channel, uint32_t state);

void timer_channel_complementary_output_state_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnstate);



void timer_channel_input_struct_para_init(timer_ic_parameter_struct* icpara);

void timer_input_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpara);

void timer_channel_input_capture_prescaler_config(uint32_t timer_periph, uint16_t channel, uint16_t prescaler);

uint32_t timer_channel_capture_value_register_read(uint32_t timer_periph, uint16_t channel);

void timer_input_pwm_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpwm);

void timer_hall_mode_config(uint32_t timer_periph, uint32_t hallmode);



void timer_input_trigger_source_select(uint32_t timer_periph, uint32_t intrigger);

void timer_master_output_trigger_source_select(uint32_t timer_periph, uint32_t outrigger);

void timer_slave_mode_select(uint32_t timer_periph, uint32_t slavemode);

void timer_master_slave_mode_config(uint32_t timer_periph, uint32_t masterslave);

void timer_external_trigger_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);

void timer_quadrature_decoder_mode_config(uint32_t timer_periph, uint32_t decomode, uint16_t ic0polarity, uint16_t ic1polarity);

void timer_internal_clock_config(uint32_t timer_periph);

void timer_internal_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t intrigger);

void timer_external_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t extrigger, uint16_t extpolarity, uint32_t extfilter);

void timer_external_clock_mode0_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);

void timer_external_clock_mode1_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter);

void timer_external_clock_mode1_disable(uint32_t timer_periph);



void timer_interrupt_enable(uint32_t timer_periph, uint32_t interrupt);

void timer_interrupt_disable(uint32_t timer_periph, uint32_t interrupt);

FlagStatus timer_interrupt_flag_get(uint32_t timer_periph, uint32_t interrupt);

void timer_interrupt_flag_clear(uint32_t timer_periph, uint32_t interrupt);

FlagStatus timer_flag_get(uint32_t timer_periph, uint32_t flag);

void timer_flag_clear(uint32_t timer_periph, uint32_t flag);
# 35 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c" 2


#define ALIGNEDMODE_MASK ((uint32_t)0x00000060U)
#define COUNTERDIRECTION_MASK ((uint32_t)0x00000010U)
#define CLOCKDIVISION_MASK ((uint32_t)0x00000300U)







void timer_deinit(uint32_t timer_periph)
{
    switch(timer_periph){
    case ((((uint32_t)0x40000000U) + 0x00000000U) + 0x00012C00U):

        rcu_periph_reset_enable(RCU_TIMER0RST);
        rcu_periph_reset_disable(RCU_TIMER0RST);
        break;
    case ((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000000U):

        rcu_periph_reset_enable(RCU_TIMER1RST);
        rcu_periph_reset_disable(RCU_TIMER1RST);
        break;
    case ((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000400U):

        rcu_periph_reset_enable(RCU_TIMER2RST);
        rcu_periph_reset_disable(RCU_TIMER2RST);
        break;
    case ((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000800U):

        rcu_periph_reset_enable(RCU_TIMER3RST);
        rcu_periph_reset_disable(RCU_TIMER3RST);
        break;
    case ((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000C00U):

        rcu_periph_reset_enable(RCU_TIMER4RST);
        rcu_periph_reset_disable(RCU_TIMER4RST);
        break;
    case ((((uint32_t)0x40000000U) + 0x00000000U) + 0x00001000U):

        rcu_periph_reset_enable(RCU_TIMER5RST);
        rcu_periph_reset_disable(RCU_TIMER5RST);
        break;
    case ((((uint32_t)0x40000000U) + 0x00000000U) + 0x00001400U):

        rcu_periph_reset_enable(RCU_TIMER6RST);
        rcu_periph_reset_disable(RCU_TIMER6RST);
        break;

    default:
        break;
    }
}







void timer_struct_para_init(timer_parameter_struct* initpara)
{

    initpara->prescaler = 0U;
    initpara->alignedmode = ((uint16_t)(((0xFFFFFFFFUL << (5)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))) & ((uint32_t)(0) << 5U)));
    initpara->counterdirection = ((uint16_t)0x0000U);
    initpara->period = 65535U;
    initpara->clockdivision = ((uint16_t)(((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))) & ((uint32_t)(0) << 8U)));
    initpara->repetitioncounter = 0U;
}
# 122 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_init(uint32_t timer_periph, timer_parameter_struct* initpara)
{

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x28U)) = (uint16_t)initpara->prescaler;


    if((((((uint32_t)0x40000000U) + 0x00000000U) + 0x00012C00U) == timer_periph) || (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000000U) == timer_periph) || (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000400U) == timer_periph)
        || (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000800U) == timer_periph) || (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00000C00U) == timer_periph) ){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(4))) | ((0xFFFFFFFFUL << (5)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6))))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)(initpara->alignedmode & ((uint32_t)0x00000060U));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)(initpara->counterdirection & ((uint32_t)0x00000010U));
    }else{
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= (uint32_t)(~ ((uint32_t)((uint32_t)0x01U<<(4))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)(initpara->counterdirection & ((uint32_t)0x00000010U));
    }


    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x2CU)) = (uint32_t)initpara->period;

    if((((((uint32_t)0x40000000U) + 0x00000000U) + 0x00001000U) != timer_periph) && (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00001400U) != timer_periph)){

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= (~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)(initpara->clockdivision & ((uint32_t)0x00000300U));
    }

    if (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00012C00U) == timer_periph) {

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x30U)) = (uint32_t)initpara->repetitioncounter;
    }


    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x14U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));
}







void timer_enable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));
}







void timer_disable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));
}







void timer_auto_reload_shadow_enable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(7)));
}







void timer_auto_reload_shadow_disable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(7)));
}







void timer_update_event_enable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(1)));
}







void timer_update_event_disable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t) ((uint32_t)((uint32_t)0x01U<<(1)));
}
# 234 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_counter_alignment(uint32_t timer_periph, uint16_t aligned)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= (uint32_t)(~((0xFFFFFFFFUL << (5)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)aligned;
}







void timer_counter_up_direction(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(4)));
}







void timer_counter_down_direction(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(4)));
}
# 273 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_prescaler_config(uint32_t timer_periph, uint16_t prescaler, uint32_t pscreload)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x28U)) = (uint32_t)prescaler;

    if(((uint32_t)((uint32_t)0x01U<<(0))) == pscreload){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x14U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));
    }
}
# 289 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_repetition_value_config(uint32_t timer_periph, uint16_t repetition)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x30U)) = (uint32_t)repetition;
}
# 301 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_autoreload_value_config(uint32_t timer_periph, uint16_t autoreload)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x2CU)) = (uint32_t)autoreload;
}
# 313 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_counter_value_config(uint32_t timer_periph, uint16_t counter)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x24U)) = (uint32_t)counter;
}







uint32_t timer_counter_read(uint32_t timer_periph)
{
    uint32_t count_value = 0U;
    count_value = (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x24U));
    return (count_value);
}







uint16_t timer_prescaler_read(uint32_t timer_periph)
{
    uint16_t prescaler_value = 0U;
    prescaler_value = (uint16_t) ((*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x28U)));
    return (prescaler_value);
}
# 354 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_single_pulse_mode_config(uint32_t timer_periph, uint32_t spmode)
{
    if(((uint32_t)((uint32_t)0x01U<<(3))) == spmode){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(3)));
    }else if(((uint32_t)0x00000000U) == spmode){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= ~((uint32_t)((uint32_t)((uint32_t)0x01U<<(3))));
    }else{

    }
}
# 376 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_update_source_config(uint32_t timer_periph, uint32_t update)
{
    if(((uint32_t)((uint32_t)0x01U<<(2))) == update){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(2)));
    }else if(((uint32_t)0x00000000U) == update){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x00U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(2)));
    }else{

    }
}
# 402 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_dma_enable(uint32_t timer_periph, uint16_t dma)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x0CU)) |= (uint32_t) dma;
}
# 422 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_dma_disable(uint32_t timer_periph, uint16_t dma)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x0CU)) &= (~(uint32_t)(dma));
}
# 437 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_dma_request_source_select(uint32_t timer_periph, uint32_t dma_request)
{
    if(((uint32_t)((uint32_t)0x01U<<(3))) == dma_request){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(3)));
    }else if(((uint32_t)0x00000000U) == dma_request){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(3)));
    }else{

    }
}
# 478 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_dma_transfer_config(uint32_t timer_periph, uint32_t dma_baseaddr, uint32_t dma_lenth)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x48U)) &= (~(uint32_t)(((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(4)))) | ((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(12))))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x48U)) |= (uint32_t)(dma_baseaddr | dma_lenth);
}
# 500 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_event_software_generate(uint32_t timer_periph, uint16_t event)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x14U)) |= (uint32_t)event;
}







void timer_break_struct_para_init(timer_break_parameter_struct* breakpara)
{

    breakpara->runoffstate = ((uint16_t)0x0000U);
    breakpara->ideloffstate = ((uint16_t)0x0000U);
    breakpara->deadtime = 0U;
    breakpara->breakpolarity = ((uint16_t)0x0000U);
    breakpara->outputautostate = ((uint16_t)0x0000U);
    breakpara->protectmode = ((uint16_t)(((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))) & ((uint32_t)(0) << 8U)));
    breakpara->breakstate = ((uint16_t)0x0000U);
}
# 537 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_break_config(uint32_t timer_periph, timer_break_parameter_struct* breakpara)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x44U)) = (uint32_t)(((uint32_t)(breakpara->runoffstate)) |
                                          ((uint32_t)(breakpara->ideloffstate))|
                                          ((uint32_t)(breakpara->deadtime)) |
                                          ((uint32_t)(breakpara->breakpolarity)) |
                                          ((uint32_t)(breakpara->outputautostate)) |
                                          ((uint32_t)(breakpara->protectmode)) |
                                          ((uint32_t)(breakpara->breakstate)));
}







void timer_break_enable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x44U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(12)));
}







void timer_break_disable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x44U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(12)));
}







void timer_automatic_output_enable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x44U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(14)));
}







void timer_automatic_output_disable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x44U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(14)));
}
# 599 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_primary_output_config(uint32_t timer_periph, ControlStatus newvalue)
{
    if(ENABLE == newvalue){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x44U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(15)));
    }else{
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x44U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(15))));
    }
}
# 615 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_control_shadow_config(uint32_t timer_periph, ControlStatus newvalue)
{
     if(ENABLE == newvalue){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));
    }else{
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0))));
    }
}
# 634 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_control_shadow_update_config(uint32_t timer_periph, uint32_t ccuctl)
{
    if(((uint32_t)0x00000000U) == ccuctl){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(2))));
    }else if(((uint32_t)((uint32_t)0x01U<<(2))) == ccuctl){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(2)));
    }else{

    }
}







void timer_channel_output_struct_para_init(timer_oc_parameter_struct* ocpara)
{

    ocpara->outputstate = ((uint16_t)0x0000U);
    ocpara->outputnstate = ((uint16_t)0x0000U);
    ocpara->ocpolarity = ((uint16_t)0x0000U);
    ocpara->ocnpolarity = ((uint16_t)0x0000U);
    ocpara->ocidlestate = ((uint16_t)0x0000);
    ocpara->ocnidlestate = ((uint16_t)0x0000U);
}
# 681 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_config(uint32_t timer_periph, uint16_t channel, timer_oc_parameter_struct* ocpara)
{
    switch(channel){

    case ((uint16_t)0x0000U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)ocpara->outputstate;

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(1))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)ocpara->ocpolarity;

        if (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00012C00U) == timer_periph) {

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(2))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)ocpara->outputnstate;

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(3))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)ocpara->ocnpolarity;

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(8))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)ocpara->ocidlestate;

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(9))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)ocpara->ocnidlestate;
        }
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= ~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1))));
        break;

    case ((uint16_t)0x0001U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(4))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->outputstate) << 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(5))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->ocpolarity) << 4U);

        if (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00012C00U) == timer_periph) {

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(6))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->outputnstate) << 4U);

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(7))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->ocnpolarity) << 4U);

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(10))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)(ocpara->ocidlestate) << 2U);

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(11))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)(ocpara->ocnidlestate) << 2U);
        }
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= ~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9))));
        break;

    case ((uint16_t)0x0002U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(8))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->outputstate) << 8U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(9))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->ocpolarity) << 8U);

        if (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00012C00U) == timer_periph) {

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(10))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->outputnstate) << 8U);

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(11))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->ocnpolarity) << 8U);

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(12))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)(ocpara->ocidlestate) << 4U);

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(13))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)(ocpara->ocnidlestate) << 4U);
        }
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= ~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1))));
        break;

    case ((uint16_t)0x0003U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &=(~(uint32_t)((uint32_t)((uint32_t)0x01U<<(12))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->outputstate) << 12U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(13))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(ocpara->ocpolarity) << 12U);

        if (((((uint32_t)0x40000000U) + 0x00000000U) + 0x00012C00U) == timer_periph) {

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(14))));

            (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)(ocpara->ocidlestate) << 6U);
        }
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= ~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9))));
        break;
    default:
        break;
    }
}
# 823 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_mode_config(uint32_t timer_periph, uint16_t channel, uint16_t ocmode)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)ocmode;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(14)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(ocmode) << 8U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)ocmode;
        break;

    case ((uint16_t)0x0003U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(14)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)(ocmode) << 8U);
        break;
    default:
        break;
    }
}
# 864 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_pulse_value_config(uint32_t timer_periph, uint16_t channel, uint32_t pulse)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x34U)) = (uint32_t)pulse;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x38U)) = (uint32_t)pulse;
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x3CU)) = (uint32_t)pulse;
        break;

    case ((uint16_t)0x0003U):
         (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x40U)) = (uint32_t)pulse;
        break;
    default:
        break;
    }
}
# 904 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_shadow_config(uint32_t timer_periph, uint16_t channel, uint16_t ocshadow)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(3))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)ocshadow;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(11))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(ocshadow) << 8U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(3))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)ocshadow;
        break;

    case ((uint16_t)0x0003U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(11))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)(ocshadow) << 8U);
        break;
    default:
        break;
    }
}
# 948 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_fast_config(uint32_t timer_periph, uint16_t channel, uint16_t ocfast)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(2))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)ocfast;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(10))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)ocfast << 8U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(2))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)ocfast;
        break;

    case ((uint16_t)0x0003U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(10))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)ocfast << 8U);
        break;
    default:
        break;
    }
}
# 992 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_clear_config(uint32_t timer_periph, uint16_t channel, uint16_t occlear)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(7))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)occlear;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(15))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)occlear << 8U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(7))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)occlear;
        break;

    case ((uint16_t)0x0003U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(15))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)occlear << 8U);
        break;
    default:
        break;
    }
}
# 1036 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocpolarity)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(1))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)ocpolarity;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(5))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)ocpolarity << 4U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(9))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)ocpolarity << 8U);
        break;

    case ((uint16_t)0x0003U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(13))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)ocpolarity << 12U);
        break;
    default:
        break;
    }
}
# 1079 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_complementary_output_polarity_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnpolarity)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(3))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)ocnpolarity;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(7))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)ocnpolarity << 4U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(11))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)ocnpolarity << 8U);
        break;
    default:
        break;
    }
}
# 1118 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_output_state_config(uint32_t timer_periph, uint16_t channel, uint32_t state)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)state;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(4))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)state << 4U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(8))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)state << 8U);
        break;

    case ((uint16_t)0x0003U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(12))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)state << 12U);
        break;
    default:
        break;
    }
}
# 1161 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_complementary_output_state_config(uint32_t timer_periph, uint16_t channel, uint16_t ocnstate)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(2))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)ocnstate;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(6))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)ocnstate << 4U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(10))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)ocnstate << 8U);
        break;
    default:
        break;
    }
}







void timer_channel_input_struct_para_init(timer_ic_parameter_struct* icpara)
{

    icpara->icpolarity = ((uint16_t)0x0000U);
    icpara->icselection = ((uint16_t)0x0001U);
    icpara->icprescaler = ((uint16_t)0x0000U);
    icpara->icfilter = 0U;
}
# 1219 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_input_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpara)
{
    switch(channel){

    case ((uint16_t)0x0000U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0))));


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(1))) | ((uint32_t)((uint32_t)0x01U<<(3)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)(icpara->icpolarity);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)(icpara->icselection);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(7)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(icpara->icfilter) << 4U);


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));
        break;


    case ((uint16_t)0x0001U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(4))));


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(5))) | ((uint32_t)((uint32_t)0x01U<<(7)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(icpara->icpolarity) << 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(icpara->icselection) << 8U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(15)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(icpara->icfilter) << 12U);


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(4)));
        break;

    case ((uint16_t)0x0002U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(8))));


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(9))) | ((uint32_t)((uint32_t)0x01U<<(11)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(icpara->icpolarity) << 8U);


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)(icpara->icselection));


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(7)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)(icpara->icfilter) << 4U);


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(8)));
        break;

    case ((uint16_t)0x0003U):

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(12))));


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(13)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(icpara->icpolarity) << 12U);


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)(icpara->icselection) << 8U);


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(15)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)((uint32_t)(icpara->icfilter) << 12U);


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(12)));
        break;
    default:
        break;
    }

    timer_channel_input_capture_prescaler_config(timer_periph, channel, (uint16_t)(icpara->icprescaler));
}
# 1324 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_channel_input_capture_prescaler_config(uint32_t timer_periph, uint16_t channel, uint16_t prescaler)
{
    switch(channel){

    case ((uint16_t)0x0000U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (2)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(3)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)prescaler;
        break;

    case ((uint16_t)0x0001U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (10)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(11)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= ((uint32_t)prescaler << 8U);
        break;

    case ((uint16_t)0x0002U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (2)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(3)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= (uint32_t)prescaler;
        break;

    case ((uint16_t)0x0003U):
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) &= (~(uint32_t)((0xFFFFFFFFUL << (10)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(11)))));
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x1CU)) |= ((uint32_t)prescaler << 8U);
        break;
    default:
        break;
    }
}
# 1364 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
uint32_t timer_channel_capture_value_register_read(uint32_t timer_periph, uint16_t channel)
{
    uint32_t count_value = 0U;

    switch(channel){
    case ((uint16_t)0x0000U):

        count_value = (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x34U));
        break;
    case ((uint16_t)0x0001U):

        count_value = (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x38U));
        break;
    case ((uint16_t)0x0002U):

        count_value = (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x3CU));
        break;
    case ((uint16_t)0x0003U):

        count_value = (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x40U));
        break;
    default:
        break;
    }
    return (count_value);
}
# 1407 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_input_pwm_capture_config(uint32_t timer_periph, uint16_t channel, timer_ic_parameter_struct* icpwm)
{
    uint16_t icpolarity = 0x0U;
    uint16_t icselection = 0x0U;


    if(((uint16_t)0x0000U) == icpwm->icpolarity){
        icpolarity = ((uint16_t)0x0002U);
    }else{
        icpolarity = ((uint16_t)0x0000U);
    }

    if(((uint16_t)0x0001U) == icpwm->icselection){
        icselection = ((uint16_t)0x0002U);
    }else{
        icselection = ((uint16_t)0x0001U);
    }

    if(((uint16_t)0x0000U) == channel){

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(1))) | ((uint32_t)((uint32_t)0x01U<<(3)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)(icpwm->icpolarity);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)(icpwm->icselection);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(7)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= ((uint32_t)(icpwm->icfilter) << 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));

        timer_channel_input_capture_prescaler_config(timer_periph, ((uint16_t)0x0000U), (uint16_t)(icpwm->icprescaler));


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(4))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(5))) | ((uint32_t)((uint32_t)0x01U<<(7)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)icpolarity<< 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)icselection << 8U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(15)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(icpwm->icfilter) << 12U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(4)));

        timer_channel_input_capture_prescaler_config(timer_periph, ((uint16_t)0x0001U), (uint16_t)(icpwm->icprescaler));
    }else{

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(4))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(5))) | ((uint32_t)((uint32_t)0x01U<<(7)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)(icpwm->icpolarity) << 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(icpwm->icselection) << 8U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(15)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)(icpwm->icfilter) << 12U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(4)));

        timer_channel_input_capture_prescaler_config(timer_periph, ((uint16_t)0x0001U), (uint16_t)(icpwm->icprescaler));


        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(1))) | ((uint32_t)((uint32_t)0x01U<<(3)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)icpolarity;

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)icselection;

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(7)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= ((uint32_t)(icpwm->icfilter) << 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));

        timer_channel_input_capture_prescaler_config(timer_periph, ((uint16_t)0x0000U), (uint16_t)(icpwm->icprescaler));
    }
}
# 1514 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_hall_mode_config(uint32_t timer_periph, uint32_t hallmode)
{
    if(((uint32_t)((uint32_t)0x01U<<(7))) == hallmode){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(7)));
    }else if(((uint32_t)0x00000000U) == hallmode){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(7)));
    }else{

    }
}
# 1541 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_input_trigger_source_select(uint32_t timer_periph, uint32_t intrigger)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)intrigger;
}
# 1563 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_master_output_trigger_source_select(uint32_t timer_periph, uint32_t outrigger)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x04U)) |= (uint32_t)outrigger;
}
# 1586 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_slave_mode_select(uint32_t timer_periph, uint32_t slavemode)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2)))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)slavemode;
}
# 1602 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_master_slave_mode_config(uint32_t timer_periph, uint32_t masterslave)
{
    if(((uint32_t)((uint32_t)0x01U<<(7))) == masterslave){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(7)));
    }else if(((uint32_t)0x00000000U) == masterslave){
        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(7)));
    }else{

    }
}
# 1630 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_external_trigger_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(15))) | ((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(13)))) | ((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(11))))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)(extprescaler | extpolarity);
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)(extfilter << 8U);
}
# 1656 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_quadrature_decoder_mode_config(uint32_t timer_periph, uint32_t decomode, uint16_t ic0polarity, uint16_t ic1polarity)
{

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2)))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)decomode;

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (uint32_t)(((~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1)))))) & ((~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)(((uint16_t)0x0001U) | ((uint32_t)((uint16_t)0x0001U) << 8U));

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(1))) | ((uint32_t)((uint32_t)0x01U<<(3)))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(5))) | ((uint32_t)((uint32_t)0x01U<<(7)))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= ((uint32_t)ic0polarity | ((uint32_t)ic1polarity << 4U));
}







void timer_internal_clock_config(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= ~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2))));
}
# 1693 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_internal_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t intrigger)
{
    timer_input_trigger_source_select(timer_periph, intrigger);
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= ~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2))));
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)(((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2)))) & ((uint32_t)(7) << 0U));
}
# 1716 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_external_trigger_as_external_clock_config(uint32_t timer_periph, uint32_t extrigger, uint16_t extpolarity, uint32_t extfilter)
{
    if((((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))) & ((uint32_t)(6) << 4U)) == extrigger){

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(4))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(5))) | ((uint32_t)((uint32_t)0x01U<<(7)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)extpolarity << 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (8)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(9)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint32_t)((uint16_t)0x0001U) << 8U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (12)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(15)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)(extfilter << 12U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(4)));
    }else{

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)((uint32_t)((uint32_t)0x01U<<(0))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) &= (~(uint32_t)(((uint32_t)((uint32_t)0x01U<<(1))) | ((uint32_t)((uint32_t)0x01U<<(3)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)extpolarity;

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(1)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)((uint16_t)0x0001U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) &= (~(uint32_t)((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(7)))));

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x18U)) |= (uint32_t)(extfilter << 4U);

        (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x20U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(0)));
    }

    timer_input_trigger_source_select(timer_periph, extrigger);

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= (~(uint32_t)((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2)))));

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)(((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2)))) & ((uint32_t)(7) << 0U));
}
# 1778 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_external_clock_mode0_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter)
{

    timer_external_trigger_config(timer_periph, extprescaler, extpolarity, extfilter);

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= (~(uint32_t)(((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2)))) | ((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6))))));

    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)((((0xFFFFFFFFUL << (0)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(2)))) & ((uint32_t)(7) << 0U)) | (((0xFFFFFFFFUL << (4)) & (0xFFFFFFFFUL >> (31U - (uint32_t)(6)))) & ((uint32_t)(7) << 4U)));
}
# 1805 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_external_clock_mode1_config(uint32_t timer_periph, uint32_t extprescaler, uint32_t extpolarity, uint32_t extfilter)
{

    timer_external_trigger_config(timer_periph, extprescaler, extpolarity, extfilter);
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) |= (uint32_t)((uint32_t)((uint32_t)0x01U<<(14)));
}







void timer_external_clock_mode1_disable(uint32_t timer_periph)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x08U)) &= ~(uint32_t)((uint32_t)((uint32_t)0x01U<<(14)));
}
# 1839 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_interrupt_enable(uint32_t timer_periph, uint32_t interrupt)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x0CU)) |= (uint32_t) interrupt;
}
# 1860 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_interrupt_disable(uint32_t timer_periph, uint32_t interrupt)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x0CU)) &= (~(uint32_t)interrupt);
}
# 1881 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
FlagStatus timer_interrupt_flag_get(uint32_t timer_periph, uint32_t interrupt)
{
    uint32_t val;
    val = ((*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x0CU)) & interrupt);
    if((RESET != ((*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x10U)) & interrupt)) && (RESET != val)){
        return SET;
    }else{
        return RESET;
    }
}
# 1908 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_interrupt_flag_clear(uint32_t timer_periph, uint32_t interrupt)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x10U)) = (~(uint32_t)interrupt);
}
# 1933 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
FlagStatus timer_flag_get(uint32_t timer_periph, uint32_t flag)
{
    if(RESET != ((*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x10U)) & flag)){
        return SET;
    }else{
        return RESET;
    }
}
# 1962 "libraries/GD32VF103_standard_peripheral/Source/gd32vf103_timer.c"
void timer_flag_clear(uint32_t timer_periph, uint32_t flag)
{
    (*(volatile uint32_t *)(uint32_t)((timer_periph) + 0x10U)) = (~(uint32_t)flag);
}
