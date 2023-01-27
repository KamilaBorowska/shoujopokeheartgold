#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EABA8.inc"
	.include "global.inc"

	.text

	thumb_func_start ov01_021EABA8
ov01_021EABA8: ; 0x021EABA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #0xc]
	add r5, r1, #0
	add r6, r2, #0
	mov r0, #0x24
	ldr r1, _021EAC2C ; =ov01_02206478
	mul r0, r6
	add r7, r3, #0
	add r4, r1, r0
	cmp r6, #0x11
	blo _021EABC4
	bl GF_AssertFail
_021EABC4:
	mov r0, #4
	bl GF_Camera_Create
	str r0, [r5, #0x24]
	ldrh r0, [r4, #0xc]
	add r2, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	str r0, [sp, #8]
	ldrh r3, [r4, #0xe]
	ldr r0, [sp, #0xc]
	ldr r1, [r4]
	bl GF_Camera_InitFromTargetDistanceAndAngle
	ldr r0, [r5, #0x24]
	bl GF_Camera_RegisterToStaticPtr
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r5, #0x24]
	bl GF_Camera_SetClipBounds
	add r4, #0x18
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	bl GF_Camera_ShiftBy
	cmp r7, #0
	beq _021EAC16
	ldr r0, [r5, #0x24]
	mov r1, #6
	str r0, [sp]
	mov r0, #7
	mov r2, #2
	mov r3, #4
	bl sub_02023068
_021EAC16:
	mov r0, #4
	bl ov01_021EAC4C
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021EAC6C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAC2C: .word ov01_02206478
	thumb_func_end ov01_021EABA8

	thumb_func_start ov01_021EAC30
ov01_021EAC30: ; 0x021EAC30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov01_021EAC64
	bl sub_02023148
	ldr r0, [r4, #0x24]
	bl sub_020230F8
	ldr r0, [r4, #0x24]
	bl sub_02023120
	pop {r4, pc}
	thumb_func_end ov01_021EAC30

	thumb_func_start ov01_021EAC4C
ov01_021EAC4C: ; 0x021EAC4C
	push {r4, lr}
	mov r1, #0x34
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAC4C

	thumb_func_start ov01_021EAC64
ov01_021EAC64: ; 0x021EAC64
	ldr r3, _021EAC68 ; =FreeToHeap
	bx r3
	.balign 4, 0
_021EAC68: .word FreeToHeap
	thumb_func_end ov01_021EAC64

	thumb_func_start ov01_021EAC6C
ov01_021EAC6C: ; 0x021EAC6C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r4, [r0, #0x28]
	ldr r0, [r0, #0x24]
	str r0, [r4]
	ldr r0, _021EACB4 ; =ov01_02209B60
	str r1, [r4, #0x30]
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	beq _021EACAE
	add r0, sp, #0
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, _021EACB8 ; =ov01_02206464
	sub r5, r2, #1
	mov r3, #0x14
	mul r3, r5
	add r5, r1, r3
	ldrh r3, [r1, r3]
	add r1, sp, #0
	strh r3, [r1]
	strb r2, [r4, #7]
	ldr r1, [r4]
	bl GF_Camera_SetAngle
	ldr r1, [r4]
	add r0, r5, #4
	bl GF_Camera_ShiftBy
_021EACAE:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EACB4: .word ov01_02209B60
_021EACB8: .word ov01_02206464
	thumb_func_end ov01_021EAC6C

	thumb_func_start ov01_021EACBC
ov01_021EACBC: ; 0x021EACBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021EAD74
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021EACEA
	ldrb r0, [r5, #7]
	cmp r0, r1
	bne _021EACE4
	ldrh r0, [r5, #0x2e]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5, #0x2e]
	pop {r3, r4, r5, r6, r7, pc}
_021EACE4:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021EACEA:
	ldr r2, [r5, #0x30]
	mov r0, #0x24
	mul r0, r2
	strb r1, [r5, #7]
	mov r2, #1
	str r2, [r5, #0x28]
	ldr r2, _021EAD78 ; =ov01_02209B60
	ldr r3, _021EAD7C ; =ov01_02206478
	ldr r2, [r2]
	add r0, r3, r0
	cmp r2, #0
	bne _021EAD26
	ldrh r0, [r0, #4]
	sub r1, r1, #1
	add r2, r5, #0
	strh r0, [r5, #0x2c]
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	ldr r0, _021EAD80 ; =ov01_02206464
	add r2, #8
	add r3, r0, r4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldrb r1, [r5, #7]
	ldr r0, _021EAD78 ; =ov01_02209B60
	str r1, [r0]
	b _021EAD6A
_021EAD26:
	sub r2, r1, #1
	mov r1, #0x14
	add r4, r2, #0
	mul r4, r1
	ldr r1, _021EAD80 ; =ov01_02206464
	add r6, r5, #0
	ldrh r1, [r1, r4]
	add r6, #0xc
	mov r3, #0
	strh r1, [r5, #0x2c]
	ldrh r0, [r0, #4]
	add r2, r6, #0
	strh r0, [r5, #8]
	ldr r0, _021EAD84 ; =ov01_02206464 + 4
	strh r3, [r5, #0xa]
	add r7, r0, r4
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	str r0, [r6]
	ldr r1, [r2]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r2]
	ldr r1, [r5, #0x10]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r0, _021EAD78 ; =ov01_02209B60
	str r3, [r0]
_021EAD6A:
	ldr r0, _021EAD88 ; =ov01_02206464 + 16
	ldr r0, [r0, r4]
	strb r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #5]
_021EAD74:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAD78: .word ov01_02209B60
_021EAD7C: .word ov01_02206478
_021EAD80: .word ov01_02206464
_021EAD84: .word ov01_02206464 + 4
_021EAD88: .word ov01_02206464 + 16
	thumb_func_end ov01_021EACBC

	thumb_func_start ov01_021EAD8C
ov01_021EAD8C: ; 0x021EAD8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021EAE46
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	bne _021EADD6
	ldrb r0, [r4, #5]
	add r1, r4, #0
	add r2, r4, #0
	add r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #4]
	add r1, #0x2c
	add r2, #8
	str r0, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	bl ov01_021EAE50
	add r1, r4, #0
	ldrb r2, [r4, #5]
	ldrb r3, [r4, #4]
	ldr r0, [r4]
	add r1, #0xc
	bl ov01_021EAEA4
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #4]
	cmp r1, r0
	blo _021EAE46
	mov r0, #0
	add sp, #0x10
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_021EADD6:
	add r3, r4, #0
	add r3, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [sp, #4]
	mov r0, #0
	add r2, r1, #0
	mvn r0, r0
	mul r2, r0
	ldr r1, [sp, #8]
	str r2, [sp, #4]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0xc]
	str r2, [sp, #8]
	mul r0, r1
	str r0, [sp, #0xc]
	ldrb r5, [r4, #4]
	add r1, r4, #0
	add r2, r4, #0
	str r5, [sp]
	ldrb r3, [r4, #5]
	ldr r0, [r4]
	add r1, #8
	sub r3, r5, r3
	lsl r3, r3, #0x18
	add r2, #0x2c
	lsr r3, r3, #0x18
	bl ov01_021EAE50
	ldrb r2, [r4, #5]
	ldrb r3, [r4, #4]
	ldr r0, [r4]
	add r1, sp, #4
	bl ov01_021EAEA4
	ldrb r0, [r4, #5]
	sub r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021EAE46
	ldr r0, _021EAE4C ; =ov01_02209B60
	ldr r1, [r0]
	cmp r1, #0
	beq _021EAE3C
	mov r1, #0
	b _021EAE3E
_021EAE3C:
	ldrb r1, [r4, #7]
_021EAE3E:
	str r1, [r0]
	mov r0, #0
	strh r0, [r4, #0x2e]
	str r0, [r4, #0x28]
_021EAE46:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EAE4C: .word ov01_02209B60
	thumb_func_end ov01_021EAD8C

	thumb_func_start ov01_021EAE50
ov01_021EAE50: ; 0x021EAE50
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, sp, #0
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldrh r4, [r1]
	ldrh r0, [r2]
	cmp r0, r4
	blo _021EAE7E
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	b _021EAE92
_021EAE7E:
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r1, #0
	add r1, sp, #8
	ldrb r1, [r1, #0x10]
	mul r0, r3
	bl _s32_div_f
	neg r0, r0
_021EAE92:
	add r1, r4, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	add r1, r5, #0
	bl GF_Camera_SetAngle
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EAE50

	thumb_func_start ov01_021EAEA4
ov01_021EAEA4: ; 0x021EAEA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r4, r2, #0
	add r6, r3, #0
	ldr r0, [r5]
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EAEE0
	str r0, [sp]
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EAEE0
	str r0, [sp, #8]
	add r0, sp, #0
	add r1, r7, #0
	bl GF_Camera_ShiftBy
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EAEA4

	thumb_func_start ov01_021EAEE0
ov01_021EAEE0: ; 0x021EAEE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	mul r0, r4
	add r1, r7, #0
	bl _s32_div_f
	add r6, r0, #0
	sub r0, r4, #1
	mul r0, r5
	add r1, r7, #0
	bl _s32_div_f
	sub r0, r6, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021EAEE0

	.rodata

ov01_02206464:
	.byte 0x62, 0xE5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0xF9, 0xFF, 0x18, 0x00, 0x00, 0x00

ov01_02206478: ; 0x02206478
	.byte 0xC1, 0xAE, 0x29, 0x00, 0x62, 0xDD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x5C, 0x46, 0x19, 0x00, 0x83, 0xE3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0x09, 0x00, 0x60, 0x08, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x02, 0x00, 0x00, 0x10, 0xFF, 0xFF
	.byte 0xC1, 0xAE, 0x29, 0x00, 0xC2, 0xE3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC1, 0xAE, 0x29, 0x00, 0x42, 0xF2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC5, 0xE9, 0x01, 0x00, 0x37, 0x3F, 0xFF, 0xFF
	.byte 0x9B, 0xB8, 0x61, 0x00, 0x82, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x81, 0x02, 0x00, 0x60, 0x09, 0x00, 0x00, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF6, 0x19, 0x1D, 0x00, 0xA2, 0xDD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0x08, 0x00, 0x60, 0x09, 0x00, 0x00, 0x80, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFE, 0xFF
	.byte 0xC1, 0xAE, 0x29, 0x00, 0xE2, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0xC0, 0x5D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC1, 0xAE, 0x29, 0x00, 0xE2, 0xE1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5B, 0x7C, 0x01, 0x00, 0xE2, 0x95, 0xFE, 0xFF
	.byte 0x4C, 0x37, 0x20, 0x00, 0x22, 0xD9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x07, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC1, 0xBE, 0x29, 0x00, 0x82, 0xD5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0xC8, 0x13, 0x00, 0x42, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0x0C, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x6A, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF1, 0xC5, 0x00, 0x00, 0x8C, 0xA3, 0xFD, 0xFF
	.byte 0x29, 0x5C, 0x21, 0x00, 0xC2, 0xE3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x07, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0xC1, 0xAE, 0x29, 0x00, 0xE2, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x6A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0xFF
	.byte 0xC1, 0xAE, 0x29, 0x00, 0x42, 0xF2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x6A, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC5, 0xE9, 0x01, 0x00, 0x37, 0x1F, 0xFE, 0xFF
	.byte 0xC1, 0xAE, 0x29, 0x00, 0xC2, 0xD4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9B, 0xB8, 0x61, 0x00, 0x82, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x81, 0x02, 0x00, 0x60, 0x09, 0x00, 0x00, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0xFD, 0xFF
	.byte 0xC1, 0xAE, 0x29, 0x00, 0x02, 0xD6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x05, 0x00, 0x60, 0x09, 0x00, 0x00, 0x40, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss

ov01_02209B60:
	.space 0x4
