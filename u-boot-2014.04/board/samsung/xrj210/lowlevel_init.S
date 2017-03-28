/*
 * Copyright (C) 2009 Samsung Electronics
 * Kyungmin Park <kyungmin.park@samsung.com>
 * Minkyu Kang <mk7.kang@samsung.com>
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#include <config.h>
#include <version.h>
#include <asm/arch/cpu.h>
#include <asm/arch/power.h>

	.globl lowlevel_init
lowlevel_init:
	mov	r9, lr
#ifdef CONFIG_SPL_BUILD
	bl clock_init
	bl ddr_init
#endif
	mov	pc, r9

