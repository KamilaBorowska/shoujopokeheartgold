#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_0224E4FC.inc"
	.include "global.inc"

	.text

    thumb_func_start ov12_0224E4FC
ov12_0224E4FC: ; 0x0224E4FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r1, #0
	str r2, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	str r0, [sp]
	bl BattleSystem_GetPartyMon
	ldr r1, [sp, #4]
	mov r2, #0xc0
	add r5, r1, #0
	mov r1, #0xb5
	lsl r1, r1, #6
	add r1, r7, r1
	mul r5, r2
	str r1, [sp, #0x18]
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	ldr r1, [sp, #0x18]
	mov r2, #0
	strh r0, [r1, r5]
	add r0, r4, #0
	mov r1, #0xa5
	bl GetMonData
	ldr r1, _0224E8B4 ; =0x00002D42
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E8B8 ; =0x00002D44
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E8BC ; =0x00002D46
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E8C0 ; =0x00002D48
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl GetMonData
	add r1, r7, r5
	ldr r2, _0224E8C4 ; =0x00002D4A
	str r1, [sp, #0xc]
	strh r0, [r1, r2]
	add r0, r1, #0
	mov r6, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
_0224E586:
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	ldr r2, [sp, #0x14]
	ldr r1, _0224E8C8 ; =0x00002D4C
	strh r0, [r2, r1]
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x3a
	mov r2, #0
	bl GetMonData
	ldr r2, [sp, #0x10]
	ldr r1, _0224E8CC ; =0x00002D6C
	strb r0, [r2, r1]
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x3e
	mov r2, #0
	bl GetMonData
	ldr r2, [sp, #0x10]
	ldr r1, _0224E8D0 ; =0x00002D70
	add r6, r6, #1
	strb r0, [r2, r1]
	ldr r0, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0x14]
	add r0, r2, #0
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r6, #4
	blt _0224E586
	add r0, r1, #0
	sub r0, #0x1c
	add r6, r7, r0
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl GetMonData
	ldr r1, [r6, r5]
	mov r2, #0x1f
	bic r1, r2
	mov r2, #0x1f
	and r0, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8D4 ; =0xFFFFFC1F
	lsr r0, r0, #0x16
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8D8 ; =0xFFFF83FF
	lsr r0, r0, #0x11
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8DC ; =0xFFF07FFF
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8E0 ; =0xFE0FFFFF
	lsr r0, r0, #7
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8E4 ; =0xC1FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	ldr r2, [r6, r5]
	ldr r1, _0224E8E8 ; =0xBFFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4d
	mov r2, #0
	bl GetMonData
	ldr r2, [r6, r5]
	ldr r1, _0224E8EC ; =0x7FFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	ldr r0, _0224E8F0 ; =0x0000213C
	ldr r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	bne _0224E6B2
	ldr r0, _0224E8F4 ; =0x00002D58
	mov r2, #0
	mov r1, #6
_0224E6A4:
	ldr r3, [sp, #0xc]
	add r2, r2, #1
	strb r1, [r3, r0]
	add r3, r3, #1
	str r3, [sp, #0xc]
	cmp r2, #8
	blt _0224E6A4
_0224E6B2:
	ldr r0, _0224E8F8 ; =0x00002D68
	mov r1, #1
	add r0, r7, r0
	ldr r2, [r0, r5]
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #2
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #4
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #8
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x10
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x20
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x40
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x80
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _0224E8FC ; =0xFFFFFEFF
	and r1, r2
	str r1, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _0224E900 ; =0xFFFFFDFF
	and r1, r2
	str r1, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _0224E904 ; =0xFFFFFBFF
	and r1, r2
	str r1, [r0, r5]
	add r0, r4, #0
	mov r1, #0xb1
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E908 ; =0x00002D64
	add r2, r7, r5
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E90C ; =0x00002D65
	add r2, r7, r5
	strb r0, [r2, r1]
	add r1, #0x59
	add r0, r7, r1
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl GetMonGender
	ldr r1, [sp, #0x1c]
	mov r2, #0xf
	ldrb r1, [r1, r5]
	bic r1, r2
	mov r2, #0xf
	and r0, r2
	orr r1, r0
	ldr r0, [sp, #0x1c]
	strb r1, [r0, r5]
	ldr r0, _0224E910 ; =0x00002D66
	add r0, r7, r0
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl MonIsShiny
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x1f
	ldrb r1, [r1, r5]
	mov r2, #0x20
	lsr r0, r0, #0x1a
	bic r1, r2
	orr r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
	ldr r0, [sp]
	bl BattleSys_GetBattleType
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0224E792
	ldr r2, _0224E914 ; =0x00002D67
	mov r0, #0
	add r3, r7, r5
	add r1, r2, #0
	strb r0, [r3, r2]
	add r2, #0x51
	add r1, #0x45
	add r2, r7, r2
	str r0, [r3, r1]
	add r1, r2, r5
	str r1, [sp, #8]
	strh r0, [r2, r5]
	b _0224E7C6
_0224E792:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E914 ; =0x00002D67
	add r2, r7, r5
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E918 ; =0x00002DAC
	add r2, r7, r5
	str r0, [r2, r1]
	add r1, #0xc
	add r6, r7, r1
	add r0, r6, r5
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	strh r0, [r6, r5]
_0224E7C6:
	ldr r0, [sp]
	bl BattleSys_GetBattleType
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0224E7EE
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl BattleSys_GetFieldSide
	cmp r0, #0
	bne _0224E7EE
	ldr r0, [sp, #0x20]
	ldrb r1, [r0, r5]
	mov r0, #0x1f
	bic r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
	b _0224E80E
_0224E7EE:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	ldr r1, [sp, #0x20]
	mov r2, #0x1f
	ldrb r1, [r1, r5]
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x1f
	and r0, r2
	orr r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
_0224E80E:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	add r6, r0, #0
	mul r6, r1
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E91C ; =0x00002D74
	add r2, r7, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E920 ; =0x00002D75
	add r2, r7, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E924 ; =0x00002D8C
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E928 ; =0x00002D90
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E92C ; =0x00002DA4
	add r2, r7, r6
	str r0, [r2, r1]
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl GetMonData
	ldr r1, _0224E930 ; =0x00002DA8
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl GetMonData
	ldr r1, _0224E934 ; =0x00002DB4
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0x9d
	mov r2, #0
	bl GetMonData
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	ldrb r1, [r1, r5]
	mov r2, #0xf0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r1, r0
	ldr r0, [sp, #0x1c]
	strb r1, [r0, r5]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AA88
	ldr r1, _0224E938 ; =0x00002DBF
	b _0224E93C
	nop
_0224E8B4: .word 0x00002D42
_0224E8B8: .word 0x00002D44
_0224E8BC: .word 0x00002D46
_0224E8C0: .word 0x00002D48
_0224E8C4: .word 0x00002D4A
_0224E8C8: .word 0x00002D4C
_0224E8CC: .word 0x00002D6C
_0224E8D0: .word 0x00002D70
_0224E8D4: .word 0xFFFFFC1F
_0224E8D8: .word 0xFFFF83FF
_0224E8DC: .word 0xFFF07FFF
_0224E8E0: .word 0xFE0FFFFF
_0224E8E4: .word 0xC1FFFFFF
_0224E8E8: .word 0xBFFFFFFF
_0224E8EC: .word 0x7FFFFFFF
_0224E8F0: .word 0x0000213C
_0224E8F4: .word 0x00002D58
_0224E8F8: .word 0x00002D68
_0224E8FC: .word 0xFFFFFEFF
_0224E900: .word 0xFFFFFDFF
_0224E904: .word 0xFFFFFBFF
_0224E908: .word 0x00002D64
_0224E90C: .word 0x00002D65
_0224E910: .word 0x00002D66
_0224E914: .word 0x00002D67
_0224E918: .word 0x00002DAC
_0224E91C: .word 0x00002D74
_0224E920: .word 0x00002D75
_0224E924: .word 0x00002D8C
_0224E928: .word 0x00002D90
_0224E92C: .word 0x00002DA4
_0224E930: .word 0x00002DA8
_0224E934: .word 0x00002DB4
_0224E938: .word 0x00002DBF
_0224E93C:
	add r2, r7, r6
	strb r0, [r2, r1]
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, r5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	bl SetDexBanksByGiratinaForme
	mov r0, #5
	bl ZknData_Create
	mov r1, #0
	mov r2, #5
	str r0, [sp, #0x24]
	bl ZknData_LoadAll
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldrh r1, [r1, r5]
	bl ZknData_GetWeight
	ldr r1, _0224E9F8 ; =0x00002D60
	add r2, r7, r6
	str r0, [r2, r1]
	ldr r0, [sp, #0x24]
	bl ZknData_UnloadAll
	ldr r0, [sp, #0x24]
	bl ZknData_Delete
	ldr r2, _0224E9FC ; =0x00002D76
	add r0, r4, #0
	add r2, r7, r2
	mov r1, #0x75
	add r2, r2, r6
	bl GetMonData
	ldr r2, _0224EA00 ; =0x00002D94
	add r0, r4, #0
	add r2, r7, r2
	mov r1, #0x90
	add r2, r2, r6
	bl GetMonData
	ldr r0, _0224EA04 ; =0x00002DBC
	mov r2, #0
	add r1, r7, r6
	strb r2, [r1, r0]
	add r0, r0, #1
	strb r2, [r1, r0]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl BattleSys_GetFieldSide
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, r0
	ldr r0, _0224EA08 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl MaskOfFlagNo
	lsl r1, r4, #3
	add r2, r7, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	beq _0224E9DE
	ldr r0, [sp, #8]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0224EA0C ; =0x00002DCC
	add sp, #0x28
	add r2, r7, r0
	ldr r1, [r2, r5]
	ldr r0, _0224EA10 ; =0xFFBFFFFF
	and r0, r1
	str r0, [r2, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E9DE:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0224E9F4
	ldr r0, _0224EA0C ; =0x00002DCC
	add r2, r7, r0
	mov r0, #1
	ldr r1, [r2, r5]
	lsl r0, r0, #0x16
	orr r0, r1
	str r0, [r2, r5]
_0224E9F4:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224E9F8: .word 0x00002D60
_0224E9FC: .word 0x00002D76
_0224EA00: .word 0x00002D94
_0224EA04: .word 0x00002DBC
_0224EA08: .word 0x0000219C
_0224EA0C: .word 0x00002DCC
_0224EA10: .word 0xFFBFFFFF
	thumb_func_end ov12_0224E4FC

	thumb_func_start BattleController_EmitRefreshMonData
BattleController_EmitRefreshMonData: ; 0x0224EA14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r3, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xc0
	mul r1, r5
	str r1, [sp, #4]
	mov r1, #0xa5
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB68 ; =0x00002D42
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB6C ; =0x00002D44
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB70 ; =0x00002D46
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB74 ; =0x00002D48
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB78 ; =0x00002D4A
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB7C ; =0x00002D74
	strb r0, [r2, r1]
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB80 ; =0x00002D75
	strb r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB84 ; =0x00002D8C
	str r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB88 ; =0x00002D90
	str r0, [r2, r1]
	add r0, r1, #0
	add r0, #0x20
	ldr r2, [r2, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r2
	bne _0224EB64
	mov r0, #0xc0
	mul r0, r5
	ldr r2, [sp]
	str r0, [sp, #8]
	add r7, r2, r0
	add r1, #0x3c
	add r0, r2, #0
	add r0, r0, r1
	mov r4, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_0224EB02:
	add r0, r4, #0
	bl MaskOfFlagNo
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r1, [r2, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1c
	tst r0, r1
	bne _0224EB46
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	ldr r1, _0224EB8C ; =0x00002D4C
	mov r2, #0
	strh r0, [r7, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	bl GetMonData
	ldr r1, _0224EB90 ; =0x00002D6C
	mov r2, #0
	strb r0, [r5, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	bl GetMonData
	ldr r1, _0224EB94 ; =0x00002D70
	strb r0, [r5, r1]
_0224EB46:
	add r4, r4, #1
	add r7, r7, #2
	add r5, r5, #1
	cmp r4, #4
	blt _0224EB02
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB98 ; =0x00002DA4
	str r0, [r2, r1]
_0224EB64:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224EB68: .word 0x00002D42
_0224EB6C: .word 0x00002D44
_0224EB70: .word 0x00002D46
_0224EB74: .word 0x00002D48
_0224EB78: .word 0x00002D4A
_0224EB7C: .word 0x00002D74
_0224EB80: .word 0x00002D75
_0224EB84: .word 0x00002D8C
_0224EB88: .word 0x00002D90
_0224EB8C: .word 0x00002D4C
_0224EB90: .word 0x00002D6C
_0224EB94: .word 0x00002D70
_0224EB98: .word 0x00002DA4
	thumb_func_end BattleController_EmitRefreshMonData

	thumb_func_start ReadBattleScriptFromNarc
ReadBattleScriptFromNarc: ; 0x0224EB9C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl GetNarcMemberSizeByIdPair
	mov r1, #0x19
	lsl r1, r1, #6
	cmp r0, r1
	blo _0224EBB8
	bl GF_AssertFail
_0224EBB8:
	add r0, r5, #0
	add r0, #0xac
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xb0
	str r6, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x27
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	add r2, r6, #0
	bl ReadWholeNarcMemberByIdPair
	pop {r4, r5, r6, pc}
	thumb_func_end ReadBattleScriptFromNarc

	thumb_func_start ov12_0224EBDC
ov12_0224EBDC: ; 0x0224EBDC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl GetNarcMemberSizeByIdPair
	mov r1, #0x19
	lsl r1, r1, #6
	cmp r0, r1
	blo _0224EBF8
	bl GF_AssertFail
_0224EBF8:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #4
	blt _0224EC06
	bl GF_AssertFail
_0224EC06:
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r0, r5, #0
	add r0, #0xac
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	add r1, #0xbc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r0, r5, #0
	add r0, #0xb0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	add r1, #0xcc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r0, r5, #0
	add r0, #0xb4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	add r1, #0xdc
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r2, r6, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xb0
	str r6, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x27
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	bl ReadWholeNarcMemberByIdPair
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0224EBDC

	thumb_func_start ov12_0224EC74
ov12_0224EC74: ; 0x0224EC74
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1]
	cmp r1, #0
	beq _0224ECBE
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1]
	sub r2, r1, #1
	add r1, r4, #0
	add r1, #0xb8
	str r2, [r1]
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1]
	lsl r2, r1, #2
	add r1, r4, r2
	add r2, r4, r2
	add r1, #0xbc
	add r2, #0xcc
	ldr r1, [r1]
	ldr r2, [r2]
	bl ReadBattleScriptFromNarc
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xdc
	ldr r0, [r0]
	add r4, #0xb4
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_0224ECBE:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov12_0224EC74

	thumb_func_start ov12_0224ECC4
ov12_0224ECC4: ; 0x0224ECC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	lsl r0, r1, #6
	lsl r6, r2, #4
	add r1, r4, r0
	add r5, r1, r6
	mov r1, #0x22
	add r7, r3, #0
	mov r3, #0
	lsl r1, r1, #8
_0224ECD8:
	ldrb r2, [r5, r1]
	cmp r2, #0
	bne _0224ECEC
	add r0, r4, r0
	add r0, r0, r6
	add r1, r0, r3
	mov r0, #0x22
	lsl r0, r0, #8
	strb r7, [r1, r0]
	b _0224ECF4
_0224ECEC:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #0x10
	blt _0224ECD8
_0224ECF4:
	cmp r3, #0x10
	blt _0224ECFC
	bl GF_AssertFail
_0224ECFC:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0224ECC4

	thumb_func_start ov12_0224ED00
ov12_0224ED00: ; 0x0224ED00
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r4, r3, #0
	bne _0224ED10
	bl GF_AssertFail
_0224ED10:
	ldr r0, [sp]
	lsl r6, r5, #6
	lsl r5, r0, #4
	add r0, r7, r6
	add r3, r0, r5
	mov r0, #0x22
	mov r2, #0
	lsl r0, r0, #8
_0224ED20:
	ldrb r1, [r3, r0]
	cmp r4, r1
	bne _0224ED36
	add r1, r7, r6
	add r1, r1, r5
	add r3, r1, r2
	mov r1, #0x22
	mov r0, #0
	lsl r1, r1, #8
	strb r0, [r3, r1]
	b _0224ED3E
_0224ED36:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x10
	blt _0224ED20
_0224ED3E:
	cmp r2, #0x10
	blt _0224ED46
	bl GF_AssertFail
_0224ED46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224ED00

	thumb_func_start Link_QueueNotEmpty
Link_QueueNotEmpty: ; 0x0224ED48
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0
	mov r4, #0x22
	mov lr, r0
	mov ip, r2
	add r7, r0, #0
	add r6, r2, #0
	lsl r4, r4, #8
_0224ED58:
	mov r0, #0
	add r3, r7, #0
_0224ED5C:
	add r1, r6, #0
_0224ED5E:
	add r5, r3, r1
	ldrb r5, [r5, r4]
	add r1, r1, #1
	add r2, r2, r5
	cmp r1, #0x10
	blt _0224ED5E
	add r0, r0, #1
	add r3, #0x10
	cmp r0, #4
	blt _0224ED5C
	mov r0, ip
	add r0, r0, #1
	add r7, #0x40
	mov ip, r0
	cmp r0, #4
	blt _0224ED58
	cmp r2, #0
	bne _0224ED8A
	ldr r1, _0224ED98 ; =0x00003148
	mov r3, #0
	mov r0, lr
	str r3, [r0, r1]
_0224ED8A:
	cmp r2, #0
	bne _0224ED92
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224ED92:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ED98: .word 0x00003148
	thumb_func_end Link_QueueNotEmpty

	thumb_func_start Link_CheckTimeout
Link_CheckTimeout: ; 0x0224ED9C
	push {r3, lr}
	ldr r1, _0224EDB8 ; =0x00003148
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	ldr r0, _0224EDBC ; =0x00000708
	cmp r1, r0
	ble _0224EDB4
	mov r0, #1
	bl sub_02039AD8
_0224EDB4:
	pop {r3, pc}
	nop
_0224EDB8: .word 0x00003148
_0224EDBC: .word 0x00000708
	thumb_func_end Link_CheckTimeout

	thumb_func_start ov12_0224EDC0
ov12_0224EDC0: ; 0x0224EDC0
	push {r3, r4}
	lsl r1, r1, #8
	add r4, r0, r1
	mov r3, #0
	mov r0, #0x23
	mov r1, #1
	add r2, r3, #0
	lsl r0, r0, #8
	lsl r1, r1, #8
_0224EDD2:
	add r3, r3, #1
	strb r2, [r4, r0]
	add r4, r4, #1
	cmp r3, r1
	blt _0224EDD2
	pop {r3, r4}
	bx lr
	thumb_func_end ov12_0224EDC0

	thumb_func_start GetBattlerVar
GetBattlerVar: ; 0x0224EDE0
	push {r4, r5, r6, lr}
	mov r4, #0xb5
	lsl r4, r4, #6
	add r5, r0, r4
	mov r6, #0xc0
	add r4, r1, #0
	mul r4, r6
	add r4, r5, r4
	cmp r2, #0x64
	bls _0224EDF6
	b _0224F15E
_0224EDF6:
	add r5, r2, r2
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0224EE02: ; jump table
	.short _0224EECC - _0224EE02 - 2 ; case 0
	.short _0224EED0 - _0224EE02 - 2 ; case 1
	.short _0224EED4 - _0224EE02 - 2 ; case 2
	.short _0224EED8 - _0224EE02 - 2 ; case 3
	.short _0224EEDC - _0224EE02 - 2 ; case 4
	.short _0224EEE0 - _0224EE02 - 2 ; case 5
	.short _0224EEE4 - _0224EE02 - 2 ; case 6
	.short _0224EEE4 - _0224EE02 - 2 ; case 7
	.short _0224EEE4 - _0224EE02 - 2 ; case 8
	.short _0224EEE4 - _0224EE02 - 2 ; case 9
	.short _0224EEEE - _0224EE02 - 2 ; case 10
	.short _0224EEF6 - _0224EE02 - 2 ; case 11
	.short _0224EEFE - _0224EE02 - 2 ; case 12
	.short _0224EF06 - _0224EE02 - 2 ; case 13
	.short _0224EF0E - _0224EE02 - 2 ; case 14
	.short _0224EF16 - _0224EE02 - 2 ; case 15
	.short _0224EF1E - _0224EE02 - 2 ; case 16
	.short _0224EF26 - _0224EE02 - 2 ; case 17
	.short _0224EF2C - _0224EE02 - 2 ; case 18
	.short _0224EF2C - _0224EE02 - 2 ; case 19
	.short _0224EF2C - _0224EE02 - 2 ; case 20
	.short _0224EF2C - _0224EE02 - 2 ; case 21
	.short _0224EF2C - _0224EE02 - 2 ; case 22
	.short _0224EF2C - _0224EE02 - 2 ; case 23
	.short _0224EF2C - _0224EE02 - 2 ; case 24
	.short _0224EF2C - _0224EE02 - 2 ; case 25
	.short _0224EF36 - _0224EE02 - 2 ; case 26
	.short _0224EF3C - _0224EE02 - 2 ; case 27
	.short _0224EF3C - _0224EE02 - 2 ; case 28
	.short _0224EF42 - _0224EE02 - 2 ; case 29
	.short _0224EF4C - _0224EE02 - 2 ; case 30
	.short _0224EF56 - _0224EE02 - 2 ; case 31
	.short _0224EF56 - _0224EE02 - 2 ; case 32
	.short _0224EF56 - _0224EE02 - 2 ; case 33
	.short _0224EF56 - _0224EE02 - 2 ; case 34
	.short _0224EF60 - _0224EE02 - 2 ; case 35
	.short _0224EF60 - _0224EE02 - 2 ; case 36
	.short _0224EF60 - _0224EE02 - 2 ; case 37
	.short _0224EF60 - _0224EE02 - 2 ; case 38
	.short _0224EF6A - _0224EE02 - 2 ; case 39
	.short _0224EF6A - _0224EE02 - 2 ; case 40
	.short _0224EF6A - _0224EE02 - 2 ; case 41
	.short _0224EF6A - _0224EE02 - 2 ; case 42
	.short _0224EF7E - _0224EE02 - 2 ; case 43
	.short _0224EF84 - _0224EE02 - 2 ; case 44
	.short _0224EF8A - _0224EE02 - 2 ; case 45
	.short _0224EF9C - _0224EE02 - 2 ; case 46
	.short _0224EFA8 - _0224EE02 - 2 ; case 47
	.short _0224EFAC - _0224EE02 - 2 ; case 48
	.short _0224EFB0 - _0224EE02 - 2 ; case 49
	.short _0224EFC6 - _0224EE02 - 2 ; case 50
	.short _0224EFCA - _0224EE02 - 2 ; case 51
	.short _0224EFCE - _0224EE02 - 2 ; case 52
	.short _0224EFD2 - _0224EE02 - 2 ; case 53
	.short _0224EFD6 - _0224EE02 - 2 ; case 54
	.short _0224EFDA - _0224EE02 - 2 ; case 55
	.short _0224EFE0 - _0224EE02 - 2 ; case 56
	.short _0224EFE6 - _0224EE02 - 2 ; case 57
	.short _0224EFEC - _0224EE02 - 2 ; case 58
	.short _0224EFF6 - _0224EE02 - 2 ; case 59
	.short _0224EFFC - _0224EE02 - 2 ; case 60
	.short _0224F002 - _0224EE02 - 2 ; case 61
	.short _0224F00C - _0224EE02 - 2 ; case 62
	.short _0224F016 - _0224EE02 - 2 ; case 63
	.short _0224F020 - _0224EE02 - 2 ; case 64
	.short _0224F02A - _0224EE02 - 2 ; case 65
	.short _0224F034 - _0224EE02 - 2 ; case 66
	.short _0224F03E - _0224EE02 - 2 ; case 67
	.short _0224F048 - _0224EE02 - 2 ; case 68
	.short _0224F052 - _0224EE02 - 2 ; case 69
	.short _0224F05C - _0224EE02 - 2 ; case 70
	.short _0224F066 - _0224EE02 - 2 ; case 71
	.short _0224F070 - _0224EE02 - 2 ; case 72
	.short _0224F07A - _0224EE02 - 2 ; case 73
	.short _0224F082 - _0224EE02 - 2 ; case 74
	.short _0224F08C - _0224EE02 - 2 ; case 75
	.short _0224F096 - _0224EE02 - 2 ; case 76
	.short _0224F0A0 - _0224EE02 - 2 ; case 77
	.short _0224F0AA - _0224EE02 - 2 ; case 78
	.short _0224F0B4 - _0224EE02 - 2 ; case 79
	.short _0224F0BE - _0224EE02 - 2 ; case 80
	.short _0224F0C8 - _0224EE02 - 2 ; case 81
	.short _0224F0D2 - _0224EE02 - 2 ; case 82
	.short _0224F0DC - _0224EE02 - 2 ; case 83
	.short _0224F0E6 - _0224EE02 - 2 ; case 84
	.short _0224F0F0 - _0224EE02 - 2 ; case 85
	.short _0224F0FA - _0224EE02 - 2 ; case 86
	.short _0224F104 - _0224EE02 - 2 ; case 87
	.short _0224F10A - _0224EE02 - 2 ; case 88
	.short _0224F110 - _0224EE02 - 2 ; case 89
	.short _0224F116 - _0224EE02 - 2 ; case 90
	.short _0224F11C - _0224EE02 - 2 ; case 91
	.short _0224F122 - _0224EE02 - 2 ; case 92
	.short _0224F128 - _0224EE02 - 2 ; case 93
	.short _0224F12E - _0224EE02 - 2 ; case 94
	.short _0224F134 - _0224EE02 - 2 ; case 95
	.short _0224F13A - _0224EE02 - 2 ; case 96
	.short _0224F142 - _0224EE02 - 2 ; case 97
	.short _0224F14A - _0224EE02 - 2 ; case 98
	.short _0224F15E - _0224EE02 - 2 ; case 99
	.short _0224F154 - _0224EE02 - 2 ; case 100
_0224EECC:
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224EED0:
	ldrh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0224EED4:
	ldrh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0224EED8:
	ldrh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_0224EEDC:
	ldrh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0224EEE0:
	ldrh r0, [r4, #0xa]
	pop {r4, r5, r6, pc}
_0224EEE4:
	sub r0, r2, #6
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r0, [r0, #0xc]
	pop {r4, r5, r6, pc}
_0224EEEE:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EEF6:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EEFE:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF06:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF0E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF16:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #2
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF1E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224EF26:
	ldr r0, [r4, #0x14]
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224EF2C:
	sub r2, #0x12
	add r1, r4, r2
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0224EF36:
	add r4, #0x27
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EF3C:
	bl ov12_022584AC
	pop {r4, r5, r6, pc}
_0224EF42:
	add r4, #0x7e
	ldrb r0, [r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224EF4C:
	add r4, #0x26
	ldrb r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224EF56:
	sub r2, #0x1f
	add r0, r4, r2
	add r0, #0x2c
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_0224EF60:
	sub r2, #0x23
	add r0, r4, r2
	add r0, #0x30
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_0224EF6A:
	sub r2, #0x27
	lsl r0, r2, #1
	add r1, r4, r2
	add r0, r4, r0
	add r1, #0x30
	ldrh r0, [r0, #0xc]
	ldrb r1, [r1]
	bl GetMoveMaxPP
	pop {r4, r5, r6, pc}
_0224EF7E:
	add r4, #0x34
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EF84:
	add r4, #0x35
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EF8A:
	mov r1, #0
_0224EF8C:
	ldrh r0, [r4, #0x36]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	cmp r1, #0xb
	blt _0224EF8C
	b _0224F162
_0224EF9C:
	add r4, #0x36
	add r0, r3, #0
	add r1, r4, #0
	bl CopyU16ArrayToString
	b _0224F162
_0224EFA8:
	ldr r0, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_0224EFAC:
	ldr r0, [r4, #0x50]
	pop {r4, r5, r6, pc}
_0224EFB0:
	mov r1, #0
_0224EFB2:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	cmp r1, #0xb
	blt _0224EFB2
	b _0224F162
_0224EFC6:
	ldr r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_0224EFCA:
	ldr r0, [r4, #0x68]
	pop {r4, r5, r6, pc}
_0224EFCE:
	ldr r0, [r4, #0x6c]
	pop {r4, r5, r6, pc}
_0224EFD2:
	ldr r0, [r4, #0x70]
	pop {r4, r5, r6, pc}
_0224EFD6:
	ldr r0, [r4, #0x74]
	pop {r4, r5, r6, pc}
_0224EFDA:
	add r4, #0x78
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFE0:
	add r4, #0x7c
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFE6:
	add r4, #0x7d
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFEC:
	add r4, #0x7e
	ldrb r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224EFF6:
	add r4, #0x80
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFFC:
	add r4, #0x84
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F002:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F00C:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F016:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F020:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F02A:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F034:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F03E:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0xe
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F048:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F052:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #8
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F05C:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #5
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F066:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #2
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F070:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F07A:
	add r4, #0x88
	ldr r0, [r4]
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F082:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F08C:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224F096:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F0A0:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F0AA:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0B4:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0BE:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0C8:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0D2:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #9
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F0DC:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224F0E6:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F0F0:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F0FA:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F104:
	add r4, #0x90
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F10A:
	add r4, #0x94
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F110:
	add r4, #0x98
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F116:
	add r4, #0xa0
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F11C:
	add r4, #0xa4
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F122:
	add r4, #0xa8
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224F128:
	add r4, #0xac
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224F12E:
	add r4, #0xaa
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224F134:
	add r4, #0xbc
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F13A:
	ldr r0, [r4, #0x28]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F142:
	ldr r0, [r4, #0x28]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F14A:
	add r4, #0x26
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224F154:
	add r6, #0x78
	ldr r2, [r0, r6]
	bl GetBattlerVar
	pop {r4, r5, r6, pc}
_0224F15E:
	bl GF_AssertFail
_0224F162:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end GetBattlerVar

	thumb_func_start SetBattlerVar
SetBattlerVar: ; 0x0224F168
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0xb5
	lsl r2, r2, #6
	add r4, r0, r2
	mov r6, #0xc0
	add r2, r1, #0
	mul r2, r6
	add r2, r4, r2
	cmp r5, #0x64
	bls _0224F180
	b _0224F77E
_0224F180:
	add r4, r5, r5
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_0224F18C: ; jump table
	.short _0224F256 - _0224F18C - 2 ; case 0
	.short _0224F25C - _0224F18C - 2 ; case 1
	.short _0224F262 - _0224F18C - 2 ; case 2
	.short _0224F268 - _0224F18C - 2 ; case 3
	.short _0224F26E - _0224F18C - 2 ; case 4
	.short _0224F274 - _0224F18C - 2 ; case 5
	.short _0224F27A - _0224F18C - 2 ; case 6
	.short _0224F27A - _0224F18C - 2 ; case 7
	.short _0224F27A - _0224F18C - 2 ; case 8
	.short _0224F27A - _0224F18C - 2 ; case 9
	.short _0224F286 - _0224F18C - 2 ; case 10
	.short _0224F298 - _0224F18C - 2 ; case 11
	.short _0224F2AA - _0224F18C - 2 ; case 12
	.short _0224F2BC - _0224F18C - 2 ; case 13
	.short _0224F2CE - _0224F18C - 2 ; case 14
	.short _0224F2E0 - _0224F18C - 2 ; case 15
	.short _0224F2F2 - _0224F18C - 2 ; case 16
	.short _0224F304 - _0224F18C - 2 ; case 17
	.short _0224F314 - _0224F18C - 2 ; case 18
	.short _0224F314 - _0224F18C - 2 ; case 19
	.short _0224F314 - _0224F18C - 2 ; case 20
	.short _0224F314 - _0224F18C - 2 ; case 21
	.short _0224F314 - _0224F18C - 2 ; case 22
	.short _0224F314 - _0224F18C - 2 ; case 23
	.short _0224F314 - _0224F18C - 2 ; case 24
	.short _0224F314 - _0224F18C - 2 ; case 25
	.short _0224F320 - _0224F18C - 2 ; case 26
	.short _0224F328 - _0224F18C - 2 ; case 27
	.short _0224F330 - _0224F18C - 2 ; case 28
	.short _0224F338 - _0224F18C - 2 ; case 29
	.short _0224F350 - _0224F18C - 2 ; case 30
	.short _0224F368 - _0224F18C - 2 ; case 31
	.short _0224F368 - _0224F18C - 2 ; case 32
	.short _0224F368 - _0224F18C - 2 ; case 33
	.short _0224F368 - _0224F18C - 2 ; case 34
	.short _0224F374 - _0224F18C - 2 ; case 35
	.short _0224F374 - _0224F18C - 2 ; case 36
	.short _0224F374 - _0224F18C - 2 ; case 37
	.short _0224F374 - _0224F18C - 2 ; case 38
	.short _0224F380 - _0224F18C - 2 ; case 39
	.short _0224F380 - _0224F18C - 2 ; case 40
	.short _0224F380 - _0224F18C - 2 ; case 41
	.short _0224F380 - _0224F18C - 2 ; case 42
	.short _0224F386 - _0224F18C - 2 ; case 43
	.short _0224F38E - _0224F18C - 2 ; case 44
	.short _0224F396 - _0224F18C - 2 ; case 45
	.short _0224F77E - _0224F18C - 2 ; case 46
	.short _0224F3A8 - _0224F18C - 2 ; case 47
	.short _0224F3B0 - _0224F18C - 2 ; case 48
	.short _0224F3B6 - _0224F18C - 2 ; case 49
	.short _0224F3CC - _0224F18C - 2 ; case 50
	.short _0224F3D2 - _0224F18C - 2 ; case 51
	.short _0224F3D8 - _0224F18C - 2 ; case 52
	.short _0224F3DE - _0224F18C - 2 ; case 53
	.short _0224F3E4 - _0224F18C - 2 ; case 54
	.short _0224F3EA - _0224F18C - 2 ; case 55
	.short _0224F3F2 - _0224F18C - 2 ; case 56
	.short _0224F3FA - _0224F18C - 2 ; case 57
	.short _0224F402 - _0224F18C - 2 ; case 58
	.short _0224F41A - _0224F18C - 2 ; case 59
	.short _0224F422 - _0224F18C - 2 ; case 60
	.short _0224F42A - _0224F18C - 2 ; case 61
	.short _0224F442 - _0224F18C - 2 ; case 62
	.short _0224F45A - _0224F18C - 2 ; case 63
	.short _0224F472 - _0224F18C - 2 ; case 64
	.short _0224F48A - _0224F18C - 2 ; case 65
	.short _0224F4A2 - _0224F18C - 2 ; case 66
	.short _0224F4BA - _0224F18C - 2 ; case 67
	.short _0224F4D2 - _0224F18C - 2 ; case 68
	.short _0224F4EA - _0224F18C - 2 ; case 69
	.short _0224F502 - _0224F18C - 2 ; case 70
	.short _0224F51A - _0224F18C - 2 ; case 71
	.short _0224F532 - _0224F18C - 2 ; case 72
	.short _0224F54A - _0224F18C - 2 ; case 73
	.short _0224F560 - _0224F18C - 2 ; case 74
	.short _0224F578 - _0224F18C - 2 ; case 75
	.short _0224F590 - _0224F18C - 2 ; case 76
	.short _0224F5A8 - _0224F18C - 2 ; case 77
	.short _0224F5C0 - _0224F18C - 2 ; case 78
	.short _0224F5D8 - _0224F18C - 2 ; case 79
	.short _0224F5F0 - _0224F18C - 2 ; case 80
	.short _0224F608 - _0224F18C - 2 ; case 81
	.short _0224F620 - _0224F18C - 2 ; case 82
	.short _0224F690 - _0224F18C - 2 ; case 83
	.short _0224F6A8 - _0224F18C - 2 ; case 84
	.short _0224F6C0 - _0224F18C - 2 ; case 85
	.short _0224F6D8 - _0224F18C - 2 ; case 86
	.short _0224F6F0 - _0224F18C - 2 ; case 87
	.short _0224F6F8 - _0224F18C - 2 ; case 88
	.short _0224F700 - _0224F18C - 2 ; case 89
	.short _0224F708 - _0224F18C - 2 ; case 90
	.short _0224F710 - _0224F18C - 2 ; case 91
	.short _0224F718 - _0224F18C - 2 ; case 92
	.short _0224F720 - _0224F18C - 2 ; case 93
	.short _0224F728 - _0224F18C - 2 ; case 94
	.short _0224F730 - _0224F18C - 2 ; case 95
	.short _0224F738 - _0224F18C - 2 ; case 96
	.short _0224F74A - _0224F18C - 2 ; case 97
	.short _0224F75C - _0224F18C - 2 ; case 98
	.short _0224F77E - _0224F18C - 2 ; case 99
	.short _0224F774 - _0224F18C - 2 ; case 100
_0224F256:
	ldrh r0, [r3]
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F25C:
	ldrh r0, [r3]
	strh r0, [r2, #2]
	pop {r4, r5, r6, pc}
_0224F262:
	ldrh r0, [r3]
	strh r0, [r2, #4]
	pop {r4, r5, r6, pc}
_0224F268:
	ldrh r0, [r3]
	strh r0, [r2, #6]
	pop {r4, r5, r6, pc}
_0224F26E:
	ldrh r0, [r3]
	strh r0, [r2, #8]
	pop {r4, r5, r6, pc}
_0224F274:
	ldrh r0, [r3]
	strh r0, [r2, #0xa]
	pop {r4, r5, r6, pc}
_0224F27A:
	sub r0, r5, #6
	lsl r0, r0, #1
	ldrh r1, [r3]
	add r0, r2, r0
	strh r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
_0224F286:
	ldr r4, [r2, #0x14]
	mov r0, #0x1f
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #0x1f
	and r0, r1
	orr r0, r4
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F298:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F62C ; =0xFFFFFC1F
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2AA:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F630 ; =0xFFFF83FF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2BC:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F634 ; =0xFFF07FFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2CE:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F638 ; =0xFE0FFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2E0:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F63C ; =0xC1FFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2F2:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F640 ; =0xBFFFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F304:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F644 ; =0x7FFFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F314:
	mov r0, #0
	ldrsb r1, [r3, r0]
	sub r5, #0x12
	add r0, r2, r5
	strb r1, [r0, #0x18]
	pop {r4, r5, r6, pc}
_0224F320:
	ldrb r0, [r3]
	add r2, #0x27
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F328:
	ldrb r0, [r3]
	add r2, #0x24
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F330:
	ldrb r0, [r3]
	add r2, #0x25
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F338:
	add r0, r2, #0
	add r0, #0x7e
	ldrb r4, [r0]
	ldrb r1, [r3]
	mov r0, #0xf
	bic r4, r0
	mov r0, #0xf
	and r0, r1
	orr r0, r4
	add r2, #0x7e
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F350:
	add r0, r2, #0
	add r0, #0x26
	ldrb r1, [r0]
	mov r0, #0x20
	add r2, #0x26
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F368:
	sub r5, #0x1f
	add r0, r2, r5
	ldrb r1, [r3]
	add r0, #0x2c
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_0224F374:
	sub r5, #0x23
	add r0, r2, r5
	ldrb r1, [r3]
	add r0, #0x30
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_0224F380:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_0224F386:
	ldrb r0, [r3]
	add r2, #0x34
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F38E:
	ldrb r0, [r3]
	add r2, #0x35
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F396:
	mov r1, #0
_0224F398:
	ldrh r0, [r3]
	add r1, r1, #1
	add r3, r3, #2
	strh r0, [r2, #0x36]
	add r2, r2, #2
	cmp r1, #0xb
	blt _0224F398
	pop {r4, r5, r6, pc}
_0224F3A8:
	mov r0, #0
	ldrsh r0, [r3, r0]
	str r0, [r2, #0x4c]
	pop {r4, r5, r6, pc}
_0224F3B0:
	ldrh r0, [r3]
	str r0, [r2, #0x50]
	pop {r4, r5, r6, pc}
_0224F3B6:
	mov r4, #0
_0224F3B8:
	ldrh r1, [r3]
	add r0, r2, #0
	add r0, #0x54
	add r4, r4, #1
	strh r1, [r0]
	add r3, r3, #2
	add r2, r2, #2
	cmp r4, #0xb
	blt _0224F3B8
	pop {r4, r5, r6, pc}
_0224F3CC:
	ldr r0, [r3]
	str r0, [r2, #0x64]
	pop {r4, r5, r6, pc}
_0224F3D2:
	ldr r0, [r3]
	str r0, [r2, #0x68]
	pop {r4, r5, r6, pc}
_0224F3D8:
	ldr r0, [r3]
	str r0, [r2, #0x6c]
	pop {r4, r5, r6, pc}
_0224F3DE:
	ldr r0, [r3]
	str r0, [r2, #0x70]
	pop {r4, r5, r6, pc}
_0224F3E4:
	ldr r0, [r3]
	str r0, [r2, #0x74]
	pop {r4, r5, r6, pc}
_0224F3EA:
	ldrh r0, [r3]
	add r2, #0x78
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F3F2:
	ldrb r0, [r3]
	add r2, #0x7c
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F3FA:
	ldrb r0, [r3]
	add r2, #0x7d
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F402:
	add r0, r2, #0
	add r0, #0x7e
	ldrb r1, [r0]
	mov r0, #0xf0
	add r2, #0x7e
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F41A:
	ldr r0, [r3]
	add r2, #0x80
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F422:
	ldr r0, [r3]
	add r2, #0x84
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F42A:
	add r0, r2, #0
	add r0, #0x88
	ldr r4, [r0]
	mov r0, #7
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #7
	add r2, #0x88
	and r0, r1
	orr r0, r4
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F442:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	mov r0, #0x38
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x88
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F45A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	mov r0, #0xc0
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x88
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F472:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F648 ; =0xFFFFF8FF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x15
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F48A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F64C ; =0xFFFFE7FF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4A2:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F650 ; =0xFFFF9FFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4BA:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F654 ; =0xFFFC7FFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xe
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4D2:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F658 ; =0xFFE3FFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xb
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4EA:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F65C ; =0xFF1FFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #8
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F502:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F660 ; =0xF8FFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F51A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F664 ; =0xC7FFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F532:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F640 ; =0xBFFFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F54A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F644 ; =0x7FFFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F560:
	add r0, r2, #0
	add r0, #0x8c
	ldr r4, [r0]
	mov r0, #3
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #3
	add r2, #0x8c
	and r0, r1
	orr r0, r4
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F578:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0x3c
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x8c
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F590:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0xc0
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x8c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5A8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F668 ; =0xFFFFFCFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5C0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F66C ; =0xFFFFE3FF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5D8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F670 ; =0xFFFF1FFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5F0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F674 ; =0xFFF8FFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xd
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F608:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F678 ; =0xFFC7FFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xa
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F620:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F67C ; =0xFFBFFFFF
	b _0224F680
	nop
_0224F62C: .word 0xFFFFFC1F
_0224F630: .word 0xFFFF83FF
_0224F634: .word 0xFFF07FFF
_0224F638: .word 0xFE0FFFFF
_0224F63C: .word 0xC1FFFFFF
_0224F640: .word 0xBFFFFFFF
_0224F644: .word 0x7FFFFFFF
_0224F648: .word 0xFFFFF8FF
_0224F64C: .word 0xFFFFE7FF
_0224F650: .word 0xFFFF9FFF
_0224F654: .word 0xFFFC7FFF
_0224F658: .word 0xFFE3FFFF
_0224F65C: .word 0xFF1FFFFF
_0224F660: .word 0xF8FFFFFF
_0224F664: .word 0xC7FFFFFF
_0224F668: .word 0xFFFFFCFF
_0224F66C: .word 0xFFFFE3FF
_0224F670: .word 0xFFFF1FFF
_0224F674: .word 0xFFF8FFFF
_0224F678: .word 0xFFC7FFFF
_0224F67C: .word 0xFFBFFFFF
_0224F680:
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #9
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F690:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F784 ; =0xF87FFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6A8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F788 ; =0xF7FFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #4
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6C0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F78C ; =0xEFFFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6D8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F790 ; =0xDFFFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6F0:
	ldr r0, [r3]
	add r2, #0x90
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6F8:
	ldr r0, [r3]
	add r2, #0x94
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F700:
	ldr r0, [r3]
	add r2, #0x98
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F708:
	ldr r0, [r3]
	add r2, #0xa0
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F710:
	ldr r0, [r3]
	add r2, #0xa4
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F718:
	ldrh r0, [r3]
	add r2, #0xa8
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F720:
	ldrh r0, [r3]
	add r2, #0xac
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F728:
	ldrh r0, [r3]
	add r2, #0xaa
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F730:
	ldr r0, [r3]
	add r2, #0xbc
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F738:
	ldr r1, [r2, #0x28]
	mov r0, #0x40
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x19
	orr r0, r1
	str r0, [r2, #0x28]
	pop {r4, r5, r6, pc}
_0224F74A:
	ldr r1, [r2, #0x28]
	mov r0, #0x80
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2, #0x28]
	pop {r4, r5, r6, pc}
_0224F75C:
	add r0, r2, #0
	add r0, #0x26
	ldrb r4, [r0]
	ldrb r1, [r3]
	mov r0, #0x1f
	bic r4, r0
	mov r0, #0x1f
	and r0, r1
	orr r0, r4
	add r2, #0x26
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F774:
	add r6, #0x78
	ldr r2, [r0, r6]
	bl SetBattlerVar
	pop {r4, r5, r6, pc}
_0224F77E:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0224F784: .word 0xF87FFFFF
_0224F788: .word 0xF7FFFFFF
_0224F78C: .word 0xEFFFFFFF
_0224F790: .word 0xDFFFFFFF
	thumb_func_end SetBattlerVar

	thumb_func_start ov12_0224F794
ov12_0224F794: ; 0x0224F794
	push {r4, lr}
	mov r4, #0xb5
	lsl r4, r4, #6
	add r4, r0, r4
	mov r0, #0xc0
	mul r0, r1
	add r1, r2, #0
	add r0, r4, r0
	add r2, r3, #0
	bl ov12_0224F7AC
	pop {r4, pc}
	thumb_func_end ov12_0224F794

	thumb_func_start ov12_0224F7AC
ov12_0224F7AC: ; 0x0224F7AC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0x62
	bls _0224F7B8
	b _0224FC02
_0224F7B8:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224F7C4: ; jump table
	.short _0224FC02 - _0224F7C4 - 2 ; case 0
	.short _0224F88A - _0224F7C4 - 2 ; case 1
	.short _0224F892 - _0224F7C4 - 2 ; case 2
	.short _0224F89A - _0224F7C4 - 2 ; case 3
	.short _0224F8A2 - _0224F7C4 - 2 ; case 4
	.short _0224F8AA - _0224F7C4 - 2 ; case 5
	.short _0224FC02 - _0224F7C4 - 2 ; case 6
	.short _0224FC02 - _0224F7C4 - 2 ; case 7
	.short _0224FC02 - _0224F7C4 - 2 ; case 8
	.short _0224FC02 - _0224F7C4 - 2 ; case 9
	.short _0224F8B2 - _0224F7C4 - 2 ; case 10
	.short _0224F8CA - _0224F7C4 - 2 ; case 11
	.short _0224F8E0 - _0224F7C4 - 2 ; case 12
	.short _0224F8F6 - _0224F7C4 - 2 ; case 13
	.short _0224F90C - _0224F7C4 - 2 ; case 14
	.short _0224F922 - _0224F7C4 - 2 ; case 15
	.short _0224FC02 - _0224F7C4 - 2 ; case 16
	.short _0224FC02 - _0224F7C4 - 2 ; case 17
	.short _0224F938 - _0224F7C4 - 2 ; case 18
	.short _0224F938 - _0224F7C4 - 2 ; case 19
	.short _0224F938 - _0224F7C4 - 2 ; case 20
	.short _0224F938 - _0224F7C4 - 2 ; case 21
	.short _0224F938 - _0224F7C4 - 2 ; case 22
	.short _0224F938 - _0224F7C4 - 2 ; case 23
	.short _0224F938 - _0224F7C4 - 2 ; case 24
	.short _0224F938 - _0224F7C4 - 2 ; case 25
	.short _0224FC02 - _0224F7C4 - 2 ; case 26
	.short _0224FC02 - _0224F7C4 - 2 ; case 27
	.short _0224FC02 - _0224F7C4 - 2 ; case 28
	.short _0224FC02 - _0224F7C4 - 2 ; case 29
	.short _0224FC02 - _0224F7C4 - 2 ; case 30
	.short _0224F956 - _0224F7C4 - 2 ; case 31
	.short _0224F956 - _0224F7C4 - 2 ; case 32
	.short _0224F956 - _0224F7C4 - 2 ; case 33
	.short _0224F956 - _0224F7C4 - 2 ; case 34
	.short _0224F97C - _0224F7C4 - 2 ; case 35
	.short _0224F97C - _0224F7C4 - 2 ; case 36
	.short _0224F97C - _0224F7C4 - 2 ; case 37
	.short _0224F97C - _0224F7C4 - 2 ; case 38
	.short _0224FC02 - _0224F7C4 - 2 ; case 39
	.short _0224FC02 - _0224F7C4 - 2 ; case 40
	.short _0224FC02 - _0224F7C4 - 2 ; case 41
	.short _0224FC02 - _0224F7C4 - 2 ; case 42
	.short _0224F988 - _0224F7C4 - 2 ; case 43
	.short _0224F996 - _0224F7C4 - 2 ; case 44
	.short _0224FC02 - _0224F7C4 - 2 ; case 45
	.short _0224FC02 - _0224F7C4 - 2 ; case 46
	.short _0224F9B2 - _0224F7C4 - 2 ; case 47
	.short _0224F9C4 - _0224F7C4 - 2 ; case 48
	.short _0224FC02 - _0224F7C4 - 2 ; case 49
	.short _0224F9CC - _0224F7C4 - 2 ; case 50
	.short _0224F9D4 - _0224F7C4 - 2 ; case 51
	.short _0224FC02 - _0224F7C4 - 2 ; case 52
	.short _0224FC02 - _0224F7C4 - 2 ; case 53
	.short _0224FC02 - _0224F7C4 - 2 ; case 54
	.short _0224FC02 - _0224F7C4 - 2 ; case 55
	.short _0224FC02 - _0224F7C4 - 2 ; case 56
	.short _0224FC02 - _0224F7C4 - 2 ; case 57
	.short _0224FC02 - _0224F7C4 - 2 ; case 58
	.short _0224FC02 - _0224F7C4 - 2 ; case 59
	.short _0224FC02 - _0224F7C4 - 2 ; case 60
	.short _0224F9DC - _0224F7C4 - 2 ; case 61
	.short _0224F9FA - _0224F7C4 - 2 ; case 62
	.short _0224FA18 - _0224F7C4 - 2 ; case 63
	.short _0224FA36 - _0224F7C4 - 2 ; case 64
	.short _0224FA52 - _0224F7C4 - 2 ; case 65
	.short _0224FA6E - _0224F7C4 - 2 ; case 66
	.short _0224FA8A - _0224F7C4 - 2 ; case 67
	.short _0224FAA6 - _0224F7C4 - 2 ; case 68
	.short _0224FAC2 - _0224F7C4 - 2 ; case 69
	.short _0224FADE - _0224F7C4 - 2 ; case 70
	.short _0224FAFA - _0224F7C4 - 2 ; case 71
	.short _0224FC02 - _0224F7C4 - 2 ; case 72
	.short _0224FC02 - _0224F7C4 - 2 ; case 73
	.short _0224FC02 - _0224F7C4 - 2 ; case 74
	.short _0224FC02 - _0224F7C4 - 2 ; case 75
	.short _0224FC02 - _0224F7C4 - 2 ; case 76
	.short _0224FC02 - _0224F7C4 - 2 ; case 77
	.short _0224FB16 - _0224F7C4 - 2 ; case 78
	.short _0224FB32 - _0224F7C4 - 2 ; case 79
	.short _0224FB4E - _0224F7C4 - 2 ; case 80
	.short _0224FC02 - _0224F7C4 - 2 ; case 81
	.short _0224FC02 - _0224F7C4 - 2 ; case 82
	.short _0224FC02 - _0224F7C4 - 2 ; case 83
	.short _0224FC02 - _0224F7C4 - 2 ; case 84
	.short _0224FC02 - _0224F7C4 - 2 ; case 85
	.short _0224FC02 - _0224F7C4 - 2 ; case 86
	.short _0224FB6A - _0224F7C4 - 2 ; case 87
	.short _0224FB78 - _0224F7C4 - 2 ; case 88
	.short _0224FB86 - _0224F7C4 - 2 ; case 89
	.short _0224FB94 - _0224F7C4 - 2 ; case 90
	.short _0224FC02 - _0224F7C4 - 2 ; case 91
	.short _0224FC02 - _0224F7C4 - 2 ; case 92
	.short _0224FC02 - _0224F7C4 - 2 ; case 93
	.short _0224FC02 - _0224F7C4 - 2 ; case 94
	.short _0224FBA2 - _0224F7C4 - 2 ; case 95
	.short _0224FBB0 - _0224F7C4 - 2 ; case 96
	.short _0224FBC8 - _0224F7C4 - 2 ; case 97
	.short _0224FBE0 - _0224F7C4 - 2 ; case 98
_0224F88A:
	ldrh r0, [r4, #2]
	add r0, r0, r5
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0224F892:
	ldrh r0, [r4, #4]
	add r0, r0, r5
	strh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0224F89A:
	ldrh r0, [r4, #6]
	add r0, r0, r5
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_0224F8A2:
	ldrh r0, [r4, #8]
	add r0, r0, r5
	strh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0224F8AA:
	ldrh r0, [r4, #0xa]
	add r0, r0, r5
	strh r0, [r4, #0xa]
	pop {r4, r5, r6, pc}
_0224F8B2:
	ldr r2, [r4, #0x14]
	mov r1, #0x1f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	add r2, r1, r5
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F8CA:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC08 ; =0xFFFFFC1F
	and r0, r1
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F8E0:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC0C ; =0xFFFF83FF
	and r0, r1
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x11
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F8F6:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC10 ; =0xFFF07FFF
	and r0, r1
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xc
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F90C:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC14 ; =0xFE0FFFFF
	and r0, r1
	lsl r1, r1, #7
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #7
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F922:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC18 ; =0xC1FFFFFF
	and r0, r1
	lsl r1, r1, #2
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #2
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F938:
	add r4, #0x18
	sub r1, #0x12
	ldrsb r0, [r4, r1]
	add r0, r5, r0
	bpl _0224F948
	mov r0, #0
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F948:
	cmp r0, #0xc
	ble _0224F952
	mov r0, #0xc
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F952:
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F956:
	add r6, r1, #0
	sub r6, #0x1f
	lsl r0, r6, #1
	add r1, r4, r6
	add r0, r4, r0
	add r1, #0x30
	ldrh r0, [r0, #0xc]
	ldrb r1, [r1]
	bl GetMoveMaxPP
	add r4, #0x2c
	ldrb r1, [r4, r6]
	add r1, r5, r1
	cmp r1, r0
	ble _0224F978
	strb r0, [r4, r6]
	pop {r4, r5, r6, pc}
_0224F978:
	strb r1, [r4, r6]
	pop {r4, r5, r6, pc}
_0224F97C:
	add r4, #0x30
	sub r1, #0x23
	ldrb r0, [r4, r1]
	add r0, r0, r5
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F988:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r4, #0x34
	add r0, r0, r5
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224F996:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	add r0, r0, r5
	cmp r0, #0xff
	ble _0224F9A6
	mov r0, #0xff
	b _0224F9AC
_0224F9A6:
	cmp r0, #0
	bge _0224F9AC
	mov r0, #0
_0224F9AC:
	add r4, #0x35
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224F9B2:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	add r0, r0, r5
	cmp r0, r1
	bls _0224F9C0
	str r1, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_0224F9C0:
	str r0, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_0224F9C4:
	ldr r0, [r4, #0x50]
	add r0, r0, r5
	str r0, [r4, #0x50]
	pop {r4, r5, r6, pc}
_0224F9CC:
	ldr r0, [r4, #0x64]
	add r0, r0, r5
	str r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_0224F9D4:
	ldr r0, [r4, #0x68]
	add r0, r0, r5
	str r0, [r4, #0x68]
	pop {r4, r5, r6, pc}
_0224F9DC:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0]
	mov r1, #7
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1d
	lsr r1, r1, #0x1d
	add r2, r1, r5
	mov r1, #7
	and r1, r2
	orr r0, r1
	add r4, #0x88
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224F9FA:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0]
	mov r1, #0x38
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1a
	orr r0, r1
	add r4, #0x88
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA18:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0]
	mov r1, #0xc0
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r0, r1
	add r4, #0x88
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA36:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC1C ; =0xFFFFF8FF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x15
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA52:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC20 ; =0xFFFFE7FF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x13
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA6E:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC24 ; =0xFFFF9FFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x11
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA8A:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC28 ; =0xFFFC7FFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0xe
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xe
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FAA6:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC2C ; =0xFFE3FFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xb
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FAC2:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC30 ; =0xFF1FFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #8
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #8
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FADE:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC34 ; =0xF8FFFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #5
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #5
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FAFA:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC38 ; =0xC7FFFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #2
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #2
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB16:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224FC3C ; =0xFFFFE3FF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x13
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB32:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224FC40 ; =0xFFFF1FFF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB4E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224FC44 ; =0xFFF8FFFF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xd
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB6A:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, #0x90
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB78:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB86:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	add r4, #0x98
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB94:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	add r4, #0xa0
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FBA2:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r4, #0xbc
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FBB0:
	ldr r2, [r4, #0x28]
	mov r1, #0x40
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1f
	add r1, r1, r5
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_0224FBC8:
	ldr r2, [r4, #0x28]
	mov r1, #0x80
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1f
	add r1, r1, r5
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_0224FBE0:
	add r0, r4, #0
	add r0, #0x26
	ldrb r2, [r0]
	mov r1, #0x1f
	add r4, #0x26
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FC02:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0224FC08: .word 0xFFFFFC1F
_0224FC0C: .word 0xFFFF83FF
_0224FC10: .word 0xFFF07FFF
_0224FC14: .word 0xFE0FFFFF
_0224FC18: .word 0xC1FFFFFF
_0224FC1C: .word 0xFFFFF8FF
_0224FC20: .word 0xFFFFE7FF
_0224FC24: .word 0xFFFF9FFF
_0224FC28: .word 0xFFFC7FFF
_0224FC2C: .word 0xFFE3FFFF
_0224FC30: .word 0xFF1FFFFF
_0224FC34: .word 0xF8FFFFFF
_0224FC38: .word 0xC7FFFFFF
_0224FC3C: .word 0xFFFFE3FF
_0224FC40: .word 0xFFFF1FFF
_0224FC44: .word 0xFFF8FFFF
	thumb_func_end ov12_0224F7AC

	thumb_func_start ov12_0224FC48
ov12_0224FC48: ; 0x0224FC48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp, #4]
	ldr r0, [sp, #0x80]
	str r3, [sp, #0xc]
	str r0, [sp, #0x80]
	mov r0, #0
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x64]
	str r2, [sp, #8]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x64]
	ldr r3, _0224FF44 ; =0x00002D8C
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x64]
	add r5, r1, #0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x34]
	mov r0, #0xc0
	mul r2, r0
	str r2, [sp, #0x18]
	add r2, r5, r3
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x68]
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _0224FCA0
	ldr r2, [sp, #0xc]
	mul r0, r2
	add r0, r5, r0
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _0224FCA0
	add sp, #0x6c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224FCA0:
	cmp r1, #0
	beq _0224FCBA
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224FF44 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224FCBA
	add sp, #0x6c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224FCBA:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl GetBattlerAbility
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl GetBattlerAbility
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl GetBattlerHeldItemEffect
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl GetBattlerHeldItemEffect
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x18]
	ldr r2, _0224FF48 ; =0x00002D5B
	add r0, r5, r0
	ldrsb r4, [r0, r2]
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	str r1, [sp, #0x14]
	ldrsb r7, [r0, r2]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x56
	bne _0224FD3C
	sub r0, r4, #6
	lsl r0, r0, #1
	add r4, r0, #6
	cmp r4, #0xc
	ble _0224FD36
	mov r4, #0xc
_0224FD36:
	cmp r4, #0
	bge _0224FD3C
	mov r4, #0
_0224FD3C:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x56
	bne _0224FD5A
	sub r0, r7, #6
	lsl r0, r0, #1
	add r7, r0, #6
	cmp r7, #0xc
	ble _0224FD54
	mov r7, #0xc
_0224FD54:
	cmp r7, #0
	bge _0224FD5A
	mov r7, #0
_0224FD5A:
	ldr r0, [sp, #0x18]
	lsl r1, r4, #1
	add r2, r5, r0
	ldr r0, _0224FF4C ; =0x00002D46
	ldrh r2, [r2, r0]
	ldr r0, _0224FF50 ; =ov12_0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0224FF54 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	lsl r1, r7, #1
	add r2, r5, r0
	ldr r0, _0224FF4C ; =0x00002D46
	ldrh r2, [r2, r0]
	ldr r0, _0224FF50 ; =ov12_0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0224FF54 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	add r4, r0, #0
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _0224FE02
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _0224FE02
	ldr r0, [sp, #0x2c]
	cmp r0, #0x21
	bne _0224FDC8
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	bne _0224FDDA
_0224FDC8:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x22
	bne _0224FDDC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224FDDC
_0224FDDA:
	lsl r6, r6, #1
_0224FDDC:
	ldr r0, [sp, #0x28]
	cmp r0, #0x21
	bne _0224FDEE
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	bne _0224FE00
_0224FDEE:
	ldr r0, [sp, #0x28]
	cmp r0, #0x22
	bne _0224FE02
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224FE02
_0224FE00:
	lsl r4, r4, #1
_0224FE02:
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r7, _0224FF58 ; =ov12_0226CB50
	add r0, r5, r0
	str r0, [sp, #0x1c]
_0224FE0E:
	ldr r2, [sp, #0x1c]
	ldr r1, _0224FF5C ; =0x00002DB8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl GetItemHoldEffect
	ldrb r1, [r7]
	cmp r1, r0
	bne _0224FE26
	lsr r6, r6, #1
	b _0224FE32
_0224FE26:
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #8
	blo _0224FE0E
_0224FE32:
	ldr r0, [sp, #0x58]
	cmp r0, #0x73
	bne _0224FE44
	mov r0, #0xf
	mul r0, r6
	mov r1, #0xa
	bl _u32_div_f
	add r6, r0, #0
_0224FE44:
	ldr r0, [sp, #0x58]
	cmp r0, #0x66
	bne _0224FE5A
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	cmp r0, #0x84
	bne _0224FE5A
	lsl r6, r6, #1
_0224FE5A:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x5f
	bne _0224FE7C
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _0224FF60 ; =0x00002DAC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0224FE7C
	mov r0, #0xf
	mul r0, r6
	mov r1, #0xa
	bl _u32_div_f
	add r6, r0, #0
	b _0224FE8C
_0224FE7C:
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _0224FF60 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0224FE8C
	lsr r6, r6, #2
_0224FE8C:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x70
	bne _0224FEA8
	ldr r1, [sp, #0x18]
	mov r0, #0x15
	add r2, r5, r1
	ldr r1, _0224FF64 ; =0x00002DD8
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #5
	bge _0224FEA8
	lsr r6, r6, #1
_0224FEA8:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x54
	bne _0224FEC6
	ldr r0, [sp, #0x18]
	add r2, r5, r0
	ldr r0, _0224FF68 ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #9
	lsr r1, r1, #0x1f
	beq _0224FEC6
	sub r0, #0x14
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _0224FEC6
	lsl r6, r6, #1
_0224FEC6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl BattleSys_GetFieldSide
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _0224FEE2
	lsl r6, r6, #1
_0224FEE2:
	ldr r0, [sp, #0x58]
	cmp r0, #0x34
	bne _0224FF20
	ldr r1, [sp, #0x54]
	mov r0, #0x64
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [sp, #8]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _0224FF6C ; =0x0000310C
	ldrh r0, [r2, r0]
	bl _s32_div_f
	cmp r1, #0
	bne _0224FF20
	mov r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0224FF20
	ldr r0, _0224FF68 ; =0x00002DCC
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x18]
	str r2, [r0, r1]
_0224FF20:
	ldr r0, [sp, #0x58]
	cmp r0, #0x2d
	bne _0224FFA4
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _0224FF3A
	ldr r0, [sp, #0x54]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
_0224FF3A:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224FF70 ; =0x00002D90
	b _0224FF74
	.balign 4, 0
_0224FF44: .word 0x00002D8C
_0224FF48: .word 0x00002D5B
_0224FF4C: .word 0x00002D46
_0224FF50: .word ov12_0226CB88
_0224FF54: .word ov12_0226CB89
_0224FF58: .word ov12_0226CB50
_0224FF5C: .word 0x00002DB8
_0224FF60: .word 0x00002DAC
_0224FF64: .word 0x00002DD8
_0224FF68: .word 0x00002DCC
_0224FF6C: .word 0x0000310C
_0224FF70: .word 0x00002D90
_0224FF74:
	add r1, r5, r1
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x54]
	bl _u32_div_f
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x18]
	ldr r1, [r2, r1]
	cmp r1, r0
	bhi _0224FFA4
	mov r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0224FFA4
	ldr r0, _0225026C ; =0x00002DCC
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x18]
	str r2, [r0, r1]
_0224FFA4:
	ldr r0, [sp, #0x58]
	cmp r0, #0x6b
	bne _0224FFAE
	mov r0, #1
	str r0, [sp, #0x38]
_0224FFAE:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r7, _02250270 ; =ov12_0226CB50
	add r0, r5, r0
	str r0, [sp, #0x20]
_0224FFBA:
	ldr r2, [sp, #0x20]
	ldr r1, _02250274 ; =0x00002DB8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl GetItemHoldEffect
	ldrb r1, [r7]
	cmp r1, r0
	bne _0224FFD2
	lsr r4, r4, #1
	b _0224FFDE
_0224FFD2:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blo _0224FFBA
_0224FFDE:
	ldr r0, [sp, #0x50]
	cmp r0, #0x73
	bne _0224FFF0
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
_0224FFF0:
	ldr r0, [sp, #0x50]
	cmp r0, #0x66
	bne _02250006
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	cmp r0, #0x84
	bne _02250006
	lsl r4, r4, #1
_02250006:
	ldr r0, [sp, #0x28]
	cmp r0, #0x5f
	bne _02250028
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, _02250278 ; =0x00002DAC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02250028
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
	b _02250038
_02250028:
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, _02250278 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02250038
	lsr r4, r4, #2
_02250038:
	ldr r0, [sp, #0x28]
	cmp r0, #0x70
	bne _02250054
	ldr r1, [sp, #0x14]
	mov r0, #0x15
	add r2, r5, r1
	ldr r1, _0225027C ; =0x00002DD8
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #5
	bge _02250054
	lsr r4, r4, #1
_02250054:
	ldr r0, [sp, #0x28]
	cmp r0, #0x54
	bne _02250072
	ldr r0, [sp, #0x14]
	add r2, r5, r0
	ldr r0, _0225026C ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #9
	lsr r1, r1, #0x1f
	beq _02250072
	sub r0, #0x14
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _02250072
	lsl r4, r4, #1
_02250072:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl BattleSys_GetFieldSide
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _0225008E
	lsl r4, r4, #1
_0225008E:
	ldr r0, [sp, #0x50]
	cmp r0, #0x34
	bne _022500CC
	ldr r1, [sp, #0x4c]
	mov r0, #0x64
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _02250280 ; =0x0000310C
	ldrh r0, [r2, r0]
	bl _s32_div_f
	cmp r1, #0
	bne _022500CC
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _022500CC
	ldr r0, _0225026C ; =0x00002DCC
	ldr r1, [sp, #0x14]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x14]
	str r2, [r0, r1]
_022500CC:
	ldr r0, [sp, #0x50]
	cmp r0, #0x2d
	bne _02250120
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _022500E6
	ldr r0, [sp, #0x4c]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
_022500E6:
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	add r7, r0, #0
	mul r7, r1
	ldr r0, _02250284 ; =0x00002D90
	add r1, r5, r7
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x4c]
	bl _u32_div_f
	ldr r1, _02250288 ; =0x00002D8C
	add r2, r5, r7
	ldr r2, [r2, r1]
	cmp r2, r0
	bhi _02250120
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _02250120
	add r1, #0x40
	add r0, r5, r1
	ldr r1, [sp, #0x14]
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x14]
	str r2, [r0, r1]
_02250120:
	ldr r0, [sp, #0x50]
	cmp r0, #0x6b
	bne _0225012A
	mov r0, #1
	str r0, [sp, #0x34]
_0225012A:
	ldr r0, [sp, #8]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0225028C ; =0x000021F0
	str r6, [r1, r0]
	ldr r1, [sp, #0xc]
	lsl r1, r1, #2
	add r1, r5, r1
	str r4, [r1, r0]
	ldr r1, [sp, #0x80]
	cmp r1, #0
	bne _022501E2
	ldr r1, [sp, #0xc]
	ldr r3, _02250290 ; =0x000030BC
	lsl r1, r1, #4
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #0x3c
	ldr r1, [r2, r1]
	sub r0, #0x3c
	str r1, [sp, #0x30]
	ldr r1, [sp, #8]
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r2, [r1, r3]
	ldr r1, [sp, #0xc]
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r7, [r1, r3]
	ldr r1, [sp, #8]
	lsl r1, r1, #4
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0225019A
	ldr r0, [sp, #8]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02250188
	mov r0, #0xa5
	str r0, [sp, #0x60]
	b _0225019A
_02250188:
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r2, #6
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x60]
_0225019A:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _022501CA
	ldr r0, [sp, #0xc]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _022501B8
	mov r0, #0xa5
	str r0, [sp, #0x5c]
	b _022501CA
_022501B8:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, r7, #6
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x5c]
_022501CA:
	ldr r0, [sp, #0x60]
	mov r1, #0xfa
	lsl r0, r0, #4
	add r0, r5, r0
	lsl r1, r1, #2
	ldrsb r0, [r0, r1]
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x5c]
	lsl r0, r0, #4
	add r0, r5, r0
	ldrsb r0, [r0, r1]
	str r0, [sp, #0x44]
_022501E2:
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x44]
	cmp r1, r0
	beq _022501EC
	b _02250352
_022501EC:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _02250218
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02250218
	cmp r6, r4
	bhs _02250202
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_02250202:
	cmp r6, r4
	bne _02250256
	ldr r0, [sp, #4]
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _02250256
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_02250218:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _0225022A
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0225022A
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_0225022A:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0225023C
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _0225023C
	mov r0, #0
	str r0, [sp, #0x64]
	b _0225035A
_0225023C:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02250294
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02250294
	cmp r6, r4
	bls _02250252
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_02250252:
	cmp r6, r4
	beq _02250258
_02250256:
	b _0225035A
_02250258:
	ldr r0, [sp, #4]
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
	nop
_0225026C: .word 0x00002DCC
_02250270: .word ov12_0226CB50
_02250274: .word 0x00002DB8
_02250278: .word 0x00002DAC
_0225027C: .word 0x00002DD8
_02250280: .word 0x0000310C
_02250284: .word 0x00002D90
_02250288: .word 0x00002D8C
_0225028C: .word 0x000021F0
_02250290: .word 0x000030BC
_02250294:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _022502A6
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _022502A6
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_022502A6:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _022502B8
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _022502B8
	mov r0, #0
	str r0, [sp, #0x64]
	b _0225035A
_022502B8:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	bne _022502E4
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	bne _022502E4
	cmp r6, r4
	bls _022502CE
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_022502CE:
	cmp r6, r4
	bne _0225035A
	ldr r0, [sp, #4]
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_022502E4:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	bne _022502F6
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	beq _022502F6
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_022502F6:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	beq _02250308
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	bne _02250308
	mov r0, #0
	str r0, [sp, #0x64]
	b _0225035A
_02250308:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0x10
	tst r0, r1
	beq _02250334
	cmp r6, r4
	bls _0225031E
	mov r0, #1
	str r0, [sp, #0x64]
_0225031E:
	cmp r6, r4
	bne _0225035A
	ldr r0, [sp, #4]
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_02250334:
	cmp r6, r4
	bhs _0225033C
	mov r0, #1
	str r0, [sp, #0x64]
_0225033C:
	cmp r6, r4
	bne _0225035A
	ldr r0, [sp, #4]
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_02250352:
	cmp r1, r0
	bge _0225035A
	mov r0, #1
	str r0, [sp, #0x64]
_0225035A:
	ldr r0, [sp, #0x64]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224FC48

	thumb_func_start ov12_02250360
ov12_02250360: ; 0x02250360
	asr r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	add r0, r0, r1
	mov r2, #0
	add r0, #0xa4
	str r2, [r0]
	bx lr
	thumb_func_end ov12_02250360

	thumb_func_start ov12_02250370
ov12_02250370: ; 0x02250370
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	add r5, r1, #0
	mov r4, #0
	bl BattleSys_GetBattleType
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	asr r0, r0, #1
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	add r6, r5, r0
	add r6, #0xa4
_02250396:
	add r0, r4, #0
	bl MaskOfFlagNo
	ldr r1, _022503E0 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _022503CC
	ldr r0, [sp]
	bl MaskOfFlagNo
	ldr r1, _022503E0 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _022503CC
	ldr r1, [sp, #4]
	ldr r0, _022503E4 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022503CC
	ldr r0, _022503E8 ; =0x0000219C
	add r1, r5, r4
	ldrb r0, [r1, r0]
	bl MaskOfFlagNo
	ldr r1, [r6]
	orr r0, r1
	str r0, [r6]
_022503CC:
	add r4, r4, #2
	cmp r7, #0x4a
	beq _022503DA
	cmp r7, #0x4b
	beq _022503DA
	cmp r4, #2
	ble _02250396
_022503DA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022503E0: .word 0x00003108
_022503E4: .word 0x00002D8C
_022503E8: .word 0x0000219C
	thumb_func_end ov12_02250370

	thumb_func_start ov12_022503EC
ov12_022503EC: ; 0x022503EC
	push {r4, r5, r6, lr}
	ldr r0, _02250478 ; =0x00002170
	add r5, r1, #0
	add r4, r2, #0
	ldr r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x1c
	mov r6, #0
	tst r0, r2
	beq _0225041E
	add r0, r5, #0
	mov r1, #1
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _02250478 ; =0x00002170
	add r1, r6, #0
	str r1, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _0225047C ; =0x801FDA49
	tst r0, r1
	bne _02250472
	mov r6, #1
	b _02250472
_0225041E:
	cmp r2, #0
	beq _02250472
	add r0, r5, #0
	mov r1, #1
	bl ov12_02258348
	str r0, [r4]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02250480 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225046C
	ldr r1, _02250484 ; =0x0000216C
	ldr r2, _0225047C ; =0x801FDA49
	ldr r0, [r5, r1]
	tst r2, r0
	beq _0225046A
	add r1, r1, #4
	mov r2, #2
	ldr r1, [r5, r1]
	lsl r2, r2, #0x16
	tst r2, r1
	beq _0225045C
	ldr r2, _02250488 ; =0x00040008
	tst r2, r0
	bne _0225046A
_0225045C:
	mov r2, #1
	lsl r2, r2, #0x1c
	tst r1, r2
	beq _0225046C
	ldr r1, _0225048C ; =0x00010001
	tst r0, r1
	beq _0225046C
_0225046A:
	mov r6, #1
_0225046C:
	ldr r0, _02250478 ; =0x00002170
	mov r1, #0
	str r1, [r5, r0]
_02250472:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02250478: .word 0x00002170
_0225047C: .word 0x801FDA49
_02250480: .word 0x00002D8C
_02250484: .word 0x0000216C
_02250488: .word 0x00040008
_0225048C: .word 0x00010001
	thumb_func_end ov12_022503EC

	thumb_func_start ov12_02250490
ov12_02250490: ; 0x02250490
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _022506B0 ; =0x00002174
	add r4, r2, #0
	ldr r2, [r5, r0]
	mov r1, #2
	lsl r1, r1, #0x1c
	add r3, r2, #0
	mov r6, #0
	tst r3, r1
	beq _022504C6
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	sub r0, #8
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _02250566
	mov r6, #1
	b _022506AA
_022504C6:
	lsr r3, r1, #5
	tst r3, r2
	beq _022504FA
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #0
	bne _02250566
	ldr r0, _022506B8 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _02250566
	mov r6, #1
	b _022506AA
_022504FA:
	lsr r3, r1, #4
	tst r3, r2
	beq _0225053C
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02250566
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #0
	bne _02250566
	ldr r0, _022506B8 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _02250566
	mov r6, #1
	b _022506AA
_0225053C:
	lsr r3, r1, #1
	tst r3, r2
	beq _0225056C
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02250568
_02250566:
	b _022506AA
_02250568:
	mov r6, #1
	b _022506AA
_0225056C:
	lsr r1, r1, #3
	tst r1, r2
	beq _022505F8
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x20
	ldr r0, _022506C0 ; =0x00003044
	bne _02250590
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r6, r0, #0x10
	b _0225059A
_02250590:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r6, [r1, r0]
_0225059A:
	cmp r6, #0
	bne _022505A2
	bl GF_AssertFail
_022505A2:
	ldr r0, [sp]
	bl BattleSys_Random
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r6
	bge _022505BE
	ldr r1, _022506C8 ; =0x0000213C
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x16
	orr r0, r2
	str r0, [r5, r1]
_022505BE:
	ldr r2, _022506B0 ; =0x00002174
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r1, _022506B0 ; =0x00002174
	mov r0, #0
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r2, [r0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _022505F4
	add r0, r1, #0
	sub r0, #0x38
	ldr r2, [r5, r0]
	ldr r0, _022506CC ; =0xFFBFFFFF
	sub r1, #0x38
	and r0, r2
	str r0, [r5, r1]
_022505F4:
	mov r6, #1
	b _022506AA
_022505F8:
	cmp r2, #0
	beq _0225067C
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x20
	ldr r0, _022506C0 ; =0x00003044
	bne _0225061A
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r7, r0, #0x10
	b _02250624
_0225061A:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r7, [r1, r0]
_02250624:
	cmp r7, #0
	bne _0225062C
	bl GF_AssertFail
_0225062C:
	ldr r0, [sp]
	bl BattleSys_Random
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, r7
	bge _022506AA
	ldr r2, _022506B0 ; =0x00002174
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	mov r1, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022506AA
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #0
	bne _022506AA
	ldr r0, _022506B8 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _022506AA
	mov r6, #1
	b _022506AA
_0225067C:
	add r0, r0, #4
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _022506AA
	add r0, r5, #0
	mov r1, #3
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506D0 ; =0x00002178
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022506AA
	mov r6, #1
_022506AA:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022506B0: .word 0x00002174
_022506B4: .word 0x801FDA49
_022506B8: .word 0x0000216C
_022506BC: .word 0x00002D8C
_022506C0: .word 0x00003044
_022506C4: .word 0x000003E5
_022506C8: .word 0x0000213C
_022506CC: .word 0xFFBFFFFF
_022506D0: .word 0x00002178
	thumb_func_end ov12_02250490

	thumb_func_start ov12_022506D4
ov12_022506D4: ; 0x022506D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0xff
	add r4, r1, #0
	add r5, r2, #0
	str r0, [sp, #0xc]
	cmp r3, #0
	beq _022506F0
	lsl r0, r3, #4
	add r1, r4, r0
	ldr r0, _0225099C ; =0x000003E6
	ldrh r0, [r1, r0]
	b _022506F2
_022506F0:
	ldr r0, [sp, #0x34]
_022506F2:
	cmp r0, #4
	bne _02250782
	add r0, r6, #0
	bl BattleSys_GetMaxBattlers
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl BattleSys_GetOpponentDataByBattlerId
	bl ov12_02261258
	ldr r1, _022509A0 ; =0x0000217E
	mov r2, #0
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	ldr r2, [sp, #8]
	cmp r1, r2
	bge _02250770
	mov r2, #1
	add r5, r0, #0
	and r5, r2
_0225071E:
	ldr r0, _022509A4 ; =0x000021EC
	add r1, r4, r1
	ldrb r7, [r1, r0]
	mov r0, #0xc0
	mul r0, r7
	add r1, r4, r0
	ldr r0, _022509A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225075E
	add r0, r6, #0
	add r1, r7, #0
	bl BattleSys_GetOpponentDataByBattlerId
	str r0, [sp]
	cmp r5, #0
	beq _0225074A
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0225075A
_0225074A:
	cmp r5, #0
	bne _0225075E
	ldr r0, [sp]
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0225075E
_0225075A:
	str r7, [sp, #0xc]
	b _02250770
_0225075E:
	ldr r0, _022509A0 ; =0x0000217E
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _022509A0 ; =0x0000217E
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0225071E
_02250770:
	ldr r1, _022509A0 ; =0x0000217E
	ldr r0, [sp, #8]
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _0225077C
	b _02250A0C
_0225077C:
	add r0, r2, #1
	strb r0, [r4, r1]
	b _02250A0C
_02250782:
	cmp r0, #8
	bne _022507D2
	add r0, r6, #0
	bl BattleSys_GetMaxBattlers
	add r2, r0, #0
	ldr r0, _022509A0 ; =0x0000217E
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r3, [r4, r0]
	cmp r3, r2
	bge _022507C4
	ldr r7, _022509A8 ; =0x00002D8C
_0225079C:
	ldr r1, _022509A4 ; =0x000021EC
	add r6, r4, r3
	ldrb r1, [r6, r1]
	mov r6, #0xc0
	mul r6, r1
	add r6, r4, r6
	ldr r6, [r6, r7]
	cmp r6, #0
	beq _022507B6
	cmp r1, r5
	beq _022507B6
	str r1, [sp, #0xc]
	b _022507C4
_022507B6:
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldr r1, _022509A0 ; =0x0000217E
	ldrb r3, [r4, r1]
	cmp r3, r2
	blt _0225079C
_022507C4:
	cmp r3, r2
	beq _022508B0
	ldr r0, _022509A0 ; =0x0000217E
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02250A0C
_022507D2:
	mov r1, #2
	lsl r1, r1, #8
	cmp r0, r1
	bne _02250820
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _02250820
	add r0, r6, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _0225081C
	add r0, r6, #0
	bl BattleSys_Random
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0225081C
	add r0, r6, #0
	add r1, r5, #0
	bl BattleSys_GetBattlerIdPartner
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0xc]
	ldr r0, _022509A8 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022508B0
	str r5, [sp, #0xc]
	b _02250A0C
_0225081C:
	str r5, [sp, #0xc]
	b _02250A0C
_02250820:
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bne _0225083C
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _0225083C
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02253DA0
	str r0, [sp, #0xc]
	b _02250A0C
_0225083C:
	cmp r0, #0x80
	bne _0225084E
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02253DA0
	str r0, [sp, #0xc]
	b _02250A0C
_0225084E:
	cmp r0, #0x10
	beq _0225085E
	cmp r0, #0x20
	beq _0225085E
	cmp r0, #1
	beq _0225085E
	cmp r0, #0x40
	bne _02250862
_0225085E:
	str r5, [sp, #0xc]
	b _02250A0C
_02250862:
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _02250886
	add r0, r6, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _02250882
	add r0, r6, #0
	add r1, r5, #0
	bl BattleSys_GetBattlerIdPartner
	str r0, [sp, #0xc]
	b _02250A0C
_02250882:
	str r5, [sp, #0xc]
	b _02250A0C
_02250886:
	lsl r1, r1, #1
	cmp r0, r1
	bne _022508BA
	add r0, r6, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _022508B6
	lsl r0, r5, #4
	add r1, r4, r0
	ldr r0, _022509AC ; =0x000021AC
	ldr r0, [r1, r0]
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0xc]
	ldr r0, _022509A8 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022508B2
_022508B0:
	b _02250A0C
_022508B2:
	str r5, [sp, #0xc]
	b _02250A0C
_022508B6:
	str r5, [sp, #0xc]
	b _02250A0C
_022508BA:
	cmp r0, #2
	beq _022508C4
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _02250986
_022508C4:
	add r0, r6, #0
	bl BattleSys_GetBattleType
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl BattleSys_GetFieldSide
	add r7, r0, #0
	mov r1, #1
	eor r7, r1
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov12_0223ABB8
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	bl ov12_0223ABB8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #2
	tst r0, r1
	beq _0225096E
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r4, r0
	lsl r0, r7, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02250920
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _022509A8 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02250920
	str r0, [sp, #0xc]
	b _02250A0C
_02250920:
	ldr r0, [sp, #0x14]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	ldr r2, _022509A8 ; =0x00002D8C
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02250950
	ldr r3, [sp, #0x18]
	mul r1, r3
	add r1, r4, r1
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _02250950
	add r0, r6, #0
	bl BattleSys_Random
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	str r0, [sp, #0xc]
	b _02250A0C
_02250950:
	cmp r0, #0
	beq _0225095A
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	b _02250A0C
_0225095A:
	ldr r2, [sp, #0x18]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _022509A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250A0C
	str r2, [sp, #0xc]
	b _02250A0C
_0225096E:
	mov r0, #1
	add r2, r5, #0
	eor r2, r0
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _022509A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250A0C
	str r2, [sp, #0xc]
	b _02250A0C
_02250986:
	add r0, r6, #0
	add r1, r5, #0
	bl BattleSys_GetFieldSide
	mov r1, #1
	eor r0, r1
	str r0, [sp, #4]
	lsl r0, r5, #4
	add r1, r4, r0
	ldr r0, _022509AC ; =0x000021AC
	b _022509B0
	.balign 4, 0
_0225099C: .word 0x000003E6
_022509A0: .word 0x0000217E
_022509A4: .word 0x000021EC
_022509A8: .word 0x00002D8C
_022509AC: .word 0x000021AC
_022509B0:
	ldr r7, [r1, r0]
	add r0, r6, #0
	bl BattleSys_GetMaxBattlers
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _022509E0
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02250A14 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _022509E0
	str r0, [sp, #0xc]
	b _02250A0C
_022509E0:
	mov r0, #0xc0
	mul r0, r7
	add r1, r4, r0
	ldr r0, _02250A14 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022509F2
	str r7, [sp, #0xc]
	b _02250A0C
_022509F2:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02253DA0
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02250A14 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02250A0C
	str r0, [sp, #0xc]
_02250A0C:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02250A14: .word 0x00002D8C
	thumb_func_end ov12_022506D4

	thumb_func_start ov12_02250A18
ov12_02250A18: ; 0x02250A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x6c]
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0xff
	beq _02250A72
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x60
	beq _02250A72
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x68
	beq _02250A72
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl BattleSys_GetFieldSide
	add r2, r0, #0
	mov r1, #1
	mov r0, #0x71
	eor r2, r1
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r2, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02250A74
	lsl r0, r0, #9
	lsr r1, r0, #0x1e
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02250BA8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250A74
_02250A72:
	b _02250BA4
_02250A74:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov12_02258688
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02250A90
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02250BAC ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
_02250A90:
	ldr r0, [sp, #4]
	bl BattleSys_GetMaxBattlers
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0xd
	bne _02250B20
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02250BB0 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02250AAE
	cmp r0, #2
	bne _02250B20
_02250AAE:
	ldr r0, _02250BB4 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02250B20
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	add r3, r7, #0
	bl CheckAbilityActive
	cmp r0, #0
	beq _02250B20
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _02250B00
_02250AD4:
	ldr r0, _02250BB8 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x1f
	bne _02250AF8
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02250BA8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250AF8
	cmp r7, r4
	bne _02250B00
_02250AF8:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02250AD4
_02250B00:
	ldr r0, [r5, #0x6c]
	cmp r4, r0
	beq _02250BA4
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r5, r0
	mov r0, #0x1c
	add r2, r4, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #2
	orr r0, r1
	str r0, [r3, r2]
	add sp, #0x10
	str r4, [r5, #0x6c]
	pop {r3, r4, r5, r6, r7, pc}
_02250B20:
	ldr r0, [sp, #0xc]
	cmp r0, #0xb
	bne _02250BA4
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02250BB0 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02250B36
	cmp r0, #2
	bne _02250BA4
_02250B36:
	ldr r0, _02250BB4 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02250BA4
	mov r0, #0x72
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	add r3, r7, #0
	bl CheckAbilityActive
	cmp r0, #0
	beq _02250BA4
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _02250B88
_02250B5C:
	ldr r0, _02250BB8 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x72
	bne _02250B80
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02250BA8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250B80
	cmp r7, r4
	bne _02250B88
_02250B80:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02250B5C
_02250B88:
	ldr r0, [r5, #0x6c]
	cmp r4, r0
	beq _02250BA4
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r5, r0
	mov r0, #0x1c
	add r2, r4, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #4
	orr r0, r1
	str r0, [r3, r2]
	str r4, [r5, #0x6c]
_02250BA4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02250BA8: .word 0x00002D8C
_02250BAC: .word 0x000003E2
_02250BB0: .word 0x000003E6
_02250BB4: .word 0x0000213C
_02250BB8: .word 0x000021EC
	thumb_func_end ov12_02250A18

	thumb_func_start ov12_02250BBC
ov12_02250BBC: ; 0x02250BBC
	push {r3, r4, r5, lr}
	ldr r0, _02250C38 ; =0x0000216C
	add r4, r1, #0
	ldr r1, [r4, r0]
	ldr r0, _02250C3C ; =0x801FDA49
	mov r2, #0
	tst r0, r1
	bne _02250BFA
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	lsl r5, r3, #0x1e
	lsr r5, r5, #0x1f
	beq _02250BFA
	mov r2, #2
	bic r3, r2
	str r3, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb4
	bl ReadBattleScriptFromNarc
	ldr r0, [r4, #8]
	mov r2, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02250BFA:
	ldr r0, _02250C38 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _02250C3C ; =0x801FDA49
	tst r0, r1
	bne _02250C32
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	lsl r5, r3, #0x1d
	lsr r5, r5, #0x1f
	beq _02250C32
	mov r2, #4
	bic r3, r2
	str r3, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb4
	bl ReadBattleScriptFromNarc
	ldr r0, [r4, #8]
	mov r2, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02250C32:
	add r0, r2, #0
	pop {r3, r4, r5, pc}
	nop
_02250C38: .word 0x0000216C
_02250C3C: .word 0x801FDA49
	thumb_func_end ov12_02250BBC

	thumb_func_start CopyBattleMonToPartyMon
CopyBattleMonToPartyMon: ; 0x02250C40
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0xc0
	add r5, r1, #0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02250C6C ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _02250C60
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov12_022585A8
_02250C60:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl BattleController_EmitBattleMonToPartyMonCopy
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02250C6C: .word 0x00002DB8
	thumb_func_end CopyBattleMonToPartyMon

	thumb_func_start LockBattlerIntoCurrentMove
LockBattlerIntoCurrentMove: ; 0x02250C70
	push {r4, r5}
	ldr r0, _02250C98 ; =0x00002DB0
	add r4, r2, #0
	add r5, r1, r0
	mov r0, #0xc0
	mul r4, r0
	mov r0, #1
	ldr r3, [r5, r4]
	lsl r0, r0, #0xc
	orr r0, r3
	str r0, [r5, r4]
	ldr r0, _02250C9C ; =0x00003044
	lsl r2, r2, #2
	ldr r3, [r1, r0]
	add r1, r1, r2
	add r0, #8
	str r3, [r1, r0]
	pop {r4, r5}
	bx lr
	nop
_02250C98: .word 0x00002DB0
_02250C9C: .word 0x00003044
	thumb_func_end LockBattlerIntoCurrentMove

	thumb_func_start UnlockBattlerOutOfCurrentMove
UnlockBattlerOutOfCurrentMove: ; 0x02250CA0
	push {r4, r5}
	ldr r4, _02250CE4 ; =0x00002DB0
	add r3, r2, #0
	mov r0, #0xc0
	mul r3, r0
	add r0, r1, r4
	ldr r5, [r0, r3]
	ldr r2, _02250CE8 ; =0xFFFFEFFF
	and r2, r5
	str r2, [r0, r3]
	ldr r5, [r0, r3]
	ldr r2, _02250CEC ; =0xFFFFFCFF
	and r2, r5
	str r2, [r0, r3]
	add r0, r4, #0
	add r0, #0x10
	add r5, r1, r0
	ldr r2, [r5, r3]
	ldr r0, _02250CF0 ; =0xDFFBFF3F
	add r4, #0x18
	and r0, r2
	str r0, [r5, r3]
	add r2, r1, r4
	ldr r1, [r2, r3]
	ldr r0, _02250CF4 ; =0xFFFC7FFF
	and r0, r1
	str r0, [r2, r3]
	ldr r1, [r2, r3]
	ldr r0, _02250CF8 ; =0xFFE3FFFF
	and r0, r1
	str r0, [r2, r3]
	pop {r4, r5}
	bx lr
	nop
_02250CE4: .word 0x00002DB0
_02250CE8: .word 0xFFFFEFFF
_02250CEC: .word 0xFFFFFCFF
_02250CF0: .word 0xDFFBFF3F
_02250CF4: .word 0xFFFC7FFF
_02250CF8: .word 0xFFE3FFFF
	thumb_func_end UnlockBattlerOutOfCurrentMove

	thumb_func_start ov12_02250CFC
ov12_02250CFC: ; 0x02250CFC
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	ldr r0, _02250D48 ; =0x00002DAC
	ldr r0, [r1, r0]
	mov r1, #7
	tst r1, r0
	beq _02250D10
	mov r0, #1
	bx lr
_02250D10:
	mov r1, #8
	tst r1, r0
	beq _02250D1A
	mov r0, #2
	bx lr
_02250D1A:
	mov r1, #0x10
	tst r1, r0
	beq _02250D24
	mov r0, #3
	bx lr
_02250D24:
	mov r1, #0x20
	tst r1, r0
	beq _02250D2E
	mov r0, #4
	bx lr
_02250D2E:
	mov r1, #0x40
	tst r1, r0
	beq _02250D38
	mov r0, #5
	bx lr
_02250D38:
	mov r1, #0x80
	tst r0, r1
	beq _02250D42
	mov r0, #2
	bx lr
_02250D42:
	mov r0, #0
	bx lr
	nop
_02250D48: .word 0x00002DAC
	thumb_func_end ov12_02250CFC

	thumb_func_start ov12_02250D4C
ov12_02250D4C: ; 0x02250D4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	bl BattleSys_GetBattleType
	mov r1, #0x84
	tst r1, r0
	beq _02250D64
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02250D64:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	bne _02250D72
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02250D72:
	mov r2, #2
	tst r0, r2
	beq _02250D7E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02250D7E:
	ldr r0, [sp]
	bl BattleSys_GetTrainerIndex
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
_02250D8A:
	ldr r0, [sp, #4]
	cmp r0, #4
	bls _02250D92
	b _02250F28
_02250D92:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250D9E: ; jump table
	.short _02250DA8 - _02250D9E - 2 ; case 0
	.short _02250DEC - _02250D9E - 2 ; case 1
	.short _02250E34 - _02250D9E - 2 ; case 2
	.short _02250EA8 - _02250D9E - 2 ; case 3
	.short _02250F28 - _02250D9E - 2 ; case 4
_02250DA8:
	ldr r0, _02250F38 ; =0x00002E7C
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _02250DE4
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r7, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02250DE4
	ldr r0, [sp, #8]
	mov r1, #0xd
	mov r2, #5
	bl TrainerMessageWithIdPairExists
	cmp r0, #0
	beq _02250DE4
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r7, r1]
	mov r0, #0x20
	orr r0, r2
	str r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xd
	lsl r0, r0, #4
	str r1, [r7, r0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250DE4:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _02250F28
_02250DEC:
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #2
	ldrb r2, [r7, r1]
	tst r0, r2
	bne _02250E2C
	add r0, r1, #0
	sub r0, #0x31
	sub r1, #0x2d
	ldr r2, [r7, r0]
	ldr r0, [r7, r1]
	lsr r0, r0, #1
	cmp r2, r0
	bhi _02250E2C
	ldr r0, [sp, #8]
	mov r1, #0xe
	mov r2, #5
	bl TrainerMessageWithIdPairExists
	cmp r0, #0
	beq _02250E2C
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #2
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xe
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250E2C:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _02250F28
_02250E34:
	ldr r0, _02250F3C ; =0x00002E7D
	ldrb r1, [r7, r0]
	mov r0, #3
	tst r0, r1
	bne _02250EA0
	ldr r0, [sp]
	mov r1, #1
	bl BattleSys_GetParty
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	bl GetPartyCount
	cmp r0, #0
	ble _02250E76
_02250E54:
	add r0, r5, #0
	add r1, r4, #0
	bl GetPartyMonByIndex
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02250E6A
	add r6, r6, #1
_02250E6A:
	add r0, r5, #0
	add r4, r4, #1
	bl GetPartyCount
	cmp r4, r0
	blt _02250E54
_02250E76:
	cmp r6, #1
	bne _02250EA0
	ldr r0, [sp, #8]
	mov r1, #0xf
	mov r2, #5
	bl TrainerMessageWithIdPairExists
	cmp r0, #0
	beq _02250EA0
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #3
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xf
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250EA0:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _02250F28
_02250EA8:
	ldr r0, _02250F3C ; =0x00002E7D
	ldrb r1, [r7, r0]
	mov r0, #4
	tst r0, r1
	bne _02250F22
	ldr r0, [sp]
	mov r1, #1
	bl BattleSys_GetParty
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	bl GetPartyCount
	cmp r0, #0
	ble _02250EEA
_02250EC8:
	add r0, r5, #0
	add r1, r4, #0
	bl GetPartyMonByIndex
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02250EDE
	add r6, r6, #1
_02250EDE:
	add r0, r5, #0
	add r4, r4, #1
	bl GetPartyCount
	cmp r4, r0
	blt _02250EC8
_02250EEA:
	cmp r6, #1
	bne _02250F22
	ldr r0, _02250F40 ; =0x00002E4C
	ldr r1, [r7, r0]
	add r0, r0, #4
	ldr r0, [r7, r0]
	lsr r0, r0, #1
	cmp r1, r0
	bhi _02250F22
	ldr r0, [sp, #8]
	mov r1, #0x10
	mov r2, #5
	bl TrainerMessageWithIdPairExists
	cmp r0, #0
	beq _02250F22
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #4
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0x10
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250F22:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02250F28:
	ldr r0, [sp, #4]
	cmp r0, #4
	beq _02250F30
	b _02250D8A
_02250F30:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02250F38: .word 0x00002E7C
_02250F3C: .word 0x00002E7D
_02250F40: .word 0x00002E4C
	thumb_func_end ov12_02250D4C

	thumb_func_start ov12_02250F44
ov12_02250F44: ; 0x02250F44
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02251024 ; =0x00002144
	add r5, r0, #0
	mov r4, #0
	add r0, r1, #0
	str r4, [r5, r1]
	mov r2, #1
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x10
	str r4, [r5, r0]
	add r0, r1, #0
	mov r2, #0xa
	add r0, #0x14
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x20
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x28
	str r4, [r5, r0]
	mov r0, #0xff
	add r2, r1, #0
	str r0, [r5, #0x74]
	add r2, #0x2c
	str r4, [r5, r2]
	add r2, r1, #0
	add r2, #0x30
	str r4, [r5, r2]
	add r2, r1, #0
	add r2, #0x34
	str r4, [r5, r2]
	add r2, r5, #0
	add r2, #0x88
	str r4, [r2]
	add r2, r5, #0
	add r2, #0x8c
	str r4, [r2]
	add r2, r5, #0
	add r2, #0x94
	str r0, [r2]
	add r0, r1, #0
	add r0, #0x38
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x39
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x3a
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x3c
	str r4, [r5, r0]
	add r0, r1, #0
	str r4, [r5, #0x38]
	add r0, #0x40
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x44
	str r4, [r5, r0]
	str r4, [r5, #0x10]
	str r4, [r5, #0x18]
	str r4, [r5, #0x20]
	str r4, [r5, #0x28]
	str r4, [r5, #0x30]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x48]
	str r4, [r5, #0x4c]
	str r4, [r5, #0x50]
	add r0, r1, #0
	str r4, [r5, #0x54]
	sub r0, #8
	ldr r2, [r5, r0]
	ldr r0, _02251028 ; =0xFF800000
	mov r7, #6
	and r2, r0
	add r0, r1, #0
	sub r0, #8
	str r2, [r5, r0]
	sub r0, r1, #4
	ldr r2, [r5, r0]
	ldr r0, _0225102C ; =0xFFFFFEA1
	and r2, r0
	sub r0, r1, #4
	str r2, [r5, r0]
	ldr r0, _02251030 ; =0x00003120
	strb r4, [r5, r0]
	mov r0, #0xb5
	lsl r0, r0, #2
	add r6, r5, r0
_02251008:
	mov r0, #0
	add r1, r6, #0
	mov r2, #0x1c
	bl MIi_CpuClearFast
	add r1, r5, r4
	ldr r0, _02251034 ; =0x000021A4
	add r4, r4, #1
	add r6, #0x1c
	strb r7, [r1, r0]
	cmp r4, #4
	blt _02251008
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02251024: .word 0x00002144
_02251028: .word 0xFF800000
_0225102C: .word 0xFFFFFEA1
_02251030: .word 0x00003120
_02251034: .word 0x000021A4
	thumb_func_end ov12_02250F44

	thumb_func_start ov12_02251038
ov12_02251038: ; 0x02251038
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_02251042:
	ldr r0, _022510A4 ; =0x0000306C
	mov r1, #0xff
	strh r1, [r5, r0]
	ldr r0, _022510A8 ; =0x000021A0
	add r2, r6, r4
	mov r1, #6
	strb r1, [r2, r0]
	add r0, r7, #0
	bl BattleSys_Random
	ldr r1, _022510AC ; =0x0000310C
	add r4, r4, #1
	strh r0, [r5, r1]
	add r5, r5, #2
	cmp r4, #4
	blt _02251042
	ldr r0, _022510B0 ; =0x00002168
	mov r1, #1
	str r1, [r6, r0]
	mov r0, #0x5d
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, r7, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r0, r1
	bne _02251096
	add r0, r1, #0
	bl MaskOfFlagNo
	ldr r1, _022510B4 ; =0x00003108
	ldrb r2, [r6, r1]
	orr r0, r2
	strb r0, [r6, r1]
	mov r0, #3
	bl MaskOfFlagNo
	ldr r1, _022510B4 ; =0x00003108
	ldrb r2, [r6, r1]
	orr r0, r2
	strb r0, [r6, r1]
_02251096:
	ldr r0, _022510B8 ; =0x0000311C
	mov r1, #6
	strb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022510A4: .word 0x0000306C
_022510A8: .word 0x000021A0
_022510AC: .word 0x0000310C
_022510B0: .word 0x00002168
_022510B4: .word 0x00003108
_022510B8: .word 0x0000311C
	thumb_func_end ov12_02251038

	thumb_func_start InitSwitchWork
InitSwitchWork: ; 0x022510BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r1, [sp, #4]
	str r0, [sp]
	ldr r1, _02251400 ; =0x00002DC8
	ldr r0, [sp, #4]
	add r4, r2, #0
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r4
	add r5, r1, r0
	str r5, [sp, #0x14]
	add r3, sp, #0x20
	mov r2, #7
_022510D8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022510D8
	ldr r0, [sp]
	bl BattleSys_GetMaxBattlers
	add r6, r0, #0
	ldr r0, [sp]
	bl BattleSys_GetBattleType
	ldr r1, [sp, #4]
	lsl r2, r4, #4
	add r1, r1, r2
	ldr r2, _02251404 ; =0x000021A8
	mov r0, #0x28
	str r0, [r1, r2]
	ldr r1, [sp, #4]
	sub r2, #0x6c
	ldr r1, [r1, r2]
	add r0, #0xd8
	tst r0, r1
	bne _02251196
	mov r5, #0
	cmp r6, #0
	ble _02251172
	ldr r1, [sp, #4]
	ldr r2, _02251408 ; =0x00002DCC
	add r0, r1, #0
	add r2, r0, r2
	mov r0, #0x18
	mov ip, r0
	mov r7, #3
_0225111A:
	ldr r0, _0225140C ; =0x00002DB0
	ldr r3, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r3
	beq _0225113C
	ldr r0, [r2]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _0225113C
	ldr r0, _0225140C ; =0x00002DB0
	ldr r3, [r1, r0]
	ldr r0, _02251410 ; =0xFBFFFFFF
	and r3, r0
	ldr r0, _0225140C ; =0x00002DB0
	str r3, [r1, r0]
_0225113C:
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	mov r0, #0x18
	tst r0, r3
	beq _02251168
	ldr r0, [r2]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _02251168
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r3, ip
	bic r0, r3
	mov r3, #0xb7
	lsl r3, r3, #6
	str r0, [r1, r3]
	ldr r0, [r2]
	bic r0, r7
	str r0, [r2]
_02251168:
	add r5, r5, #1
	add r1, #0xc0
	add r2, #0xc0
	cmp r5, r6
	blt _0225111A
_02251172:
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r2, r1
	ldr r2, _0225140C ; =0x00002DB0
	str r0, [r1, r2]
	ldr r1, [sp, #4]
	add r2, #0x10
	add r2, r1, r2
	ldr r1, [sp, #0xc]
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [r2, r1]
	b _0225120E
_02251196:
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp, #0xc]
	ldr r1, _0225140C ; =0x00002DB0
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r0, r1
	ldr r3, [r0, r2]
	ldr r2, _02251414 ; =0x15100007
	and r3, r2
	ldr r2, [sp, #0xc]
	str r3, [r0, r2]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x10
	add r0, r0, r2
	ldr r2, [sp, #0xc]
	add r2, r0, r2
	str r2, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r0, r2]
	ldr r2, _02251418 ; =0x0FA3843F
	and r3, r2
	ldr r2, [sp, #0xc]
	str r3, [r0, r2]
	mov r2, #0
	cmp r6, #0
	ble _0225120E
	ldr r0, [sp, #4]
	add r1, #0x1c
	add r3, r0, #0
	add r1, r3, r1
	mov r7, #0x18
_022511D8:
	mov r3, #0xb7
	lsl r3, r3, #6
	ldr r5, [r0, r3]
	mov r3, #0x18
	tst r3, r5
	beq _02251204
	ldr r3, [r1]
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1e
	cmp r4, r3
	bne _02251204
	mov r3, #0xb7
	lsl r3, r3, #6
	ldr r5, [r0, r3]
	bic r5, r7
	str r5, [r0, r3]
	ldr r5, [r0, r3]
	mov r3, #0x10
	orr r5, r3
	mov r3, #0xb7
	lsl r3, r3, #6
	str r5, [r0, r3]
_02251204:
	add r2, r2, #1
	add r0, #0xc0
	add r1, #0xc0
	cmp r2, r6
	blt _022511D8
_0225120E:
	mov r0, #0
	str r0, [sp, #8]
	cmp r6, #0
	ble _02251276
	ldr r5, [sp, #4]
	ldr r1, _02251408 ; =0x00002DCC
	add r0, r5, #0
	add r7, r0, r1
_0225121E:
	add r0, r4, #0
	bl MaskOfFlagNo
	ldr r1, _0225140C ; =0x00002DB0
	lsl r0, r0, #0x10
	ldr r1, [r5, r1]
	tst r0, r1
	beq _02251246
	add r0, r4, #0
	bl MaskOfFlagNo
	ldr r1, _0225140C ; =0x00002DB0
	lsl r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	ldr r1, [r5, r1]
	eor r0, r2
	and r1, r0
	ldr r0, _0225140C ; =0x00002DB0
	str r1, [r5, r0]
_02251246:
	ldr r0, _0225140C ; =0x00002DB0
	ldr r1, [r5, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02251268
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _02251268
	ldr r0, _0225140C ; =0x00002DB0
	ldr r1, [r5, r0]
	ldr r0, _0225141C ; =0xFFFF1FFF
	and r1, r0
	ldr r0, _0225140C ; =0x00002DB0
	str r1, [r5, r0]
_02251268:
	ldr r0, [sp, #8]
	add r5, #0xc0
	add r0, r0, #1
	add r7, #0xc0
	str r0, [sp, #8]
	cmp r0, r6
	blt _0225121E
_02251276:
	mov r2, #0
	add r1, r2, #0
_0225127A:
	ldr r0, [sp, #0x14]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #0x38
	blo _0225127A
	ldr r1, _02251420 ; =0x0000213C
	ldr r0, [sp, #4]
	ldr r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	beq _0225132E
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r1, r0
	ldr r1, _02251424 ; =0x00002DE0
	str r2, [r0, r1]
	ldr r0, [sp, #4]
	sub r1, #0x14
	add r0, r0, r1
	ldr r1, [sp, #0xc]
	mov r2, #3
	ldr r1, [r0, r1]
	bic r1, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x1e
	lsr r3, r2, #0x1e
	mov r2, #3
	and r2, r3
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x14]
	lsl r3, r3, #0x11
	lsr r3, r3, #0x1e
	lsl r3, r3, #0x1e
	ldr r1, [r1]
	ldr r2, _02251428 ; =0xFFFF9FFF
	lsr r3, r3, #0x11
	and r1, r2
	orr r3, r1
	ldr r1, [sp, #0x14]
	str r3, [r1]
	ldr r1, [sp, #0xc]
	ldr r3, [r0, r1]
	asr r1, r2, #5
	ldr r2, [sp, #0x24]
	and r1, r3
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x16
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	ldr r1, _0225141C ; =0xFFFF1FFF
	and r1, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x10
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r3, [sp, #0x24]
	ldr r1, [r0, r1]
	lsl r3, r3, #0xa
	ldr r2, _0225142C ; =0xFFC7FFFF
	lsr r3, r3, #0x1d
	lsl r3, r3, #0x1d
	and r1, r2
	lsr r3, r3, #0xa
	orr r3, r1
	ldr r1, [sp, #0xc]
	str r3, [r0, r1]
	ldr r3, [r0, r1]
	asr r1, r2, #3
	ldr r2, [sp, #0x24]
	and r1, r3
	lsl r2, r2, #0xd
	lsr r2, r2, #0x1d
	lsl r2, r2, #0x1d
	lsr r2, r2, #0xd
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
_0225132E:
	mov r0, #0xc0
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r3, #0x90
	ldr r2, [r2, r3]
	add r1, r4, #0
	ldr r3, [sp, #4]
	mul r1, r0
	add r5, r0, #0
	add r1, r3, r1
	ldr r3, _02251430 ; =0x00002DD4
	add r2, r2, #1
	str r2, [r1, r3]
	ldr r2, [sp, #4]
	add r5, #0x90
	ldr r2, [r2, r5]
	add r0, #0x90
	add r5, r2, #1
	add r2, r3, #4
	str r5, [r1, r2]
	ldr r1, [sp, #0x14]
	lsl r7, r4, #1
	ldr r2, [r1]
	ldr r1, _02251434 ; =0xBFFFFFFF
	mov r3, #0
	and r1, r2
	ldr r2, [sp, #4]
	mov r5, #0xff
	ldr r0, [r2, r0]
	add r0, r0, #1
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r1, r0
	ldr r0, [sp, #0x14]
	str r1, [r0]
	add r0, r2, #0
	add r2, r0, r7
	ldr r0, _02251438 ; =0x0000305C
	add r1, r0, #0
	strh r3, [r2, r0]
	add r1, #8
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x10
	strh r5, [r2, r1]
	add r1, r0, #0
	add r1, #0x18
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x20
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x28
	strh r3, [r2, r1]
	ldr r1, [sp, #4]
	lsl r5, r4, #3
	add r1, r1, r5
	add r5, r0, #0
	add r5, #0x30
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x32
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x34
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x36
	strh r3, [r1, r5]
	add r1, r0, #0
	add r1, #0x50
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x68
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x70
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x78
	strh r3, [r2, r1]
	add r0, #0x80
	strh r3, [r2, r0]
	add r0, r4, #0
	bl MaskOfFlagNo
	mov r1, #6
	lsl r3, r0, #8
	mov r0, #0
	mvn r0, r0
	ldr r2, [sp, #4]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	eor r0, r3
	and r2, r0
	ldr r0, [sp, #4]
	str r2, [r0, r1]
	ldr r0, [sp, #0x10]
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0x16
	tst r0, r1
	beq _02251456
	ldr r0, _0225143C ; =0x00002D42
	b _02251440
	.balign 4, 0
_02251400: .word 0x00002DC8
_02251404: .word 0x000021A8
_02251408: .word 0x00002DCC
_0225140C: .word 0x00002DB0
_02251410: .word 0xFBFFFFFF
_02251414: .word 0x15100007
_02251418: .word 0x0FA3843F
_0225141C: .word 0xFFFF1FFF
_02251420: .word 0x0000213C
_02251424: .word 0x00002DE0
_02251428: .word 0xFFFF9FFF
_0225142C: .word 0xFFC7FFFF
_02251430: .word 0x00002DD4
_02251434: .word 0xBFFFFFFF
_02251438: .word 0x0000305C
_0225143C: .word 0x00002D42
_02251440:
	ldr r1, [sp, #4]
	add r5, r1, r0
	ldr r1, [sp, #0xc]
	ldrh r3, [r5, r1]
	add r1, r0, #2
	ldr r0, [sp, #4]
	add r2, r0, r1
	ldr r0, [sp, #0xc]
	ldrh r1, [r2, r0]
	strh r1, [r5, r0]
	strh r3, [r2, r0]
_02251456:
	mov r5, #0
	cmp r6, #0
	ble _0225149A
	ldr r0, [sp, #4]
	str r0, [sp, #0x18]
	add r7, r0, r7
_02251462:
	cmp r5, r4
	beq _02251486
	ldr r0, [sp]
	add r1, r5, #0
	bl BattleSys_GetFieldSide
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r4, #0
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	beq _02251486
	ldr r1, [sp, #0x18]
	ldr r0, _022514BC ; =0x00003084
	mov r2, #0
	strh r2, [r1, r0]
_02251486:
	ldr r0, _022514C0 ; =0x0000308C
	mov r1, #0
	strh r1, [r7, r0]
	ldr r0, [sp, #0x18]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x18]
	add r7, #8
	cmp r5, r6
	blt _02251462
_0225149A:
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_02258584
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_0225859C
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_022585A8
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022514BC: .word 0x00003084
_022514C0: .word 0x0000308C
	thumb_func_end InitSwitchWork

	thumb_func_start InitFaintedWork
InitFaintedWork: ; 0x022514C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r0, [sp]
	add r5, r2, #0
	bl BattleSys_GetMaxBattlers
	str r0, [sp, #0xc]
	mov r0, #0xc0
	mul r0, r5
	ldr r1, [sp, #4]
	str r0, [sp, #8]
	add r3, r1, r0
	ldr r0, _022516E8 ; =0x00002D58
	mov r2, #0
	mov r1, #6
_022514E4:
	add r2, r2, #1
	strb r1, [r3, r0]
	add r3, r3, #1
	cmp r2, #8
	blt _022514E4
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r7, #0
	add r2, r0, r1
	ldr r1, _022516EC ; =0x00002DB0
	add r0, r1, #0
	str r7, [r2, r1]
	add r0, #0x10
	str r7, [r2, r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0225158A
	ldr r4, [sp, #4]
	add r1, #0x1c
	add r0, r4, #0
	add r6, r0, r1
_02251512:
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r1
	beq _02251534
	ldr r0, [r6]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	cmp r5, r0
	bne _02251534
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022516F0 ; =0xFBFFFFFF
	and r1, r0
	ldr r0, _022516EC ; =0x00002DB0
	str r1, [r4, r0]
_02251534:
	add r0, r5, #0
	bl MaskOfFlagNo
	ldr r1, _022516EC ; =0x00002DB0
	lsl r0, r0, #0x10
	ldr r1, [r4, r1]
	tst r0, r1
	beq _0225155C
	add r0, r5, #0
	bl MaskOfFlagNo
	ldr r1, _022516EC ; =0x00002DB0
	lsl r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	ldr r1, [r4, r1]
	eor r0, r2
	and r1, r0
	ldr r0, _022516EC ; =0x00002DB0
	str r1, [r4, r0]
_0225155C:
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225157E
	ldr r0, [r6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r5, r0
	bne _0225157E
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022516F4 ; =0xFFFF1FFF
	and r1, r0
	ldr r0, _022516EC ; =0x00002DB0
	str r1, [r4, r0]
_0225157E:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r4, #0xc0
	add r6, #0xc0
	cmp r7, r0
	blt _02251512
_0225158A:
	ldr r1, _022516F8 ; =0x00002DC8
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r6, r1, r0
	mov r1, #0
	add r0, r1, #0
_02251598:
	strb r0, [r6, r1]
	add r1, r1, #1
	cmp r1, #0x38
	blo _02251598
	mov r2, #0x75
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r1, r2
	lsl r1, r5, #6
	add r1, r2, r1
	mov r4, #0
_022515AE:
	strb r4, [r1, r0]
	add r0, r0, #1
	cmp r0, #0x40
	blo _022515AE
	mov r2, #0xc0
	add r3, r2, #0
	ldr r0, [sp, #4]
	add r3, #0x90
	ldr r0, [r0, r3]
	add r1, r5, #0
	ldr r3, [sp, #4]
	mul r1, r2
	add r3, r3, r1
	add r1, r2, #0
	ldr r7, _022516FC ; =0x00002DD4
	add r0, r0, #1
	str r0, [r3, r7]
	ldr r0, [sp, #4]
	add r1, #0x90
	ldr r0, [r0, r1]
	add r1, r7, #4
	add r0, r0, #1
	str r0, [r3, r1]
	ldr r1, [r6]
	ldr r0, _02251700 ; =0xBFFFFFFF
	add r2, #0x90
	and r0, r1
	ldr r1, [sp, #4]
	mov r3, #0xff
	ldr r1, [r1, r2]
	add r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #1
	orr r0, r1
	str r0, [r6]
	ldr r0, [sp, #4]
	lsl r6, r5, #1
	add r2, r0, r6
	ldr r0, _02251704 ; =0x0000305C
	add r1, r0, #0
	strh r4, [r2, r0]
	add r1, #8
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x10
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x18
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x20
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x28
	strh r4, [r2, r1]
	ldr r1, [sp, #4]
	lsl r3, r5, #3
	add r1, r1, r3
	add r3, r0, #0
	add r3, #0x30
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x32
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x34
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x36
	strh r4, [r1, r3]
	add r1, r0, #0
	add r1, #0x50
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x68
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x70
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x78
	strh r4, [r2, r1]
	add r0, #0x80
	strh r4, [r2, r0]
	add r0, r5, #0
	bl MaskOfFlagNo
	mov r1, #6
	lsl r3, r0, #8
	mov r0, #0
	mvn r0, r0
	ldr r2, [sp, #4]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	eor r0, r3
	and r2, r0
	ldr r0, [sp, #4]
	mov r4, #0
	str r2, [r0, r1]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022516B4
	ldr r7, [sp, #4]
	add r0, r7, #0
	add r6, r0, r6
_02251680:
	cmp r4, r5
	beq _022516A2
	ldr r0, [sp]
	add r1, r4, #0
	bl BattleSys_GetFieldSide
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r1, r5, #0
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _022516A2
	ldr r0, _02251708 ; =0x00003084
	mov r1, #0
	strh r1, [r7, r0]
_022516A2:
	ldr r0, _0225170C ; =0x0000308C
	mov r1, #0
	strh r1, [r6, r0]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r7, r7, #2
	add r6, #8
	cmp r4, r0
	blt _02251680
_022516B4:
	mov r1, #0x4f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	add r3, r0, r1
	lsl r2, r5, #2
	ldr r1, [r3, r2]
	mov r0, #1
	bic r1, r0
	str r1, [r3, r2]
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_02258584
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_0225859C
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_022585A8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022516E8: .word 0x00002D58
_022516EC: .word 0x00002DB0
_022516F0: .word 0xFBFFFFFF
_022516F4: .word 0xFFFF1FFF
_022516F8: .word 0x00002DC8
_022516FC: .word 0x00002DD4
_02251700: .word 0xBFFFFFFF
_02251704: .word 0x0000305C
_02251708: .word 0x00003084
_0225170C: .word 0x0000308C
	thumb_func_end InitFaintedWork

	thumb_func_start ov12_02251710
ov12_02251710: ; 0x02251710
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x75
	add r5, r1, #0
	lsl r0, r0, #2
	add r7, r5, r0
	mov r0, #0xd1
	lsl r0, r0, #2
	add r6, r5, r0
	mov r0, #8
	add r4, r5, #0
	str r0, [sp, #8]
_0225172E:
	mov r0, #0
	add r1, r7, #0
	mov r2, #0x40
	bl MIi_CpuClearFast
	mov r0, #0
	add r1, r6, #0
	mov r2, #4
	bl MIi_CpuClearFast
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, [sp, #8]
	bic r1, r0
	ldr r0, _022517D8 ; =0x00002DB0
	str r1, [r4, r0]
	add r0, #0x20
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bge _0225176A
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022517DC ; =0xFFBFFFFF
	and r1, r0
	ldr r0, _022517D8 ; =0x00002DB0
	str r1, [r4, r0]
_0225176A:
	ldr r0, _022517E0 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #7
	tst r0, r1
	beq _0225178A
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225178A
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl UnlockBattlerOutOfCurrentMove
_0225178A:
	ldr r0, _022517E0 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #7
	tst r0, r1
	beq _022517AC
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r1
	beq _022517AC
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022517E4 ; =0xFFFFF3FF
	and r1, r0
	ldr r0, _022517D8 ; =0x00002DB0
	str r1, [r4, r0]
_022517AC:
	ldr r0, [sp, #4]
	add r7, #0x40
	add r0, r0, #1
	add r6, r6, #4
	add r4, #0xc0
	str r0, [sp, #4]
	cmp r0, #4
	blt _0225172E
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	ldr r1, _022517E8 ; =0xFFEFFFFF
	and r0, r1
	str r0, [r5, r2]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r2, #8
	and r0, r1
	str r0, [r5, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022517D8: .word 0x00002DB0
_022517DC: .word 0xFFBFFFFF
_022517E0: .word 0x00002DAC
_022517E4: .word 0xFFFFF3FF
_022517E8: .word 0xFFEFFFFF
	thumb_func_end ov12_02251710

	thumb_func_start StruggleCheck
StruggleCheck: ; 0x022517EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp]
	ldr r0, [sp, #0x70]
	add r7, r1, #0
	str r0, [sp, #0x70]
	str r2, [sp, #4]
	add r0, r7, #0
	add r1, r2, #0
	add r5, r3, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	add r4, r7, r1
	str r1, [sp, #0x38]
	ldr r0, [sp, #0x70]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x70]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x70]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	mov r1, #8
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x70]
	mov r2, #0x10
	and r0, r1
	ldr r1, _02251A04 ; =0x00002DC8
	str r0, [sp, #0x1c]
	add r0, r7, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	sub r1, #0x88
	and r0, r2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x70]
	mov r2, #0x20
	and r0, r2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x70]
	mov r2, #0x40
	and r0, r2
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x70]
	mov r0, #0x80
	and r2, r0
	str r2, [sp, #0xc]
	lsl r2, r0, #2
	ldr r0, [sp, #0x70]
	mov r6, #0
	and r0, r2
	str r0, [sp, #8]
	add r0, r7, r1
	str r0, [sp, #0x40]
	ldr r0, _02251A08 ; =0x00002DE8
	str r4, [sp, #0x30]
	add r0, r4, r0
	str r0, [sp, #0x44]
	ldr r0, _02251A0C ; =0x00002DB0
	add r0, r4, r0
	str r0, [sp, #0x48]
	ldr r0, _02251A10 ; =0x00002DEC
	add r0, r4, r0
	str r0, [sp, #0x4c]
	ldr r0, _02251A14 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x50]
	ldr r0, _02251A14 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x58]
	ldr r0, _02251A14 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x54]
_02251894:
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _022518AA
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _022518AA
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_022518AA:
	ldr r1, [sp, #0x30]
	ldr r0, _02251A1C ; =0x00002D6C
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022518C2
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _022518C2
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_022518C2:
	ldr r0, [sp, #0x44]
	ldrh r1, [r0]
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	bne _022518DC
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _022518DC
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_022518DC:
	ldr r1, [sp, #0x20]
	ldr r0, _02251A20 ; =0x0000307C
	ldrh r1, [r1, r0]
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	bne _02251904
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02251904
	ldr r0, [sp, #0x48]
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02251904
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_02251904:
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	beq _0225192E
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0225192E
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, _02251A24 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0225192E
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_0225192E:
	ldr r3, _02251A18 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov12_02252C74
	cmp r0, #0
	beq _0225194E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0225194E
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_0225194E:
	ldr r3, _02251A18 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov12_02252DC4
	cmp r0, #0
	beq _0225196E
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0225196E
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_0225196E:
	ldr r3, _02251A18 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov12_02252DF8
	cmp r0, #0
	beq _0225198E
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0225198E
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_0225198E:
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0]
	cmp r1, #0
	beq _022519A6
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _022519A6
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_022519A6:
	ldr r0, [sp, #0x34]
	cmp r0, #0x37
	beq _022519B4
	cmp r0, #0x73
	beq _022519B4
	cmp r0, #0x7d
	bne _022519EC
_022519B4:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022519EC
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	add r0, r1, r0
	ldr r1, [sp, #0x50]
	ldrh r1, [r1]
	bl BattleMon_GetMoveIndex
	cmp r0, #4
	bne _022519D4
	ldr r0, [sp, #0x54]
	mov r1, #0
	strh r1, [r0]
	b _022519EC
_022519D4:
	ldr r0, [sp, #0x58]
	ldrh r1, [r0]
	cmp r1, #0
	beq _022519EC
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _022519EC
	add r0, r6, #0
	bl MaskOfFlagNo
	orr r5, r0
_022519EC:
	ldr r0, [sp, #0x30]
	add r6, r6, #1
	add r0, r0, #1
	add r4, r4, #2
	str r0, [sp, #0x30]
	cmp r6, #4
	bge _022519FC
	b _02251894
_022519FC:
	add r0, r5, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02251A04: .word 0x00002DC8
_02251A08: .word 0x00002DE8
_02251A0C: .word 0x00002DB0
_02251A10: .word 0x00002DEC
_02251A14: .word 0x00002DF8
_02251A18: .word 0x00002D4C
_02251A1C: .word 0x00002D6C
_02251A20: .word 0x0000307C
_02251A24: .word 0x000003E1
	thumb_func_end StruggleCheck

	thumb_func_start ov12_02251A28
ov12_02251A28: ; 0x02251A28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r3, #0
	mov r3, #1
	str r3, [sp, #8]
	mov r3, #4
	str r3, [sp]
	mov r3, #0
	str r0, [sp, #4]
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, [sp, #0x40]
	bl StruggleCheck
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0xc]
	tst r0, r1
	beq _02251A7A
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02251C3C ; =0x00000261
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251A7A:
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl StruggleCheck
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x10]
	tst r0, r1
	beq _02251AB2
	mov r0, #2
	strb r0, [r4, #1]
	mov r0, #0x99
	lsl r0, r0, #2
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251AB2:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl StruggleCheck
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x14]
	tst r0, r1
	beq _02251AF8
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02251C44 ; =0x00000265
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251AF8:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl StruggleCheck
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x18]
	tst r0, r1
	beq _02251B40
	mov r0, #0xa
	strb r0, [r4, #1]
	mov r0, #0x9a
	lsl r0, r0, #2
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251B40:
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl StruggleCheck
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x1c]
	tst r0, r1
	beq _02251B86
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02251C48 ; =0x000003E9
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251B86:
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl StruggleCheck
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x20]
	tst r0, r1
	beq _02251BD0
	mov r0, #0x22
	strb r0, [r4, #1]
	ldr r0, _02251C4C ; =0x00000421
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	ldr r0, _02251C50 ; =0x00000179
	str r0, [r4, #8]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251BD0:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl StruggleCheck
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x24]
	tst r0, r1
	beq _02251C10
	mov r0, #0x18
	strb r0, [r4, #1]
	ldr r0, _02251C54 ; =0x0000038F
	strh r0, [r4, #2]
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	ldr r0, _02251C58 ; =0x00002DB8
	ldrh r1, [r2, r0]
	add r0, #0x40
	str r1, [r4, #4]
	ldrh r0, [r2, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251C10:
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl StruggleCheck
	add r5, r0, #0
	add r0, r7, #0
	bl MaskOfFlagNo
	tst r0, r5
	beq _02251C36
	mov r0, #0
	str r0, [sp, #8]
	strb r0, [r4, #1]
	ldr r0, _02251C5C ; =0x00000337
	strh r0, [r4, #2]
_02251C36:
	ldr r0, [sp, #8]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02251C3C: .word 0x00000261
_02251C40: .word 0x00002D4C
_02251C44: .word 0x00000265
_02251C48: .word 0x000003E9
_02251C4C: .word 0x00000421
_02251C50: .word 0x00000179
_02251C54: .word 0x0000038F
_02251C58: .word 0x00002DB8
_02251C5C: .word 0x00000337
	thumb_func_end ov12_02251A28

	thumb_func_start BattleMon_GetMoveIndex
BattleMon_GetMoveIndex: ; 0x02251C60
	mov r3, #0
_02251C62:
	ldrh r2, [r0, #0xc]
	cmp r1, r2
	beq _02251C70
	add r3, r3, #1
	add r0, r0, #2
	cmp r3, #4
	blt _02251C62
_02251C70:
	add r0, r3, #0
	bx lr
	thumb_func_end BattleMon_GetMoveIndex

	thumb_func_start ov12_02251C74
ov12_02251C74: ; 0x02251C74
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r1, r6, #0
	add r5, r0, #0
	add r4, r3, #0
	bl GetBattlerHeldItemEffect
	mov r1, #1
	cmp r0, #0x6a
	beq _02251C9A
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	lsl r0, r1, #0xa
	tst r0, r2
	beq _02251CB0
_02251C9A:
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =sTypeEffectiveness + 1
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02251CB0
	ldr r0, _02251D24 ; =sTypeEffectiveness + 2
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02251CB0
	mov r1, #0
_02251CB0:
	lsl r0, r6, #6
	add r2, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _02251CCE
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =sTypeEffectiveness + 1
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02251CCE
	mov r1, #0
_02251CCE:
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r2
	beq _02251CF2
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =sTypeEffectiveness + 1
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02251CF2
	ldr r0, _02251D24 ; =sTypeEffectiveness + 2
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02251CF2
	mov r1, #0
_02251CF2:
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	mov r0, #1
	lsl r0, r0, #0x16
	tst r0, r2
	beq _02251D1C
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =sTypeEffectiveness + 1
	ldrb r0, [r0, r2]
	cmp r0, #0x11
	bne _02251D1C
	ldr r0, _02251D24 ; =sTypeEffectiveness + 2
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02251D1C
	mov r1, #0
_02251D1C:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02251D20: .word sTypeEffectiveness + 1
_02251D24: .word sTypeEffectiveness + 2
	thumb_func_end ov12_02251C74

	thumb_func_start ov12_02251D28
ov12_02251D28: ; 0x02251D28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, [sp, #0x50]
	add r5, r1, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #8]
	str r0, [sp, #0x54]
	add r0, r2, #0
	add r4, r3, #0
	ldr r7, [sp, #0x48]
	ldr r6, [sp, #0x4c]
	cmp r0, #0xa5
	bne _02251D4A
	ldr r0, [sp, #0x50]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02251D4A:
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerHeldItemEffect
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov12_02255844
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_02255844
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x60
	bne _02251D92
	mov r0, #0
	str r0, [sp, #0x28]
	b _02251DAA
_02251D92:
	cmp r4, #0
	beq _02251D9E
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	b _02251DAA
_02251D9E:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225203C ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0x28]
_02251DAA:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02252040 ; =0x000003E1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x14]
	ldr r0, _02252044 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r1
	bne _02251E08
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x28]
	cmp r1, r0
	beq _02251DE6
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x28]
	cmp r1, r0
	bne _02251E08
_02251DE6:
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x5b
	bne _02251DFA
	ldr r0, [sp, #0x50]
	lsl r0, r0, #1
	str r0, [sp, #0x50]
	b _02251E08
_02251DFA:
	ldr r1, [sp, #0x50]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x50]
_02251E08:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x1a
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02251E34
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bne _02251E34
	ldr r0, [sp, #0x20]
	cmp r0, #0x6a
	beq _02251E34
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xa
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	b _02251F50
_02251E34:
	mov r0, #0xc0
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02252048 ; =0x00002DCC
	add r3, r5, r1
	ldr r2, [r3, r0]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	beq _02251E6C
	sub r0, #0xc
	ldr r2, [r3, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r2, r0
	bne _02251E6C
	ldr r2, [sp, #0x28]
	cmp r2, #4
	bne _02251E6C
	ldr r2, [sp, #0x20]
	cmp r2, #0x6a
	beq _02251E6C
	ldr r1, [sp, #0x54]
	lsl r0, r0, #0xa
	ldr r1, [r1]
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	b _02251F50
_02251E6C:
	add r0, r5, r1
	mov r4, #0
	str r0, [sp, #0x18]
_02251E72:
	lsl r0, r4, #1
	ldr r1, _0225204C ; =sTypeEffectiveness
	add r0, r4, r0
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r1, _0225204C ; =sTypeEffectiveness
	ldrb r1, [r1, r0]
	cmp r1, #0xfe
	bne _02251EA2
	ldr r1, [sp, #0x18]
	ldr r0, _02252050 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	bne _02251F50
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x71
	beq _02251F50
	add r4, r4, #1
	b _02251F44
_02251EA2:
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02251F42
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	ldrb r0, [r0, #1]
	mov r2, #0x1b
	mov r3, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02251EE8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_02251C74
	cmp r0, #1
	bne _02251EE8
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x54]
	ldr r3, [sp, #0x50]
	str r0, [sp, #4]
	ldrb r2, [r2, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022583B4
	str r0, [sp, #0x50]
_02251EE8:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02251F42
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x2c]
	cmp r1, r0
	beq _02251F42
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_02251C74
	cmp r0, #1
	bne _02251F42
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x54]
	ldr r3, [sp, #0x50]
	str r0, [sp, #4]
	ldrb r2, [r2, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022583B4
	str r0, [sp, #0x50]
_02251F42:
	add r4, r4, #1
_02251F44:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _0225204C ; =sTypeEffectiveness
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _02251E72
_02251F50:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x19
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02251F94
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02258440
	cmp r0, #0
	beq _02251F94
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02251F7E
	mov r0, #6
	and r0, r1
	cmp r0, #6
	bne _02251F94
_02251F7E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02251F94
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x12
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	b _02252036
_02251F94:
	ldr r0, _02252044 ; =0x0000213C
	ldr r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	add r1, r2, #0
	tst r1, r0
	bne _02252022
	lsl r0, r0, #4
	tst r0, r2
	bne _02252022
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02251FFE
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02251FFE
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x6f
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	beq _02251FD8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x74
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02251FE6
_02251FD8:
	ldr r0, [sp, #0x50]
	lsl r1, r0, #1
	add r0, r0, r1
	mov r1, #4
	bl DamageDivide
	str r0, [sp, #0x50]
_02251FE6:
	ldr r0, [sp, #0x24]
	cmp r0, #0x60
	bne _02251FFE
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x50]
	add r0, #0x64
	str r0, [sp, #0x1c]
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #0x50]
_02251FFE:
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02252036
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02252036
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x6e
	bne _02252036
	ldr r0, [sp, #0x50]
	lsl r0, r0, #1
	str r0, [sp, #0x50]
	b _02252036
_02252022:
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	bic r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	mov r0, #4
	bic r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
_02252036:
	ldr r0, [sp, #0x50]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225203C: .word 0x000003E2
_02252040: .word 0x000003E1
_02252044: .word 0x0000213C
_02252048: .word 0x00002DCC
_0225204C: .word sTypeEffectiveness
_02252050: .word 0x00002DB0
	thumb_func_end ov12_02251D28

	thumb_func_start ov12_02252054
ov12_02252054: ; 0x02252054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r3, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x34]
	add r0, r1, #0
	cmp r0, #0xa5
	beq _0225216A
	add r0, r3, #0
	cmp r0, #0x60
	bne _0225207E
	mov r0, #0
	str r0, [sp, #0xc]
	b _02252096
_0225207E:
	cmp r2, #0
	beq _0225208A
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	b _02252096
_0225208A:
	add r0, r1, #0
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, _02252170 ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
_02252096:
	ldr r0, [sp, #4]
	cmp r0, #0x68
	beq _022520C6
	ldr r0, [sp, #0x28]
	cmp r0, #0x1a
	bne _022520C6
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bne _022520C6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r7, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _022520C6
	ldr r0, [sp, #0x2c]
	cmp r0, #0x6a
	beq _022520C6
	ldr r1, [r6]
	mov r0, #8
	orr r0, r1
	str r0, [r6]
	b _0225213A
_022520C6:
	mov r4, #0
_022520C8:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _02252174 ; =sTypeEffectiveness
	add r5, r0, r1
	ldrb r1, [r0, r1]
	cmp r1, #0xfe
	bne _022520E0
	ldr r0, [sp, #4]
	cmp r0, #0x71
	beq _0225213A
	add r4, r4, #1
	b _0225212E
_022520E0:
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _0225212C
	ldrb r0, [r5, #1]
	ldr r1, [sp, #0x30]
	str r0, [sp, #8]
	cmp r1, r0
	bne _02252106
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02252178
	cmp r0, #1
	bne _02252106
	ldrb r0, [r5, #2]
	add r1, r6, #0
	bl ov12_022521C8
_02252106:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _0225212C
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	beq _0225212C
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02252178
	cmp r0, #1
	bne _0225212C
	ldrb r0, [r5, #2]
	add r1, r6, #0
	bl ov12_022521C8
_0225212C:
	add r4, r4, #1
_0225212E:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _02252174 ; =sTypeEffectiveness
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _022520C8
_0225213A:
	ldr r0, [sp, #4]
	cmp r0, #0x68
	beq _0225216A
	ldr r0, [sp, #0x28]
	cmp r0, #0x19
	bne _0225216A
	ldr r1, [sp]
	add r0, r7, #0
	bl ov12_02258440
	cmp r0, #0
	beq _0225216A
	ldr r1, [r6]
	mov r0, #2
	tst r0, r1
	beq _02252162
	mov r0, #6
	and r0, r1
	cmp r0, #6
	bne _0225216A
_02252162:
	ldr r1, [r6]
	mov r0, #8
	orr r0, r1
	str r0, [r6]
_0225216A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252170: .word 0x000003E2
_02252174: .word sTypeEffectiveness
	thumb_func_end ov12_02252054

	thumb_func_start ov12_02252178
ov12_02252178: ; 0x02252178
	push {r3, r4}
	mov r3, #1
	cmp r1, #0x6a
	bne _02252196
	lsl r1, r2, #1
	add r4, r2, r1
	ldr r1, _022521C0 ; =sTypeEffectiveness + 1
	ldrb r1, [r1, r4]
	cmp r1, #2
	bne _02252196
	ldr r1, _022521C4 ; =sTypeEffectiveness + 2
	ldrb r1, [r1, r4]
	cmp r1, #0
	bne _02252196
	mov r3, #0
_02252196:
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r0, r1]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	beq _022521BA
	lsl r0, r2, #1
	add r1, r2, r0
	ldr r0, _022521C0 ; =sTypeEffectiveness + 1
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _022521BA
	ldr r0, _022521C4 ; =sTypeEffectiveness + 2
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _022521BA
	mov r3, #0
_022521BA:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_022521C0: .word sTypeEffectiveness + 1
_022521C4: .word sTypeEffectiveness + 2
	thumb_func_end ov12_02252178

	thumb_func_start ov12_022521C8
ov12_022521C8: ; 0x022521C8
	cmp r0, #0
	beq _022521D6
	cmp r0, #5
	beq _022521E8
	cmp r0, #0x14
	beq _02252200
	bx lr
_022521D6:
	ldr r2, [r1]
	mov r0, #8
	orr r2, r0
	mov r0, #4
	bic r2, r0
	mov r0, #2
	bic r2, r0
	str r2, [r1]
	bx lr
_022521E8:
	ldr r2, [r1]
	mov r0, #2
	tst r0, r2
	beq _022521F8
	mov r0, #2
	bic r2, r0
	str r2, [r1]
	bx lr
_022521F8:
	mov r0, #4
	orr r0, r2
	str r0, [r1]
	bx lr
_02252200:
	ldr r2, [r1]
	mov r0, #4
	tst r0, r2
	beq _02252210
	mov r0, #4
	bic r2, r0
	str r2, [r1]
	bx lr
_02252210:
	mov r0, #2
	orr r0, r2
	str r0, [r1]
	bx lr
	thumb_func_end ov12_022521C8

	thumb_func_start ov12_02252218
ov12_02252218: ; 0x02252218
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r0, r2
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1c
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x19
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x17
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _0225225C
_02252258:
	mov r0, #1
	bx lr
_0225225C:
	mov r0, #0
	bx lr
	thumb_func_end ov12_02252218

	thumb_func_start GetMonsHitCount
GetMonsHitCount: ; 0x02252260
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #4]
	mov r4, #0
	bl BattleSys_GetMaxBattlers
	add r7, r0, #0
	cmp r6, #0
	beq _0225227E
	cmp r6, #1
	beq _022522A2
	b _022522D6
_0225227E:
	add r0, r4, #0
	cmp r7, #0
	ble _022522D6
	ldr r2, _022522DC ; =0x00002D8C
_02252286:
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _02252298
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _02252298
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
_02252298:
	add r0, r0, #1
	add r5, #0xc0
	cmp r0, r7
	blt _02252286
	b _022522D6
_022522A2:
	add r6, r4, #0
	cmp r7, #0
	ble _022522D6
_022522A8:
	ldr r0, [sp]
	add r1, r6, #0
	bl BattleSys_GetFieldSide
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _022522CE
	ldr r0, _022522DC ; =0x00002D8C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022522CE
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022522CE:
	add r6, r6, #1
	add r5, #0xc0
	cmp r6, r7
	blt _022522A8
_022522D6:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022522DC: .word 0x00002D8C
	thumb_func_end GetMonsHitCount

	thumb_func_start CreateNicknameTag
CreateNicknameTag: ; 0x022522E0
	add r2, r0, r1
	ldr r0, _022522EC ; =0x0000219C
	ldrb r0, [r2, r0]
	lsl r0, r0, #8
	orr r0, r1
	bx lr
	.balign 4, 0
_022522EC: .word 0x0000219C
	thumb_func_end CreateNicknameTag

	thumb_func_start GetBattlerSelectedMove
GetBattlerSelectedMove: ; 0x022522F0
	push {r4, r5}
	lsl r3, r1, #4
	add r5, r0, r3
	ldr r3, _0225231C ; =0x000021B4
	mov r2, #0
	ldr r4, [r5, r3]
	cmp r4, #1
	bne _02252316
	sub r3, r3, #4
	ldr r3, [r5, r3]
	cmp r3, #0
	beq _02252316
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	lsl r0, r3, #1
	add r1, r1, r0
	ldr r0, _02252320 ; =0x00002D4A
	ldrh r2, [r1, r0]
_02252316:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
_0225231C: .word 0x000021B4
_02252320: .word 0x00002D4A
	thumb_func_end GetBattlerSelectedMove

	thumb_func_start CheckAbilityActive
CheckAbilityActive: ; 0x02252324
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r2, [sp, #4]
	str r0, [sp]
	add r7, r1, #0
	str r3, [sp, #8]
	ldr r6, [sp, #0x70]
	mov r4, #0
	bl BattleSys_GetMaxBattlers
	add r5, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #9
	bhi _02252398
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225234C: ; jump table
	.short _02252360 - _0225234C - 2 ; case 0
	.short _0225239A - _0225234C - 2 ; case 1
	.short _022523E6 - _0225234C - 2 ; case 2
	.short _02252420 - _0225234C - 2 ; case 3
	.short _0225246C - _0225234C - 2 ; case 4
	.short _022524BE - _0225234C - 2 ; case 5
	.short _022524E0 - _0225234C - 2 ; case 6
	.short _02252508 - _0225234C - 2 ; case 7
	.short _02252534 - _0225234C - 2 ; case 8
	.short _02252568 - _0225234C - 2 ; case 9
_02252360:
	add r0, r4, #0
	str r0, [sp, #0x44]
	cmp r5, #0
	ble _02252398
_02252368:
	ldr r0, [sp]
	ldr r1, [sp, #0x44]
	bl BattleSys_GetFieldSide
	str r0, [sp, #0x48]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #0x48]
	cmp r1, r0
	bne _0225238E
	ldr r1, [sp, #0x44]
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _0225238E
	add r4, r4, #1
_0225238E:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	cmp r0, r5
	blt _02252368
_02252398:
	b _022525A0
_0225239A:
	add r0, r4, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	ble _022523E4
	str r7, [sp, #0x30]
_022523A4:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl BattleSys_GetFieldSide
	str r0, [sp, #0x4c]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #0x4c]
	cmp r1, r0
	bne _022523D4
	ldr r1, [sp, #0x30]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022523D4
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _022523D4
	add r4, r4, #1
_022523D4:
	ldr r0, [sp, #0x30]
	add r0, #0xc0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r5
	blt _022523A4
_022523E4:
	b _022525A0
_022523E6:
	add r0, r4, #0
	str r0, [sp, #0x10]
	cmp r5, #0
	ble _0225241E
_022523EE:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl BattleSys_GetFieldSide
	str r0, [sp, #0x50]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #0x50]
	cmp r1, r0
	beq _02252414
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _02252414
	add r4, r4, #1
_02252414:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r5
	blt _022523EE
_0225241E:
	b _022525A0
_02252420:
	add r0, r4, #0
	str r0, [sp, #0x14]
	cmp r5, #0
	ble _0225246A
	str r7, [sp, #0x34]
_0225242A:
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl BattleSys_GetFieldSide
	str r0, [sp, #0x54]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #0x54]
	cmp r1, r0
	beq _0225245A
	ldr r1, [sp, #0x34]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225245A
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _0225245A
	add r4, r4, #1
_0225245A:
	ldr r0, [sp, #0x34]
	add r0, #0xc0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r5
	blt _0225242A
_0225246A:
	b _022525A0
_0225246C:
	add r0, r4, #0
	str r0, [sp, #0x18]
	cmp r5, #0
	ble _022524BC
	str r7, [sp, #0x38]
_02252476:
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	bl BattleSys_GetFieldSide
	str r0, [sp, #0x58]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #0x58]
	cmp r1, r0
	beq _022524AC
	ldr r1, [sp, #0x38]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022524AC
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _022524AC
	ldr r0, [sp, #0x18]
	bl MaskOfFlagNo
	orr r4, r0
_022524AC:
	ldr r0, [sp, #0x38]
	add r0, #0xc0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r5
	blt _02252476
_022524BC:
	b _022525A0
_022524BE:
	add r0, r4, #0
	str r0, [sp, #0x1c]
	cmp r5, #0
	ble _022525A0
_022524C6:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _022524D4
	add r4, r4, #1
_022524D4:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r5
	blt _022524C6
	b _022525A0
_022524E0:
	add r0, r4, #0
	str r0, [sp, #0x20]
	cmp r5, #0
	ble _022525A0
_022524E8:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _022524FC
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _022524FC
	add r4, r4, #1
_022524FC:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r5
	blt _022524E8
	b _022525A0
_02252508:
	add r0, r4, #0
	str r0, [sp, #0x24]
	cmp r5, #0
	ble _022525A0
_02252510:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02252528
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _02252528
	ldr r0, [sp, #0x24]
	add r4, r0, #1
	b _022525A0
_02252528:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r5
	blt _02252510
	b _022525A0
_02252534:
	add r0, r4, #0
	str r0, [sp, #0x28]
	cmp r5, #0
	ble _022525A0
	str r7, [sp, #0x3c]
_0225253E:
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _02252556
	ldr r1, [sp, #0x3c]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02252556
	add r4, r4, #1
_02252556:
	ldr r0, [sp, #0x3c]
	add r0, #0xc0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r5
	blt _0225253E
	b _022525A0
_02252568:
	add r0, r4, #0
	str r0, [sp, #0x2c]
	cmp r5, #0
	ble _022525A0
	str r7, [sp, #0x40]
_02252572:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02252590
	add r0, r7, #0
	bl GetBattlerAbility
	cmp r6, r0
	bne _02252590
	ldr r1, [sp, #0x40]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02252590
	add r4, r4, #1
_02252590:
	ldr r0, [sp, #0x40]
	add r0, #0xc0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, r5
	blt _02252572
_022525A0:
	add r0, r4, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_022525A8: .word 0x00002D8C
	thumb_func_end CheckAbilityActive

	thumb_func_start BattleCtx_IsIdenticalToCurrentMove
BattleCtx_IsIdenticalToCurrentMove: ; 0x022525AC
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _02252608 ; =0x000003DE
	ldrh r2, [r1, r0]
	cmp r2, #0x9b
	bgt _022525DE
	cmp r2, #0x97
	blt _022525C4
	beq _022525FE
	cmp r2, #0x9b
	beq _022525FE
	b _02252602
_022525C4:
	cmp r2, #0x27
	bgt _022525D0
	bge _022525FE
	cmp r2, #0x1a
	beq _022525FE
	b _02252602
_022525D0:
	cmp r2, #0x4b
	bgt _022525D8
	beq _022525FE
	b _02252602
_022525D8:
	cmp r2, #0x91
	beq _022525FE
	b _02252602
_022525DE:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	bgt _022525EE
	bge _022525FE
	cmp r2, #0xff
	beq _022525FE
	b _02252602
_022525EE:
	add r0, r1, #7
	cmp r2, r0
	bgt _022525F8
	beq _022525FE
	b _02252602
_022525F8:
	add r1, #0x10
	cmp r2, r1
	bne _02252602
_022525FE:
	mov r0, #1
	bx lr
_02252602:
	mov r0, #0
	bx lr
	nop
_02252608: .word 0x000003DE
	thumb_func_end BattleCtx_IsIdenticalToCurrentMove

	thumb_func_start ov12_0225260C
ov12_0225260C: ; 0x0225260C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	cmp r1, #0x70
	blo _02252624
	bl BattleSys_Random
	mov r1, #0x70
	bl _u32_div_f
	mov r2, #0
_02252624:
	lsl r0, r1, #1
	add r0, r1, r0
	ldr r1, _02252640 ; =sTypeEffectiveness
	ldrb r1, [r1, r0]
	strb r1, [r5]
	ldr r1, _02252644 ; =sTypeEffectiveness + 1
	ldrb r1, [r1, r0]
	strb r1, [r4]
	ldr r1, _02252648 ; =sTypeEffectiveness + 2
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	add r0, r2, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02252640: .word sTypeEffectiveness
_02252644: .word sTypeEffectiveness + 1
_02252648: .word sTypeEffectiveness + 2
	thumb_func_end ov12_0225260C

	thumb_func_start CalculateTypeEffectiveness
CalculateTypeEffectiveness: ; 0x0225264C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02252694 ; =sTypeEffectiveness
	add r5, r1, #0
	str r0, [sp]
	add r6, r2, #0
	mov r1, #0x28
_02252658:
	ldrb r2, [r4]
	ldr r0, [sp]
	cmp r0, r2
	bne _02252686
	ldrb r7, [r4, #1]
	cmp r5, r7
	bne _02252672
	ldrb r0, [r4, #2]
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
_02252672:
	cmp r6, r7
	bne _02252686
	cmp r5, r6
	beq _02252686
	ldrb r0, [r4, #2]
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	add r1, r0, #0
_02252686:
	add r4, r4, #3
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _02252658
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252694: .word sTypeEffectiveness
	thumb_func_end CalculateTypeEffectiveness

	thumb_func_start ov12_02252698
ov12_02252698: ; 0x02252698
	cmp r0, #0
	beq _022526C0
	cmp r0, #0xd6
	beq _022526C0
	ldr r2, _022526C8 ; =0x0000017F
	cmp r0, r2
	beq _022526C0
	add r1, r2, #0
	sub r1, #0x6d
	cmp r0, r1
	beq _022526C0
	sub r1, r2, #1
	cmp r0, r1
	beq _022526C0
	ldr r1, _022526CC ; =0x0000FF8A
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022526C4
_022526C0:
	mov r0, #1
	bx lr
_022526C4:
	mov r0, #0
	bx lr
	.balign 4, 0
_022526C8: .word 0x0000017F
_022526CC: .word 0x0000FF8A
	thumb_func_end ov12_02252698

	thumb_func_start ov12_022526D0
ov12_022526D0: ; 0x022526D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0xae
	bne _022526FC
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #7
	beq _022526F8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #7
	bne _022526FC
_022526F8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022526FC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022526D0

	thumb_func_start ov12_02252700
ov12_02252700: ; 0x02252700
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	mov r7, #0
	bl BattleSys_GetFieldSide
	str r0, [sp]
	ldr r0, _02252754 ; =0x00002DB8
	add r4, r5, r0
	mov r0, #0xc0
	mul r0, r6
	str r0, [sp, #4]
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0225274E
	ldr r0, _02252758 ; =0x0000219C
	add r1, r5, r6
	ldrb r0, [r1, r0]
	bl MaskOfFlagNo
	ldr r1, [sp]
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	bne _0225274E
	ldr r0, [sp, #4]
	ldrh r0, [r4, r0]
	bl ItemIdIsMail
	cmp r0, #0
	bne _0225274E
	mov r7, #1
_0225274E:
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02252754: .word 0x00002DB8
_02252758: .word 0x0000219C
	thumb_func_end ov12_02252700

	thumb_func_start ov12_0225275C
ov12_0225275C: ; 0x0225275C
	push {r3, lr}
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	ldr r0, _02252778 ; =0x00002DB8
	ldrh r0, [r1, r0]
	bl ItemIdIsMail
	cmp r0, #0
	bne _02252774
	mov r0, #1
	pop {r3, pc}
_02252774:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_02252778: .word 0x00002DB8
	thumb_func_end ov12_0225275C

	thumb_func_start WhirlwindCheck
WhirlwindCheck: ; 0x0225277C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r2, [r5, #0x6c]
	mov r1, #0xc0
	add r4, r2, #0
	ldr r2, _022527C8 ; =0x00002D74
	mul r4, r1
	add r3, r5, r2
	ldrb r4, [r3, r4]
	ldr r3, [r5, #0x64]
	mov r6, #0
	mul r1, r3
	add r1, r5, r1
	ldrb r1, [r1, r2]
	cmp r1, r4
	blo _022527A0
	mov r6, #1
	b _022527C4
_022527A0:
	bl BattleSys_Random
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _022527C8 ; =0x00002D74
	lsl r0, r0, #0x18
	ldrb r1, [r2, r1]
	lsr r0, r0, #0x18
	add r1, r1, r4
	mul r0, r1
	asr r0, r0, #8
	add r1, r0, #1
	lsr r0, r4, #2
	cmp r1, r0
	ble _022527C4
	mov r6, #1
_022527C4:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022527C8: .word 0x00002D74
	thumb_func_end WhirlwindCheck

	thumb_func_start GetBattlerAbility
GetBattlerAbility: ; 0x022527CC
	push {r4, r5}
	mov r2, #0xc0
	mul r2, r1
	mov r3, #0xb7
	mov r4, #2
	add r5, r0, r2
	lsl r3, r3, #6
	ldr r1, [r5, r3]
	lsl r4, r4, #0x14
	tst r4, r1
	beq _022527F0
	sub r3, #0x59
	ldrb r3, [r5, r3]
	cmp r3, #0x79
	beq _022527F0
	mov r0, #0
	pop {r4, r5}
	bx lr
_022527F0:
	mov r3, #6
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #7
	lsl r3, r3, #0xc
	tst r3, r4
	beq _0225280E
	ldr r3, _02252830 ; =0x00002D67
	add r4, r0, r2
	ldrb r3, [r4, r3]
	cmp r3, #0x1a
	bne _0225280E
	mov r0, #0
	pop {r4, r5}
	bx lr
_0225280E:
	mov r3, #1
	lsl r3, r3, #0xa
	tst r1, r3
	beq _02252826
	ldr r1, _02252830 ; =0x00002D67
	add r3, r0, r2
	ldrb r1, [r3, r1]
	cmp r1, #0x1a
	bne _02252826
	mov r0, #0
	pop {r4, r5}
	bx lr
_02252826:
	add r1, r0, r2
	ldr r0, _02252830 ; =0x00002D67
	ldrb r0, [r1, r0]
	pop {r4, r5}
	bx lr
	.balign 4, 0
_02252830: .word 0x00002D67
	thumb_func_end GetBattlerAbility

	thumb_func_start CheckBattlerAbilityIfNotIgnored
CheckBattlerAbilityIfNotIgnored: ; 0x02252834
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	mov r6, #0
	bl GetBattlerAbility
	cmp r0, #0x68
	beq _02252858
	ldr r1, [sp]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r4, r0
	bne _02252886
	mov r6, #1
	b _02252886
_02252858:
	ldr r1, [sp]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r4, r0
	bne _02252886
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x1c
	mul r0, r7
	ldr r3, [r1, r0]
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1f
	bne _02252886
	mov r2, #8
	orr r3, r2
	str r3, [r1, r0]
	ldr r1, _0225288C ; =0x0000213C
	lsl r0, r2, #0x14
	ldr r3, [r5, r1]
	orr r0, r3
	str r0, [r5, r1]
_02252886:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225288C: .word 0x0000213C
	thumb_func_end CheckBattlerAbilityIfNotIgnored

	thumb_func_start CanSwitchMon
CanSwitchMon: ; 0x02252890
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r6, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	str r6, [sp, #0x18]
	bl BattleSys_GetBattleType
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl BattleSys_GetParty
	str r0, [sp, #0x14]
	ldr r0, [sp]
	add r1, r4, #0
	bl BattleSys_GetPartySize
	add r7, r0, #0
	mov r0, #8
	tst r0, r5
	bne _022528D2
	mov r0, #0x10
	tst r0, r5
	beq _022528E6
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _022528E6
_022528D2:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	b _02252922
_022528E6:
	mov r0, #2
	tst r0, r5
	beq _02252910
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl BattleSys_GetBattlerIdPartner
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #8]
	b _02252922
_02252910:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_02252922:
	cmp r5, r7
	bge _0225296C
_02252926:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl GetPartyMonByIndex
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02252966
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _02252966
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02252966
	ldr r0, [sp, #0xc]
	cmp r0, r5
	beq _02252966
	ldr r0, [sp, #8]
	cmp r0, r5
	beq _02252966
	add r6, r6, #1
_02252966:
	add r5, r5, #1
	cmp r5, r7
	blt _02252926
_0225296C:
	ldr r0, [sp, #0x10]
	cmp r6, r0
	blt _02252976
	mov r0, #1
	str r0, [sp, #0x18]
_02252976:
	ldr r0, [sp, #0x18]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225297C: .word 0x0000219C
	thumb_func_end CanSwitchMon

	thumb_func_start CanEscape
CanEscape: ; 0x02252980
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r2, #0
	add r7, r0, #0
	add r4, r3, #0
	bl BattleSys_GetBattleType
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #8]
	cmp r0, #0x3f
	beq _022529B6
	mov r1, #0xa9
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	tst r0, r1
	bne _022529B6
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerAbility
	cmp r0, #0x32
	bne _022529BC
_022529B6:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022529BC:
	add r0, r7, #0
	add r1, r6, #0
	bl BattleSys_GetFieldSide
	add r0, r7, #0
	bl BattleSys_GetMaxBattlers
	mov r0, #0x17
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #9
	add r3, r6, #0
	bl CheckAbilityActive
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _02252A12
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerAbility
	cmp r0, #0x17
	beq _02252A12
	cmp r4, #0
	bne _022529F6
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022529F6:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0x17
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252A12:
	mov r0, #0x47
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	add r3, r6, #0
	bl CheckAbilityActive
	str r0, [sp, #4]
	cmp r0, #0
	beq _02252AC4
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _02252A9E
	ldr r0, [sp, #8]
	cmp r0, #0x6a
	beq _02252A9E
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerAbility
	cmp r0, #0x1a
	beq _02252AC4
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _02252B58 ; =0x00002DCC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bne _02252AC4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #2
	beq _02252AC4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #2
	beq _02252AC4
	cmp r4, #0
	bne _02252A82
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252A82:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0x47
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252A9E:
	cmp r4, #0
	bne _02252AA8
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252AA8:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0x47
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252AC4:
	mov r0, #0x2a
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	add r3, r6, #0
	bl CheckAbilityActive
	add r7, r0, #0
	beq _02252B1E
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	beq _02252AF8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	bne _02252B1E
_02252AF8:
	cmp r4, #0
	bne _02252B02
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B02:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl CreateNicknameTag
	str r0, [r4, #4]
	mov r0, #0x2a
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B1E:
	mov r0, #0xc0
	mul r0, r6
	add r3, r5, r0
	ldr r0, _02252B5C ; =0x00002DB0
	ldr r1, _02252B60 ; =0x0400E000
	ldr r2, [r3, r0]
	tst r2, r1
	bne _02252B38
	add r0, #0x10
	ldr r2, [r3, r0]
	lsr r0, r1, #0x10
	tst r0, r2
	beq _02252B50
_02252B38:
	cmp r4, #0
	bne _02252B42
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B42:
	mov r0, #0
	strb r0, [r4, #1]
	ldr r0, _02252B64 ; =0x0000031A
	add sp, #0x14
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B50:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02252B58: .word 0x00002DCC
_02252B5C: .word 0x00002DB0
_02252B60: .word 0x0400E000
_02252B64: .word 0x0000031A
	thumb_func_end CanEscape

	thumb_func_start BattleTryRun
BattleTryRun: ; 0x02252B68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	bl BattleSys_GetBattleType
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerHeldItemEffect
	mov r6, #0
	cmp r0, #0x3f
	bne _02252B9C
	mov r0, #0x75
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r4, #6
	ldr r1, [r3, r2]
	ldr r0, _02252C34 ; =0xFFFFFE7F
	mov r6, #1
	and r1, r0
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, r2]
	b _02252C30
_02252B9C:
	mov r0, #0xa9
	lsl r0, r0, #2
	tst r0, r7
	beq _02252BA8
	mov r6, #1
	b _02252C30
_02252BA8:
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x32
	bne _02252BCC
	mov r1, #0x75
	lsl r1, r1, #2
	add r5, r5, r1
	lsl r3, r4, #6
	ldr r2, [r5, r3]
	ldr r0, _02252C34 ; =0xFFFFFE7F
	sub r1, #0xd4
	and r0, r2
	orr r0, r1
	str r0, [r5, r3]
	mov r6, #1
	b _02252C30
_02252BCC:
	mov r0, #1
	add r1, r4, #0
	eor r1, r0
	mov r2, #0xc0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	ldr r3, _02252C38 ; =0x00002D46
	mul r2, r4
	add r2, r5, r2
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	cmp r2, r1
	bhs _02252C16
	lsl r0, r2, #7
	bl _s32_div_f
	ldr r1, _02252C3C ; =0x0000311E
	ldrb r2, [r5, r1]
	mov r1, #0x1e
	mul r1, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	bl BattleSys_Random
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x18
	sub r2, r2, r1
	mov r0, #0x18
	ror r2, r0
	add r0, r1, r2
	cmp r7, r0
	ble _02252C18
	mov r6, #1
	b _02252C18
_02252C16:
	add r6, r0, #0
_02252C18:
	cmp r6, #0
	bne _02252C28
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x63
	bl BattleController_EmitIncrementGameStat
_02252C28:
	ldr r0, _02252C3C ; =0x0000311E
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
_02252C30:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02252C34: .word 0xFFFFFE7F
_02252C38: .word 0x00002D46
_02252C3C: .word 0x0000311E
	thumb_func_end BattleTryRun

	thumb_func_start ov12_02252C40
ov12_02252C40: ; 0x02252C40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GetBattlerAbility
	cmp r0, #0x36
	bne _02252C6A
	mov r2, #0xc0
	mul r2, r4
	add r3, r5, r2
	ldr r2, _02252C70 ; =0x00002DC8
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r3, r2]
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r2, r2, #1
	and r1, r0
	lsr r2, r2, #0x1f
	cmp r1, r2
	bne _02252C6C
_02252C6A:
	mov r0, #0
_02252C6C:
	pop {r3, r4, r5, pc}
	nop
_02252C70: .word 0x00002DC8
	thumb_func_end ov12_02252C40

	thumb_func_start ov12_02252C74
ov12_02252C74: ; 0x02252C74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r5, r3, #0
	str r1, [sp, #4]
	bl BattleSys_GetMaxBattlers
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r1, r4, #0
	bl BattleSys_GetFieldSide
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r7, #0
	cmp r0, #0
	ble _02252CDE
	ldr r4, _02252CE4 ; =0x00002D4C
_02252C9E:
	ldr r0, [sp]
	add r1, r7, #0
	bl BattleSys_GetFieldSide
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02252CD4
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02252CD4
	mov r1, #0
	add r2, r6, #0
_02252CBE:
	ldrh r0, [r2, r4]
	cmp r5, r0
	beq _02252CCC
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #4
	blt _02252CBE
_02252CCC:
	cmp r1, #4
	beq _02252CD4
	mov r0, #1
	str r0, [sp, #4]
_02252CD4:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r6, #0xc0
	cmp r7, r0
	blt _02252C9E
_02252CDE:
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02252CE4: .word 0x00002D4C
	thumb_func_end ov12_02252C74

	thumb_func_start ov12_02252CE8
ov12_02252CE8: ; 0x02252CE8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r6, #0
	bl BattleSys_GetMaxBattlers
	add r3, r6, #0
	cmp r0, #0
	ble _02252D10
	mov r1, #0xb7
	lsl r1, r1, #6
_02252CFE:
	ldr r2, [r5, r1]
	tst r2, r4
	beq _02252D08
	mov r6, #1
	b _02252D10
_02252D08:
	add r3, r3, #1
	add r5, #0xc0
	cmp r3, r0
	blt _02252CFE
_02252D10:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02252CE8

	thumb_func_start ov12_02252D14
ov12_02252D14: ; 0x02252D14
	ldr r2, _02252D34 ; =0x0000216C
	mov r0, #0
	str r0, [r1, r2]
	add r0, r2, #0
	mov r3, #1
	sub r0, #0x1c
	str r3, [r1, r0]
	add r0, r2, #0
	sub r0, #0x30
	ldr r3, [r1, r0]
	ldr r0, _02252D38 ; =0xFFEFFFFF
	sub r2, #0x30
	and r0, r3
	str r0, [r1, r2]
	bx lr
	nop
_02252D34: .word 0x0000216C
_02252D38: .word 0xFFEFFFFF
	thumb_func_end ov12_02252D14

	thumb_func_start ov12_02252D3C
ov12_02252D3C: ; 0x02252D3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl BattleSys_GetMaxBattlers
	mov r2, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02252D60
	ldr r1, _02252DC0 ; =0x000021EC
_02252D52:
	ldr r0, [sp, #8]
	add r0, r0, r2
	strb r2, [r0, r1]
	ldr r0, [sp, #0x14]
	add r2, r2, #1
	cmp r2, r0
	blt _02252D52
_02252D60:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02252DBC
_02252D6E:
	ldr r0, [sp, #0x10]
	add r4, r0, #1
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bge _02252DB0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	add r6, r1, r0
_02252D7E:
	ldr r0, _02252DC0 ; =0x000021EC
	ldr r1, [sp, #8]
	ldrb r0, [r6, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r7, r0, r4
	ldr r0, _02252DC0 ; =0x000021EC
	ldrb r5, [r7, r0]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	bl ov12_0224FC48
	cmp r0, #0
	beq _02252DA8
	ldr r0, _02252DC0 ; =0x000021EC
	ldr r1, [sp, #0xc]
	strb r5, [r6, r0]
	strb r1, [r7, r0]
_02252DA8:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _02252D7E
_02252DB0:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02252D6E
_02252DBC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02252DC0: .word 0x000021EC
	thumb_func_end ov12_02252D3C

	thumb_func_start ov12_02252DC4
ov12_02252DC4: ; 0x02252DC4
	push {r3, r4}
	mov r2, #6
	lsl r2, r2, #6
	ldr r2, [r1, r2]
	mov r1, #7
	lsl r1, r1, #0xc
	mov r0, #0
	tst r1, r2
	beq _02252DEE
	ldr r4, _02252DF4 ; =ov12_0226CB7C
	add r2, r0, #0
_02252DDA:
	ldrh r1, [r4]
	cmp r3, r1
	bne _02252DE6
	mov r0, #1
	pop {r3, r4}
	bx lr
_02252DE6:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #6
	blo _02252DDA
_02252DEE:
	pop {r3, r4}
	bx lr
	nop
_02252DF4: .word ov12_0226CB7C
	thumb_func_end ov12_02252DC4

	thumb_func_start ov12_02252DF8
ov12_02252DF8: ; 0x02252DF8
	push {r3, r4}
	mov r4, #0xc0
	mul r4, r2
	add r2, r1, r4
	ldr r1, _02252E28 ; =0x00002DCC
	mov r0, #0
	ldr r1, [r2, r1]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	beq _02252E24
	ldr r4, _02252E2C ; =ov12_0226CBA2
	add r2, r0, #0
_02252E10:
	ldrh r1, [r4]
	cmp r3, r1
	bne _02252E1C
	mov r0, #1
	pop {r3, r4}
	bx lr
_02252E1C:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #0xe
	blo _02252E10
_02252E24:
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02252E28: .word 0x00002DCC
_02252E2C: .word ov12_0226CBA2
	thumb_func_end ov12_02252DF8

	thumb_func_start ov12_02252E30
ov12_02252E30: ; 0x02252E30
	push {r4, r5, r6, r7}
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	ldr r0, _02252E98 ; =0x00000183
	cmp r3, r0
	beq _02252E94
	ldr r4, [r1, #0x64]
	mov r0, #0xc0
	add r2, r4, #0
	mul r2, r0
	ldr r4, _02252E9C ; =0x00002DCC
	add r0, r1, r2
	ldr r4, [r0, r4]
	lsl r4, r4, #0x13
	lsr r7, r4, #0x1d
	cmp r7, #4
	beq _02252E94
	mov r6, #0
	cmp r7, #0
	bls _02252E6A
	ldr r4, _02252EA0 ; =0x00002DF0
_02252E5C:
	ldrh r5, [r0, r4]
	cmp r3, r5
	beq _02252E94
	add r6, r6, #1
	add r0, r0, #2
	cmp r6, r7
	blo _02252E5C
_02252E6A:
	add r2, r1, r2
	lsl r0, r6, #1
	add r2, r2, r0
	ldr r0, _02252EA0 ; =0x00002DF0
	strh r3, [r2, r0]
	sub r0, #0x24
	add r2, r1, r0
	ldr r3, [r1, #0x64]
	mov r0, #0xc0
	add r1, r3, #0
	mul r1, r0
	ldr r3, [r2, r1]
	ldr r0, _02252EA4 ; =0xFFFFE3FF
	and r0, r3
	lsl r3, r3, #0x13
	lsr r3, r3, #0x1d
	add r3, r3, #1
	lsl r3, r3, #0x1d
	lsr r3, r3, #0x13
	orr r0, r3
	str r0, [r2, r1]
_02252E94:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_02252E98: .word 0x00000183
_02252E9C: .word 0x00002DCC
_02252EA0: .word 0x00002DF0
_02252EA4: .word 0xFFFFE3FF
	thumb_func_end ov12_02252E30

	thumb_func_start GetBattlerLearnedMoveCount
GetBattlerLearnedMoveCount: ; 0x02252EA8
	mov r3, #0xc0
	mul r3, r2
	add r3, r1, r3
	ldr r1, _02252EC4 ; =0x00002D4C
	mov r0, #0
_02252EB2:
	ldrh r2, [r3, r1]
	cmp r2, #0
	beq _02252EC0
	add r0, r0, #1
	add r3, r3, #2
	cmp r0, #4
	blt _02252EB2
_02252EC0:
	bx lr
	nop
_02252EC4: .word 0x00002D4C
	thumb_func_end GetBattlerLearnedMoveCount

	thumb_func_start ov12_02252EC8
ov12_02252EC8: ; 0x02252EC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	bl GetBattlerAbility
	cmp r0, #0x60
	bne _02252EE0
	mov r6, #0
	b _02252EF4
_02252EE0:
	ldr r0, _02253044 ; =0x00002160
	ldr r6, [r5, r0]
	cmp r6, #0
	bne _02252EF4
	ldr r0, _02253048 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225304C ; =0x000003E2
	ldrb r6, [r1, r0]
_02252EF4:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0xa
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02252F24
	cmp r6, #0xd
	bne _02252F24
	cmp r7, r4
	beq _02252F24
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02253050 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl DamageDivide
	ldr r1, _02253054 ; =0x0000215C
	str r0, [r5, r1]
	mov r0, #0xb2
	str r0, [sp]
_02252F24:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0xb
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02252F6A
	cmp r6, #0xb
	bne _02252F6A
	ldr r0, _02253058 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02252F6A
	ldr r0, _02253048 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225305C ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02252F6A
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02253050 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl DamageDivide
	ldr r1, _02253054 ; =0x0000215C
	str r0, [r5, r1]
	mov r0, #0xb2
	str r0, [sp]
_02252F6A:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x12
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02252FB0
	cmp r6, #0xa
	bne _02252FB0
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02253060 ; =0x00002DAC
	ldr r0, [r1, r0]
	mov r1, #0x20
	tst r0, r1
	bne _02252FB0
	ldr r0, _02253058 ; =0x0000213C
	ldr r0, [r5, r0]
	tst r0, r1
	bne _02252FB0
	ldr r0, _02253048 ; =0x00003044
	ldr r3, [r5, r0]
	lsl r0, r3, #4
	add r2, r5, r0
	ldr r0, _0225305C ; =0x000003E1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _02252FAC
	add r1, #0xe5
	cmp r3, r1
	bne _02252FB0
_02252FAC:
	mov r0, #0xb3
	str r0, [sp]
_02252FB0:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x2b
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02252FDC
	ldr r0, _02253048 ; =0x00003044
	ldr r2, _02253064 ; =ov12_0226EC20
	ldr r3, [r5, r0]
	mov r1, #0
_02252FC8:
	ldrh r0, [r2]
	cmp r3, r0
	bne _02252FD4
	mov r0, #0xb5
	str r0, [sp]
	b _02252FDC
_02252FD4:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #0xc
	blo _02252FC8
_02252FDC:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x4e
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02252FF8
	cmp r6, #0xd
	bne _02252FF8
	cmp r7, r4
	beq _02252FF8
	mov r0, #0xb6
	str r0, [sp]
_02252FF8:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0x57
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _0225303E
	cmp r6, #0xb
	bne _0225303E
	ldr r0, _02253058 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _0225303E
	ldr r0, _02253048 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225305C ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0225303E
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02253050 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl DamageDivide
	ldr r1, _02253054 ; =0x0000215C
	str r0, [r5, r1]
	mov r0, #0xb2
	str r0, [sp]
_0225303E:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253044: .word 0x00002160
_02253048: .word 0x00003044
_0225304C: .word 0x000003E2
_02253050: .word 0x00002D90
_02253054: .word 0x0000215C
_02253058: .word 0x0000213C
_0225305C: .word 0x000003E1
_02253060: .word 0x00002DAC
_02253064: .word ov12_0226EC20
	thumb_func_end ov12_02252EC8

	thumb_func_start ov12_02253068
ov12_02253068: ; 0x02253068
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0
	bl GetBattlerAbility
	cmp r0, #3
	beq _02253086
	cmp r0, #0x3d
	beq _022530CC
	b _0225314E
_02253086:
	mov r2, #0xc0
	add r0, r4, #0
	mul r0, r2
	ldr r3, _0225316C ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _0225314E
	add r1, r3, #0
	sub r1, #0x31
	ldrsb r1, [r0, r1]
	cmp r1, #0xc
	bge _0225314E
	add r2, #0x90
	ldr r1, [r5, r2]
	add r3, #0x48
	ldr r0, [r0, r3]
	add r1, r1, #1
	cmp r1, r0
	beq _0225314E
	add r0, r5, #0
	mov r1, #0x11
	add r0, #0x8c
	str r1, [r0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r6, #1
	b _0225314E
_022530CC:
	ldr r1, _02253170 ; =0x00002DAC
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	add r0, r5, r1
	str r0, [sp, #8]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0225314E
	add r0, r5, r7
	sub r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0225314E
	ldr r0, [sp]
	bl BattleSys_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _0225314E
	ldr r0, [sp, #8]
	mov r1, #7
	ldr r0, [r0, r7]
	tst r1, r0
	beq _0225310E
	mov r0, #0x13
	add r1, r6, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02253142
_0225310E:
	ldr r1, _02253174 ; =0x00000F88
	tst r1, r0
	beq _0225311E
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02253142
_0225311E:
	mov r1, #0x10
	tst r1, r0
	beq _0225312E
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02253142
_0225312E:
	mov r1, #0x40
	tst r0, r1
	beq _0225313C
	mov r0, #3
	add r1, #0xf0
	str r0, [r5, r1]
	b _02253142
_0225313C:
	mov r0, #4
	add r1, #0xf0
	str r0, [r5, r1]
_02253142:
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #0xbe
	str r0, [sp, #4]
	mov r6, #1
_0225314E:
	cmp r6, #1
	bne _02253164
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ReadBattleScriptFromNarc
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
_02253164:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225316C: .word 0x00002D8C
_02253170: .word 0x00002DAC
_02253174: .word 0x00000F88
	thumb_func_end ov12_02253068

	thumb_func_start DamageDivide
DamageDivide: ; 0x02253178
	push {r4, lr}
	cmp r0, #0
	beq _02253192
	bge _02253186
	mov r4, #0
	mvn r4, r4
	b _02253188
_02253186:
	mov r4, #1
_02253188:
	bl _s32_div_f
	cmp r0, #0
	bne _02253192
	add r0, r4, #0
_02253192:
	pop {r4, pc}
	thumb_func_end DamageDivide

	thumb_func_start ov12_02253194
ov12_02253194: ; 0x02253194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	add r6, r0, #0
	add r5, r1, #0
	bl BattleSys_GetMaxBattlers
	str r0, [sp, #0x80]
	mov r0, #0
	str r0, [sp, #0x84]
	str r0, [sp, #0xcc]
	thumb_func_end ov12_02253194

	thumb_func_start ov12_022531A8
ov12_022531A8: ; 0x022531A8
	ldr r0, [r5, #0x58]
	cmp r0, #0xf
	bls _022531B2
	bl _02253D80
_022531B2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022531BE: ; jump table
	.short _022531DE - _022531BE - 2 ; case 0
	.short _02253274 - _022531BE - 2 ; case 1
	.short _02253338 - _022531BE - 2 ; case 2
	.short _02253448 - _022531BE - 2 ; case 3
	.short _022534BE - _022531BE - 2 ; case 4
	.short _02253624 - _022531BE - 2 ; case 5
	.short _02253764 - _022531BE - 2 ; case 6
	.short _02253974 - _022531BE - 2 ; case 7
	.short _02253ACC - _022531BE - 2 ; case 8
	.short _02253BA4 - _022531BE - 2 ; case 9
	.short _02253C18 - _022531BE - 2 ; case 10
	.short _02253CA6 - _022531BE - 2 ; case 11
	.short _02253CC2 - _022531BE - 2 ; case 12
	.short _02253CFC - _022531BE - 2 ; case 13
	.short _02253D38 - _022531BE - 2 ; case 14
	.short _02253D78 - _022531BE - 2 ; case 15
_022531DE:
	ldr r0, _022534D0 ; =0x00003121
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0225326A
	add r0, r6, #0
	bl ov12_0223BAF8
	ldr r1, _022534D4 ; =0x000003E9
	cmp r0, r1
	bgt _0225321A
	bge _0225324C
	cmp r0, #0xa
	bhi _0225325E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02253204: ; jump table
	.short _0225325E - _02253204 - 2 ; case 0
	.short _02253222 - _02253204 - 2 ; case 1
	.short _02253222 - _02253204 - 2 ; case 2
	.short _02253222 - _02253204 - 2 ; case 3
	.short _0225322C - _02253204 - 2 ; case 4
	.short _0225322C - _02253204 - 2 ; case 5
	.short _0225322C - _02253204 - 2 ; case 6
	.short _02253238 - _02253204 - 2 ; case 7
	.short _0225325E - _02253204 - 2 ; case 8
	.short _02253242 - _02253204 - 2 ; case 9
	.short _02253242 - _02253204 - 2 ; case 10
_0225321A:
	ldr r1, _022534D8 ; =0x000003EA
	cmp r0, r1
	beq _02253256
	b _0225325E
_02253222:
	ldr r0, _022534DC ; =0x0000010F
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225325E
_0225322C:
	mov r0, #0x11
	lsl r0, r0, #4
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225325E
_02253238:
	ldr r0, _022534E0 ; =0x00000111
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225325E
_02253242:
	ldr r0, _022534E4 ; =0x00000112
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225325E
_0225324C:
	ldr r0, _022534E8 ; =0x00000126
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225325E
_02253256:
	ldr r0, _022534EC ; =0x00000127
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
_0225325E:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _0225326A
	ldr r0, _022534D0 ; =0x00003121
	mov r1, #1
	strb r1, [r5, r0]
_0225326A:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02253D80
_02253274:
	ldr r0, [sp, #0x80]
	mov r7, #0
	cmp r0, #0
	ble _02253324
	ldr r0, _022534F0 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0x90]
_02253282:
	ldr r0, _022534F4 ; =0x000021EC
	add r1, r5, r7
	ldrb r4, [r1, r0]
	add r0, r6, #0
	mov r2, #0
	add r1, r4, #0
	bl ov12_0223ABB8
	str r0, [sp, #0x88]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl ov12_0223ABB8
	add r3, r0, #0
	ldr r2, [sp, #0x88]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_022585B8
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xc0
	mul r0, r4
	ldr r1, [sp, #0x90]
	str r0, [sp, #0x8c]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0225331C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0xff
	beq _0225331C
	ldr r0, [sp, #0x8c]
	ldr r2, _022534F8 ; =0x00002D8C
	add r0, r5, r0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _0225331C
	ldr r2, _022534FC ; =0x00002DB8
	ldrh r0, [r0, r2]
	cmp r0, #0x70
	beq _0225331C
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	add r0, r2, #0
	sub r0, #0x2c
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225331C
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x24
	bne _0225331C
	ldr r1, [sp, #0x90]
	ldr r0, [sp, #0x8c]
	ldr r1, [r1, r0]
	mov r0, #4
	add r2, r1, #0
	orr r2, r0
	ldr r1, [sp, #0x90]
	ldr r0, [sp, #0x8c]
	str r2, [r1, r0]
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #0xbb
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253324
_0225331C:
	ldr r0, [sp, #0x80]
	add r7, r7, #1
	cmp r7, r0
	blt _02253282
_02253324:
	ldr r0, [sp, #0x80]
	cmp r7, r0
	beq _0225332E
	bl _02253D80
_0225332E:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02253D80
_02253338:
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _02253436
	ldr r0, _022534F0 ; =0x00002D68
	add r7, r5, r0
	mov r0, #1
	str r0, [sp, #0xbc]
	str r0, [sp, #0xb8]
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb0]
_02253350:
	ldr r0, [sp, #0x2c]
	add r1, r5, r0
	ldr r0, _022534F4 ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r7, r4]
	str r1, [sp, #0x10]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _0225341A
	ldr r0, _022534F8 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225341A
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x2d
	bgt _02253386
	bge _022533B6
	cmp r0, #2
	beq _02253394
	b _0225341A
_02253386:
	cmp r0, #0x46
	bgt _0225338E
	beq _022533D8
	b _0225341A
_0225338E:
	cmp r0, #0x75
	beq _022533FA
	b _0225341A
_02253394:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xb0]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #2
	tst r0, r1
	bne _0225341A
	mov r0, #0xb7
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225341A
_022533B6:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xb4]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #8
	tst r0, r1
	bne _0225341A
	mov r0, #0xb8
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225341A
_022533D8:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xb8]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _0225341A
	mov r0, #0xb9
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _0225341A
_022533FA:
	ldr r0, [r7, r4]
	ldr r1, [sp, #0xbc]
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x80
	tst r0, r1
	bne _0225341A
	mov r0, #0xfc
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
_0225341A:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _0225342A
	mov r1, #0x46
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _02253436
_0225342A:
	ldr r0, [sp, #0x2c]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x2c]
	cmp r1, r0
	blt _02253350
_02253436:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	bne _022534B0
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02253D80
_02253448:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _022534AA
	ldr r0, _022534F0 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0x94]
_02253456:
	ldr r0, _022534F4 ; =0x000021EC
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #0x94]
	str r1, [sp, #0x14]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _022534A2
	ldr r0, _022534F8 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022534A2
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x16
	bne _022534A2
	ldr r0, [sp, #0x94]
	ldr r1, [r0, r7]
	mov r0, #2
	orr r1, r0
	ldr r0, [sp, #0x94]
	str r1, [r0, r7]
	mov r1, #0x46
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xba
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _022534AA
_022534A2:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02253456
_022534AA:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	beq _022534B4
_022534B0:
	bl _02253D80
_022534B4:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	bl _02253D80
_022534BE:
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _022534CA
	b _02253612
_022534CA:
	ldr r0, _022534F0 ; =0x00002D68
	b _02253500
	nop
_022534D0: .word 0x00003121
_022534D4: .word 0x000003E9
_022534D8: .word 0x000003EA
_022534DC: .word 0x0000010F
_022534E0: .word 0x00000111
_022534E4: .word 0x00000112
_022534E8: .word 0x00000126
_022534EC: .word 0x00000127
_022534F0: .word 0x00002D68
_022534F4: .word 0x000021EC
_022534F8: .word 0x00002D8C
_022534FC: .word 0x00002DB8
_02253500:
	add r0, r5, r0
	str r0, [sp, #0x9c]
_02253504:
	ldr r0, [sp, #0x30]
	add r1, r5, r0
	ldr r0, _02253804 ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	mul r0, r1
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x9c]
	str r0, [sp, #0x98]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02253604
	ldr r0, [sp, #0x98]
	add r1, r5, r0
	ldr r0, _02253808 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253604
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x58
	bne _02253604
	mov r0, #0
	str r0, [sp, #0x78]
	str r0, [sp, #0x74]
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _022535BE
	add r4, r5, #0
_02253546:
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	bl BattleSys_GetFieldSide
	add r7, r0, #0
	ldr r1, [sp, #0x7c]
	add r0, r6, #0
	bl BattleSys_GetFieldSide
	cmp r7, r0
	beq _022535B0
	ldr r0, _0225380C ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	bne _022535B0
	ldr r0, _02253808 ; =0x00002D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022535B0
	ldr r0, _02253810 ; =0x00002D5A
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	ldr r0, _02253814 ; =ov12_0226CB88
	add r1, r0, r2
	ldr r0, _02253818 ; =0x00002D44
	ldrb r1, [r1, #1]
	ldrh r3, [r4, r0]
	ldr r0, _02253814 ; =ov12_0226CB88
	ldrb r0, [r0, r2]
	mul r0, r3
	bl _s32_div_f
	ldr r1, [sp, #0x78]
	add r0, r1, r0
	str r0, [sp, #0x78]
	ldr r0, _0225381C ; =0x00002D5D
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	ldr r0, _02253814 ; =ov12_0226CB88
	add r1, r0, r2
	ldr r0, _02253820 ; =0x00002D4A
	ldrb r1, [r1, #1]
	ldrh r3, [r4, r0]
	ldr r0, _02253814 ; =ov12_0226CB88
	ldrb r0, [r0, r2]
	mul r0, r3
	bl _s32_div_f
	ldr r1, [sp, #0x74]
	add r0, r1, r0
	str r0, [sp, #0x74]
_022535B0:
	ldr r0, [sp, #0x7c]
	add r4, #0xc0
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x7c]
	cmp r1, r0
	blt _02253546
_022535BE:
	ldr r1, [sp, #0x9c]
	ldr r0, [sp, #0x98]
	ldr r1, [r1, r0]
	mov r0, #8
	add r2, r1, #0
	orr r2, r0
	ldr r1, [sp, #0x9c]
	ldr r0, [sp, #0x98]
	str r2, [r1, r0]
	ldr r1, [sp, #0x78]
	ldr r0, [sp, #0x74]
	add r0, r1, r0
	beq _02253604
	ldr r0, [sp, #0x74]
	cmp r1, r0
	blt _022535E2
	mov r1, #0x12
	b _022535E4
_022535E2:
	mov r1, #0xf
_022535E4:
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	add r1, r5, #0
	ldr r0, [sp, #0x18]
	add r1, #0x94
	str r0, [r1]
	mov r0, #0xc
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253612
_02253604:
	ldr r0, [sp, #0x30]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x30]
	cmp r1, r0
	bge _02253612
	b _02253504
_02253612:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _0225361C
	b _02253D80
_0225361C:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253624:
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _02253630
	b _02253752
_02253630:
	ldr r0, _02253824 ; =0x00002D68
	add r7, r5, r0
_02253634:
	ldr r0, [sp, #0x34]
	add r1, r5, r0
	ldr r0, _02253804 ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r7, r4]
	str r1, [sp, #0x1c]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _02253744
	ldr r0, _02253808 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253744
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x6b
	bne _02253744
	ldr r1, [r7, r4]
	mov r0, #0x10
	orr r0, r1
	str r0, [r7, r4]
	mov r0, #0
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _02253730
	add r0, r5, r4
	str r5, [sp, #0x50]
	str r0, [sp, #0x4c]
_0225367A:
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl BattleSys_GetFieldSide
	add r4, r0, #0
	ldr r1, [sp, #0x70]
	add r0, r6, #0
	bl BattleSys_GetFieldSide
	cmp r4, r0
	beq _0225371E
	ldr r1, [sp, #0x50]
	ldr r0, _02253808 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225371E
	mov r0, #0
	str r0, [sp, #0x6c]
	add r7, r1, #0
_022536A0:
	ldr r0, _02253828 ; =0x00002D4C
	ldrh r4, [r7, r0]
	cmp r4, #0
	beq _0225370C
	mov r0, #0
	str r0, [sp, #0xc8]
	ldr r0, [sp, #0x70]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, _0225382C ; =0x00002144
	mov r3, #0
	ldr r0, [r5, r0]
	str r0, [sp, #8]
	add r0, sp, #0xc8
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov12_02251D28
	ldr r1, _0225382C ; =0x00002144
	str r0, [r5, r1]
	ldr r1, [sp, #0xc8]
	mov r0, #8
	tst r0, r1
	bne _0225370C
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0225865C
	cmp r0, #0
	bne _0225370C
	ldr r1, [sp, #0xc8]
	mov r0, #2
	tst r0, r1
	bne _02253706
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _02253830 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x26
	bne _0225370C
	ldr r1, [sp, #0x4c]
	ldr r0, _02253834 ; =0x00002D74
	ldr r2, [sp, #0x50]
	ldrb r0, [r1, r0]
	ldr r1, _02253834 ; =0x00002D74
	ldrb r1, [r2, r1]
	cmp r0, r1
	bhi _0225370C
_02253706:
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253718
_0225370C:
	ldr r0, [sp, #0x6c]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x6c]
	cmp r0, #4
	blt _022536A0
_02253718:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	beq _02253730
_0225371E:
	ldr r0, [sp, #0x50]
	add r0, #0xc0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x70]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x70]
	cmp r1, r0
	blt _0225367A
_02253730:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _02253752
	mov r1, #0x46
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xc2
	str r0, [sp, #0xcc]
	b _02253752
_02253744:
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _02253752
	b _02253634
_02253752:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _0225375C
	b _02253D80
_0225375C:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253764:
	mov r0, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _02253770
	b _02253962
_02253770:
	ldr r0, _02253824 ; =0x00002D68
	add r7, r5, r0
_02253774:
	ldr r0, [sp, #0x38]
	add r1, r5, r0
	ldr r0, _02253804 ; =0x000021EC
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r7, r4]
	str r1, [sp, #0x20]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bne _022537A2
	ldr r0, _02253808 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022537A2
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x6c
	beq _022537A4
_022537A2:
	b _02253954
_022537A4:
	ldr r1, [r7, r4]
	mov r0, #0x20
	orr r0, r1
	str r0, [r7, r4]
	mov r4, #0
	ldr r0, [sp, #0x80]
	str r4, [sp, #0x5c]
	str r4, [sp, #0x68]
	cmp r0, #0
	bgt _022537BA
	b _022538EE
_022537BA:
	str r5, [sp, #0x58]
_022537BC:
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	bl BattleSys_GetFieldSide
	add r7, r0, #0
	ldr r1, [sp, #0x68]
	add r0, r6, #0
	bl BattleSys_GetFieldSide
	cmp r7, r0
	bne _022537D4
	b _022538DA
_022537D4:
	ldr r1, [sp, #0x58]
	ldr r0, _02253808 ; =0x00002D8C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022538DA
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	mov r0, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x54]
_022537EC:
	ldr r1, [sp, #0x54]
	ldr r0, _02253828 ; =0x00002D4C
	ldrh r7, [r1, r0]
	ldr r1, _02253838 ; =0x000003E1
	lsl r0, r7, #4
	add r0, r5, r0
	ldrb r1, [r0, r1]
	str r1, [sp, #0x60]
	cmp r1, #1
	bne _022538AC
	ldr r1, _02253830 ; =0x000003DE
	b _0225383C
	.balign 4, 0
_02253804: .word 0x000021EC
_02253808: .word 0x00002D8C
_0225380C: .word 0x00002DB0
_02253810: .word 0x00002D5A
_02253814: .word ov12_0226CB88
_02253818: .word 0x00002D44
_0225381C: .word 0x00002D5D
_02253820: .word 0x00002D4A
_02253824: .word 0x00002D68
_02253828: .word 0x00002D4C
_0225382C: .word 0x00002144
_02253830: .word 0x000003DE
_02253834: .word 0x00002D74
_02253838: .word 0x000003E1
_0225383C:
	ldrh r0, [r0, r1]
	cmp r0, #0x59
	bgt _0225384A
	bge _02253874
	cmp r0, #0x26
	beq _02253858
	b _02253890
_0225384A:
	cmp r0, #0x90
	bgt _02253852
	beq _02253874
	b _02253890
_02253852:
	cmp r0, #0xe3
	beq _02253874
	b _02253890
_02253858:
	cmp r4, #0x96
	blo _0225386A
	bne _022538CA
	add r0, r6, #0
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _022538CA
_0225386A:
	mov r4, #0x96
	add r0, r4, #0
	add r0, #0x8e
	str r7, [r5, r0]
	b _022538CA
_02253874:
	cmp r4, #0x78
	blo _02253886
	bne _022538CA
	add r0, r6, #0
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _022538CA
_02253886:
	mov r4, #0x78
	add r0, r4, #0
	add r0, #0xac
	str r7, [r5, r0]
	b _022538CA
_02253890:
	cmp r4, #0x50
	blo _022538A2
	bne _022538CA
	add r0, r6, #0
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _022538CA
_022538A2:
	mov r4, #0x50
	add r0, r4, #0
	add r0, #0xd4
	str r7, [r5, r0]
	b _022538CA
_022538AC:
	add r0, r1, #0
	cmp r4, r0
	blo _022538C2
	cmp r4, r0
	bne _022538CA
	add r0, r6, #0
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _022538CA
_022538C2:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r4, [sp, #0x60]
	str r7, [r5, r0]
_022538CA:
	ldr r0, [sp, #0x54]
	add r0, r0, #2
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	cmp r0, #4
	blt _022537EC
_022538DA:
	ldr r0, [sp, #0x58]
	add r0, #0xc0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x68]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x68]
	cmp r1, r0
	bge _022538EE
	b _022537BC
_022538EE:
	cmp r4, #0
	beq _02253904
	mov r1, #0x46
	ldr r0, [sp, #0x20]
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xc3
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253962
_02253904:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _02253962
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02253DA0
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl GetBattlerLearnedMoveCount
	add r4, r0, #0
	add r0, r6, #0
	bl BattleSys_Random
	add r1, r4, #0
	bl _s32_div_f
	mov r0, #0xc0
	add r2, r7, #0
	mul r2, r0
	lsl r3, r1, #1
	add r1, r5, r2
	add r2, r3, r1
	ldr r1, _02253C2C ; =0x00002D4C
	ldrh r2, [r2, r1]
	add r1, r0, #0
	add r1, #0x64
	str r2, [r5, r1]
	ldr r1, [sp, #0x20]
	add r0, #0x58
	str r1, [r5, r0]
	mov r0, #0xc3
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253962
_02253954:
	ldr r0, [sp, #0x38]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x38]
	cmp r1, r0
	bge _02253962
	b _02253774
_02253962:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _0225396C
	b _02253D80
_0225396C:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253974:
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bgt _02253980
	b _02253ABA
_02253980:
	ldr r0, _02253C30 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xa0]
_02253986:
	ldr r0, [sp, #0x3c]
	add r1, r5, r0
	ldr r0, _02253C34 ; =0x000021EC
	ldrb r4, [r1, r0]
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	bne _02253A9A
	ldr r0, _02253C38 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253A9A
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x77
	bne _02253A9A
	ldr r0, [sp, #0xa0]
	ldr r1, [r0, r7]
	mov r0, #1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, [sp, #0xa0]
	str r1, [r0, r7]
	add r0, r6, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _02253A74
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov12_0223ABB8
	str r0, [sp, #0xc0]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl ov12_0223ABB8
	ldr r2, [sp, #0xc0]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02253C38 ; =0x00002D8C
	add r1, r5, r1
	ldr r3, [r1, r2]
	str r0, [sp, #0xc4]
	cmp r3, #0
	beq _02253A38
	add r2, #0x2c
	ldrh r2, [r1, r2]
	cmp r2, #0
	beq _02253A38
	mov r2, #0xc0
	mul r2, r0
	add r0, r5, r2
	ldr r2, _02253C38 ; =0x00002D8C
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _02253A38
	ldr r2, _02253C3C ; =0x00002DB8
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _02253A38
	add r0, r6, #0
	bl BattleSys_Random
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	add r0, sp, #0xc0
	ldr r1, [r0, r1]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02253C3C ; =0x00002DB8
	ldrh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253A9A
_02253A38:
	cmp r3, #0
	beq _02253A50
	ldr r0, _02253C3C ; =0x00002DB8
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _02253A50
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253A9A
_02253A50:
	ldr r1, [sp, #0xc4]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02253C38 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02253A9A
	ldr r1, _02253C3C ; =0x00002DB8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02253A9A
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253A9A
_02253A74:
	mov r0, #1
	add r1, r4, #0
	eor r1, r0
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02253C38 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02253A9A
	ldr r1, _02253C3C ; =0x00002DB8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02253A9A
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
_02253A9A:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _02253AAC
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #0xfd
	str r0, [sp, #0xcc]
	b _02253ABA
_02253AAC:
	ldr r0, [sp, #0x3c]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x3c]
	cmp r1, r0
	bge _02253ABA
	b _02253986
_02253ABA:
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	beq _02253AC4
	b _02253D80
_02253AC4:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253ACC:
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	ble _02253B94
	ldr r0, _02253C30 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xa4]
_02253ADC:
	ldr r0, [sp, #0x40]
	add r1, r5, r0
	ldr r0, _02253C34 ; =0x000021EC
	ldrb r7, [r1, r0]
	mov r0, #0xc0
	add r4, r7, #0
	mul r4, r0
	ldr r0, [sp, #0xa4]
	ldr r0, [r0, r4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _02253B38
	ldr r0, _02253C38 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	str r1, [sp, #0x48]
	cmp r0, #0
	beq _02253B38
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x70
	bne _02253B38
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [sp, #0x48]
	ldr r0, _02253C40 ; =0x00002DD8
	ldr r0, [r1, r0]
	cmp r2, r0
	bgt _02253B38
	ldr r0, [sp, #0xa4]
	mov r2, #0x40
	ldr r0, [r0, r4]
	add r1, r0, #0
	orr r1, r2
	ldr r0, [sp, #0xa4]
	add r2, #0xd8
	str r1, [r0, r4]
	str r7, [r5, r2]
	mov r0, #0xc4
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253B94
_02253B38:
	ldr r0, [sp, #0xa4]
	ldr r0, [r0, r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _02253B88
	ldr r0, _02253C38 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r0]
	str r1, [sp, #0x44]
	cmp r0, #0
	beq _02253B88
	add r0, r5, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x70
	bne _02253B88
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [sp, #0x44]
	ldr r0, _02253C40 ; =0x00002DD8
	ldr r0, [r1, r0]
	sub r0, r2, r0
	cmp r0, #5
	bne _02253B88
	ldr r0, [sp, #0xa4]
	mov r2, #0x80
	ldr r0, [r0, r4]
	add r1, r0, #0
	orr r1, r2
	ldr r0, [sp, #0xa4]
	add r2, #0x98
	str r1, [r0, r4]
	str r7, [r5, r2]
	mov r0, #0xc5
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253B94
_02253B88:
	ldr r0, [sp, #0x40]
	add r1, r0, #1
	ldr r0, [sp, #0x80]
	str r1, [sp, #0x40]
	cmp r1, r0
	blt _02253ADC
_02253B94:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r1, r0
	bne _02253C0E
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253BA4:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02253C08
	ldr r0, _02253C30 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xa8]
_02253BB2:
	ldr r0, _02253C34 ; =0x000021EC
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #0xa8]
	str r1, [sp, #0x24]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	bne _02253C00
	ldr r0, _02253C38 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253C00
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x68
	bne _02253C00
	ldr r0, [sp, #0xa8]
	mov r2, #2
	ldr r0, [r0, r7]
	lsl r2, r2, #8
	add r1, r0, #0
	orr r1, r2
	ldr r0, [sp, #0xa8]
	sub r2, #0xe8
	str r1, [r0, r7]
	ldr r0, [sp, #0x24]
	str r0, [r5, r2]
	mov r0, #0xb1
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253C08
_02253C00:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02253BB2
_02253C08:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	beq _02253C10
_02253C0E:
	b _02253D80
_02253C10:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253C18:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02253C98
	ldr r0, _02253C30 ; =0x00002D68
	add r0, r5, r0
	str r0, [sp, #0xac]
_02253C26:
	ldr r0, _02253C34 ; =0x000021EC
	b _02253C44
	nop
_02253C2C: .word 0x00002D4C
_02253C30: .word 0x00002D68
_02253C34: .word 0x000021EC
_02253C38: .word 0x00002D8C
_02253C3C: .word 0x00002DB8
_02253C40: .word 0x00002DD8
_02253C44:
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #0xac]
	str r1, [sp, #0x28]
	ldr r0, [r0, r7]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	bne _02253C90
	ldr r0, _02253D90 ; =0x00002D8C
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02253C90
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x2e
	bne _02253C90
	ldr r0, [sp, #0xac]
	ldr r1, [r0, r7]
	mov r0, #1
	lsl r0, r0, #0xa
	orr r1, r0
	ldr r0, [sp, #0xac]
	str r1, [r0, r7]
	mov r1, #0x46
	ldr r0, [sp, #0x28]
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #5
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253C98
_02253C90:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02253C26
_02253C98:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	bne _02253D80
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253CA6:
	add r0, r6, #0
	add r1, r5, #0
	add r2, sp, #0xcc
	bl ov12_02256914
	cmp r0, #1
	bne _02253CBA
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253D80
_02253CBA:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253CC2:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02253CF4
	mov r7, #2
_02253CCC:
	ldr r1, _02253D94 ; =0x000021EC
	add r2, r5, r4
	ldrb r2, [r2, r1]
	mov r1, #0xc0
	add r0, r5, #0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02253D98 ; =0x00002DB8
	ldrh r1, [r2, r1]
	mov r2, #1
	bl GetItemHoldEffect
	cmp r0, #0x3a
	bne _02253CEC
	ldr r0, _02253D9C ; =0x00002168
	str r7, [r5, r0]
_02253CEC:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02253CCC
_02253CF4:
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253CFC:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02253D2A
	ldr r7, _02253D94 ; =0x000021EC
_02253D06:
	add r2, r5, r4
	ldrb r2, [r2, r7]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov12_022543A0
	cmp r0, #1
	bne _02253D22
	mov r0, #0xdd
	str r0, [sp, #0xcc]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253D2A
_02253D22:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02253D06
_02253D2A:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	bne _02253D80
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253D38:
	ldr r0, [sp, #0x80]
	mov r4, #0
	cmp r0, #0
	ble _02253D6A
_02253D40:
	ldr r0, _02253D94 ; =0x000021EC
	add r1, r5, r4
	ldrb r7, [r1, r0]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, sp, #0xcc
	bl ov12_02254E7C
	cmp r0, #1
	bne _02253D62
	mov r0, #0x46
	lsl r0, r0, #2
	str r7, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x84]
	b _02253D6A
_02253D62:
	ldr r0, [sp, #0x80]
	add r4, r4, #1
	cmp r4, r0
	blt _02253D40
_02253D6A:
	ldr r0, [sp, #0x80]
	cmp r4, r0
	bne _02253D80
	ldr r0, [r5, #0x58]
	add r0, r0, #1
	str r0, [r5, #0x58]
	b _02253D80
_02253D78:
	mov r0, #0
	str r0, [r5, #0x58]
	mov r0, #2
	str r0, [sp, #0x84]
_02253D80:
	ldr r0, [sp, #0x84]
	cmp r0, #0
	bne _02253D8A
	bl ov12_022531A8
_02253D8A:
	ldr r0, [sp, #0xcc]
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02253D90: .word 0x00002D8C
_02253D94: .word 0x000021EC
_02253D98: .word 0x00002DB8
_02253D9C: .word 0x00002168
	thumb_func_end ov12_022531A8

	thumb_func_start ov12_02253DA0
ov12_02253DA0: ; 0x02253DA0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _02253DF8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov12_0223ABB8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov12_0223ABB8
	str r0, [sp, #4]
	add r0, r5, #0
	bl BattleSys_Random
	mov r3, #1
	add r2, r0, #0
	and r2, r3
	lsl r0, r2, #2
	add r1, sp, #0
	ldr r0, [r1, r0]
	mov r4, #0xc0
	mul r4, r0
	add r5, r6, r4
	ldr r4, _02253E00 ; =0x00002D8C
	ldr r4, [r5, r4]
	cmp r4, #0
	bne _02253DFC
	add r0, r2, #0
	eor r0, r3
	lsl r0, r0, #2
	add sp, #8
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_02253DF8:
	mov r0, #1
	eor r0, r4
_02253DFC:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02253E00: .word 0x00002D8C
	thumb_func_end ov12_02253DA0

	thumb_func_start CheckAbilityEffectOnHit
CheckAbilityEffectOnHit: ; 0x02253E04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #0x6c]
	add r7, r0, #0
	add r4, r2, #0
	mov r6, #0
	cmp r1, #0xff
	bne _02253E18
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02253E18:
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #1
	bne _02253E26
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02253E26:
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x26
	bgt _02253E56
	blt _02253E36
	b _022540FE
_02253E36:
	cmp r0, #0x10
	bgt _02253E42
	bge _02253F04
	cmp r0, #9
	beq _02253E6E
	b _02254382
_02253E42:
	cmp r0, #0x1b
	bgt _02253E54
	cmp r0, #0x18
	blt _02253E54
	bne _02253E4E
	b _02253FAE
_02253E4E:
	cmp r0, #0x1b
	bne _02253E54
	b _02254042
_02253E54:
	b _02254382
_02253E56:
	cmp r0, #0x38
	bgt _02253E66
	blt _02253E5E
	b _02254258
_02253E5E:
	cmp r0, #0x31
	bne _02253E64
	b _022541C2
_02253E64:
	b _02254382
_02253E66:
	cmp r0, #0x6a
	bne _02253E6C
	b _02254302
_02253E6C:
	b _02254382
_02253E6E:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02254120 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _02253F50
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02253F50
	ldr r1, _02254124 ; =0x0000216C
	ldr r0, _02254128 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _02253F50
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _02253F50
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _02253F50
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02253EC2
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02253F50
_02253EC2:
	ldr r0, _0225412C ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02254130 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02253F50
	add r0, r7, #0
	bl BattleSys_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _02253F50
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x1f
	str r0, [r4]
	mov r6, #1
	b _02254382
_02253F04:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x60
	bne _02253F14
	add r7, r6, #0
	b _02253F2E
_02253F14:
	ldr r0, _02254134 ; =0x00002160
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02253F22
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	b _02253F2E
_02253F22:
	ldr r0, _0225412C ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02254138 ; =0x000003E2
	ldrb r7, [r1, r0]
_02253F2E:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02254120 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02253F50
	ldr r0, _02254124 ; =0x0000216C
	ldr r2, [r5, r0]
	ldr r0, _02254128 ; =0x801FDA49
	tst r0, r2
	bne _02253F50
	ldr r0, _0225412C ; =0x00003044
	ldr r3, [r5, r0]
	cmp r3, #0xa5
	bne _02253F52
_02253F50:
	b _02254382
_02253F52:
	mov r0, #0x1c
	ldr r2, _02254120 ; =0x00002D8C
	mul r0, r1
	add r0, r5, r0
	lsr r2, r2, #4
	ldr r2, [r0, r2]
	cmp r2, #0
	bne _02253F6C
	mov r2, #0x2e
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _0225405C
_02253F6C:
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r0, #0x10
	tst r0, r2
	bne _0225405C
	lsl r0, r3, #4
	add r2, r5, r0
	ldr r0, _0225413C ; =0x000003E1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0225405C
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r7, r0
	beq _0225405C
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r7, r0
	beq _0225405C
	mov r0, #0xbc
	str r0, [r4]
	add r0, #0x74
	str r7, [r5, r0]
	mov r6, #1
	b _02254382
_02253FAE:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02254120 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225405C
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _0225405C
	ldr r1, _02254124 ; =0x0000216C
	ldr r0, _02254128 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _0225405C
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _0225405C
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _0225405C
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r2, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02254002
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225405C
_02254002:
	ldr r0, _0225412C ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02254130 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _0225405C
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02254140 ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	mov r1, #8
	bl DamageDivide
	ldr r1, _02254144 ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xbd
	str r0, [r4]
	b _02254382
_02254042:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02254120 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _0225405C
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0225405E
_0225405C:
	b _02254382
_0225405E:
	ldr r1, _02254124 ; =0x0000216C
	ldr r0, _02254128 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _02254164
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _02254164
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _02254164
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02254098
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02254164
_02254098:
	ldr r0, _0225412C ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02254130 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02254164
	add r0, r7, #0
	bl BattleSys_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _02254164
	add r0, r7, #0
	bl BattleSys_Random
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	beq _022540D2
	cmp r1, #1
	beq _022540D8
	cmp r1, #2
	beq _022540DE
_022540D2:
	mov r0, #0x16
	str r0, [r4]
	b _022540E2
_022540D8:
	mov r0, #0x1f
	str r0, [r4]
	b _022540E2
_022540DE:
	mov r0, #0x12
	str r0, [r4]
_022540E2:
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r6, #1
	b _02254382
_022540FE:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02254120 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _02254164
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02254164
	ldr r1, _02254124 ; =0x0000216C
	ldr r0, _02254128 ; =0x801FDA49
	b _02254148
	nop
_02254120: .word 0x00002D8C
_02254124: .word 0x0000216C
_02254128: .word 0x801FDA49
_0225412C: .word 0x00003044
_02254130: .word 0x000003E9
_02254134: .word 0x00002160
_02254138: .word 0x000003E2
_0225413C: .word 0x000003E1
_02254140: .word 0x00002D90
_02254144: .word 0x0000215C
_02254148:
	ldr r2, [r5, r1]
	tst r0, r2
	bne _02254164
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _02254164
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	beq _02254166
_02254164:
	b _02254382
_02254166:
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02254180
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02254276
_02254180:
	ldr r0, _02254388 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225438C ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02254276
	add r0, r7, #0
	bl BattleSys_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _02254276
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x16
	str r0, [r4]
	mov r6, #1
	b _02254382
_022541C2:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02254390 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _02254276
	add r1, r3, #0
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02254276
	ldr r1, _02254394 ; =0x0000216C
	ldr r0, _02254398 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _02254276
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _02254276
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _02254276
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r1, r3, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02254216
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02254276
_02254216:
	ldr r0, _02254388 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225438C ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02254276
	add r0, r7, #0
	bl BattleSys_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _02254276
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x19
	str r0, [r4]
	mov r6, #1
	b _02254382
_02254258:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _02254390 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r3]
	cmp r1, #0
	beq _02254276
	add r1, r3, #0
	add r1, #0x24
	ldr r1, [r0, r1]
	mov r0, #0xf
	lsl r0, r0, #0x10
	tst r0, r1
	beq _02254278
_02254276:
	b _02254382
_02254278:
	ldr r1, _02254394 ; =0x0000216C
	ldr r0, _02254398 ; =0x801FDA49
	ldr r2, [r5, r1]
	tst r0, r2
	bne _02254382
	add r0, r1, #0
	sub r0, #0x30
	ldr r2, [r5, r0]
	mov r0, #0x20
	tst r0, r2
	bne _02254382
	sub r1, #0x2c
	ldr r1, [r5, r1]
	mov r0, #0x10
	tst r0, r1
	bne _02254382
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	lsr r2, r3, #4
	ldr r2, [r0, r2]
	cmp r2, #0
	bne _022542B2
	mov r2, #0x2e
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02254382
_022542B2:
	ldr r0, _02254388 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r2, r5, r0
	ldr r0, _0225438C ; =0x000003E9
	ldrb r2, [r2, r0]
	mov r0, #1
	tst r0, r2
	beq _02254382
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02254390 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02254382
	add r0, r7, #0
	bl BattleSys_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #3
	bge _02254382
	add r0, r5, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0x94
	str r1, [r0]
	mov r0, #0x46
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x6a
	str r0, [r4]
	mov r6, #1
	b _02254382
_02254302:
	ldr r1, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	cmp r1, r0
	bne _02254382
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _02254382
	mov r0, #6
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	add r3, r6, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02254382
	mov r2, #0x85
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	mov r0, #0x10
	tst r0, r1
	bne _02254382
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02254390 ; =0x00002D8C
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _02254382
	add r2, #0x2c
	ldr r3, [r5, r2]
	ldr r2, _02254398 ; =0x801FDA49
	tst r2, r3
	bne _02254382
	ldr r2, _02254388 ; =0x00003044
	ldr r2, [r5, r2]
	lsl r2, r2, #4
	add r3, r5, r2
	ldr r2, _0225438C ; =0x000003E9
	ldrb r3, [r3, r2]
	mov r2, #1
	tst r3, r2
	beq _02254382
	add r0, r0, #4
	ldr r1, [r1, r0]
	sub r0, r2, #2
	mul r0, r1
	mov r1, #4
	bl DamageDivide
	ldr r1, _0225439C ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xc1
	str r0, [r4]
_02254382:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02254388: .word 0x00003044
_0225438C: .word 0x000003E9
_02254390: .word 0x00002D8C
_02254394: .word 0x0000216C
_02254398: .word 0x801FDA49
_0225439C: .word 0x0000215C
	thumb_func_end CheckAbilityEffectOnHit

	thumb_func_start ov12_022543A0
ov12_022543A0: ; 0x022543A0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r2, #0
	add r0, r4, #0
	add r1, r5, #0
	add r7, r3, #0
	mov r6, #0
	bl GetBattlerAbility
	cmp r0, #0x28
	bgt _022543E6
	bge _02254480
	cmp r0, #7
	bgt _022543C0
	beq _0225442E
	b _022544D8
_022543C0:
	add r1, r0, #0
	sub r1, #0xc
	cmp r1, #8
	bhi _022543F0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022543D4: ; jump table
	.short _0225449C - _022543D4 - 2 ; case 0
	.short _022544D8 - _022543D4 - 2 ; case 1
	.short _022544D8 - _022543D4 - 2 ; case 2
	.short _02254448 - _022543D4 - 2 ; case 3
	.short _022544D8 - _022543D4 - 2 ; case 4
	.short _022543F8 - _022543D4 - 2 ; case 5
	.short _022544D8 - _022543D4 - 2 ; case 6
	.short _022544D8 - _022543D4 - 2 ; case 7
	.short _02254412 - _022543D4 - 2 ; case 8
_022543E6:
	cmp r0, #0x48
	bgt _022543F2
	bge _02254448
	cmp r0, #0x29
	beq _02254464
_022543F0:
	b _022544D8
_022543F2:
	cmp r0, #0x54
	beq _022544BA
	b _022544D8
_022543F8:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0225450C ; =0x00002DAC
	ldr r2, [r2, r1]
	ldr r1, _02254510 ; =0x00000F88
	tst r1, r2
	beq _022544D8
	mov r6, #1
	add r0, #0x70
	str r6, [r4, r0]
	b _022544D8
_02254412:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02254514 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _022544D8
	mov r1, #5
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _022544D8
_0225442E:
	mov r0, #0xc0
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0225450C ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r1, r0
	beq _022544D8
	mov r1, #3
	add r0, #0xf0
	str r1, [r4, r0]
	mov r6, #1
	b _022544D8
_02254448:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0225450C ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _022544D8
	mov r1, #0
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _022544D8
_02254464:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0225450C ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x10
	tst r1, r2
	beq _022544D8
	mov r1, #2
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _022544D8
_02254480:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0225450C ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x20
	tst r1, r2
	beq _022544D8
	mov r1, #4
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _022544D8
_0225449C:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02254514 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #0xf
	lsl r1, r1, #0x10
	tst r1, r2
	beq _022544D8
	mov r1, #6
	add r0, #0x70
	str r1, [r4, r0]
	mov r6, #1
	b _022544D8
_022544BA:
	mov r0, #0xc0
	add r3, r5, #0
	mul r3, r0
	ldr r0, _02254518 ; =0x00002DB8
	add r1, r4, r3
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _022544D8
	add r0, #0x14
	add r2, r4, r0
	mov r0, #1
	ldr r1, [r2, r3]
	lsl r0, r0, #0x16
	orr r0, r1
	str r0, [r2, r3]
_022544D8:
	cmp r6, #1
	bne _02254506
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl GetBattlerAbility
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r4, r1]
	cmp r7, #0
	bne _02254506
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xdd
	bl ReadBattleScriptFromNarc
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02254506:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225450C: .word 0x00002DAC
_02254510: .word 0x00000F88
_02254514: .word 0x00002DB0
_02254518: .word 0x00002DB8
	thumb_func_end ov12_022543A0

	thumb_func_start CheckNaturalCureOnSwitch
CheckNaturalCureOnSwitch: ; 0x0225451C
	mov r0, #0
	cmp r1, #0x28
	bgt _0225453C
	bge _02254572
	cmp r1, #7
	bgt _0225452C
	beq _02254554
	bx lr
_0225452C:
	cmp r1, #0x11
	bgt _0225457A
	cmp r1, #0xf
	blt _0225457A
	beq _0225455E
	cmp r1, #0x11
	beq _0225454A
	bx lr
_0225453C:
	cmp r1, #0x29
	bgt _02254544
	beq _02254568
	bx lr
_02254544:
	cmp r1, #0x48
	beq _0225455E
	bx lr
_0225454A:
	ldr r1, _0225457C ; =0x00000F88
	tst r1, r2
	beq _0225457A
	mov r0, #1
	bx lr
_02254554:
	mov r1, #0x40
	tst r1, r2
	beq _0225457A
	mov r0, #1
	bx lr
_0225455E:
	mov r1, #7
	tst r1, r2
	beq _0225457A
	mov r0, #1
	bx lr
_02254568:
	mov r1, #0x10
	tst r1, r2
	beq _0225457A
	mov r0, #1
	bx lr
_02254572:
	mov r1, #0x20
	tst r1, r2
	beq _0225457A
	mov r0, #1
_0225457A:
	bx lr
	.balign 4, 0
_0225457C: .word 0x00000F88
	thumb_func_end CheckNaturalCureOnSwitch

	thumb_func_start ov12_02254580
ov12_02254580: ; 0x02254580
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r4, r1, #0
	str r5, [sp]
	ldr r1, [r4, #0x6c]
	add r7, r0, #0
	add r6, r2, #0
	cmp r1, #0xff
	beq _022545C2
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x1c
	bne _022545C2
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x6c]
	ldr r1, [r1]
	cmp r0, r1
	bne _022545C2
	ldr r1, _02254710 ; =0x0000213C
	ldr r2, [r4, r1]
	mov r1, #0x80
	tst r2, r1
	beq _022545C2
	add r1, #0x98
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x64]
	add r0, #0x94
	str r1, [r0]
	mov r5, #1
	b _022545F2
_022545C2:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x1c
	bne _022545F2
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x64]
	ldr r1, [r1]
	cmp r0, r1
	bne _022545F2
	ldr r1, _02254710 ; =0x0000213C
	ldr r2, [r4, r1]
	mov r1, #0x80
	tst r2, r1
	beq _022545F2
	add r1, #0x98
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x6c]
	add r0, #0x94
	str r1, [r0]
	mov r5, #1
_022545F2:
	cmp r5, #1
	bne _0225464A
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02254714 ; =0x00002DAC
	ldr r0, [r1, r0]
	ldr r1, _02254718 ; =0x00000F88
	tst r1, r0
	beq _02254612
	mov r0, #0x16
	str r0, [sp]
	b _02254628
_02254612:
	mov r1, #0x10
	tst r1, r0
	beq _0225461E
	mov r0, #0x19
	str r0, [sp]
	b _02254628
_0225461E:
	mov r1, #0x40
	tst r0, r1
	beq _02254628
	mov r0, #0x1f
	str r0, [sp]
_02254628:
	ldr r0, [sp]
	cmp r0, #0
	beq _0225464A
	add r0, r4, #0
	mov r1, #3
	add r0, #0x88
	str r1, [r0]
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ReadBattleScriptFromNarc
	str r6, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225464A:
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov12_02256914
	add r5, r0, #0
	cmp r5, #1
	bne _0225466E
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ReadBattleScriptFromNarc
	str r6, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225466E:
	ldr r1, [r4, #0x6c]
	cmp r1, #0xff
	beq _022546AE
	add r0, r4, #0
	bl GetBattlerHeldItemEffect
	cmp r0, #0x6c
	bne _022546AE
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x6c]
	ldr r1, [r1]
	cmp r0, r1
	bne _022546AE
	mov r1, #0x1c
	add r2, r0, #0
	mul r2, r1
	add r3, r4, r2
	mov r2, #0xba
	lsl r2, r2, #2
	ldr r3, [r3, r2]
	mov r2, #4
	tst r2, r3
	beq _022546AE
	add r1, #0xfc
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x64]
	add r0, #0x94
	str r1, [r0]
	mov r5, #1
	b _022546E8
_022546AE:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl GetBattlerHeldItemEffect
	cmp r0, #0x6c
	bne _022546E8
	add r1, r4, #0
	add r1, #0x94
	ldr r0, [r4, #0x64]
	ldr r1, [r1]
	cmp r0, r1
	bne _022546E8
	mov r1, #0x1c
	add r2, r0, #0
	mul r2, r1
	add r3, r4, r2
	mov r2, #0xba
	lsl r2, r2, #2
	ldr r3, [r3, r2]
	mov r2, #4
	tst r2, r3
	beq _022546E8
	add r1, #0xfc
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, #0x6c]
	add r0, #0x94
	str r1, [r0]
	mov r5, #1
_022546E8:
	cmp r5, #1
	bne _0225470C
	mov r0, #0x6a
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	add r0, #0x88
	str r1, [r0]
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ReadBattleScriptFromNarc
	str r6, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225470C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02254710: .word 0x0000213C
_02254714: .word 0x00002DAC
_02254718: .word 0x00000F88
	thumb_func_end ov12_02254580

	thumb_func_start ov12_0225471C
ov12_0225471C: ; 0x0225471C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r4, r1, #0
	mov r0, #0
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov12_02255844
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r3, #0xc0
	add r5, r0, #0
	ldr r0, _02254A40 ; =0x00002D8C
	mul r5, r3
	add r1, r4, r0
	ldr r2, [r1, r5]
	str r1, [sp, #0x14]
	cmp r2, #0
	bne _02254756
	b _02254D4C
_02254756:
	ldr r1, [sp, #0x10]
	cmp r1, #0x36
	bls _0225475E
	b _02254D1E
_0225475E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225476A: ; jump table
	.short _02254D1E - _0225476A - 2 ; case 0
	.short _022547D8 - _0225476A - 2 ; case 1
	.short _02254D1E - _0225476A - 2 ; case 2
	.short _02254D1E - _0225476A - 2 ; case 3
	.short _02254D1E - _0225476A - 2 ; case 4
	.short _02254812 - _0225476A - 2 ; case 5
	.short _02254826 - _0225476A - 2 ; case 6
	.short _0225483A - _0225476A - 2 ; case 7
	.short _0225484E - _0225476A - 2 ; case 8
	.short _02254862 - _0225476A - 2 ; case 9
	.short _02254878 - _0225476A - 2 ; case 10
	.short _022548DA - _0225476A - 2 ; case 11
	.short _022548EE - _0225476A - 2 ; case 12
	.short _022547F0 - _0225476A - 2 ; case 13
	.short _0225494C - _0225476A - 2 ; case 14
	.short _02254988 - _0225476A - 2 ; case 15
	.short _022549C6 - _0225476A - 2 ; case 16
	.short _02254A02 - _0225476A - 2 ; case 17
	.short _02254A5C - _0225476A - 2 ; case 18
	.short _02254D1E - _0225476A - 2 ; case 19
	.short _02254D1E - _0225476A - 2 ; case 20
	.short _02254D1E - _0225476A - 2 ; case 21
	.short _02254D1E - _0225476A - 2 ; case 22
	.short _02254D1E - _0225476A - 2 ; case 23
	.short _02254D1E - _0225476A - 2 ; case 24
	.short _02254D1E - _0225476A - 2 ; case 25
	.short _02254D1E - _0225476A - 2 ; case 26
	.short _02254D1E - _0225476A - 2 ; case 27
	.short _02254D1E - _0225476A - 2 ; case 28
	.short _02254D1E - _0225476A - 2 ; case 29
	.short _02254D1E - _0225476A - 2 ; case 30
	.short _02254D1E - _0225476A - 2 ; case 31
	.short _02254D1E - _0225476A - 2 ; case 32
	.short _02254D1E - _0225476A - 2 ; case 33
	.short _02254D1E - _0225476A - 2 ; case 34
	.short _02254D1E - _0225476A - 2 ; case 35
	.short _02254A98 - _0225476A - 2 ; case 36
	.short _02254ADE - _0225476A - 2 ; case 37
	.short _02254B24 - _0225476A - 2 ; case 38
	.short _02254B6A - _0225476A - 2 ; case 39
	.short _02254BB0 - _0225476A - 2 ; case 40
	.short _02254BF8 - _0225476A - 2 ; case 41
	.short _02254C3A - _0225476A - 2 ; case 42
	.short _02254D1E - _0225476A - 2 ; case 43
	.short _02254CEC - _0225476A - 2 ; case 44
	.short _02254D1E - _0225476A - 2 ; case 45
	.short _02254D1E - _0225476A - 2 ; case 46
	.short _02254D1E - _0225476A - 2 ; case 47
	.short _02254D1E - _0225476A - 2 ; case 48
	.short _02254CA8 - _0225476A - 2 ; case 49
	.short _02254D1E - _0225476A - 2 ; case 50
	.short _02254D1E - _0225476A - 2 ; case 51
	.short _02254D1E - _0225476A - 2 ; case 52
	.short _02254D1E - _0225476A - 2 ; case 53
	.short _02254CD0 - _0225476A - 2 ; case 54
_022547D8:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r0, r0, #1
	cmp r2, r0
	bhi _0225486E
	ldr r0, _02254A44 ; =0x0000215C
	mov r7, #0xc6
	str r6, [r4, r0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_022547F0:
	add r1, r4, r5
	add r0, r0, #4
	ldr r1, [r1, r0]
	lsr r0, r1, #1
	cmp r2, r0
	bhi _0225486E
	add r0, r6, #0
	mul r0, r1
	mov r1, #0x64
	bl DamageDivide
	ldr r1, _02254A44 ; =0x0000215C
	mov r7, #0xc6
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_02254812:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0225486E
	mov r0, #1
	mov r7, #0xc7
	str r0, [sp, #0xc]
	b _02254D1E
_02254826:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0225486E
	mov r0, #1
	mov r7, #0xc8
	str r0, [sp, #0xc]
	b _02254D1E
_0225483A:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	ldr r0, _02254A48 ; =0x00000F88
	tst r0, r1
	beq _0225486E
	mov r0, #1
	mov r7, #0xc9
	str r0, [sp, #0xc]
	b _02254D1E
_0225484E:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0225486E
	mov r0, #1
	mov r7, #0xca
	str r0, [sp, #0xc]
	b _02254D1E
_02254862:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02254870
_0225486E:
	b _02254D1E
_02254870:
	mov r0, #1
	mov r7, #0xcb
	str r0, [sp, #0xc]
	b _02254D1E
_02254878:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, r5
	ldr r3, _02254A4C ; =0x00002D4C
	add r1, r0, #0
_02254882:
	ldrh r2, [r0, r3]
	cmp r2, #0
	beq _02254890
	ldr r2, _02254A50 ; =0x00002D6C
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _0225489E
_02254890:
	ldr r2, [sp, #8]
	add r0, r0, #2
	add r2, r2, #1
	add r1, r1, #1
	str r2, [sp, #8]
	cmp r2, #4
	blt _02254882
_0225489E:
	ldr r0, [sp, #8]
	cmp r0, #4
	beq _02254994
	mov r0, #0xb5
	lsl r0, r0, #6
	ldr r1, [sp, #8]
	add r0, r4, r0
	add r0, r0, r5
	add r1, #0x1f
	add r2, r6, #0
	bl ov12_0224F7AC
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl CopyBattleMonToPartyMon
	ldr r0, [sp, #8]
	add r1, r4, r5
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _02254A4C ; =0x00002D4C
	mov r7, #0xcc
	ldrh r1, [r1, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_022548DA:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02254994
	mov r0, #1
	mov r7, #0xcd
	str r0, [sp, #0xc]
	b _02254D1E
_022548EE:
	add r2, r0, #0
	add r1, r4, r5
	add r2, #0x20
	ldr r2, [r1, r2]
	lsl r3, r2, #0x18
	lsr r3, r3, #0x18
	bne _02254906
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02254994
_02254906:
	mov r0, #0x40
	tst r0, r2
	beq _0225490E
	mov r7, #0xc7
_0225490E:
	mov r0, #7
	tst r0, r2
	beq _02254916
	mov r7, #0xc8
_02254916:
	ldr r0, _02254A48 ; =0x00000F88
	tst r0, r2
	beq _0225491E
	mov r7, #0xc9
_0225491E:
	mov r0, #0x10
	tst r0, r2
	beq _02254926
	mov r7, #0xca
_02254926:
	mov r0, #0x20
	tst r0, r2
	beq _0225492E
	mov r7, #0xcb
_0225492E:
	ldr r0, _02254A54 ; =0x00002DB0
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #7
	and r0, r1
	beq _0225493C
	mov r7, #0xcd
_0225493C:
	cmp r3, #0
	beq _02254946
	cmp r0, #0
	beq _02254946
	mov r7, #0xce
_02254946:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_0225494C:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02254994
	add r1, r6, #0
	bl DamageDivide
	ldr r1, _02254A44 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02254A58 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02254980
	mov r7, #0xcf
	b _02254982
_02254980:
	mov r7, #0xc6
_02254982:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_02254988:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bls _02254996
_02254994:
	b _02254D1E
_02254996:
	add r1, r6, #0
	bl DamageDivide
	ldr r1, _02254A44 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02254A58 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022549BE
	mov r7, #0xcf
	b _022549C0
_022549BE:
	mov r7, #0xc6
_022549C0:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_022549C6:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02254ACE
	add r1, r6, #0
	bl DamageDivide
	ldr r1, _02254A44 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02254A58 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022549FA
	mov r7, #0xcf
	b _022549FC
_022549FA:
	mov r7, #0xc6
_022549FC:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_02254A02:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02254ACE
	add r1, r6, #0
	bl DamageDivide
	ldr r1, _02254A44 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02254A58 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02254A36
	mov r7, #0xcf
	b _02254A38
_02254A36:
	mov r7, #0xc6
_02254A38:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
	nop
_02254A40: .word 0x00002D8C
_02254A44: .word 0x0000215C
_02254A48: .word 0x00000F88
_02254A4C: .word 0x00002D4C
_02254A50: .word 0x00002D6C
_02254A54: .word 0x00002DB0
_02254A58: .word 0x00002DA8
_02254A5C:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _02254ACE
	add r1, r6, #0
	bl DamageDivide
	ldr r1, _02254D54 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _02254D58 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02254A90
	mov r7, #0xcf
	b _02254A92
_02254A90:
	mov r7, #0xc6
_02254A92:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02254D1E
_02254A98:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254AAA
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254AAA:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254ACE
	ldr r0, _02254D60 ; =0x00002D59
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	blt _02254AD0
_02254ACE:
	b _02254D1E
_02254AD0:
	mov r1, #0x13
	mov r0, #1
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	str r0, [r4, r1]
	mov r7, #0xd0
	b _02254D1E
_02254ADE:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254AF0
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254AF0:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254BE6
	ldr r0, _02254D64 ; =0x00002D5A
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02254BE6
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02254D1E
_02254B24:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254B36
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254B36:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254BE6
	ldr r0, _02254D68 ; =0x00002D5B
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02254BE6
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02254D1E
_02254B6A:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254B7C
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254B7C:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254BE6
	ldr r0, _02254D6C ; =0x00002D5C
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02254BE6
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02254D1E
_02254BB0:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254BC2
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254BC2:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254BE6
	ldr r0, _02254D70 ; =0x00002D5D
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	blt _02254BE8
_02254BE6:
	b _02254D1E
_02254BE8:
	mov r0, #0x13
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd0
	str r0, [sp, #0xc]
	b _02254D1E
_02254BF8:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254C0A
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254C0A:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254D1E
	ldr r0, _02254D74 ; =0x00002DB0
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02254D1E
	mov r0, #1
	mov r7, #0xd1
	str r0, [sp, #0xc]
	b _02254D1E
_02254C3A:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254C4C
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254C4C:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254D1E
	ldr r0, _02254D60 ; =0x00002D59
	mov r2, #0
	add r3, r4, r5
_02254C6C:
	ldrsb r1, [r3, r0]
	cmp r1, #0xc
	blt _02254C7A
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #5
	blt _02254C6C
_02254C7A:
	cmp r2, #5
	beq _02254D1E
	ldr r6, _02254D60 ; =0x00002D59
	add r5, r4, r5
	mov r7, #5
_02254C84:
	ldr r0, [sp]
	bl BattleSys_Random
	add r1, r7, #0
	bl _s32_div_f
	add r0, r5, r1
	ldrsb r0, [r0, r6]
	cmp r0, #0xc
	beq _02254C84
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #1
	mov r7, #0xd2
	str r0, [sp, #0xc]
	b _02254D1E
_02254CA8:
	ldr r6, _02254D78 ; =0x00002D58
	add r1, r4, r5
	mov r0, #0
	mov r5, #6
	add r3, r6, #0
_02254CB2:
	ldrsb r2, [r1, r3]
	cmp r2, #6
	bge _02254CBE
	mov r2, #1
	strb r5, [r1, r6]
	str r2, [sp, #0xc]
_02254CBE:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #8
	blt _02254CB2
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02254D1E
	mov r7, #0xd3
	b _02254D1E
_02254CD0:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x10
	tst r0, r1
	beq _02254D1E
	mov r0, #6
	add r3, #0x70
	str r0, [r4, r3]
	mov r0, #1
	mov r7, #0xd4
	str r0, [sp, #0xc]
	b _02254D1E
_02254CEC:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02254CFE
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r6, r0, #1
_02254CFE:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02254D5C ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02254D1E
	mov r0, #1
	ldr r7, _02254D7C ; =0x00000109
	str r0, [sp, #0xc]
_02254D1E:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02254D4C
	mov r1, #0x46
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerHeldItem
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	bl ReadBattleScriptFromNarc
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02254D4C:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02254D54: .word 0x0000215C
_02254D58: .word 0x00002DA8
_02254D5C: .word 0x00002D90
_02254D60: .word 0x00002D59
_02254D64: .word 0x00002D5A
_02254D68: .word 0x00002D5B
_02254D6C: .word 0x00002D5C
_02254D70: .word 0x00002D5D
_02254D74: .word 0x00002DB0
_02254D78: .word 0x00002D58
_02254D7C: .word 0x00000109
	thumb_func_end ov12_0225471C

	thumb_func_start ov12_02254D80
ov12_02254D80: ; 0x02254D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	mov r7, #0
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_02255844
	mov r0, #0xc0
	add r4, r6, #0
	mul r4, r0
	ldr r0, _02254E70 ; =0x00002D8C
	add r1, r5, r0
	str r1, [sp, #8]
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _02254E6A
	ldr r2, [sp, #4]
	cmp r2, #0x45
	beq _02254DBE
	add r0, r2, #0
	cmp r0, #0x6d
	beq _02254DDA
	b _02254E40
_02254DBE:
	add r2, r5, r4
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	bhs _02254E40
	mov r1, #0x10
	bl DamageDivide
	ldr r1, _02254E74 ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r0, #0xd5
	str r0, [sp]
	b _02254E40
_02254DDA:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	add r3, r7, #0
	bl GetBattlerVar
	cmp r0, #3
	beq _02254DFA
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	add r3, r7, #0
	bl GetBattlerVar
	cmp r0, #3
	bne _02254E1A
_02254DFA:
	ldr r0, _02254E78 ; =0x00002D90
	add r1, r5, r4
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	ldr r1, [r1, r4]
	cmp r1, r0
	bhs _02254E40
	mov r1, #0x10
	bl DamageDivide
	ldr r1, _02254E74 ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r0, #0xd5
	str r0, [sp]
	b _02254E40
_02254E1A:
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _02254E40
	ldr r0, _02254E78 ; =0x00002D90
	add r1, r5, r4
	ldr r1, [r1, r0]
	sub r0, r7, #1
	mul r0, r1
	mov r1, #8
	bl DamageDivide
	ldr r1, _02254E74 ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r0, #0xd7
	str r0, [sp]
_02254E40:
	cmp r7, #1
	bne _02254E6A
	mov r0, #0x46
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerHeldItem
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ReadBattleScriptFromNarc
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
_02254E6A:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02254E70: .word 0x00002D8C
_02254E74: .word 0x0000215C
_02254E78: .word 0x00002D90
	thumb_func_end ov12_02254D80

	thumb_func_start ov12_02254E7C
ov12_02254E7C: ; 0x02254E7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	add r4, r1, #0
	mov r0, #0
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	add r6, r3, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl ov12_02255844
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r3, #0xc0
	add r5, r0, #0
	ldr r0, _022551A0 ; =0x00002D8C
	mul r5, r3
	add r1, r4, r0
	ldr r2, [r1, r5]
	str r1, [sp, #0x14]
	cmp r2, #0
	bne _02254EB8
	b _02255516
_02254EB8:
	ldr r1, [sp, #0x10]
	cmp r1, #0x36
	bhi _02254F44
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02254ECA: ; jump table
	.short _02255502 - _02254ECA - 2 ; case 0
	.short _02254F38 - _02254ECA - 2 ; case 1
	.short _02255502 - _02254ECA - 2 ; case 2
	.short _02255502 - _02254ECA - 2 ; case 3
	.short _02255502 - _02254ECA - 2 ; case 4
	.short _02254F78 - _02254ECA - 2 ; case 5
	.short _02254F8E - _02254ECA - 2 ; case 6
	.short _02254FA4 - _02254ECA - 2 ; case 7
	.short _02254FBA - _02254ECA - 2 ; case 8
	.short _02254FD0 - _02254ECA - 2 ; case 9
	.short _02254FE6 - _02254ECA - 2 ; case 10
	.short _0225504A - _02254ECA - 2 ; case 11
	.short _02255062 - _02254ECA - 2 ; case 12
	.short _02254F54 - _02254ECA - 2 ; case 13
	.short _0225515E - _02254ECA - 2 ; case 14
	.short _022551C8 - _02254ECA - 2 ; case 15
	.short _02255206 - _02254ECA - 2 ; case 16
	.short _02255244 - _02254ECA - 2 ; case 17
	.short _02255282 - _02254ECA - 2 ; case 18
	.short _02255502 - _02254ECA - 2 ; case 19
	.short _02255502 - _02254ECA - 2 ; case 20
	.short _02255502 - _02254ECA - 2 ; case 21
	.short _02255502 - _02254ECA - 2 ; case 22
	.short _02255502 - _02254ECA - 2 ; case 23
	.short _02255502 - _02254ECA - 2 ; case 24
	.short _02255502 - _02254ECA - 2 ; case 25
	.short _02255502 - _02254ECA - 2 ; case 26
	.short _02255502 - _02254ECA - 2 ; case 27
	.short _02255502 - _02254ECA - 2 ; case 28
	.short _02255502 - _02254ECA - 2 ; case 29
	.short _02255502 - _02254ECA - 2 ; case 30
	.short _02255502 - _02254ECA - 2 ; case 31
	.short _02255502 - _02254ECA - 2 ; case 32
	.short _02255502 - _02254ECA - 2 ; case 33
	.short _02255502 - _02254ECA - 2 ; case 34
	.short _02255502 - _02254ECA - 2 ; case 35
	.short _022552C2 - _02254ECA - 2 ; case 36
	.short _02255308 - _02254ECA - 2 ; case 37
	.short _02255350 - _02254ECA - 2 ; case 38
	.short _02255398 - _02254ECA - 2 ; case 39
	.short _022553E2 - _02254ECA - 2 ; case 40
	.short _0225542A - _02254ECA - 2 ; case 41
	.short _0225546E - _02254ECA - 2 ; case 42
	.short _02255502 - _02254ECA - 2 ; case 43
	.short _02255128 - _02254ECA - 2 ; case 44
	.short _02255502 - _02254ECA - 2 ; case 45
	.short _02255502 - _02254ECA - 2 ; case 46
	.short _02255502 - _02254ECA - 2 ; case 47
	.short _02255502 - _02254ECA - 2 ; case 48
	.short _022550E0 - _02254ECA - 2 ; case 49
	.short _02255502 - _02254ECA - 2 ; case 50
	.short _02255502 - _02254ECA - 2 ; case 51
	.short _02255502 - _02254ECA - 2 ; case 52
	.short _02255502 - _02254ECA - 2 ; case 53
	.short _0225510A - _02254ECA - 2 ; case 54
_02254F38:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r0, r0, #1
	cmp r2, r0
	bls _02254F46
_02254F44:
	b _02255502
_02254F46:
	ldr r0, _022551A4 ; =0x0000215C
	str r7, [r4, r0]
	mov r0, #0xc6
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02254F54:
	add r1, r4, r5
	add r0, r0, #4
	ldr r1, [r1, r0]
	lsr r0, r1, #1
	cmp r2, r0
	bhi _02255056
	add r0, r7, #0
	mul r0, r1
	mov r1, #0x64
	bl DamageDivide
	ldr r1, _022551A4 ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0xc6
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02254F78:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02255056
	mov r0, #0xc7
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02254F8E:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02255056
	mov r0, #0xc8
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02254FA4:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	ldr r0, _022551A8 ; =0x00000F88
	tst r0, r1
	beq _02255056
	mov r0, #0xc9
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02254FBA:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _02255056
	mov r0, #0xca
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02254FD0:
	add r1, r4, r5
	add r0, #0x20
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _02255056
	mov r0, #0xcb
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02254FE6:
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, r5
	ldr r3, _022551AC ; =0x00002D4C
	add r1, r0, #0
_02254FF0:
	ldrh r2, [r0, r3]
	cmp r2, #0
	beq _02254FFE
	ldr r2, _022551B0 ; =0x00002D6C
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _0225500C
_02254FFE:
	ldr r2, [sp, #8]
	add r0, r0, #2
	add r2, r2, #1
	add r1, r1, #1
	str r2, [sp, #8]
	cmp r2, #4
	blt _02254FF0
_0225500C:
	ldr r0, [sp, #8]
	cmp r0, #4
	beq _02255056
	mov r0, #0xb5
	lsl r0, r0, #6
	ldr r1, [sp, #8]
	add r0, r4, r0
	add r0, r0, r5
	add r1, #0x1f
	add r2, r7, #0
	bl ov12_0224F7AC
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl CopyBattleMonToPartyMon
	ldr r0, [sp, #8]
	add r1, r4, r5
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _022551AC ; =0x00002D4C
	ldrh r1, [r1, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0xcc
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_0225504A:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	bne _02255058
_02255056:
	b _02255502
_02255058:
	mov r0, #0xcd
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02255062:
	add r1, r0, #0
	add r1, #0x20
	add r1, r4, r1
	ldr r2, [r1, r5]
	lsl r3, r2, #0x18
	lsr r3, r3, #0x18
	bne _0225507C
	add r3, r4, r5
	add r0, #0x24
	ldr r3, [r3, r0]
	mov r0, #7
	tst r0, r3
	beq _0225516A
_0225507C:
	mov r0, #0x40
	tst r0, r2
	beq _02255086
	mov r0, #0xc7
	str r0, [r6]
_02255086:
	ldr r2, [r1, r5]
	mov r0, #7
	tst r0, r2
	beq _02255092
	mov r0, #0xc8
	str r0, [r6]
_02255092:
	ldr r2, [r1, r5]
	ldr r0, _022551A8 ; =0x00000F88
	tst r0, r2
	beq _0225509E
	mov r0, #0xc9
	str r0, [r6]
_0225509E:
	ldr r2, [r1, r5]
	mov r0, #0x10
	tst r0, r2
	beq _022550AA
	mov r0, #0xca
	str r0, [r6]
_022550AA:
	ldr r2, [r1, r5]
	mov r0, #0x20
	tst r0, r2
	beq _022550B6
	mov r0, #0xcb
	str r0, [r6]
_022550B6:
	ldr r0, _022551B4 ; =0x00002DB0
	mov r2, #7
	add r0, r4, r0
	ldr r3, [r0, r5]
	tst r2, r3
	beq _022550C6
	mov r2, #0xcd
	str r2, [r6]
_022550C6:
	ldr r1, [r1, r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	beq _022550DA
	ldr r1, [r0, r5]
	mov r0, #7
	tst r0, r1
	beq _022550DA
	mov r0, #0xce
	str r0, [r6]
_022550DA:
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_022550E0:
	ldr r7, _022551B8 ; =0x00002D58
	add r1, r4, r5
	mov r0, #0
	mov r5, #6
	add r3, r7, #0
_022550EA:
	ldrsb r2, [r1, r3]
	cmp r2, #6
	bge _022550F6
	mov r2, #1
	strb r5, [r1, r7]
	str r2, [sp, #0xc]
_022550F6:
	add r0, r0, #1
	add r1, r1, #1
	cmp r0, #8
	blt _022550EA
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0225516A
	mov r0, #0xd3
	str r0, [r6]
	b _02255502
_0225510A:
	add r1, r4, r5
	add r0, #0x24
	ldr r1, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x10
	tst r0, r1
	beq _0225516A
	mov r0, #6
	add r3, #0x70
	str r0, [r4, r3]
	mov r0, #0xd4
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02255128:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _0225513A
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_0225513A:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022551BC ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _0225516A
	ldr r0, _022551C0 ; =0x00000109
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_0225515E:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bls _0225516C
_0225516A:
	b _02255502
_0225516C:
	add r1, r7, #0
	bl DamageDivide
	ldr r1, _022551A4 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _022551C4 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02255194
	mov r0, #0xcf
	b _02255196
_02255194:
	mov r0, #0xc6
_02255196:
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
	nop
_022551A0: .word 0x00002D8C
_022551A4: .word 0x0000215C
_022551A8: .word 0x00000F88
_022551AC: .word 0x00002D4C
_022551B0: .word 0x00002D6C
_022551B4: .word 0x00002DB0
_022551B8: .word 0x00002D58
_022551BC: .word 0x00002D90
_022551C0: .word 0x00000109
_022551C4: .word 0x00002DA8
_022551C8:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _0225528E
	add r1, r7, #0
	bl DamageDivide
	ldr r1, _022554B8 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _022554BC ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022551FC
	mov r0, #0xcf
	b _022551FE
_022551FC:
	mov r0, #0xc6
_022551FE:
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02255206:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _0225528E
	add r1, r7, #0
	bl DamageDivide
	ldr r1, _022554B8 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _022554BC ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0225523A
	mov r0, #0xcf
	b _0225523C
_0225523A:
	mov r0, #0xc6
_0225523C:
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02255244:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bhi _0225528E
	add r1, r7, #0
	bl DamageDivide
	ldr r1, _022554B8 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _022554BC ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02255278
	mov r0, #0xcf
	b _0225527A
_02255278:
	mov r0, #0xc6
_0225527A:
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02255282:
	add r1, r4, r5
	add r0, r0, #4
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	cmp r2, r1
	bls _02255290
_0225528E:
	b _02255502
_02255290:
	add r1, r7, #0
	bl DamageDivide
	ldr r1, _022554B8 ; =0x0000215C
	add r2, r4, r5
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _022554BC ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022552B8
	mov r0, #0xcf
	b _022552BA
_022552B8:
	mov r0, #0xc6
_022552BA:
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_022552C2:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _022552D4
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_022552D4:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022554C0 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _022553CE
	ldr r0, _022554C4 ; =0x00002D59
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _022553CE
	mov r1, #0x13
	mov r0, #1
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	str r0, [r4, r1]
	mov r0, #0xd0
	str r0, [r6]
	b _02255502
_02255308:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _0225531A
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_0225531A:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022554C0 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _022553CE
	ldr r0, _022554C8 ; =0x00002D5A
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _022553CE
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02255350:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02255362
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_02255362:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022554C0 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _022553CE
	ldr r0, _022554CC ; =0x00002D5B
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _022553CE
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_02255398:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _022553AA
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_022553AA:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022554C0 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _022553CE
	ldr r0, _022554D0 ; =0x00002D5C
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	blt _022553D0
_022553CE:
	b _02255502
_022553D0:
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_022553E2:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _022553F4
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_022553F4:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022554C0 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02255502
	ldr r0, _022554D4 ; =0x00002D5D
	add r1, r4, r5
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	bge _02255502
	mov r0, #0x13
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd0
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_0225542A:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _0225543C
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_0225543C:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022554C0 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02255502
	ldr r0, _022554D8 ; =0x00002DB0
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02255502
	mov r0, #0xd1
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
	b _02255502
_0225546E:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x52
	bne _02255480
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r7, r0, #1
_02255480:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _022554C0 ; =0x00002D90
	add r1, r4, r1
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl _u32_div_f
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r5]
	cmp r1, r0
	bhi _02255502
	ldr r0, _022554C4 ; =0x00002D59
	mov r2, #0
	add r3, r4, r5
_022554A0:
	ldrsb r1, [r3, r0]
	cmp r1, #0xc
	blt _022554AE
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #5
	blt _022554A0
_022554AE:
	cmp r2, #5
	beq _02255502
	ldr r7, _022554C4 ; =0x00002D59
	b _022554DC
	nop
_022554B8: .word 0x0000215C
_022554BC: .word 0x00002DA8
_022554C0: .word 0x00002D90
_022554C4: .word 0x00002D59
_022554C8: .word 0x00002D5A
_022554CC: .word 0x00002D5B
_022554D0: .word 0x00002D5C
_022554D4: .word 0x00002D5D
_022554D8: .word 0x00002DB0
_022554DC:
	add r5, r4, r5
_022554DE:
	ldr r0, [sp]
	bl BattleSys_Random
	mov r1, #5
	bl _s32_div_f
	add r0, r5, r1
	ldrsb r0, [r0, r7]
	cmp r0, #0xc
	beq _022554DE
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xd2
	str r0, [r6]
	mov r0, #1
	str r0, [sp, #0xc]
_02255502:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02255516
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl GetBattlerHeldItem
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
_02255516:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02254E7C

	thumb_func_start ov12_0225551C
ov12_0225551C: ; 0x0225551C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r2, #0
	mov r6, #0
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerHeldItemEffect
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_02255844
	str r0, [sp, #8]
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp]
	add r1, r5, r0
	ldr r0, _022555E0 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022555D8
	cmp r7, #0x64
	beq _0225555A
	cmp r7, #0x65
	beq _02255570
	cmp r7, #0x74
	beq _02255586
	b _022555AE
_0225555A:
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0]
	add r0, r5, #0
	mov r1, #5
	add r0, #0x88
	str r1, [r0]
	mov r0, #0x2f
	str r0, [sp, #4]
	mov r6, #1
	b _022555AE
_02255570:
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0]
	add r0, r5, #0
	mov r1, #5
	add r0, #0x88
	str r1, [r0]
	mov r0, #0x19
	str r0, [sp, #4]
	mov r6, #1
	b _022555AE
_02255586:
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _022555AE
	ldr r0, [sp]
	add r1, r5, r0
	ldr r0, _022555E4 ; =0x00002D90
	ldr r1, [r1, r0]
	sub r0, r6, #1
	mul r0, r1
	ldr r1, [sp, #8]
	bl DamageDivide
	ldr r1, _022555E8 ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0xd7
	str r0, [sp, #4]
_022555AE:
	cmp r6, #1
	bne _022555D8
	mov r0, #0x46
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerHeldItem
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ReadBattleScriptFromNarc
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
_022555D8:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022555E0: .word 0x00002D8C
_022555E4: .word 0x00002D90
_022555E8: .word 0x0000215C
	thumb_func_end ov12_0225551C

	thumb_func_start GetBattlerHeldItem
GetBattlerHeldItem: ; 0x022555EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GetBattlerAbility
	cmp r0, #0x67
	bne _022555FE
	mov r0, #0
	pop {r3, r4, r5, pc}
_022555FE:
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	ldr r0, _02255618 ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #0xa
	lsr r1, r1, #0x1d
	beq _02255612
	mov r0, #0
	pop {r3, r4, r5, pc}
_02255612:
	sub r0, #0x14
	ldrh r0, [r2, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02255618: .word 0x00002DCC
	thumb_func_end GetBattlerHeldItem

	thumb_func_start ov12_0225561C
ov12_0225561C: ; 0x0225561C
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _02255630 ; =0x000021A8
	ldr r0, [r1, r0]
	cmp r0, #0x28
	bne _0225562C
	mov r0, #1
	bx lr
_0225562C:
	mov r0, #0
	bx lr
	.balign 4, 0
_02255630: .word 0x000021A8
	thumb_func_end ov12_0225561C

	thumb_func_start CheckItemEffectOnHit
CheckItemEffectOnHit: ; 0x02255634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0x6c]
	str r0, [sp]
	add r6, r2, #0
	mov r7, #0
	cmp r1, #0xff
	bne _0225564C
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0225564C:
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #1
	bne _0225565C
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0225565C:
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl GetBattlerHeldItemEffect
	add r4, r0, #0
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_02255844
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r5, #0x64]
	bl BattleSys_GetFieldSide
	str r0, [sp, #8]
	cmp r4, #0x2f
	bgt _02255692
	cmp r4, #0x2b
	blt _02255690
	bne _02255688
	b _022557C4
_02255688:
	cmp r4, #0x2e
	beq _02255714
	cmp r4, #0x2f
	beq _02255772
_02255690:
	b _0225580A
_02255692:
	cmp r4, #0x74
	bne _022556FC
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r3, r5, r1
	ldr r1, _02255810 ; =0x00002D8C
	ldr r2, [r3, r1]
	cmp r2, #0
	beq _022556FC
	add r1, #0x2c
	ldrh r1, [r3, r1]
	cmp r1, #0
	bne _022556FC
	add r1, r5, r0
	ldr r0, _02255814 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl MaskOfFlagNo
	ldr r1, [sp, #8]
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r2, r1]
	lsl r2, r2, #3
	lsr r2, r2, #0x1a
	tst r0, r2
	bne _022556FC
	ldr r0, _02255818 ; =0x00003044
	sub r1, #0xaa
	ldr r0, [r5, r0]
	cmp r0, r1
	beq _022556FC
	ldr r2, [r5, #0x6c]
	mov r1, #0x1c
	mul r1, r2
	add r3, r5, r1
	mov r1, #0xb6
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, #0
	bne _022556F0
	add r1, #8
	ldr r1, [r3, r1]
	cmp r1, #0
	beq _022556FC
_022556F0:
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r1, #0x10
	tst r1, r2
	beq _022556FE
_022556FC:
	b _0225580A
_022556FE:
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225581C ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r1, r0
	beq _0225580A
	mov r1, #0xd8
	str r1, [r6]
	add r7, r0, #0
	b _0225580A
_02255714:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02255810 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225580A
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _0225580A
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0225580A
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225580A
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02255820 ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	ldr r1, [sp, #4]
	bl DamageDivide
	ldr r1, _02255824 ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	lsr r0, r1, #5
	str r0, [r6]
	b _0225580A
_02255772:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02255810 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225580A
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _0225580A
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225580A
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02255820 ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	ldr r1, [sp, #4]
	bl DamageDivide
	ldr r1, _02255824 ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	lsr r0, r1, #5
	str r0, [r6]
	b _0225580A
_022557C4:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r2, _02255810 ; =0x00002D8C
	add r0, r5, r0
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _0225580A
	ldr r1, _02255828 ; =0x0000216C
	ldr r3, [r5, r1]
	mov r1, #2
	tst r1, r3
	beq _0225580A
	add r1, r2, #4
	ldr r0, [r0, r1]
	ldr r1, [sp, #4]
	bl DamageDivide
	ldr r1, _02255824 ; =0x0000215C
	mov r7, #1
	str r0, [r5, r1]
	mov r1, #0xc6
	str r1, [r6]
	ldr r0, [r5, #0x6c]
	add r1, #0x52
	str r0, [r5, r1]
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0225582C ; =0x00002DB8
	add r2, r5, r2
	ldrh r0, [r2, r0]
	add r1, #0x68
	str r0, [r5, r1]
_0225580A:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02255810: .word 0x00002D8C
_02255814: .word 0x0000219C
_02255818: .word 0x00003044
_0225581C: .word 0x000003E9
_02255820: .word 0x00002D90
_02255824: .word 0x0000215C
_02255828: .word 0x0000216C
_0225582C: .word 0x00002DB8
	thumb_func_end CheckItemEffectOnHit

	thumb_func_start GetBattlerHeldItemEffect
GetBattlerHeldItemEffect: ; 0x02255830
	push {r4, lr}
	add r4, r0, #0
	bl GetBattlerHeldItem
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl GetItemHoldEffect
	pop {r4, pc}
	thumb_func_end GetBattlerHeldItemEffect

	thumb_func_start ov12_02255844
ov12_02255844: ; 0x02255844
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #0
	beq _02255856
	cmp r2, #1
	beq _02255872
	cmp r2, #2
	beq _0225585E
	b _0225587C
_02255856:
	bl GetBattlerHeldItem
	add r1, r0, #0
	b _0225587C
_0225585E:
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _02255888 ; =0x00002DCC
	ldr r0, [r2, r0]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	beq _02255872
	mov r0, #0
	pop {r4, pc}
_02255872:
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0225588C ; =0x00002DB8
	ldrh r1, [r1, r0]
_0225587C:
	add r0, r4, #0
	mov r2, #2
	bl GetItemHoldEffect
	pop {r4, pc}
	nop
_02255888: .word 0x00002DCC
_0225588C: .word 0x00002DB8
	thumb_func_end ov12_02255844

	thumb_func_start GetNaturalGiftPower
GetNaturalGiftPower: ; 0x02255890
	push {r4, lr}
	add r4, r0, #0
	bl GetBattlerHeldItem
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xb
	bl GetItemHoldEffect
	pop {r4, pc}
	thumb_func_end GetNaturalGiftPower

	thumb_func_start GetNaturalGiftType
GetNaturalGiftType: ; 0x022558A4
	push {r4, lr}
	add r4, r0, #0
	bl GetBattlerHeldItem
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xc
	bl GetItemHoldEffect
	pop {r4, pc}
	thumb_func_end GetNaturalGiftType

	thumb_func_start ov12_022558B8
ov12_022558B8: ; 0x022558B8
	mov r2, #0xc0
	mul r2, r1
	ldr r1, _022558C8 ; =0x00002DB8
	add r2, r0, r2
	ldrh r1, [r2, r1]
	ldr r3, _022558CC ; =GetItemHoldEffect
	mov r2, #8
	bx r3
	.balign 4, 0
_022558C8: .word 0x00002DB8
_022558CC: .word GetItemHoldEffect
	thumb_func_end ov12_022558B8

	thumb_func_start ov12_022558D0
ov12_022558D0: ; 0x022558D0
	push {r3, lr}
	mov r2, #0xc0
	mul r2, r1
	ldr r1, _022558F4 ; =0x00002DCC
	add r3, r0, r2
	ldr r2, [r3, r1]
	lsl r2, r2, #0xa
	lsr r2, r2, #0x1d
	beq _022558E6
	mov r0, #0
	pop {r3, pc}
_022558E6:
	sub r1, #0x14
	ldrh r1, [r3, r1]
	mov r2, #9
	bl GetItemHoldEffect
	pop {r3, pc}
	nop
_022558F4: .word 0x00002DCC
	thumb_func_end ov12_022558D0

	thumb_func_start ov12_022558F8
ov12_022558F8: ; 0x022558F8
	push {r3, lr}
	mov r2, #0xc0
	mul r2, r1
	ldr r1, _0225591C ; =0x00002DCC
	add r3, r0, r2
	ldr r2, [r3, r1]
	lsl r2, r2, #0xa
	lsr r2, r2, #0x1d
	beq _0225590E
	mov r0, #0
	pop {r3, pc}
_0225590E:
	sub r1, #0x14
	ldrh r1, [r3, r1]
	mov r2, #0xa
	bl GetItemHoldEffect
	pop {r3, pc}
	nop
_0225591C: .word 0x00002DCC
	thumb_func_end ov12_022558F8

	thumb_func_start ov12_02255920
ov12_02255920: ; 0x02255920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0
	bl GetBattlerHeldItemEffect
	cmp r0, #0x7b
	bne _0225593E
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225593E:
	mov r0, #0xc0
	add r7, r4, #0
	mul r7, r0
	ldr r0, _02255A20 ; =0x00002DB0
	add r2, r5, r7
	ldr r1, [r2, r0]
	ldr r3, _02255A24 ; =0x0400E000
	tst r1, r3
	bne _0225595A
	add r0, #0x10
	ldr r1, [r2, r0]
	lsr r0, r3, #0x10
	tst r0, r1
	beq _0225595C
_0225595A:
	mov r6, #1
_0225595C:
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x17
	beq _0225597C
	mov r0, #0x17
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _022559B0
_0225597C:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	beq _0225599C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	bne _022559B2
_0225599C:
	mov r0, #0x2a
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl CheckAbilityActive
	cmp r0, #0
	beq _022559B2
_022559B0:
	mov r6, #1
_022559B2:
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x1a
	beq _022559EA
	ldr r0, _02255A28 ; =0x00002DCC
	add r1, r5, r7
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bne _022559EA
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #2
	beq _022559EA
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #2
	bne _02255A04
_022559EA:
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerHeldItemEffect
	cmp r0, #0x6a
	beq _02255A04
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02255A1A
_02255A04:
	mov r0, #0x47
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl CheckAbilityActive
	cmp r0, #0
	beq _02255A1A
	mov r6, #1
_02255A1A:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02255A20: .word 0x00002DB0
_02255A24: .word 0x0400E000
_02255A28: .word 0x00002DCC
	thumb_func_end ov12_02255920

	thumb_func_start CanEatOpponentBerry
CanEatOpponentBerry: ; 0x02255A2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp]
	mov r6, #0
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	add r5, r6, #0
	bl ov12_022558B8
	add r7, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #1
	bl ov12_02255844
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov12_02256838
	cmp r0, #1
	bne _02255A62
	add sp, #0x14
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02255A62:
	cmp r7, #0x17
	bls _02255A68
	b _02255EE2
_02255A68:
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02255A74: ; jump table
	.short _02255EE2 - _02255A74 - 2 ; case 0
	.short _02255AEE - _02255A74 - 2 ; case 1
	.short _02255B06 - _02255A74 - 2 ; case 2
	.short _02255B1E - _02255A74 - 2 ; case 3
	.short _02255B36 - _02255A74 - 2 ; case 4
	.short _02255B4E - _02255A74 - 2 ; case 5
	.short _02255B66 - _02255A74 - 2 ; case 6
	.short _02255AA4 - _02255A74 - 2 ; case 7
	.short _02255BDC - _02255A74 - 2 ; case 8
	.short _02255BF4 - _02255A74 - 2 ; case 9
	.short _02255AC4 - _02255A74 - 2 ; case 10
	.short _02255C56 - _02255A74 - 2 ; case 11
	.short _02255C9C - _02255A74 - 2 ; case 12
	.short _02255CE2 - _02255A74 - 2 ; case 13
	.short _02255D28 - _02255A74 - 2 ; case 14
	.short _02255D6E - _02255A74 - 2 ; case 15
	.short _02255DDE - _02255A74 - 2 ; case 16
	.short _02255DFC - _02255A74 - 2 ; case 17
	.short _02255E1A - _02255A74 - 2 ; case 18
	.short _02255E38 - _02255A74 - 2 ; case 19
	.short _02255E56 - _02255A74 - 2 ; case 20
	.short _02255EC2 - _02255A74 - 2 ; case 21
	.short _02255E74 - _02255A74 - 2 ; case 22
	.short _02255EDC - _02255A74 - 2 ; case 23
_02255AA4:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _02255DA0 ; =0x00002D8C
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	beq _02255AC0
	ldr r1, _02255DA4 ; =0x0000215C
	ldr r0, [sp, #0x10]
	mov r5, #0xc6
	str r0, [r4, r1]
_02255AC0:
	mov r6, #1
	b _02255EF8
_02255AC4:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255DA8 ; =0x00002D90
	ldr r2, [r1, r0]
	sub r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, r2
	beq _02255AEA
	ldr r1, [sp, #0x10]
	add r0, r1, #0
	mul r0, r2
	mov r1, #0x64
	bl DamageDivide
	ldr r1, _02255DA4 ; =0x0000215C
	mov r5, #0xc6
	str r0, [r4, r1]
_02255AEA:
	mov r6, #1
	b _02255EF8
_02255AEE:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255DAC ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02255B02
	mov r5, #0xc7
_02255B02:
	mov r6, #1
	b _02255EF8
_02255B06:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255DAC ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02255B1A
	mov r5, #0xc8
_02255B1A:
	mov r6, #1
	b _02255EF8
_02255B1E:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255DAC ; =0x00002DAC
	ldr r1, [r1, r0]
	ldr r0, _02255DB0 ; =0x00000F88
	tst r0, r1
	beq _02255B32
	mov r5, #0xc9
_02255B32:
	mov r6, #1
	b _02255EF8
_02255B36:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255DAC ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _02255B4A
	mov r5, #0xca
_02255B4A:
	mov r6, #1
	b _02255EF8
_02255B4E:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255DAC ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _02255B62
	mov r5, #0xcb
_02255B62:
	mov r6, #1
	b _02255EF8
_02255B66:
	str r5, [sp, #0xc]
_02255B68:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r7, r1, #0
	mul r7, r0
	add r1, r4, r7
	ldr r0, _02255DB4 ; =0x00002D4C
	add r2, r6, r1
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _02255B9A
	add r2, r5, r1
	ldr r1, _02255DB8 ; =0x00002D70
	ldrb r1, [r2, r1]
	bl GetMoveMaxPP
	add r1, r4, r7
	add r2, r5, r1
	ldr r1, _02255DBC ; =0x00002D6C
	ldrb r1, [r2, r1]
	sub r1, r0, r1
	ldr r0, [sp, #0xc]
	cmp r1, r0
	ble _02255B9A
	str r1, [sp, #0xc]
	str r5, [sp, #8]
_02255B9A:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #4
	blt _02255B68
	mov r0, #0xb5
	lsl r0, r0, #6
	ldr r1, [sp, #8]
	add r0, r4, r0
	ldr r2, [sp, #0x10]
	add r0, r0, r7
	add r1, #0x1f
	bl ov12_0224F7AC
	ldr r0, [sp]
	ldr r2, [r4, #0x64]
	add r1, r4, #0
	bl CopyBattleMonToPartyMon
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, [sp, #8]
	add r2, r4, r2
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _02255DB4 ; =0x00002D4C
	add r1, #0x64
	ldrh r0, [r2, r0]
	mov r5, #0xcc
	mov r6, #1
	str r0, [r4, r1]
	b _02255EF8
_02255BDC:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255DC0 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02255BF0
	mov r5, #0xcd
_02255BF0:
	mov r6, #1
	b _02255EF8
_02255BF4:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r6, _02255DAC ; =0x00002DAC
	add r0, r4, r1
	ldr r2, [r0, r6]
	lsl r3, r2, #0x18
	lsr r3, r3, #0x18
	bne _02255C12
	add r6, r6, #4
	ldr r6, [r0, r6]
	mov r0, #7
	tst r0, r6
	beq _02255C52
_02255C12:
	mov r0, #0x40
	tst r0, r2
	beq _02255C1A
	mov r5, #0xc7
_02255C1A:
	mov r0, #7
	tst r0, r2
	beq _02255C22
	mov r5, #0xc8
_02255C22:
	ldr r0, _02255DB0 ; =0x00000F88
	tst r0, r2
	beq _02255C2A
	mov r5, #0xc9
_02255C2A:
	mov r0, #0x10
	tst r0, r2
	beq _02255C32
	mov r5, #0xca
_02255C32:
	mov r0, #0x20
	tst r0, r2
	beq _02255C3A
	mov r5, #0xcb
_02255C3A:
	ldr r0, _02255DC0 ; =0x00002DB0
	add r1, r4, r1
	ldr r1, [r1, r0]
	mov r0, #7
	and r0, r1
	beq _02255C48
	mov r5, #0xcd
_02255C48:
	cmp r3, #0
	beq _02255C52
	cmp r0, #0
	beq _02255C52
	mov r5, #0xce
_02255C52:
	mov r6, #1
	b _02255EF8
_02255C56:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02255DA8 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02255C98
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _02255DA4 ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	add r1, r6, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02255DC4 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r6, #1
	cmp r0, r1
	bne _02255C96
	mov r5, #0xcf
	b _02255C98
_02255C96:
	mov r5, #0xc6
_02255C98:
	mov r6, #1
	b _02255EF8
_02255C9C:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02255DA8 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02255CDE
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _02255DA4 ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02255DC4 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r6, #1
	cmp r0, r1
	bne _02255CDC
	mov r5, #0xcf
	b _02255CDE
_02255CDC:
	mov r5, #0xc6
_02255CDE:
	mov r6, #1
	b _02255EF8
_02255CE2:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02255DA8 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02255D24
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _02255DA4 ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02255DC4 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r6, #1
	cmp r0, r1
	bne _02255D22
	mov r5, #0xcf
	b _02255D24
_02255D22:
	mov r5, #0xc6
_02255D24:
	mov r6, #1
	b _02255EF8
_02255D28:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02255DA8 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02255D6A
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _02255DA4 ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02255DC4 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r6, #1
	cmp r0, r1
	bne _02255D68
	mov r5, #0xcf
	b _02255D6A
_02255D68:
	mov r5, #0xc6
_02255D6A:
	mov r6, #1
	b _02255EF8
_02255D6E:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02255DA8 ; =0x00002D90
	add r2, r4, r0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	beq _02255DDA
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _02255DA4 ; =0x0000215C
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _02255DC4 ; =0x00002DA8
	b _02255DC8
	.balign 4, 0
_02255DA0: .word 0x00002D8C
_02255DA4: .word 0x0000215C
_02255DA8: .word 0x00002D90
_02255DAC: .word 0x00002DAC
_02255DB0: .word 0x00000F88
_02255DB4: .word 0x00002D4C
_02255DB8: .word 0x00002D70
_02255DBC: .word 0x00002D6C
_02255DC0: .word 0x00002DB0
_02255DC4: .word 0x00002DA8
_02255DC8:
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r6, #1
	cmp r0, r1
	bne _02255DD8
	mov r5, #0xcf
	b _02255DDA
_02255DD8:
	mov r5, #0xc6
_02255DDA:
	mov r6, #1
	b _02255EF8
_02255DDE:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02255F5C ; =0x00002D59
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _02255DF8
	mov r1, #1
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_02255DF8:
	mov r6, #1
	b _02255EF8
_02255DFC:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02255F60 ; =0x00002D5A
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _02255E16
	mov r1, #2
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_02255E16:
	mov r6, #1
	b _02255EF8
_02255E1A:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02255F64 ; =0x00002D5B
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _02255E34
	mov r1, #3
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_02255E34:
	mov r6, #1
	b _02255EF8
_02255E38:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02255F68 ; =0x00002D5C
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _02255E52
	mov r1, #4
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_02255E52:
	mov r6, #1
	b _02255EF8
_02255E56:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _02255F6C ; =0x00002D5D
	add r2, r4, r2
	ldrsb r1, [r2, r1]
	cmp r1, #0xc
	bge _02255E70
	mov r1, #5
	add r0, #0x70
	str r1, [r4, r0]
	mov r5, #0xd0
_02255E70:
	mov r6, #1
	b _02255EF8
_02255E74:
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r3, r4, r1
	ldr r1, _02255F5C ; =0x00002D59
	add r0, r6, #0
_02255E80:
	ldrsb r2, [r3, r1]
	cmp r2, #0xc
	blt _02255E8E
	add r0, r0, #1
	add r3, r3, #1
	cmp r0, #5
	blt _02255E80
_02255E8E:
	cmp r0, #5
	beq _02255EBE
	ldr r5, _02255F5C ; =0x00002D59
	mov r7, #5
	mov r6, #0xc0
_02255E98:
	ldr r0, [sp]
	bl BattleSys_Random
	add r1, r7, #0
	bl _s32_div_f
	ldr r0, [r4, #0x64]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrsb r0, [r0, r5]
	cmp r0, #0xc
	beq _02255E98
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r5, #0xd2
_02255EBE:
	mov r6, #1
	b _02255EF8
_02255EC2:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02255F70 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02255ED8
	mov r5, #0xd1
_02255ED8:
	mov r6, #1
	b _02255EF8
_02255EDC:
	ldr r5, _02255F74 ; =0x00000109
	mov r6, #1
	b _02255EF8
_02255EE2:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _02255F78 ; =0x00002DB8
	add r1, r4, r1
	ldrh r0, [r1, r0]
	bl ItemIdIsBerry
	cmp r0, #1
	bne _02255EF8
	mov r6, #1
_02255EF8:
	cmp r6, #1
	bne _02255F56
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x67
	beq _02255F20
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	mov r1, #0xb7
	add r2, r4, r2
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x1a
	tst r1, r2
	beq _02255F2A
_02255F20:
	mov r0, #0x4e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _02255F2E
_02255F2A:
	add r0, #0x78
	str r5, [r4, r0]
_02255F2E:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02255F78 ; =0x00002DB8
	add r2, r4, r2
	ldrh r0, [r2, r0]
	add r1, #0x68
	str r0, [r4, r1]
	ldr r2, [r4, #0x64]
	mov r0, #0xba
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	add r0, r4, r0
	ldr r2, [r0, r3]
	mov r1, #2
	orr r1, r2
	str r1, [r0, r3]
_02255F56:
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02255F5C: .word 0x00002D59
_02255F60: .word 0x00002D5A
_02255F64: .word 0x00002D5B
_02255F68: .word 0x00002D5C
_02255F6C: .word 0x00002D5D
_02255F70: .word 0x00002DB0
_02255F74: .word 0x00000109
_02255F78: .word 0x00002DB8
	thumb_func_end CanEatOpponentBerry

	thumb_func_start CanFling
CanFling: ; 0x02255F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	add r0, r4, #0
	add r1, r2, #0
	bl ov12_022558D0
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #2
	bl ov12_02255844
	str r0, [sp, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov12_022558F8
	ldr r1, _022562D0 ; =0x00002154
	add r2, r4, #0
	str r0, [r4, r1]
	ldr r0, _022562D4 ; =0x00003118
	mov r5, #0
	str r5, [r4, r0]
	add r2, #0x88
	str r5, [r2]
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _02255FC0
	add sp, #0x14
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02255FC0:
	cmp r6, #0x1e
	bls _02255FC6
	b _0225654A
_02255FC6:
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02255FD2: ; jump table
	.short _0225654A - _02255FD2 - 2 ; case 0
	.short _0225603E - _02255FD2 - 2 ; case 1
	.short _02256056 - _02255FD2 - 2 ; case 2
	.short _0225606E - _02255FD2 - 2 ; case 3
	.short _02256086 - _02255FD2 - 2 ; case 4
	.short _0225609E - _02255FD2 - 2 ; case 5
	.short _022560B6 - _02255FD2 - 2 ; case 6
	.short _02256010 - _02255FD2 - 2 ; case 7
	.short _02256138 - _02255FD2 - 2 ; case 8
	.short _02256150 - _02255FD2 - 2 ; case 9
	.short _0225601C - _02255FD2 - 2 ; case 10
	.short _02256216 - _02255FD2 - 2 ; case 11
	.short _02256258 - _02255FD2 - 2 ; case 12
	.short _0225629A - _02255FD2 - 2 ; case 13
	.short _0225630A - _02255FD2 - 2 ; case 14
	.short _0225634C - _02255FD2 - 2 ; case 15
	.short _02256448 - _02255FD2 - 2 ; case 16
	.short _02256466 - _02255FD2 - 2 ; case 17
	.short _02256484 - _02255FD2 - 2 ; case 18
	.short _022564A2 - _02255FD2 - 2 ; case 19
	.short _022564C0 - _02255FD2 - 2 ; case 20
	.short _0225652C - _02255FD2 - 2 ; case 21
	.short _022564DE - _02255FD2 - 2 ; case 22
	.short _02256546 - _02255FD2 - 2 ; case 23
	.short _0225638E - _02255FD2 - 2 ; case 24
	.short _022563B6 - _02255FD2 - 2 ; case 25
	.short _022563DA - _02255FD2 - 2 ; case 26
	.short _022563F0 - _02255FD2 - 2 ; case 27
	.short _02256406 - _02255FD2 - 2 ; case 28
	.short _0225641C - _02255FD2 - 2 ; case 29
	.short _02256432 - _02255FD2 - 2 ; case 30
_02256010:
	ldr r1, [sp, #0x10]
	sub r2, r0, #4
	str r1, [r4, r2]
	mov r1, #0xc6
	str r1, [r4, r0]
	b _0225654A
_0225601C:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562D8 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	mul r0, r1
	mov r1, #0x64
	bl DamageDivide
	ldr r1, _022562DC ; =0x00003114
	mov r2, #0xc6
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	b _0225654A
_0225603E:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022562E0 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x40
	tst r1, r2
	beq _022560F8
	mov r1, #0xc7
	str r1, [r4, r0]
	b _0225654A
_02256056:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022562E0 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _022560F8
	mov r1, #0xc8
	str r1, [r4, r0]
	b _0225654A
_0225606E:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022562E0 ; =0x00002DAC
	ldr r2, [r2, r1]
	ldr r1, _022562E4 ; =0x00000F88
	tst r1, r2
	beq _022560F8
	mov r1, #0xc9
	str r1, [r4, r0]
	b _0225654A
_02256086:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022562E0 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x10
	tst r1, r2
	beq _022560F8
	mov r1, #0xca
	str r1, [r4, r0]
	b _0225654A
_0225609E:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022562E0 ; =0x00002DAC
	ldr r2, [r2, r1]
	mov r1, #0x20
	tst r1, r2
	beq _022560F8
	mov r1, #0xcb
	str r1, [r4, r0]
	b _0225654A
_022560B6:
	add r6, r5, #0
	add r7, r5, #0
_022560BA:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	str r0, [sp, #8]
	ldr r0, _022562E8 ; =0x00002D4C
	add r2, r7, r1
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _022560EC
	add r2, r6, r1
	ldr r1, _022562EC ; =0x00002D70
	ldrb r1, [r2, r1]
	bl GetMoveMaxPP
	ldr r1, [sp, #8]
	add r1, r4, r1
	add r2, r6, r1
	ldr r1, _022562F0 ; =0x00002D6C
	ldrb r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, r5
	ble _022560EC
	add r5, r0, #0
	str r6, [sp, #0xc]
_022560EC:
	add r6, r6, #1
	add r7, r7, #2
	cmp r6, #4
	blt _022560BA
	cmp r5, #0
	bne _022560FA
_022560F8:
	b _0225654A
_022560FA:
	mov r0, #0xb5
	lsl r0, r0, #6
	add r1, r4, r0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	add r1, #0x1f
	bl ov12_0224F7AC
	ldr r0, [sp]
	ldr r2, [r4, #0x6c]
	add r1, r4, #0
	bl CopyBattleMonToPartyMon
	ldr r0, [r4, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, [sp, #0xc]
	add r2, r4, r2
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _022562E8 ; =0x00002D4C
	add r1, #0x64
	ldrh r0, [r2, r0]
	str r0, [r4, r1]
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xcc
	str r1, [r4, r0]
	b _0225654A
_02256138:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022562F4 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #7
	tst r1, r2
	beq _0225620C
	mov r1, #0xcd
	str r1, [r4, r0]
	b _0225654A
_02256150:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _022562E0 ; =0x00002DAC
	add r3, r4, r0
	ldr r0, [r3, r1]
	lsl r2, r0, #0x18
	lsr r2, r2, #0x18
	bne _0225616C
	add r1, r1, #4
	ldr r2, [r3, r1]
	mov r1, #7
	tst r1, r2
	beq _0225620C
_0225616C:
	mov r1, #0x40
	tst r0, r1
	beq _02256178
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xc7
	str r1, [r4, r0]
_02256178:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562E0 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _02256190
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xc8
	str r1, [r4, r0]
_02256190:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562E0 ; =0x00002DAC
	ldr r1, [r1, r0]
	ldr r0, _022562E4 ; =0x00000F88
	tst r0, r1
	beq _022561A8
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xc9
	str r1, [r4, r0]
_022561A8:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562E0 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x10
	tst r0, r1
	beq _022561C0
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xca
	str r1, [r4, r0]
_022561C0:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562E0 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _022561D8
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xcb
	str r1, [r4, r0]
_022561D8:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562F4 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _022561F0
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xcd
	str r1, [r4, r0]
_022561F0:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _022562E0 ; =0x00002DAC
	ldr r1, [r2, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	beq _0225620C
	add r0, r0, #4
	ldr r1, [r2, r0]
	mov r0, #7
	tst r0, r1
	bne _0225620E
_0225620C:
	b _0225654A
_0225620E:
	ldr r0, _022562D4 ; =0x00003118
	mov r1, #0xce
	str r1, [r4, r0]
	b _0225654A
_02256216:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562D8 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _022562DC ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	add r1, r5, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _022562F8 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _022562D4 ; =0x00003118
	bne _02256252
	mov r1, #0xcf
	str r1, [r4, r0]
	b _0225654A
_02256252:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _0225654A
_02256258:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562D8 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _022562DC ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _022562F8 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _022562D4 ; =0x00003118
	bne _02256294
	mov r1, #0xcf
	str r1, [r4, r0]
	b _0225654A
_02256294:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _0225654A
_0225629A:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022562D8 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _022562DC ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _022562F8 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _022562D4 ; =0x00003118
	b _022562FC
	.balign 4, 0
_022562D0: .word 0x00002154
_022562D4: .word 0x00003118
_022562D8: .word 0x00002D90
_022562DC: .word 0x00003114
_022562E0: .word 0x00002DAC
_022562E4: .word 0x00000F88
_022562E8: .word 0x00002D4C
_022562EC: .word 0x00002D70
_022562F0: .word 0x00002D6C
_022562F4: .word 0x00002DB0
_022562F8: .word 0x00002DA8
_022562FC:
	bne _02256304
	mov r1, #0xcf
	str r1, [r4, r0]
	b _0225654A
_02256304:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _0225654A
_0225630A:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022565B0 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _022565B4 ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _022565B8 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _022565BC ; =0x00003118
	bne _02256346
	mov r1, #0xcf
	str r1, [r4, r0]
	b _0225654A
_02256346:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _0225654A
_0225634C:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022565B0 ; =0x00002D90
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x10]
	bl DamageDivide
	ldr r1, _022565B4 ; =0x00003114
	str r0, [r4, r1]
	mov r0, #0x13
	mov r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _022565B8 ; =0x00002DA8
	ldr r0, [r2, r0]
	bl GetFlavorPreferenceFromPID
	sub r1, r5, #1
	cmp r0, r1
	ldr r0, _022565BC ; =0x00003118
	bne _02256388
	mov r1, #0xcf
	str r1, [r4, r0]
	b _0225654A
_02256388:
	mov r1, #0xc6
	str r1, [r4, r0]
	b _0225654A
_0225638E:
	ldr r2, _022565C0 ; =0x00002D58
	mov r6, #6
	mov r3, #0xd3
	mov r7, #0xc0
_02256396:
	ldr r0, [r4, #0x6c]
	add r1, r0, #0
	mul r1, r7
	add r0, r4, r1
	add r0, r0, r5
	ldrsb r1, [r0, r2]
	cmp r1, #6
	bge _022563AE
	ldr r1, _022565C0 ; =0x00002D58
	strb r6, [r0, r1]
	ldr r0, _022565BC ; =0x00003118
	str r3, [r4, r0]
_022563AE:
	add r5, r5, #1
	cmp r5, #8
	blt _02256396
	b _0225654A
_022563B6:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _022565C4 ; =0x00002DB0
	add r3, r4, r3
	ldr r3, [r3, r2]
	mov r2, #0xf
	lsl r2, r2, #0x10
	tst r2, r3
	bne _022563CE
	b _0225654A
_022563CE:
	mov r2, #6
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd4
	str r1, [r4, r0]
	b _0225654A
_022563DA:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1]
	mov r1, #0xe
	str r1, [r4, r0]
	b _0225654A
_022563F0:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1]
	mov r1, #0x1f
	str r1, [r4, r0]
	b _0225654A
_02256406:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1]
	mov r1, #0x16
	str r1, [r4, r0]
	b _0225654A
_0225641C:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1]
	mov r1, #0x2f
	str r1, [r4, r0]
	b _0225654A
_02256432:
	add r2, r4, #0
	ldr r1, [sp, #4]
	add r2, #0x94
	str r1, [r2]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1]
	mov r1, #0x19
	str r1, [r4, r0]
	b _0225654A
_02256448:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _022565C8 ; =0x00002D59
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _0225654A
	mov r2, #1
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _0225654A
_02256466:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _022565CC ; =0x00002D5A
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _0225654A
	mov r2, #2
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _0225654A
_02256484:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _022565D0 ; =0x00002D5B
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _0225654A
	mov r2, #3
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _0225654A
_022564A2:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _022565D4 ; =0x00002D5C
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _0225654A
	mov r2, #4
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _0225654A
_022564C0:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r2, #0
	mul r3, r1
	ldr r2, _022565D8 ; =0x00002D5D
	add r3, r4, r3
	ldrsb r2, [r3, r2]
	cmp r2, #0xc
	bge _0225654A
	mov r2, #5
	add r1, #0x70
	str r2, [r4, r1]
	mov r1, #0xd0
	str r1, [r4, r0]
	b _0225654A
_022564DE:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _022565C8 ; =0x00002D59
_022564E8:
	ldrsb r1, [r2, r0]
	cmp r1, #0xc
	blt _022564F6
	add r5, r5, #1
	add r2, r2, #1
	cmp r5, #5
	blt _022564E8
_022564F6:
	cmp r5, #5
	beq _0225654A
	ldr r5, _022565C8 ; =0x00002D59
	mov r7, #5
	mov r6, #0xc0
_02256500:
	ldr r0, [sp]
	bl BattleSys_Random
	add r1, r7, #0
	bl _s32_div_f
	ldr r0, [r4, #0x6c]
	add r2, r0, #0
	mul r2, r6
	add r0, r4, r2
	add r0, r1, r0
	ldrsb r0, [r0, r5]
	cmp r0, #0xc
	beq _02256500
	mov r0, #0x13
	add r1, r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _022565BC ; =0x00003118
	mov r1, #0xd2
	str r1, [r4, r0]
	b _0225654A
_0225652C:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _022565C4 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x14
	tst r1, r2
	bne _0225654A
	mov r1, #0xd1
	str r1, [r4, r0]
	b _0225654A
_02256546:
	ldr r1, _022565DC ; =0x00000109
	str r1, [r4, r0]
_0225654A:
	ldr r0, [r4, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	mov r2, #0xb7
	lsl r2, r2, #6
	ldr r3, [r0, r2]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r3
	beq _0225656A
	ldr r0, _022565BC ; =0x00003118
	mov r1, #0
	str r1, [r4, r0]
	b _022565AA
_0225656A:
	ldr r0, [sp, #4]
	sub r2, #8
	add r3, r0, #0
	mul r3, r1
	add r0, r4, r3
	ldrh r0, [r0, r2]
	add r1, #0x68
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _022565A2
	ldr r0, _022565BC ; =0x00003118
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022565A2
	mov r0, #0xba
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	add r3, r4, r0
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #2
	orr r0, r1
	str r0, [r3, r2]
_022565A2:
	mov r0, #0x46
	ldr r1, [r4, #0x6c]
	lsl r0, r0, #2
	str r1, [r4, r0]
_022565AA:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022565B0: .word 0x00002D90
_022565B4: .word 0x00003114
_022565B8: .word 0x00002DA8
_022565BC: .word 0x00003118
_022565C0: .word 0x00002D58
_022565C4: .word 0x00002DB0
_022565C8: .word 0x00002D59
_022565CC: .word 0x00002D5A
_022565D0: .word 0x00002D5B
_022565D4: .word 0x00002D5C
_022565D8: .word 0x00002D5D
_022565DC: .word 0x00000109
	thumb_func_end CanFling

	thumb_func_start ov12_022565E0
ov12_022565E0: ; 0x022565E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl GetBattlerHeldItemEffect
	cmp r0, #0x69
	bne _0225666E
	ldr r5, [r4, #0x64]
	mov r6, #0xc0
	add r3, r5, #0
	mul r3, r6
	ldr r0, _02256684 ; =0x00002DB0
	add r2, r4, r3
	ldr r1, [r2, r0]
	lsl r6, r6, #4
	tst r6, r1
	bne _02256682
	mov r6, #0x70
	tst r6, r1
	bne _02256682
	ldr r6, _02256688 ; =0x0000213C
	ldr r7, [r4, r6]
	mov r6, #2
	lsl r6, r6, #8
	tst r7, r6
	bne _02256682
	lsl r6, r6, #3
	tst r1, r6
	bne _02256682
	mov r6, #0xc1
	lsl r6, r6, #6
	lsl r5, r5, #1
	add r7, r4, r5
	add r5, r6, #0
	add r5, #0x9c
	ldrh r5, [r7, r5]
	ldr r1, [r4, r6]
	cmp r1, r5
	bne _02256654
	add r1, r0, #0
	add r1, #0x1c
	ldr r1, [r2, r1]
	lsl r1, r1, #5
	lsr r5, r1, #0x1c
	cmp r5, #0xa
	bhs _02256682
	add r0, #0x1c
	add r0, r4, r0
	ldr r2, [r0, r3]
	ldr r1, _0225668C ; =0xF87FFFFF
	and r2, r1
	add r1, r5, #1
	lsl r1, r1, #0x1c
	lsr r1, r1, #5
	orr r1, r2
	str r1, [r0, r3]
	pop {r3, r4, r5, r6, r7, pc}
_02256654:
	add r0, #0x1c
	add r2, r4, r0
	ldr r1, [r2, r3]
	ldr r0, _0225668C ; =0xF87FFFFF
	and r0, r1
	str r0, [r2, r3]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, r6]
	lsl r0, r0, #1
	add r0, r4, r0
	add r6, #0x9c
	strh r1, [r0, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0225666E:
	ldr r0, _02256690 ; =0x00002DCC
	ldr r1, [r4, #0x64]
	add r3, r4, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _0225668C ; =0xF87FFFFF
	and r0, r1
	str r0, [r3, r2]
_02256682:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02256684: .word 0x00002DB0
_02256688: .word 0x0000213C
_0225668C: .word 0xF87FFFFF
_02256690: .word 0x00002DCC
	thumb_func_end ov12_022565E0

	thumb_func_start ov12_02256694
ov12_02256694: ; 0x02256694
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl GetBattlerHeldItemEffect
	cmp r0, #0x69
	bne _02256720
	ldr r5, _02256738 ; =0x0000216C
	ldr r0, _0225673C ; =0x801FDA49
	ldr r1, [r4, r5]
	tst r0, r1
	beq _02256734
	ldr r2, [r4, #0x64]
	mov r0, #0xc1
	lsl r0, r0, #6
	lsl r1, r2, #1
	ldr r3, [r4, r0]
	add r1, r4, r1
	add r0, #0x9c
	ldrh r0, [r1, r0]
	cmp r3, r0
	bne _02256734
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r3, _02256740 ; =0x00002DCC
	add r6, r4, r1
	ldr r0, [r6, r3]
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	beq _02256734
	mov r7, #0x1c
	mul r7, r2
	mov r2, #0xb5
	add r7, r4, r7
	lsl r2, r2, #2
	ldr r7, [r7, r2]
	lsl r7, r7, #0x17
	lsr r7, r7, #0x1d
	bne _02256734
	add r7, r3, #0
	sub r7, #0x1c
	ldr r6, [r6, r7]
	mov r7, #0xc0
	lsl r7, r7, #4
	tst r7, r6
	bne _02256734
	mov r7, #0x70
	tst r7, r6
	bne _02256734
	sub r5, #0x30
	ldr r5, [r4, r5]
	sub r2, #0xd4
	tst r2, r5
	bne _02256734
	mov r2, #1
	lsl r2, r2, #0xc
	tst r2, r6
	bne _02256734
	add r2, r4, r3
	sub r0, r0, #1
	lsl r0, r0, #0x1c
	ldr r4, [r2, r1]
	ldr r3, _02256744 ; =0xF87FFFFF
	lsr r0, r0, #5
	and r3, r4
	orr r0, r3
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_02256720:
	ldr r0, _02256740 ; =0x00002DCC
	ldr r1, [r4, #0x64]
	add r3, r4, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _02256744 ; =0xF87FFFFF
	and r0, r1
	str r0, [r3, r2]
_02256734:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256738: .word 0x0000216C
_0225673C: .word 0x801FDA49
_02256740: .word 0x00002DCC
_02256744: .word 0xF87FFFFF
	thumb_func_end ov12_02256694

	thumb_func_start ov12_02256748
ov12_02256748: ; 0x02256748
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r3, #1
	bne _0225675A
	sub r0, r2, #2
	cmp r0, #1
	bhi _0225675A
	mov r0, #1
	b _0225675C
_0225675A:
	mov r0, #0
_0225675C:
	cmp r0, #1
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r2, _02256798 ; =0x00002D8C
	add r1, r5, r4
	ldr r0, [r1, r2]
	add r2, r2, #4
	ldr r1, [r1, r2]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	mov r6, #0
	bl sub_020880B0
	ldr r1, _0225679C ; =0x00002DAC
	add r2, r5, r4
	ldr r1, [r2, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bne _02256792
	cmp r0, #4
	beq _02256794
	cmp r0, #3
	beq _02256794
_02256792:
	mov r6, #0xb
_02256794:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02256798: .word 0x00002D8C
_0225679C: .word 0x00002DAC
	thumb_func_end ov12_02256748

	thumb_func_start ov12_022567A0
ov12_022567A0: ; 0x022567A0
	push {r3, r4}
	mov r3, #0xc0
	add r4, r1, #0
	mul r4, r3
	add r1, r0, r4
	ldr r0, _022567D0 ; =0x00002DB0
	mov r2, #1
	ldr r0, [r1, r0]
	lsl r1, r2, #0x16
	tst r1, r0
	bne _022567C8
	lsl r1, r3, #4
	tst r1, r0
	bne _022567C8
	mov r1, #0x70
	tst r1, r0
	bne _022567C8
	lsl r1, r2, #0xc
	tst r0, r1
	beq _022567CA
_022567C8:
	mov r2, #0
_022567CA:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_022567D0: .word 0x00002DB0
	thumb_func_end ov12_022567A0

	thumb_func_start ov12_022567D4
ov12_022567D4: ; 0x022567D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	bl BattleSys_GetPlayerProfile
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov12_0223AB60
	str r0, [sp, #8]
	add r0, r5, #0
	bl BattleSys_GetTerrainId
	add r7, r0, #0
	add r0, r5, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _02256814
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223AA88
	bl BallToItemId
	add r2, r0, #0
	b _02256818
_02256814:
	sub r1, #0xd8
	ldr r2, [r4, r1]
_02256818:
	str r7, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r6, #0
	bl sub_020720FC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022567D4

	thumb_func_start ov12_0225682C
ov12_0225682C: ; 0x0225682C
	lsl r1, r1, #8
	add r1, r0, r1
	mov r0, #0x23
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	bx lr
	thumb_func_end ov12_0225682C

	thumb_func_start ov12_02256838
ov12_02256838: ; 0x02256838
	mov r3, #0x1c
	mul r3, r1
	add r1, r0, r3
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #8
	mov r2, #0
	tst r0, r1
	beq _0225684E
	mov r2, #1
_0225684E:
	add r0, r2, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov12_02256838

	thumb_func_start ov12_02256854
ov12_02256854: ; 0x02256854
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	bl BattleSys_GetPlayerProfile
	add r4, r0, #0
	bl PlayerProfile_GetTrainerID
	add r6, r0, #0
	add r0, r4, #0
	bl PlayerProfile_GetTrainerGender
	add r7, r0, #0
	add r0, r4, #0
	bl PlayerProfile_GetNamePtr
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	add r4, r2, #0
	mul r4, r1
	ldr r1, _022568AC ; =0x00002DB4
	add r3, r5, r4
	ldr r2, [r3, r1]
	cmp r6, r2
	bne _022568A8
	add r2, r1, #0
	add r2, #0xa
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	cmp r7, r2
	bne _022568A8
	sub r1, #0x20
	add r1, r5, r1
	add r1, r1, r4
	mov r2, #7
	bl StringNotEqualN
	cmp r0, #0
	bne _022568A8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022568A8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022568AC: .word 0x00002DB4
	thumb_func_end ov12_02256854

	thumb_func_start ov12_022568B0
ov12_022568B0: ; 0x022568B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r1, #0
	bl BattleSys_GetPlayerProfile
	add r4, r0, #0
	bl PlayerProfile_GetTrainerID
	add r6, r0, #0
	add r0, r4, #0
	bl PlayerProfile_GetTrainerGender
	add r7, r0, #0
	add r0, r4, #0
	bl PlayerProfile_GetNamePtr
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x90
	add r2, sp, #0
	bl GetMonData
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	bne _0225690E
	add r0, r5, #0
	mov r1, #0x9d
	mov r2, #0
	bl GetMonData
	cmp r7, r0
	bne _0225690E
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #7
	bl StringNotEqualN
	cmp r0, #0
	bne _0225690E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225690E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022568B0

	thumb_func_start ov12_02256914
ov12_02256914: ; 0x02256914
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #4]
	str r4, [sp, #8]
	bl BattleSys_GetMaxBattlers
	cmp r0, #0
	bgt _0225692C
	b _02256EE4
_0225692C:
	ldr r0, _02256C2C ; =0x00002D66
	add r6, r5, r0
_02256930:
	ldr r0, _02256C30 ; =0x000021EC
	add r1, r5, r4
	ldrb r1, [r1, r0]
	mov r0, #0x46
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r3, [r5, r0]
	mov r0, #0xc0
	mul r0, r3
	add r2, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r1, [r2, r0]
	ldr r0, _02256C34 ; =0x0000015F
	cmp r1, r0
	bne _02256964
	ldr r0, _02256C38 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02256964
	add r0, r5, #0
	add r1, r3, #0
	bl GetBattlerAbility
	cmp r0, #0x3b
	beq _02256966
_02256964:
	b _02256B52
_02256966:
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _0225698E
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	beq _02256990
_0225698E:
	b _02256B00
_02256990:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0xf3
	tst r1, r0
	bne _022569EE
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02256C3C ; =0x00002D64
	add r1, r5, r1
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _022569EE
	ldr r2, _02256C40 ; =0x00002D65
	ldrb r2, [r1, r2]
	cmp r2, #0
	beq _022569EE
	ldr r3, _02256C3C ; =0x00002D64
	mov r2, #0
	mov r0, #0x46
	strb r2, [r1, r3]
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	ldr r0, [r5, r0]
	add r2, r3, #2
	add r4, r0, #0
	mul r4, r1
	add r2, r5, r2
	ldrb r3, [r2, r4]
	mov r0, #0x1f
	add r1, #0x46
	bic r3, r0
	ldr r0, [sp, #4]
	strb r3, [r2, r4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_022569EE:
	mov r1, #0x30
	tst r1, r0
	beq _02256A48
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02256C3C ; =0x00002D64
	add r1, r5, r1
	ldrb r2, [r1, r2]
	cmp r2, #0xa
	beq _02256A48
	ldr r2, _02256C40 ; =0x00002D65
	ldrb r2, [r1, r2]
	cmp r2, #0xa
	beq _02256A48
	ldr r3, _02256C3C ; =0x00002D64
	mov r2, #0xa
	mov r0, #0x46
	strb r2, [r1, r3]
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	add r2, r3, #2
	ldr r3, [r5, r0]
	add r2, r5, r2
	add r0, r3, #0
	mul r0, r1
	ldrb r4, [r2, r0]
	mov r3, #0x1f
	add r1, #0x46
	bic r4, r3
	mov r3, #1
	str r3, [sp, #8]
	orr r3, r4
	strb r3, [r2, r0]
	ldr r0, [sp, #4]
	str r1, [r0]
	b _02256EE4
_02256A48:
	mov r1, #3
	tst r1, r0
	beq _02256AA4
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	ldr r2, _02256C3C ; =0x00002D64
	add r1, r5, r1
	ldrb r2, [r1, r2]
	cmp r2, #0xb
	beq _02256AA4
	ldr r2, _02256C40 ; =0x00002D65
	ldrb r2, [r1, r2]
	cmp r2, #0xb
	beq _02256AA4
	ldr r3, _02256C3C ; =0x00002D64
	mov r2, #0xb
	mov r0, #0x46
	strb r2, [r1, r3]
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	add r2, r3, #2
	ldr r3, [r5, r0]
	add r2, r5, r2
	add r0, r3, #0
	mul r0, r1
	ldrb r4, [r2, r0]
	mov r3, #0x1f
	add r1, #0x46
	bic r4, r3
	mov r3, #2
	orr r3, r4
	strb r3, [r2, r0]
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256AA4:
	mov r1, #0xc0
	tst r0, r1
	beq _02256B52
	add r0, r1, #0
	add r0, #0x58
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02256C3C ; =0x00002D64
	add r0, r5, r0
	ldrb r1, [r0, r1]
	cmp r1, #0xf
	beq _02256B52
	ldr r1, _02256C40 ; =0x00002D65
	ldrb r1, [r0, r1]
	cmp r1, #0xf
	beq _02256B52
	ldr r3, _02256C3C ; =0x00002D64
	mov r2, #0xf
	strb r2, [r0, r3]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	add r2, r3, #2
	ldr r3, [r5, r0]
	add r2, r5, r2
	add r0, r3, #0
	mul r0, r1
	ldrb r4, [r2, r0]
	mov r3, #0x1f
	add r1, #0x46
	bic r4, r3
	mov r3, #3
	orr r3, r4
	strb r3, [r2, r0]
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256B00:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02256C3C ; =0x00002D64
	add r0, r5, r0
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02256B52
	ldr r1, _02256C40 ; =0x00002D65
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02256B52
	ldr r3, _02256C3C ; =0x00002D64
	mov r2, #0
	strb r2, [r0, r3]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r1, #0xc0
	add r6, r4, #0
	mul r6, r1
	add r6, r5, r6
	add r4, r3, #1
	strb r2, [r6, r4]
	ldr r0, [r5, r0]
	add r2, r3, #2
	add r4, r0, #0
	mul r4, r1
	add r2, r5, r2
	ldrb r3, [r2, r4]
	mov r0, #0x1f
	add r1, #0x46
	bic r3, r0
	ldr r0, [sp, #4]
	strb r3, [r2, r4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256B52:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	mov r1, #0xb5
	add r0, r5, r0
	lsl r1, r1, #6
	ldrh r2, [r0, r1]
	ldr r1, _02256C44 ; =0x000001A5
	cmp r2, r1
	bne _02256B72
	ldr r1, _02256C38 ; =0x00002D8C
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02256B74
_02256B72:
	b _02256C9E
_02256B74:
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02256C78
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02256C78
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r0, #0xf3
	tst r0, r2
	bne _02256BD0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldrb r0, [r6, r3]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02256BD0
	mov r1, #0x1f
	bic r0, r1
	strb r0, [r6, r3]
	ldr r1, _02256C48 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256BD0:
	mov r0, #0x30
	tst r0, r2
	beq _02256BFE
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldrb r0, [r6, r3]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	bne _02256BFE
	mov r1, #0x1f
	bic r0, r1
	mov r1, #1
	orr r0, r1
	str r1, [sp, #8]
	strb r0, [r6, r3]
	ldr r1, _02256C48 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0]
	b _02256EE4
_02256BFE:
	mov r0, #3
	tst r0, r2
	beq _02256C4C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldrb r0, [r6, r3]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02256C4C
	mov r1, #0x1f
	bic r0, r1
	strb r0, [r6, r3]
	ldr r1, _02256C48 ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
	.balign 4, 0
_02256C2C: .word 0x00002D66
_02256C30: .word 0x000021EC
_02256C34: .word 0x0000015F
_02256C38: .word 0x00002D8C
_02256C3C: .word 0x00002D64
_02256C40: .word 0x00002D65
_02256C44: .word 0x000001A5
_02256C48: .word 0x00000106
_02256C4C:
	mov r0, #0xc0
	tst r0, r2
	beq _02256C9E
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldrb r2, [r6, r0]
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02256C9E
	mov r1, #0x1f
	bic r2, r1
	strb r2, [r6, r0]
	ldr r1, _02256EEC ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256C78:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	ldrb r2, [r6, r0]
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, #1
	bne _02256C9E
	mov r1, #0x1f
	bic r2, r1
	strb r2, [r6, r0]
	ldr r1, _02256EEC ; =0x00000106
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256C9E:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r0, #0xc0
	mul r0, r3
	add r2, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r1, [r2, r0]
	ldr r0, _02256EF0 ; =0x000001ED
	cmp r1, r0
	bne _02256D1C
	ldr r0, _02256EF4 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02256D1C
	add r0, r5, #0
	add r1, r3, #0
	bl GetBattlerAbility
	cmp r0, #0x79
	bne _02256D1C
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02256EF8 ; =0x00002DB8
	mov r2, #5
	ldrh r0, [r1, r0]
	mov r1, #1
	bl GetItemAttr
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GetArceusTypeByHeldItemEffect
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0xc0
	add r3, r1, #0
	mul r3, r2
	ldrb r1, [r6, r3]
	lsl r2, r1, #0x1b
	lsr r2, r2, #0x1b
	cmp r0, r2
	beq _02256D1C
	mov r2, #0x1f
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r0, r0, #0x18
	mov r2, #0x1f
	and r0, r2
	orr r0, r1
	strb r0, [r6, r3]
	ldr r0, [sp, #4]
	add r2, #0xe7
	str r2, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256D1C:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0xc0
	add r3, r1, #0
	mul r3, r0
	mov r0, #0xb5
	add r2, r5, r3
	lsl r0, r0, #6
	ldrh r1, [r2, r0]
	ldr r0, _02256EFC ; =0x000001E7
	cmp r1, r0
	bne _02256D78
	ldr r0, _02256EF4 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02256D78
	ldr r0, _02256F00 ; =0x00002D66
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	cmp r0, #1
	bne _02256D78
	ldr r0, _02256F04 ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02256D7A
	add r0, r7, #0
	bl BattleSys_GetBattleFlags
	mov r1, #0x80
	tst r0, r1
	bne _02256D78
	add r0, r1, #0
	add r0, #0x98
	ldr r1, [r5, r0]
	mov r0, #0xc0
	add r3, r1, #0
	mul r3, r0
	ldr r0, _02256EF8 ; =0x00002DB8
	add r1, r5, r3
	ldrh r0, [r1, r0]
	cmp r0, #0x70
	bne _02256D7A
_02256D78:
	b _02256ED6
_02256D7A:
	ldr r0, _02256F04 ; =0x00002DB0
	add r1, r5, r3
	ldr r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02256D8A
	b _02256EC8
_02256D8A:
	mov r0, #5
	bl AllocMonZeroed
	add r4, r0, #0
	add r0, r7, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _02256DAE
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02256F08 ; =0x000021AC
	ldr r1, [r1, r0]
	b _02256DB8
_02256DAE:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	eor r1, r0
_02256DB8:
	ldr r2, _02256F0C ; =0x0000219C
	add r3, r5, r1
	ldrb r2, [r3, r2]
	add r0, r7, #0
	bl BattleSystem_GetPartyMon
	add r1, r4, #0
	bl CopyPokemonToPokemon
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #MON_DATA_HELD_ITEM
	add r2, sp, #0xc
	bl SetMonData
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #MON_DATA_FORME
	add r2, sp, #0xc
	bl SetMonData
	add r0, r4, #0
	bl Mon_UpdateGiratinaForme
	add r0, r4, #0
	mov r1, #0xa5
	mov r2, #0
	bl GetMonData
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02256F10 ; =0x00002D42
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl GetMonData
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02256F14 ; =0x00002D44
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl GetMonData
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02256F18 ; =0x00002D46
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02256F1C ; =0x00002D48
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl GetMonData
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02256F20 ; =0x00002D4A
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	mov r6, #0x46
	lsl r6, r6, #2
	ldr r2, [r5, r6]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02256F24 ; =0x00002D67
	strb r0, [r2, r1]
	sub r0, r1, #1
	add r3, r5, r0
	ldr r0, [r5, r6]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldrb r1, [r3, r2]
	mov r0, #0x1f
	bic r1, r0
	strb r1, [r3, r2]
	mov r1, #0x85
	lsl r1, r1, #6
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x1a
	orr r0, r2
	str r0, [r5, r1]
	ldr r2, [r5, r6]
	add r0, r7, #0
	add r1, r5, #0
	bl BattleController_EmitBattleMonToPartyMonCopy
	add r0, r4, #0
	bl FreeToHeap
	add r1, r6, #0
	ldr r0, [sp, #4]
	sub r1, #0x12
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256EC8:
	mov r1, #0x4a
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #8]
	b _02256EE4
_02256ED6:
	add r0, r7, #0
	add r4, r4, #1
	bl BattleSys_GetMaxBattlers
	cmp r4, r0
	bge _02256EE4
	b _02256930
_02256EE4:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256EEC: .word 0x00000106
_02256EF0: .word 0x000001ED
_02256EF4: .word 0x00002D8C
_02256EF8: .word 0x00002DB8
_02256EFC: .word 0x000001E7
_02256F00: .word 0x00002D66
_02256F04: .word 0x00002DB0
_02256F08: .word 0x000021AC
_02256F0C: .word 0x0000219C
_02256F10: .word 0x00002D42
_02256F14: .word 0x00002D44
_02256F18: .word 0x00002D46
_02256F1C: .word 0x00002D48
_02256F20: .word 0x00002D4A
_02256F24: .word 0x00002D67
	thumb_func_end ov12_02256914

	thumb_func_start ov12_02256F28
ov12_02256F28: ; 0x02256F28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	str r1, [sp]
	mov r7, #0
	bl BattleSys_GetMaxBattlers
	cmp r0, #0
	ble _02256F6A
	ldr r5, [sp]
	ldr r4, _02256F70 ; =0x0000312C
_02256F3E:
	mov r1, #0
_02256F40:
	add r0, r5, r1
	strb r1, [r0, r4]
	add r1, r1, #1
	cmp r1, #6
	blt _02256F40
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r3, r1, #0
	add r6, r3, r7
	ldr r3, _02256F74 ; =0x0000219C
	add r2, r7, #0
	ldrb r3, [r6, r3]
	bl ov12_02256F78
	ldr r0, [sp, #4]
	add r5, r5, #6
	add r7, r7, #1
	bl BattleSys_GetMaxBattlers
	cmp r7, r0
	blt _02256F3E
_02256F6A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256F70: .word 0x0000312C
_02256F74: .word 0x0000219C
	thumb_func_end ov12_02256F28

	thumb_func_start ov12_02256F78
ov12_02256F78: ; 0x02256F78
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl BattleSys_GetBattleType
	mov r1, #2
	tst r1, r0
	beq _02256F92
	mov r1, #0x18
	tst r1, r0
	beq _02256FA6
_02256F92:
	mov r1, #0x10
	tst r0, r1
	beq _02256FCA
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	bne _02256FCA
_02256FA6:
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_0223AB0C
	cmp r0, #4
	beq _02256FBE
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_0223AB0C
	cmp r0, #5
	bne _02256FC2
_02256FBE:
	mov r1, #1
	b _02256FC4
_02256FC2:
	mov r1, #0
_02256FC4:
	mov r0, #1
	and r5, r0
	b _02256FCC
_02256FCA:
	mov r1, #0
_02256FCC:
	mov r2, #6
	mul r2, r5
	ldr r3, _02256FF4 ; =0x0000312C
	mov r0, #0
	add r7, r6, r2
_02256FD6:
	ldrb r5, [r7, r3]
	cmp r4, r5
	beq _02256FE4
	add r0, r0, #1
	add r7, r7, #1
	cmp r0, #6
	blt _02256FD6
_02256FE4:
	ldr r3, _02256FF4 ; =0x0000312C
	add r3, r6, r3
	add r4, r3, r2
	ldrb r3, [r4, r1]
	ldrb r2, [r4, r0]
	strb r2, [r4, r1]
	strb r3, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02256FF4: .word 0x0000312C
	thumb_func_end ov12_02256F78

	thumb_func_start CalcMoveDamage
CalcMoveDamage: ; 0x02256FF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	str r0, [sp, #4]
	ldr r0, [sp, #0xa0]
	add r5, r1, #0
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0xb4]
	str r2, [sp, #8]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0x84]
	ldr r0, [sp, #0xb4]
	str r3, [sp, #0xc]
	cmp r0, #1
	beq _0225701C
	bhi _0225701C
	bl GF_AssertFail
_0225701C:
	add r0, sp, #0x90
	ldrb r0, [r0, #0x1c]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
	add r0, sp, #0xb0
	ldrb r0, [r0]
	mov r2, #2
	mov r3, #0
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #5
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x13
	mov r3, #0
	bl GetBattlerVar
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0
	bl GetBattlerVar
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x16
	mov r3, #0
	bl GetBattlerVar
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x17
	mov r3, #0
	bl GetBattlerVar
	sub r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x2b
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	add r3, r2, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #0
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	add r3, r2, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x2f
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x2f
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x30
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x30
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x34
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x34
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl GetBattlerAbility
	add r7, r0, #0
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl GetBattlerAbility
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x1d
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x1d
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl GetBattlerHeldItem
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl GetItemHoldEffect
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl GetItemHoldEffect
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl GetBattlerHeldItem
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl GetItemHoldEffect
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl GetItemHoldEffect
	ldr r0, [sp, #4]
	bl BattleSys_GetBattleType
	str r0, [sp, #0x5c]
	add r0, sp, #0x90
	ldrh r4, [r0, #0x14]
	cmp r4, #0
	bne _0225721C
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225749C ; =0x000003E1
	ldrb r4, [r1, r0]
_0225721C:
	cmp r7, #0x60
	bne _02257224
	mov r6, #0
	b _02257240
_02257224:
	add r0, sp, #0x90
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _02257238
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022574A0 ; =0x000003E2
	ldrb r6, [r1, r0]
	b _02257240
_02257238:
	mov r0, #0x3f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02257240:
	ldr r0, _022574A4 ; =0x00002158
	ldr r0, [r5, r0]
	cmp r0, #0xa
	bge _0225724C
	bl GF_AssertFail
_0225724C:
	ldr r0, _022574A4 ; =0x00002158
	mov r1, #0xa
	ldr r0, [r5, r0]
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, sp, #0x90
	ldrb r0, [r0, #0x1c]
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #2
	lsl r1, r1, #8
	tst r1, r2
	beq _0225727C
	cmp r6, #0xd
	bne _0225727C
	lsl r1, r4, #0x11
	lsr r4, r1, #0x10
_0225727C:
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _0225729A
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225729A:
	cmp r7, #0x65
	bne _022572B6
	ldr r0, [sp, #8]
	cmp r0, #0xa5
	beq _022572B6
	cmp r4, #0x3c
	bhi _022572B6
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_022572B6:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r1, r5, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r7, #0x25
	str r0, [sp, #0x80]
	beq _022572CE
	cmp r7, #0x4a
	bne _022572D6
_022572CE:
	ldr r0, [sp, #0x7c]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_022572D6:
	cmp r7, #0x70
	bne _02257304
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	mov r3, #0
	bl ov12_022581D4
	str r0, [sp, #0x88]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x59
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x88]
	sub r0, r1, r0
	cmp r0, #5
	bge _02257304
	ldr r0, [sp, #0x7c]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_02257304:
	ldr r3, _022574A8 ; =ov12_0226CC3A
	mov r2, #0
_02257308:
	ldrb r1, [r3]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bne _02257328
	ldrb r0, [r3, #1]
	cmp r6, r0
	bne _02257328
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02257330
_02257328:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x21
	blo _02257308
_02257330:
	ldr r0, [sp, #0x30]
	cmp r0, #0x37
	bne _02257348
	ldr r1, [sp, #0x7c]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_02257348:
	ldr r0, [sp, #0x30]
	cmp r0, #0x7d
	bne _02257360
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_02257360:
	ldr r0, [sp, #0x30]
	cmp r0, #0x3c
	bne _0225738E
	ldr r0, [sp, #0x5c]
	mov r1, #0x80
	tst r0, r1
	bne _0225738E
	ldr r1, _022574AC ; =0x0000FE84
	ldr r0, [sp, #0x58]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0225738E
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_0225738E:
	ldr r0, [sp, #0x28]
	cmp r0, #0x3c
	bne _022573BC
	ldr r0, [sp, #0x5c]
	mov r1, #0x80
	tst r0, r1
	bne _022573BC
	ldr r1, _022574AC ; =0x0000FE84
	ldr r0, [sp, #0x54]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022573BC
	ldr r1, [sp, #0x10]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_022573BC:
	ldr r0, [sp, #0x30]
	cmp r0, #0x3d
	bne _022573D2
	ldr r1, _022574B0 ; =0x0000016E
	ldr r0, [sp, #0x58]
	cmp r0, r1
	bne _022573D2
	ldr r0, [sp, #0x74]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_022573D2:
	ldr r0, [sp, #0x28]
	cmp r0, #0x3e
	bne _022573E8
	ldr r1, _022574B0 ; =0x0000016E
	ldr r0, [sp, #0x54]
	cmp r0, r1
	bne _022573E8
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_022573E8:
	ldr r0, [sp, #0x30]
	cmp r0, #0x47
	bne _022573F8
	ldr r0, [sp, #0x58]
	cmp r0, #0x19
	bne _022573F8
	lsl r0, r4, #0x11
	lsr r4, r0, #0x10
_022573F8:
	ldr r0, [sp, #0x28]
	cmp r0, #0x5a
	bne _0225740C
	ldr r0, [sp, #0x54]
	cmp r0, #0x84
	bne _0225740C
	ldr r0, [sp, #0x78]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
_0225740C:
	ldr r0, [sp, #0x30]
	cmp r0, #0x5b
	bne _02257428
	ldr r1, _022574B4 ; =0x0000FF98
	ldr r0, [sp, #0x58]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02257428
	ldr r0, [sp, #0x7c]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_02257428:
	ldr r0, [sp, #0x30]
	cmp r0, #3
	bne _0225744E
	cmp r6, #0x10
	beq _02257436
	cmp r6, #8
	bne _0225744E
_02257436:
	ldr r1, _022574B8 ; =0x000001E3
	ldr r0, [sp, #0x58]
	cmp r0, r1
	bne _0225744E
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225744E:
	ldr r0, [sp, #0x30]
	cmp r0, #4
	bne _02257476
	cmp r6, #0x10
	beq _0225745C
	cmp r6, #0xb
	bne _02257476
_0225745C:
	mov r1, #0x79
	ldr r0, [sp, #0x58]
	lsl r1, r1, #2
	cmp r0, r1
	bne _02257476
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02257476:
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _022574D6
	cmp r6, #0x10
	beq _02257484
	cmp r6, #7
	bne _022574D6
_02257484:
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x35
	mov r3, #0
	bl GetBattlerVar
	mov r1, #2
	lsl r1, r1, #0x14
	tst r0, r1
	bne _022574D6
	ldr r1, _022574BC ; =0x000001E7
	b _022574C0
	.balign 4, 0
_0225749C: .word 0x000003E1
_022574A0: .word 0x000003E2
_022574A4: .word 0x00002158
_022574A8: .word ov12_0226CC3A
_022574AC: .word 0x0000FE84
_022574B0: .word 0x0000016E
_022574B4: .word 0x0000FF98
_022574B8: .word 0x000001E3
_022574BC: .word 0x000001E7
_022574C0:
	ldr r0, [sp, #0x58]
	cmp r0, r1
	bne _022574D6
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_022574D6:
	ldr r0, [sp, #0x30]
	cmp r0, #0x5e
	bne _022574F2
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _022574F2
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_022574F2:
	ldr r0, [sp, #0x30]
	cmp r0, #0x5f
	bne _02257510
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne _02257510
	ldr r0, [sp, #0x2c]
	mov r1, #0x64
	add r0, #0x64
	str r0, [sp, #0x2c]
	mul r0, r4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02257510:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x2f
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _0225752C
	cmp r6, #0xa
	beq _02257528
	cmp r6, #0xf
	bne _0225752C
_02257528:
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_0225752C:
	cmp r7, #0x37
	bne _02257542
	ldr r1, [sp, #0x7c]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_02257542:
	cmp r7, #0x3e
	bne _0225755E
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0225755E
	ldr r1, [sp, #0x7c]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_0225755E:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x3f
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02257586
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _02257586
	ldr r1, [sp, #0x78]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
_02257586:
	cmp r7, #0x39
	bne _022575B0
	mov r0, #0x3a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	mov r2, #1
	bl CheckAbilityActive
	cmp r0, #0
	beq _022575B0
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_022575B0:
	cmp r7, #0x3a
	bne _022575DA
	mov r0, #0x39
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	mov r2, #1
	bl CheckAbilityActive
	cmp r0, #0
	beq _022575DA
	ldr r1, [sp, #0x74]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_022575DA:
	cmp r6, #0xd
	bne _022575F2
	mov r2, #1
	ldr r0, [sp, #4]
	add r1, r5, #0
	lsl r2, r2, #0x10
	bl ov12_02252CE8
	cmp r0, #0
	beq _022575F2
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_022575F2:
	cmp r6, #0xa
	bne _0225760A
	mov r2, #2
	ldr r0, [sp, #4]
	add r1, r5, #0
	lsl r2, r2, #0x10
	bl ov12_02252CE8
	cmp r0, #0
	beq _0225760A
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_0225760A:
	cmp r6, #0xc
	bne _0225762E
	cmp r7, #0x41
	bne _0225762E
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _0225762E
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225762E:
	cmp r6, #0xa
	bne _02257652
	cmp r7, #0x42
	bne _02257652
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _02257652
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02257652:
	cmp r6, #0xb
	bne _02257676
	cmp r7, #0x43
	bne _02257676
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _02257676
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02257676:
	cmp r6, #6
	bne _0225769A
	cmp r7, #0x44
	bne _0225769A
	ldr r0, [sp, #0x4c]
	mov r1, #3
	bl _s32_div_f
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bgt _0225769A
	mov r0, #0x96
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0225769A:
	cmp r6, #0xa
	bne _022576B2
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x55
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _022576B2
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
_022576B2:
	cmp r6, #0xa
	bne _022576D4
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x57
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _022576D4
	mov r0, #0x7d
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_022576D4:
	cmp r7, #0x56
	bne _02257714
	ldr r0, [sp, #0x70]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x70]
	mvn r1, r1
	cmp r0, r1
	bge _022576EC
	str r1, [sp, #0x70]
_022576EC:
	ldr r0, [sp, #0x70]
	cmp r0, #6
	ble _022576F6
	mov r0, #6
	str r0, [sp, #0x70]
_022576F6:
	ldr r0, [sp, #0x68]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x68]
	mvn r1, r1
	cmp r0, r1
	bge _0225770A
	str r1, [sp, #0x68]
_0225770A:
	ldr r0, [sp, #0x68]
	cmp r0, #6
	ble _02257714
	mov r0, #6
	str r0, [sp, #0x68]
_02257714:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x56
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02257760
	ldr r0, [sp, #0x6c]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x6c]
	mvn r1, r1
	cmp r0, r1
	bge _02257738
	str r1, [sp, #0x6c]
_02257738:
	ldr r0, [sp, #0x6c]
	cmp r0, #6
	ble _02257742
	mov r0, #6
	str r0, [sp, #0x6c]
_02257742:
	ldr r0, [sp, #0x64]
	mov r1, #5
	lsl r0, r0, #0x19
	asr r0, r0, #0x18
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x64]
	mvn r1, r1
	cmp r0, r1
	bge _02257756
	str r1, [sp, #0x64]
_02257756:
	ldr r0, [sp, #0x64]
	cmp r0, #6
	ble _02257760
	mov r0, #6
	str r0, [sp, #0x64]
_02257760:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x6d
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #1
	bne _02257776
	mov r0, #0
	str r0, [sp, #0x70]
	str r0, [sp, #0x68]
_02257776:
	cmp r7, #0x6d
	bne _02257780
	mov r0, #0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x64]
_02257780:
	ldr r0, [sp, #0x70]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x6c]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x68]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x64]
	add r0, r0, #6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x64]
	cmp r7, #0x4f
	bne _022577CE
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bne _022577CE
	add r0, r1, #0
	cmp r0, #2
	beq _022577CE
	ldr r0, [sp, #0x3c]
	cmp r0, #2
	beq _022577CE
	mov r0, #0x7d
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_022577CE:
	cmp r7, #0x4f
	bne _022577F4
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	beq _022577F4
	add r0, r1, #0
	cmp r0, #2
	beq _022577F4
	ldr r0, [sp, #0x3c]
	cmp r0, #2
	beq _022577F4
	mov r0, #0x4b
	mul r0, r4
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_022577F4:
	ldr r2, _02257AE4 ; =ov12_0226CBBE
	mov r3, #0
_022577F8:
	ldrh r1, [r2]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _02257814
	cmp r7, #0x59
	bne _02257814
	mov r0, #0xc
	mul r0, r4
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0225781C
_02257814:
	add r3, r3, #1
	add r2, r2, #2
	cmp r3, #0xf
	blo _022577F8
_0225781C:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _022578EE
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _022578EE
	ldr r0, [sp, #0xa0]
	mov r1, #0x30
	and r0, r1
	str r0, [sp, #0x1c]
	beq _02257864
	cmp r7, #0x5e
	bne _02257864
	ldr r1, [sp, #0x74]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x74]
_02257864:
	ldr r0, [sp, #0xa0]
	mov r1, #0xc
	tst r0, r1
	beq _0225788A
	ldr r0, [sp, #0x38]
	cmp r0, #5
	beq _02257878
	ldr r0, [sp, #0x34]
	cmp r0, #5
	bne _0225788A
_02257878:
	ldr r1, [sp, #0x10]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_0225788A:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _022578B6
	mov r0, #0x7a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r1, r5, #0
	mov r2, #1
	bl CheckAbilityActive
	cmp r0, #0
	beq _022578B6
	ldr r1, [sp, #0x7c]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x7c]
_022578B6:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _022578EE
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x68
	beq _022578EE
	mov r0, #0x7a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #1
	bl CheckAbilityActive
	cmp r0, #0
	beq _022578EE
	ldr r1, [sp, #0x10]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_022578EE:
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _02257AE8 ; =0x000003DE
	ldrh r0, [r1, r0]
	str r0, [sp, #0x14]
	cmp r0, #7
	bne _02257904
	ldr r0, [sp, #0x78]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x78]
_02257904:
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _02257A06
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bls _02257932
	ldr r0, [sp, #0x70]
	cmp r0, #6
	ble _0225792C
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldr r2, [sp, #0x7c]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _02257948
_0225792C:
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x84]
	b _02257948
_02257932:
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x7c]
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
_02257948:
	ldr r0, [sp, #0x84]
	add r1, r0, #0
	ldr r0, [sp, #0x60]
	mul r1, r4
	str r1, [sp, #0x84]
	lsl r0, r0, #1
	mov r1, #5
	bl _s32_div_f
	add r1, r0, #2
	ldr r0, [sp, #0x84]
	mul r1, r0
	ldr r0, [sp, #0xb4]
	str r1, [sp, #0x84]
	cmp r0, #1
	bls _02257984
	ldr r0, [sp, #0x6c]
	cmp r0, #6
	bge _0225799A
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldr r2, [sp, #0x78]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x78]
	b _0225799A
_02257984:
	ldr r0, [sp, #0x6c]
	ldr r2, [sp, #0x78]
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x78]
_0225799A:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x78]
	bl _s32_div_f
	mov r1, #0x32
	bl _s32_div_f
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x48]
	mov r1, #0x10
	tst r0, r1
	beq _022579C0
	cmp r7, #0x3e
	beq _022579C0
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_022579C0:
	ldr r0, [sp, #0xc]
	mov r2, #1
	tst r0, r2
	beq _022579D4
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bne _022579D4
	ldr r0, [sp, #0x14]
	cmp r0, #0xba
	bne _022579D6
_022579D4:
	b _02257AFE
_022579D6:
	ldr r0, [sp, #0x5c]
	mov r1, #2
	tst r0, r1
	beq _022579FA
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	bl GetMonsHitCount
	cmp r0, #2
	bne _022579FA
	ldr r0, [sp, #0x84]
	mov r1, #3
	lsl r0, r0, #1
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _02257AFE
_022579FA:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
	b _02257AFE
_02257A06:
	cmp r0, #1
	bne _02257AFE
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bls _02257A32
	ldr r0, [sp, #0x68]
	cmp r0, #6
	ble _02257A2C
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldr r2, [sp, #0x74]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _02257A48
_02257A2C:
	ldr r0, [sp, #0x74]
	str r0, [sp, #0x84]
	b _02257A48
_02257A32:
	ldr r0, [sp, #0x68]
	ldr r2, [sp, #0x74]
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x84]
_02257A48:
	ldr r0, [sp, #0x84]
	add r1, r0, #0
	ldr r0, [sp, #0x60]
	mul r1, r4
	str r1, [sp, #0x84]
	lsl r0, r0, #1
	mov r1, #5
	bl _s32_div_f
	add r1, r0, #2
	ldr r0, [sp, #0x84]
	mul r1, r0
	ldr r0, [sp, #0xb4]
	str r1, [sp, #0x84]
	cmp r0, #1
	bls _02257A84
	ldr r0, [sp, #0x64]
	cmp r0, #6
	bge _02257A9A
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldr r2, [sp, #0x10]
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x10]
	b _02257A9A
_02257A84:
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x10]
	lsl r1, r0, #1
	ldr r0, _02257AEC ; =ov12_0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _02257AF0 ; =ov12_0226CB89
	ldrb r1, [r2, r1]
	bl _s32_div_f
	str r0, [sp, #0x10]
_02257A9A:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x10]
	bl _s32_div_f
	mov r1, #0x32
	bl _s32_div_f
	str r0, [sp, #0x84]
	ldr r0, [sp, #0xc]
	mov r1, #2
	tst r0, r1
	beq _02257AFE
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bne _02257AFE
	ldr r0, [sp, #0x14]
	cmp r0, #0xba
	beq _02257AFE
	ldr r0, [sp, #0x5c]
	tst r0, r1
	beq _02257AF4
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #1
	bl GetMonsHitCount
	cmp r0, #2
	bne _02257AF4
	ldr r0, [sp, #0x84]
	mov r1, #3
	lsl r0, r0, #1
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _02257AFE
	nop
_02257AE4: .word ov12_0226CBBE
_02257AE8: .word 0x000003DE
_02257AEC: .word ov12_0226CB88
_02257AF0: .word ov12_0226CB89
_02257AF4:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_02257AFE:
	ldr r0, [sp, #0x5c]
	mov r1, #2
	add r4, r0, #0
	and r4, r1
	beq _02257B34
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _02257C28 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #4
	bne _02257B34
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #1
	bl GetMonsHitCount
	cmp r0, #2
	bne _02257B34
	ldr r0, [sp, #0x84]
	lsl r1, r0, #1
	add r1, r0, r1
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	str r0, [sp, #0x84]
_02257B34:
	cmp r4, #0
	beq _02257B64
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _02257C28 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #8
	bne _02257B64
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r5, #0
	mov r2, #0
	bl GetMonsHitCount
	cmp r0, #2
	blo _02257B64
	ldr r0, [sp, #0x84]
	lsl r1, r0, #1
	add r1, r0, r1
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	str r0, [sp, #0x84]
_02257B64:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02257BFC
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02257BFC
	ldr r0, [sp, #0xa0]
	mov r1, #3
	tst r0, r1
	beq _02257BB8
	cmp r6, #0xa
	beq _02257B9E
	cmp r6, #0xb
	beq _02257BAA
	b _02257BB8
_02257B9E:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
	b _02257BB8
_02257BAA:
	ldr r1, [sp, #0x84]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x84]
_02257BB8:
	ldr r1, _02257C2C ; =0x000080CF
	ldr r0, [sp, #0xa0]
	tst r0, r1
	beq _02257BD0
	ldr r0, [sp, #8]
	cmp r0, #0x4c
	bne _02257BD0
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_02257BD0:
	ldr r0, [sp, #0xa0]
	mov r1, #0x30
	tst r0, r1
	beq _02257BFC
	cmp r6, #0xa
	beq _02257BE2
	cmp r6, #0xb
	beq _02257BF2
	b _02257BFC
_02257BE2:
	ldr r1, [sp, #0x84]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x84]
	b _02257BFC
_02257BF2:
	ldr r0, [sp, #0x84]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x84]
_02257BFC:
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	mov r2, #0x49
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #0
	beq _02257C1E
	cmp r6, #0xa
	bne _02257C1E
	ldr r1, [sp, #0x84]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	str r0, [sp, #0x84]
_02257C1E:
	ldr r0, [sp, #0x84]
	add r0, r0, #2
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_02257C28: .word 0x000003E6
_02257C2C: .word 0x000080CF
	thumb_func_end CalcMoveDamage

	thumb_func_start ov12_02257C30
ov12_02257C30: ; 0x02257C30
	push {r4, lr}
	add r4, r2, #0
	beq _02257C56
	bl BattleSys_Random
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	mov r1, #0x64
	sub r0, r1, r0
	mul r0, r4
	bl _s32_div_f
	add r4, r0, #0
	bne _02257C56
	mov r4, #1
_02257C56:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov12_02257C30

	thumb_func_start ov12_02257C5C
ov12_02257C5C: ; 0x02257C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #1
	add r4, r1, #0
	add r7, r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r7, #0
	str r3, [sp, #4]
	bl GetBattlerHeldItem
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl GetItemHoldEffect
	mov r3, #0xb5
	lsl r3, r3, #6
	add r2, r3, #0
	mov r5, #0xc0
	add r1, r7, #0
	mul r1, r5
	add r6, r4, r1
	add r2, #0x70
	ldr r2, [r6, r2]
	ldrh r1, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #4]
	mul r5, r2
	add r2, r3, #0
	add r5, r4, r5
	add r2, #0x80
	ldr r2, [r5, r2]
	add r3, #0x27
	str r2, [sp, #0xc]
	ldrb r2, [r6, r3]
	cmp r2, #0x69
	bne _02257CAE
	mov r2, #1
	b _02257CB0
_02257CAE:
	mov r2, #0
_02257CB0:
	cmp r0, #0x43
	bne _02257CB8
	mov r3, #1
	b _02257CBA
_02257CB8:
	mov r3, #0
_02257CBA:
	mov r6, #1
	lsl r6, r6, #0x14
	mov r5, ip
	tst r5, r6
	beq _02257CC8
	mov r5, #1
	b _02257CCA
_02257CC8:
	mov r5, #0
_02257CCA:
	cmp r0, #0x59
	bne _02257CD6
	cmp r1, #0x71
	bne _02257CD6
	mov r6, #1
	b _02257CD8
_02257CD6:
	mov r6, #0
_02257CD8:
	cmp r0, #0x5c
	bne _02257CE4
	cmp r1, #0x53
	bne _02257CE4
	mov r1, #1
	b _02257CE6
_02257CE4:
	mov r1, #0
_02257CE6:
	lsl r5, r5, #1
	ldr r0, [sp, #0x28]
	add r3, r3, r5
	add r0, r0, r3
	add r2, r2, r0
	lsl r0, r6, #1
	add r2, r2, r0
	lsl r0, r1, #1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	bls _02257D02
	mov r5, #4
_02257D02:
	ldr r0, [sp]
	bl BattleSys_Random
	ldr r1, _02257D68 ; =ov12_0226CB48
	ldrb r1, [r1, r5]
	bl _s32_div_f
	cmp r1, #0
	bne _02257D4C
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #4
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #0
	bne _02257D4C
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0x4b
	bl CheckBattlerAbilityIfNotIgnored
	cmp r0, #0
	bne _02257D4C
	mov r0, #7
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	tst r0, r1
	bne _02257D4C
	mov r1, #2
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0xe
	tst r0, r1
	bne _02257D4C
	mov r0, #2
	str r0, [sp, #8]
_02257D4C:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _02257D62
	add r0, r4, #0
	add r1, r7, #0
	bl GetBattlerAbility
	cmp r0, #0x61
	bne _02257D62
	mov r0, #3
	str r0, [sp, #8]
_02257D62:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02257D68: .word ov12_0226CB48
	thumb_func_end ov12_02257C5C

	thumb_func_start CheckLegalMimicMove
CheckLegalMimicMove: ; 0x02257D6C
	push {r3, r4}
	ldr r4, _02257D9C ; =ov12_0226CC04
	ldr r1, _02257DA0 ; =0x0000FFFE
	mov r3, #0
_02257D74:
	ldrh r2, [r4]
	cmp r0, r2
	beq _02257D84
	add r4, r4, #2
	ldrh r2, [r4]
	add r3, r3, #1
	cmp r2, r1
	bne _02257D74
_02257D84:
	ldr r0, _02257D9C ; =ov12_0226CC04
	lsl r1, r3, #1
	ldrh r1, [r0, r1]
	ldr r0, _02257DA0 ; =0x0000FFFE
	cmp r1, r0
	bne _02257D96
	mov r0, #1
	pop {r3, r4}
	bx lr
_02257D96:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02257D9C: .word ov12_0226CC04
_02257DA0: .word 0x0000FFFE
	thumb_func_end CheckLegalMimicMove

	thumb_func_start CheckLegalMetronomeMove
CheckLegalMetronomeMove: ; 0x02257DA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	mov r4, #0
	bl ov12_02252DC4
	cmp r0, #1
	beq _02257DC8
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	bl ov12_02252DF8
	cmp r0, #1
	bne _02257DCC
_02257DC8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02257DCC:
	ldr r2, _02257DF4 ; =ov12_0226CC04
	ldr r0, _02257DF8 ; =0x0000FFFF
_02257DD0:
	ldrh r1, [r2]
	cmp r5, r1
	beq _02257DE0
	add r2, r2, #2
	ldrh r1, [r2]
	add r4, r4, #1
	cmp r1, r0
	bne _02257DD0
_02257DE0:
	ldr r0, _02257DF4 ; =ov12_0226CC04
	lsl r1, r4, #1
	ldrh r1, [r0, r1]
	ldr r0, _02257DF8 ; =0x0000FFFF
	cmp r1, r0
	bne _02257DF0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02257DF0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02257DF4: .word ov12_0226CC04
_02257DF8: .word 0x0000FFFF
	thumb_func_end CheckLegalMetronomeMove

	thumb_func_start IsMoveEncored
IsMoveEncored: ; 0x02257DFC
	push {r4, r5}
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r1, _02257E30 ; =0x000003DE
	ldr r3, _02257E34 ; =ov12_0226CB58
	ldrh r1, [r4, r1]
	ldr r4, _02257E30 ; =0x000003DE
	mov r2, #0
_02257E0C:
	ldrh r5, [r3]
	lsl r5, r5, #4
	add r5, r0, r5
	ldrh r5, [r5, r4]
	cmp r1, r5
	beq _02257E20
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _02257E0C
_02257E20:
	cmp r2, #6
	bne _02257E2A
	mov r0, #1
	pop {r4, r5}
	bx lr
_02257E2A:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
_02257E30: .word 0x000003DE
_02257E34: .word ov12_0226CB58
	thumb_func_end IsMoveEncored

	thumb_func_start CheckLegalMeFirstMove
CheckLegalMeFirstMove: ; 0x02257E38
	push {r4, r5}
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r1, _02257E6C ; =0x000003DE
	ldr r3, _02257E70 ; =ov12_0226CB70
	ldrh r1, [r4, r1]
	ldr r4, _02257E6C ; =0x000003DE
	mov r2, #0
_02257E48:
	ldrh r5, [r3]
	lsl r5, r5, #4
	add r5, r0, r5
	ldrh r5, [r5, r4]
	cmp r1, r5
	beq _02257E5C
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _02257E48
_02257E5C:
	cmp r2, #6
	bne _02257E66
	mov r0, #1
	pop {r4, r5}
	bx lr
_02257E66:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
_02257E6C: .word 0x000003DE
_02257E70: .word ov12_0226CB70
	thumb_func_end CheckLegalMeFirstMove

	thumb_func_start GetItemHoldEffect
GetItemHoldEffect: ; 0x02257E74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0
	add r4, r2, #0
	bl GetItemIndexMapping
	add r1, r0, #0
	ldr r0, _02257E94 ; =0x00002120
	ldr r0, [r5, r0]
	bl GetItemDataPtrFromArray
	add r1, r4, #0
	bl GetItemAttr_PreloadedItemData
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02257E94: .word 0x00002120
	thumb_func_end GetItemHoldEffect

	thumb_func_start ov12_02257E98
ov12_02257E98: ; 0x02257E98
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r2, #0
	bl BattleSys_GetMaxBattlers
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _02257EBC
_02257EAA:
	add r0, r7, #0
	add r1, r4, #0
	bl BattleSys_GetFieldSide
	cmp r5, r0
	beq _02257EBC
	add r4, r4, #1
	cmp r4, r6
	blt _02257EAA
_02257EBC:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02257E98

	thumb_func_start ov12_02257EC0
ov12_02257EC0: ; 0x02257EC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	add r5, r1, #0
	bl BattleSys_GetMaxBattlers
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02257F46
_02257EDC:
	ldr r0, [sp, #0x14]
	add r7, r0, #1
	ldr r0, [sp, #0x10]
	cmp r7, r0
	bge _02257F3A
	ldr r0, [sp, #0x14]
	add r0, r5, r0
	str r0, [sp, #0xc]
_02257EEC:
	ldr r1, [sp, #0xc]
	ldr r0, _02257F4C ; =0x000021E8
	ldrb r6, [r1, r0]
	add r1, r5, r7
	ldrb r4, [r1, r0]
	lsl r0, r6, #4
	str r1, [sp, #8]
	add r1, r5, r0
	ldr r0, _02257F50 ; =0x000021B4
	ldr r0, [r1, r0]
	lsl r1, r4, #4
	add r2, r5, r1
	ldr r1, _02257F50 ; =0x000021B4
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _02257F32
	cmp r0, #1
	beq _02257F14
	mov r0, #1
	b _02257F16
_02257F14:
	mov r0, #0
_02257F16:
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_0224FC48
	cmp r0, #0
	beq _02257F32
	ldr r1, [sp, #0xc]
	ldr r0, _02257F4C ; =0x000021E8
	strb r4, [r1, r0]
	ldr r1, [sp, #8]
	strb r6, [r1, r0]
_02257F32:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	blt _02257EEC
_02257F3A:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _02257EDC
_02257F46:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02257F4C: .word 0x000021E8
_02257F50: .word 0x000021B4
	thumb_func_end ov12_02257EC0

	thumb_func_start CheckStatusEffectsSubstitute
CheckStatusEffectsSubstitute: ; 0x02257F54
	push {r4, r5}
	mov r4, #0xc0
	mul r4, r1
	add r5, r0, r4
	ldr r0, _02257F94 ; =0x00002DB0
	mov r1, #1
	ldr r4, [r5, r0]
	lsl r1, r1, #0x18
	mov r3, #0
	tst r1, r4
	bne _02257F74
	add r0, #0x10
	ldr r1, [r5, r0]
	ldr r0, _02257F98 ; =0x200400C0
	tst r0, r1
	beq _02257F8C
_02257F74:
	ldr r4, _02257F9C ; =ov12_0226CBDC
	mov r1, #0
_02257F78:
	ldr r0, [r4]
	cmp r2, r0
	bne _02257F82
	mov r3, #1
	b _02257F8E
_02257F82:
	add r1, r1, #1
	add r4, r4, #4
	cmp r1, #0xa
	blo _02257F78
	b _02257F8E
_02257F8C:
	mov r3, #1
_02257F8E:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
_02257F94: .word 0x00002DB0
_02257F98: .word 0x200400C0
_02257F9C: .word ov12_0226CBDC
	thumb_func_end CheckStatusEffectsSubstitute

	thumb_func_start CheckItemEffectOnUTurn
CheckItemEffectOnUTurn: ; 0x02257FA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	str r0, [sp]
	add r0, r5, #0
	add r4, r2, #0
	mov r6, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r6, #0
	bl ov12_02255844
	str r0, [sp, #0x10]
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl GetBattlerHeldItemEffect
	add r7, r0, #0
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	add r2, r6, #0
	bl ov12_02255844
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [r5, #0x64]
	bl BattleSys_GetFieldSide
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #0x58
	bne _0225803C
	ldr r0, _02258164 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225803C
	ldr r0, [r5, #0x64]
	mov r1, #0x1c
	mul r1, r0
	add r2, r5, r1
	mov r1, #0xbb
	lsl r1, r1, #2
	ldr r2, [r2, r1]
	cmp r2, #0
	beq _0225803C
	ldr r1, [r5, #0x6c]
	cmp r0, r1
	beq _0225803C
	mov r1, #0xc0
	mul r1, r0
	ldr r3, _02258168 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r3]
	add r3, r3, #4
	ldr r1, [r1, r3]
	cmp r0, r1
	bhs _0225803C
	cmp r0, #0
	beq _0225803C
	ldr r1, [sp, #0x10]
	neg r0, r2
	bl DamageDivide
	ldr r1, _0225816C ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xd5
	str r0, [r4]
_0225803C:
	ldr r0, [sp, #0xc]
	cmp r0, #0x62
	bne _0225809E
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _0225809E
	ldr r0, _02258164 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225809E
	ldr r0, _02258170 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #2
	beq _0225809E
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r3, _02258168 ; =0x00002D8C
	add r2, r5, r2
	ldr r1, [r2, r3]
	cmp r1, #0
	beq _0225809E
	add r1, r3, #4
	ldr r1, [r2, r1]
	sub r0, #0xc1
	mul r0, r1
	mov r1, #0xa
	bl DamageDivide
	ldr r1, _0225816C ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	mov r0, #0x46
	ldr r1, [r5, #0x64]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xd6
	str r0, [r4]
_0225809E:
	cmp r7, #0x2e
	bne _022580F2
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _02258168 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022580F2
	add r0, r5, #0
	bl GetBattlerAbility
	cmp r0, #0x62
	beq _022580F2
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022580F2
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02258174 ; =0x00002D90
	add r2, r5, r2
	ldr r2, [r2, r0]
	sub r1, #0xc1
	add r0, r2, #0
	mul r0, r1
	ldr r1, [sp, #8]
	bl DamageDivide
	ldr r1, _0225816C ; =0x0000215C
	mov r6, #1
	str r0, [r5, r1]
	lsr r0, r1, #5
	str r0, [r4]
_022580F2:
	cmp r7, #0x74
	bne _0225815E
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r3, r5, r1
	ldr r1, _02258168 ; =0x00002D8C
	ldr r2, [r3, r1]
	cmp r2, #0
	beq _0225815E
	add r1, #0x2c
	ldrh r1, [r3, r1]
	cmp r1, #0
	bne _0225815E
	add r1, r5, r0
	ldr r0, _02258178 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl MaskOfFlagNo
	ldr r1, [sp, #4]
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	bne _0225815E
	ldr r1, [r5, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r2, r5, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _02258146
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225815E
_02258146:
	ldr r0, _02258170 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225817C ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r1, r0
	beq _0225815E
	mov r1, #0xd8
	str r1, [r4]
	add r6, r0, #0
_0225815E:
	add r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02258164: .word 0x0000213C
_02258168: .word 0x00002D8C
_0225816C: .word 0x0000215C
_02258170: .word 0x00003044
_02258174: .word 0x00002D90
_02258178: .word 0x0000219C
_0225817C: .word 0x000003E9
	thumb_func_end CheckItemEffectOnUTurn

	thumb_func_start CheckIgnorePressure
CheckIgnorePressure: ; 0x02258180
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0xff
	beq _022581B0
	add r1, r2, #0
	bl GetBattlerAbility
	cmp r0, #0x2e
	bne _022581B0
	ldr r0, _022581B4 ; =0x00002D6C
	add r1, r5, r0
	mov r0, #0xc0
	mul r0, r4
	add r0, r1, r0
	lsl r1, r4, #1
	add r2, r5, r1
	ldr r1, _022581B8 ; =0x000030BC
	ldrh r2, [r2, r1]
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _022581B0
	sub r1, r1, #1
	strb r1, [r0, r2]
_022581B0:
	pop {r3, r4, r5, pc}
	nop
_022581B4: .word 0x00002D6C
_022581B8: .word 0x000030BC
	thumb_func_end CheckIgnorePressure

	thumb_func_start ov12_022581BC
ov12_022581BC: ; 0x022581BC
	push {r4, lr}
	add r4, r1, #0
	bl ov12_0223BFEC
	cmp r0, #0
	beq _022581D0
	mov r0, #0x2b
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_022581D0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_022581BC

	thumb_func_start ov12_022581D4
ov12_022581D4: ; 0x022581D4
	push {r4, lr}
	add r4, r1, #0
	cmp r2, #0xe
	bhi _02258294
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022581E8: ; jump table
	.short _02258206 - _022581E8 - 2 ; case 0
	.short _02258218 - _022581E8 - 2 ; case 1
	.short _0225822E - _022581E8 - 2 ; case 2
	.short _02258236 - _022581E8 - 2 ; case 3
	.short _0225823E - _022581E8 - 2 ; case 4
	.short _02258244 - _022581E8 - 2 ; case 5
	.short _0225824A - _022581E8 - 2 ; case 6
	.short _02258256 - _022581E8 - 2 ; case 7
	.short _02258262 - _022581E8 - 2 ; case 8
	.short _0225826C - _022581E8 - 2 ; case 9
	.short _02258274 - _022581E8 - 2 ; case 10
	.short _0225827A - _022581E8 - 2 ; case 11
	.short _02258282 - _022581E8 - 2 ; case 12
	.short _0225828C - _022581E8 - 2 ; case 13
	.short _02258290 - _022581E8 - 2 ; case 14
_02258206:
	add r1, r3, #0
	bl BattleSys_GetFieldSide
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
_02258218:
	add r1, r3, #0
	bl BattleSys_GetFieldSide
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	pop {r4, pc}
_0225822E:
	ldr r0, _0225829C ; =0x0000219C
	add r1, r4, r3
	ldrb r0, [r1, r0]
	pop {r4, pc}
_02258236:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	pop {r4, pc}
_0225823E:
	ldr r0, _022582A0 ; =0x00003109
	ldrb r0, [r4, r0]
	pop {r4, pc}
_02258244:
	ldr r0, _022582A4 ; =0x0000311D
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0225824A:
	lsl r0, r3, #2
	add r1, r4, r0
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
_02258256:
	lsl r0, r3, #2
	add r1, r4, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
_02258262:
	lsl r0, r3, #4
	add r1, r4, r0
	ldr r0, _022582A8 ; =0x000021A8
	ldr r0, [r1, r0]
	pop {r4, pc}
_0225826C:
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	pop {r4, pc}
_02258274:
	ldr r0, _022582AC ; =0x00003108
	ldrb r0, [r4, r0]
	pop {r4, pc}
_0225827A:
	ldr r0, _022582B0 ; =0x000003DA
	add r1, r4, r3
	ldrb r0, [r1, r0]
	pop {r4, pc}
_02258282:
	lsl r0, r3, #4
	add r1, r4, r0
	ldr r0, _022582B4 ; =0x000021B0
	ldr r0, [r1, r0]
	pop {r4, pc}
_0225828C:
	ldr r0, [r4, #8]
	pop {r4, pc}
_02258290:
	ldr r0, [r4, #0xc]
	pop {r4, pc}
_02258294:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0225829C: .word 0x0000219C
_022582A0: .word 0x00003109
_022582A4: .word 0x0000311D
_022582A8: .word 0x000021A8
_022582AC: .word 0x00003108
_022582B0: .word 0x000003DA
_022582B4: .word 0x000021B0
	thumb_func_end ov12_022581D4

	thumb_func_start ov12_022582B8
ov12_022582B8: ; 0x022582B8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [sp, #0x10]
	cmp r2, #0xb
	bhi _02258336
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022582CE: ; jump table
	.short _022582E6 - _022582CE - 2 ; case 0
	.short _022582F8 - _022582CE - 2 ; case 1
	.short _02258316 - _022582CE - 2 ; case 2
	.short _0225831E - _022582CE - 2 ; case 3
	.short _02258336 - _022582CE - 2 ; case 4
	.short _02258336 - _022582CE - 2 ; case 5
	.short _02258336 - _022582CE - 2 ; case 6
	.short _02258336 - _022582CE - 2 ; case 7
	.short _02258336 - _022582CE - 2 ; case 8
	.short _02258326 - _022582CE - 2 ; case 9
	.short _02258336 - _022582CE - 2 ; case 10
	.short _0225832E - _022582CE - 2 ; case 11
_022582E6:
	add r1, r3, #0
	bl BattleSys_GetFieldSide
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	str r4, [r1, r0]
	pop {r3, r4, r5, pc}
_022582F8:
	add r1, r3, #0
	bl BattleSys_GetFieldSide
	mov r1, #0x71
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r0, r0, #3
	ldr r3, [r1, r0]
	ldr r2, _0225833C ; =0xFFFF8FFF
	and r3, r2
	lsl r2, r4, #0x1d
	lsr r2, r2, #0x11
	orr r2, r3
	str r2, [r1, r0]
	pop {r3, r4, r5, pc}
_02258316:
	ldr r0, _02258340 ; =0x0000219C
	add r1, r5, r3
	strb r4, [r1, r0]
	pop {r3, r4, r5, pc}
_0225831E:
	mov r0, #0x15
	lsl r0, r0, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
_02258326:
	mov r0, #0x3d
	lsl r0, r0, #4
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
_0225832E:
	ldr r0, _02258344 ; =0x000003DA
	add r1, r5, r3
	strb r4, [r1, r0]
	pop {r3, r4, r5, pc}
_02258336:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225833C: .word 0xFFFF8FFF
_02258340: .word 0x0000219C
_02258344: .word 0x000003DA
	thumb_func_end ov12_022582B8

	thumb_func_start ov12_02258348
ov12_02258348: ; 0x02258348
	push {r4, lr}
	add r3, r0, #0
	add r3, #0x88
	str r1, [r3]
	add r3, r0, #0
	ldr r1, _022583AC ; =0x007FFFFF
	add r4, r2, #0
	and r4, r1
	add r3, #0x8c
	str r4, [r3]
	lsl r1, r1, #0x17
	add r3, r2, #0
	and r3, r1
	add r1, r0, #0
	add r1, #0x90
	str r3, [r1]
	mov r3, #1
	lsl r3, r3, #0x1e
	add r1, r2, #0
	tst r1, r3
	beq _0225837A
	ldr r1, [r0, #0x64]
	add r0, #0x94
	str r1, [r0]
	b _0225839A
_0225837A:
	lsl r1, r3, #1
	tst r1, r2
	beq _02258388
	ldr r1, [r0, #0x6c]
	add r0, #0x94
	str r1, [r0]
	b _0225839A
_02258388:
	lsr r1, r3, #1
	tst r1, r2
	bne _02258394
	lsr r1, r3, #2
	tst r1, r2
	beq _0225839A
_02258394:
	mov r1, #0
	add r0, #0x94
	str r1, [r0]
_0225839A:
	cmp r4, #0x91
	blo _022583A2
	bl GF_AssertFail
_022583A2:
	ldr r0, _022583B0 ; =ov12_0226CDCC
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	nop
_022583AC: .word 0x007FFFFF
_022583B0: .word ov12_0226CDCC
	thumb_func_end ov12_02258348

	thumb_func_start ov12_022583B4
ov12_022583B4: ; 0x022583B4
	push {r3, r4, r5, lr}
	ldr r1, _0225843C ; =0x0000213C
	add r5, r2, #0
	ldr r2, [r0, r1]
	mov r0, #2
	lsl r0, r0, #0xa
	add r1, r2, #0
	ldr r4, [sp, #0x14]
	tst r1, r0
	bne _022583DE
	lsl r0, r0, #4
	tst r0, r2
	bne _022583DE
	cmp r3, #0
	beq _022583DE
	add r0, r3, #0
	mul r0, r5
	mov r1, #0xa
	bl DamageDivide
	add r3, r0, #0
_022583DE:
	cmp r5, #0
	beq _022583EC
	cmp r5, #5
	beq _022583FE
	cmp r5, #0x14
	beq _0225841C
	b _02258438
_022583EC:
	ldr r1, [r4]
	mov r0, #8
	orr r1, r0
	mov r0, #4
	bic r1, r0
	mov r0, #2
	bic r1, r0
	str r1, [r4]
	b _02258438
_022583FE:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02258438
	ldr r1, [r4]
	mov r0, #2
	tst r0, r1
	beq _02258414
	mov r0, #2
	bic r1, r0
	str r1, [r4]
	b _02258438
_02258414:
	mov r0, #4
	orr r0, r1
	str r0, [r4]
	b _02258438
_0225841C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02258438
	ldr r1, [r4]
	mov r0, #4
	tst r0, r1
	beq _02258432
	mov r0, #4
	bic r1, r0
	str r1, [r4]
	b _02258438
_02258432:
	mov r0, #2
	orr r0, r1
	str r0, [r4]
_02258438:
	add r0, r3, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225843C: .word 0x0000213C
	thumb_func_end ov12_022583B4

	thumb_func_start ov12_02258440
ov12_02258440: ; 0x02258440
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r1, _022584A4 ; =0x000003DE
	ldrh r3, [r2, r1]
	cmp r3, #0x9b
	bgt _02258472
	cmp r3, #0x97
	blt _02258458
	beq _02258492
	cmp r3, #0x9b
	beq _02258492
	b _0225849E
_02258458:
	cmp r3, #0x27
	bgt _02258464
	bge _02258492
	cmp r3, #0x1a
	beq _02258492
	b _0225849E
_02258464:
	cmp r3, #0x4b
	bgt _0225846C
	beq _02258492
	b _0225849E
_0225846C:
	cmp r3, #0x91
	beq _02258492
	b _0225849E
_02258472:
	mov r2, #1
	lsl r2, r2, #8
	cmp r3, r2
	bgt _02258482
	bge _02258492
	cmp r3, #0xff
	beq _02258492
	b _0225849E
_02258482:
	add r1, r2, #7
	cmp r3, r1
	bgt _0225848C
	beq _02258492
	b _0225849E
_0225848C:
	add r2, #0x11
	cmp r3, r2
	bne _0225849E
_02258492:
	ldr r1, _022584A8 ; =0x0000213C
	ldr r1, [r0, r1]
	mov r0, #2
	lsl r0, r0, #8
	and r0, r1
	bx lr
_0225849E:
	mov r0, #1
	bx lr
	nop
_022584A4: .word 0x000003DE
_022584A8: .word 0x0000213C
	thumb_func_end ov12_02258440

	thumb_func_start ov12_022584AC
ov12_022584AC: ; 0x022584AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #0x1b
	bne _022584C2
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _02258578 ; =0x00002D64
	ldrb r4, [r1, r0]
	b _022584D6
_022584C2:
	cmp r2, #0x1c
	bne _022584D2
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _0225857C ; =0x00002D65
	ldrb r4, [r1, r0]
	b _022584D6
_022584D2:
	bl GF_AssertFail
_022584D6:
	mov r0, #0xc0
	mul r0, r6
	mov r2, #0xb5
	add r1, r5, r0
	lsl r2, r2, #6
	ldrh r3, [r1, r2]
	ldr r0, _02258580 ; =0x000001ED
	cmp r3, r0
	bne _02258572
	add r0, r2, #0
	add r0, #0x27
	ldrb r0, [r1, r0]
	cmp r0, #0x79
	bne _02258572
	add r2, #0x78
	ldrh r1, [r1, r2]
	add r0, r5, #0
	mov r2, #1
	bl GetItemHoldEffect
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _02258570
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02258510: ; jump table
	.short _02258530 - _02258510 - 2 ; case 0
	.short _02258534 - _02258510 - 2 ; case 1
	.short _02258538 - _02258510 - 2 ; case 2
	.short _0225853C - _02258510 - 2 ; case 3
	.short _02258540 - _02258510 - 2 ; case 4
	.short _02258544 - _02258510 - 2 ; case 5
	.short _02258548 - _02258510 - 2 ; case 6
	.short _0225854C - _02258510 - 2 ; case 7
	.short _02258550 - _02258510 - 2 ; case 8
	.short _02258554 - _02258510 - 2 ; case 9
	.short _02258558 - _02258510 - 2 ; case 10
	.short _0225855C - _02258510 - 2 ; case 11
	.short _02258560 - _02258510 - 2 ; case 12
	.short _02258564 - _02258510 - 2 ; case 13
	.short _02258568 - _02258510 - 2 ; case 14
	.short _0225856C - _02258510 - 2 ; case 15
_02258530:
	mov r4, #0xa
	b _02258572
_02258534:
	mov r4, #0xb
	b _02258572
_02258538:
	mov r4, #0xd
	b _02258572
_0225853C:
	mov r4, #0xc
	b _02258572
_02258540:
	mov r4, #0xf
	b _02258572
_02258544:
	mov r4, #1
	b _02258572
_02258548:
	mov r4, #3
	b _02258572
_0225854C:
	mov r4, #4
	b _02258572
_02258550:
	mov r4, #2
	b _02258572
_02258554:
	mov r4, #0xe
	b _02258572
_02258558:
	mov r4, #6
	b _02258572
_0225855C:
	mov r4, #5
	b _02258572
_02258560:
	mov r4, #7
	b _02258572
_02258564:
	mov r4, #0x10
	b _02258572
_02258568:
	mov r4, #0x11
	b _02258572
_0225856C:
	mov r4, #8
	b _02258572
_02258570:
	mov r4, #0
_02258572:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02258578: .word 0x00002D64
_0225857C: .word 0x00002D65
_02258580: .word 0x000001ED
	thumb_func_end ov12_022584AC

	thumb_func_start ov12_02258584
ov12_02258584: ; 0x02258584
	lsl r1, r1, #3
	add r3, r0, r1
	mov r2, #0
	mov r0, #0x37
	add r1, r2, #0
	lsl r0, r0, #4
_02258590:
	add r2, r2, #1
	strh r1, [r3, r0]
	add r3, r3, #2
	cmp r2, #4
	blt _02258590
	bx lr
	thumb_func_end ov12_02258584

	thumb_func_start ov12_0225859C
ov12_0225859C: ; 0x0225859C
	add r1, r0, r1
	mov r0, #0x39
	mov r2, #0
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	thumb_func_end ov12_0225859C

	thumb_func_start ov12_022585A8
ov12_022585A8: ; 0x022585A8
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0xe5
	mov r2, #0
	lsl r0, r0, #2
	strh r2, [r1, r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov12_022585A8

	thumb_func_start ov12_022585B8
ov12_022585B8: ; 0x022585B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #0xff
	mov ip, r2
	mov r2, #0xc0
	add r7, r5, #0
	mul r7, r2
	ldr r2, _02258654 ; =0x00002D67
	add r6, r1, r7
	add r4, r3, #0
	ldrb r3, [r6, r2]
	cmp r3, #0x3b
	beq _02258614
	cmp r3, #0x24
	beq _02258614
	cmp r3, #0x79
	beq _02258614
	add r2, #0x25
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _02258614
	mov r2, #0xc0
	mul r2, r4
	add r6, r1, r2
	ldr r2, _02258654 ; =0x00002D67
	add r2, #0x25
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _02258614
	ldr r2, _02258654 ; =0x00002D67
	ldrb r2, [r6, r2]
	cmp r2, #0x3b
	beq _02258614
	cmp r2, #0x24
	beq _02258614
	cmp r2, #0x79
	beq _02258614
	bl BattleSys_Random
	mov r1, #1
	tst r0, r1
	beq _02258610
	mov ip, r4
	b _0225864E
_02258610:
	mov ip, r5
	b _0225864E
_02258614:
	cmp r3, #0x3b
	beq _0225862E
	cmp r3, #0x24
	beq _0225862E
	ldr r0, _02258658 ; =0x00002D8C
	add r2, r1, r7
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225862E
	cmp r3, #0x79
	beq _0225862E
	mov ip, r5
	b _0225864E
_0225862E:
	mov r0, #0xc0
	mul r0, r4
	add r2, r1, r0
	ldr r0, _02258654 ; =0x00002D67
	ldrb r1, [r2, r0]
	cmp r1, #0x3b
	beq _0225864E
	cmp r1, #0x24
	beq _0225864E
	add r0, #0x25
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0225864E
	cmp r1, #0x79
	beq _0225864E
	mov ip, r4
_0225864E:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258654: .word 0x00002D67
_02258658: .word 0x00002D8C
	thumb_func_end ov12_022585B8

	thumb_func_start ov12_0225865C
ov12_0225865C: ; 0x0225865C
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _02258680 ; =0x000003DE
	ldr r3, _02258684 ; =ov12_0226CB64
	ldrh r1, [r1, r0]
	mov r2, #0
_02258668:
	ldrh r0, [r3]
	cmp r0, r1
	bne _02258672
	mov r0, #1
	bx lr
_02258672:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _02258668
	mov r0, #0
	bx lr
	nop
_02258680: .word 0x000003DE
_02258684: .word ov12_0226CB64
	thumb_func_end ov12_0225865C

	thumb_func_start ov12_02258688
ov12_02258688: ; 0x02258688
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldr r2, _022587F4 ; =0x00000137
	add r7, r0, #0
	add r4, r1, #0
	cmp r3, r2
	bgt _022586A0
	blt _0225869A
	b _0225879C
_0225869A:
	cmp r3, #0xed
	beq _02258742
	b _022587EE
_022586A0:
	add r0, r2, #0
	add r0, #0x34
	cmp r3, r0
	bgt _022586B0
	add r2, #0x34
	cmp r3, r2
	beq _022586B8
	b _022587EE
_022586B0:
	add r2, #0x8a
	cmp r3, r2
	beq _022586C4
	b _022587EE
_022586B8:
	add r0, r4, #0
	add r1, r6, #0
	bl GetNaturalGiftType
	add r5, r0, #0
	b _022587F0
_022586C4:
	add r0, r4, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _0225873E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022586DE: ; jump table
	.short _0225871E - _022586DE - 2 ; case 0
	.short _02258722 - _022586DE - 2 ; case 1
	.short _0225872A - _022586DE - 2 ; case 2
	.short _02258726 - _022586DE - 2 ; case 3
	.short _02258732 - _022586DE - 2 ; case 4
	.short _022586FE - _022586DE - 2 ; case 5
	.short _02258706 - _022586DE - 2 ; case 6
	.short _0225870A - _022586DE - 2 ; case 7
	.short _02258702 - _022586DE - 2 ; case 8
	.short _0225872E - _022586DE - 2 ; case 9
	.short _02258712 - _022586DE - 2 ; case 10
	.short _0225870E - _022586DE - 2 ; case 11
	.short _02258716 - _022586DE - 2 ; case 12
	.short _02258736 - _022586DE - 2 ; case 13
	.short _0225873A - _022586DE - 2 ; case 14
	.short _0225871A - _022586DE - 2 ; case 15
_022586FE:
	mov r5, #1
	b _022587F0
_02258702:
	mov r5, #2
	b _022587F0
_02258706:
	mov r5, #3
	b _022587F0
_0225870A:
	mov r5, #4
	b _022587F0
_0225870E:
	mov r5, #5
	b _022587F0
_02258712:
	mov r5, #6
	b _022587F0
_02258716:
	mov r5, #7
	b _022587F0
_0225871A:
	mov r5, #8
	b _022587F0
_0225871E:
	mov r5, #0xa
	b _022587F0
_02258722:
	mov r5, #0xb
	b _022587F0
_02258726:
	mov r5, #0xc
	b _022587F0
_0225872A:
	mov r5, #0xd
	b _022587F0
_0225872E:
	mov r5, #0xe
	b _022587F0
_02258732:
	mov r5, #0xf
	b _022587F0
_02258736:
	mov r5, #0x10
	b _022587F0
_0225873A:
	mov r5, #0x11
	b _022587F0
_0225873E:
	mov r5, #0
	b _022587F0
_02258742:
	ldr r0, _022587F8 ; =0x00002D54
	add r1, r4, r0
	mov r0, #0xc0
	mul r0, r6
	ldr r4, [r1, r0]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r5, r0, #0x1a
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r6, r0, #0x1b
	mov r0, #1
	lsl r4, r4, #0x1f
	and r0, r6
	lsr r4, r4, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r1, r5, #0
	orr r1, r0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r5, r0, #1
	cmp r5, #9
	blt _022587F0
	add r5, r5, #1
	b _022587F0
_0225879C:
	mov r2, #0xd
	str r2, [sp]
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _022587F0
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _022587F0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, _022587FC ; =0x000080FF
	tst r1, r0
	beq _022587F0
	mov r1, #3
	tst r1, r0
	beq _022587D4
	mov r5, #0xb
_022587D4:
	mov r1, #0xc
	tst r1, r0
	beq _022587DC
	mov r5, #5
_022587DC:
	mov r1, #0x30
	tst r1, r0
	beq _022587E4
	mov r5, #0xa
_022587E4:
	mov r1, #0xc0
	tst r0, r1
	beq _022587F0
	mov r5, #0xf
	b _022587F0
_022587EE:
	mov r5, #0
_022587F0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022587F4: .word 0x00000137
_022587F8: .word 0x00002D54
_022587FC: .word 0x000080FF
	thumb_func_end ov12_02258688

    .rodata

ov12_0226CB48: ; 0x0226CB48
	.byte 0x10, 0x08, 0x04, 0x03, 0x02, 0x00, 0x00, 0x00

ov12_0226CB50: ; 0x0226CB50
	.byte 0x32, 0x6A, 0x7A, 0x75, 0x76, 0x79, 0x77, 0x78

ov12_0226CB58: ; 0x0226CB58
	.byte 0x90, 0x00, 0x66, 0x00, 0xA6, 0x00, 0x77, 0x00
	.byte 0xE3, 0x00, 0xA5, 0x00

ov12_0226CB64: ; 0x0226CB64
	.byte 0x29, 0x00, 0x57, 0x00, 0x58, 0x00, 0x59, 0x00, 0x90, 0x00, 0xE3, 0x00

ov12_0226CB70: ; 0x0226CB70
	.byte 0x44, 0x00, 0xF3, 0x00, 0xA8, 0x00, 0x57, 0x01, 0x08, 0x01, 0xC0, 0x01

ov12_0226CB7C: ; 0x0226CB7C
	.byte 0x13, 0x00, 0x54, 0x01
	.byte 0x1A, 0x00, 0x88, 0x00, 0x96, 0x00, 0x89, 0x01

ov12_0226CB88: ; 0x0226CB88
	.byte 0x0A

ov12_0226CB89: ; 0x0226CB89
	.byte 0x28, 0x0A, 0x23, 0x0A, 0x1E, 0x0A, 0x19
	.byte 0x0A, 0x14, 0x0A, 0x0F, 0x0A, 0x0A, 0x0F, 0x0A, 0x14, 0x0A, 0x19, 0x0A, 0x1E, 0x0A, 0x23, 0x0A
	.byte 0x28, 0x0A

ov12_0226CBA2: ; 0x0226CBA2
	.byte 0x69, 0x00, 0x87, 0x00, 0x9C, 0x00, 0xD0, 0x00, 0xEA, 0x00, 0xEB, 0x00, 0xEC, 0x00
	.byte 0x00, 0x01, 0xC8, 0x01, 0x2F, 0x01, 0x63, 0x01, 0xCD, 0x01, 0x69, 0x01, 0x11, 0x01

ov12_0226CBBE: ; 0x0226CBBE
	.byte 0x08, 0x00
	.byte 0x07, 0x00, 0x09, 0x00, 0xB7, 0x00, 0x08, 0x01, 0x92, 0x00, 0xDF, 0x00, 0x67, 0x01, 0x05, 0x00
	.byte 0x04, 0x00, 0x35, 0x01, 0x45, 0x01, 0x99, 0x01, 0xA2, 0x01, 0x47, 0x01

ov12_0226CBDC: ; 0x0226CBDC
	.byte 0x0F, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00

ov12_0226CC04: ; 0x0226CC04
	.byte 0x76, 0x00, 0xA5, 0x00, 0xA6, 0x00, 0x66, 0x00, 0xC0, 0x01, 0xFE, 0xFF
	.byte 0xD6, 0x00, 0x12, 0x01, 0x77, 0x00, 0x44, 0x00, 0xF3, 0x00, 0xB6, 0x00, 0xC5, 0x00, 0xCB, 0x00
	.byte 0xC2, 0x00, 0xA8, 0x00, 0x0A, 0x01, 0x21, 0x01, 0x0E, 0x01, 0x57, 0x01, 0x0F, 0x01, 0x08, 0x01
	.byte 0x6C, 0x01, 0x7F, 0x01, 0x7E, 0x01, 0x9F, 0x01, 0xFF, 0xFF

ov12_0226CC3A: ; 0x0226CC3A
	.byte 0x39, 0x06, 0x44, 0x08, 0x48, 0x04
	.byte 0x49, 0x05, 0x4A, 0x0C, 0x4B, 0x11, 0x4C, 0x01, 0x4D, 0x0D, 0x4E, 0x0B, 0x4F, 0x02, 0x50, 0x03
	.byte 0x51, 0x0F, 0x52, 0x07, 0x53, 0x0E, 0x54, 0x0A, 0x55, 0x10, 0x56, 0x00, 0x7E, 0x0A, 0x7F, 0x0B
	.byte 0x80, 0x0D, 0x81, 0x0C, 0x82, 0x0F, 0x83, 0x01, 0x84, 0x03, 0x85, 0x04, 0x86, 0x02, 0x87, 0x0E
	.byte 0x88, 0x06, 0x89, 0x05, 0x8A, 0x07, 0x8B, 0x10, 0x8C, 0x11, 0x8D, 0x08

; format: attacking type, defending type, damage multiplier
sTypeEffectiveness: ; 0x0226CC7C
	.byte TYPE_NORMAL, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_NORMAL, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIRE, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIRE, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIRE, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FIRE, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FIRE, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FIRE, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIRE, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIRE, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_WATER, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_WATER, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_WATER, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_WATER, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_WATER, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_WATER, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ELECTRIC, TYPE_WATER, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ELECTRIC, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ELECTRIC, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ELECTRIC, TYPE_GROUND, TYPE_MUL_NO_EFFECT
	.byte TYPE_ELECTRIC, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ELECTRIC, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GRASS, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GRASS, TYPE_WATER, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GRASS, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GRASS, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GRASS, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GRASS, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GRASS, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GRASS, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GRASS, TYPE_DRAGON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GRASS, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ICE, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ICE, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ICE, TYPE_ICE, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ICE, TYPE_GROUND, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ICE, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ICE, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ICE, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ICE, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_NORMAL, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_PSYCHIC, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FIGHTING, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_POISON, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_POISON, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_POISON, TYPE_GROUND, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_POISON, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_POISON, TYPE_GHOST, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_POISON, TYPE_STEEL, TYPE_MUL_NO_EFFECT
	.byte TYPE_GROUND, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GROUND, TYPE_ELECTRIC, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GROUND, TYPE_GRASS, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GROUND, TYPE_POISON, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GROUND, TYPE_FLYING, TYPE_MUL_NO_EFFECT
	.byte TYPE_GROUND, TYPE_BUG, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GROUND, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GROUND, TYPE_STEEL, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FLYING, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FLYING, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FLYING, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FLYING, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_FLYING, TYPE_ROCK, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FLYING, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_PSYCHIC, TYPE_FIGHTING, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_PSYCHIC, TYPE_POISON, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_PSYCHIC, TYPE_PSYCHIC, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_PSYCHIC, TYPE_DARK, TYPE_MUL_NO_EFFECT
	.byte TYPE_PSYCHIC, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_BUG, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_BUG, TYPE_GRASS, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_BUG, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_BUG, TYPE_POISON, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_BUG, TYPE_FLYING, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_BUG, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_BUG, TYPE_GHOST, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_BUG, TYPE_DARK, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_BUG, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ROCK, TYPE_FIRE, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ROCK, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ROCK, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ROCK, TYPE_GROUND, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_ROCK, TYPE_FLYING, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ROCK, TYPE_BUG, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_ROCK, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GHOST, TYPE_NORMAL, TYPE_MUL_NO_EFFECT
	.byte TYPE_GHOST, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_GHOST, TYPE_DARK, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GHOST, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_GHOST, TYPE_GHOST, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_DRAGON, TYPE_DRAGON, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_DRAGON, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_DARK, TYPE_FIGHTING, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_DARK, TYPE_PSYCHIC, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_DARK, TYPE_GHOST, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_DARK, TYPE_DARK, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_DARK, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_STEEL, TYPE_FIRE, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_STEEL, TYPE_WATER, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_STEEL, TYPE_ELECTRIC, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_STEEL, TYPE_ICE, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_STEEL, TYPE_ROCK, TYPE_MUL_SUPER_EFFECTIVE
	.byte TYPE_STEEL, TYPE_STEEL, TYPE_MUL_NOT_EFFECTIVE
	.byte TYPE_FORESIGHT, TYPE_FORESIGHT, TYPE_MUL_NO_EFFECT
	.byte TYPE_NORMAL, TYPE_GHOST, TYPE_MUL_NO_EFFECT
	.byte TYPE_FIGHTING, TYPE_GHOST, TYPE_MUL_NO_EFFECT
	.byte TYPE_ENDTABLE, TYPE_ENDTABLE, TYPE_MUL_NO_EFFECT

ov12_0226CDCC: ; 0x0226CDCC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x37, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x3A, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00, 0x55, 0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00
	.byte 0x5D, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00
	.byte 0x8A, 0x00, 0x00, 0x00, 0x93, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x2C, 0x00, 0x00, 0x00, 0x8E, 0x00, 0x00, 0x00, 0x95, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00
	.byte 0x94, 0x00, 0x00, 0x00, 0x97, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00
	.byte 0x2D, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00
	.byte 0x36, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x46, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x00, 0x00
	.byte 0x4F, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00
	.byte 0x54, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00
	.byte 0x5B, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x5F, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x61, 0x00, 0x00, 0x00, 0x7E, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00
	.byte 0x67, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0x71, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00
	.byte 0x7A, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00
	.byte 0x7F, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00
	.byte 0x84, 0x00, 0x00, 0x00, 0x86, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00, 0x8C, 0x00, 0x00, 0x00
	.byte 0x8D, 0x00, 0x00, 0x00, 0x8F, 0x00, 0x00, 0x00, 0x91, 0x00, 0x00, 0x00, 0x9A, 0x00, 0x00, 0x00
	.byte 0x9B, 0x00, 0x00, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0x9F, 0x00, 0x00, 0x00
	.byte 0xA0, 0x00, 0x00, 0x00, 0xA1, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x00, 0x00, 0xA3, 0x00, 0x00, 0x00
	.byte 0xA4, 0x00, 0x00, 0x00, 0xA5, 0x00, 0x00, 0x00, 0xA6, 0x00, 0x00, 0x00, 0xA7, 0x00, 0x00, 0x00
	.byte 0xA8, 0x00, 0x00, 0x00, 0xAA, 0x00, 0x00, 0x00, 0xAB, 0x00, 0x00, 0x00, 0xAD, 0x00, 0x00, 0x00
	.byte 0xAF, 0x00, 0x00, 0x00, 0xDA, 0x00, 0x00, 0x00, 0xDB, 0x00, 0x00, 0x00, 0xDC, 0x00, 0x00, 0x00
	.byte 0xE2, 0x00, 0x00, 0x00, 0xF6, 0x00, 0x00, 0x00, 0xF7, 0x00, 0x00, 0x00, 0xF8, 0x00, 0x00, 0x00
	.byte 0xF9, 0x00, 0x00, 0x00, 0x04, 0x01, 0x00, 0x00, 0x05, 0x01, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00

	.data

ov12_0226EC20: ; 0x0226EC20
	.byte 0x2D, 0x00, 0x2E, 0x00, 0x2F, 0x00, 0x30, 0x00, 0x67, 0x00, 0xAD, 0x00, 0xFD, 0x00, 0x3F, 0x01
	.byte 0x40, 0x01, 0x30, 0x01, 0x95, 0x01, 0xC0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0226EC40
    