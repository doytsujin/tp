.include "macros.inc"

.section .text, "ax" # 802859dc


.global JStudio_NS_math_NS_getRotation_xyz
JStudio_NS_math_NS_getRotation_xyz:
/* 802859DC 0028291C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802859E0 00282920  7C 08 02 A6 */	mflr r0
/* 802859E4 00282924  90 01 00 74 */	stw r0, 0x74(r1)
/* 802859E8 00282928  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802859EC 0028292C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 802859F0 00282930  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802859F4 00282934  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 802859F8 00282938  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802859FC 0028293C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80285A00 00282940  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80285A04 00282944  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 80285A08 00282948  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 80285A0C 0028294C  F3 61 00 28 */	psq_st f27, 40(r1), 0, qr0
/* 80285A10 00282950  DB 41 00 10 */	stfd f26, 0x10(r1)
/* 80285A14 00282954  F3 41 00 18 */	psq_st f26, 24(r1), 0, qr0
/* 80285A18 00282958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285A1C 0028295C  7C 7F 1B 78 */	mr r31, r3
/* 80285A20 00282960  FF 80 10 90 */	fmr f28, f2
/* 80285A24 00282964  FF 40 18 90 */	fmr f26, f3
/* 80285A28 00282968  C0 02 BA 68 */	lfs f0, lbl_80455468-_SDA2_BASE_(r2)
/* 80285A2C 0028296C  EF 60 00 72 */	fmuls f27, f0, f1
/* 80285A30 00282970  FC 20 D8 90 */	fmr f1, f27
/* 80285A34 00282974  48 0E 65 F5 */	bl func_8036C028
/* 80285A38 00282978  FF E0 08 18 */	frsp f31, f1
/* 80285A3C 0028297C  FC 20 D8 90 */	fmr f1, f27
/* 80285A40 00282980  48 0E 6B 51 */	bl func_8036C590
/* 80285A44 00282984  FF C0 08 18 */	frsp f30, f1
/* 80285A48 00282988  C0 02 BA 68 */	lfs f0, lbl_80455468-_SDA2_BASE_(r2)
/* 80285A4C 0028298C  EF 60 07 32 */	fmuls f27, f0, f28
/* 80285A50 00282990  FC 20 D8 90 */	fmr f1, f27
/* 80285A54 00282994  48 0E 65 D5 */	bl func_8036C028
/* 80285A58 00282998  FF A0 08 18 */	frsp f29, f1
/* 80285A5C 0028299C  FC 20 D8 90 */	fmr f1, f27
/* 80285A60 002829A0  48 0E 6B 31 */	bl func_8036C590
/* 80285A64 002829A4  FF 80 08 18 */	frsp f28, f1
/* 80285A68 002829A8  C0 02 BA 68 */	lfs f0, lbl_80455468-_SDA2_BASE_(r2)
/* 80285A6C 002829AC  EF 40 06 B2 */	fmuls f26, f0, f26
/* 80285A70 002829B0  FC 20 D0 90 */	fmr f1, f26
/* 80285A74 002829B4  48 0E 65 B5 */	bl func_8036C028
/* 80285A78 002829B8  FF 60 08 18 */	frsp f27, f1
/* 80285A7C 002829BC  FC 20 D0 90 */	fmr f1, f26
/* 80285A80 002829C0  48 0E 6B 11 */	bl func_8036C590
/* 80285A84 002829C4  FC 20 08 18 */	frsp f1, f1
/* 80285A88 002829C8  EC 5F 06 F2 */	fmuls f2, f31, f27
/* 80285A8C 002829CC  EC 7F 00 72 */	fmuls f3, f31, f1
/* 80285A90 002829D0  EC 9E 06 F2 */	fmuls f4, f30, f27
/* 80285A94 002829D4  EC BE 00 72 */	fmuls f5, f30, f1
/* 80285A98 002829D8  EC 1D 06 F2 */	fmuls f0, f29, f27
/* 80285A9C 002829DC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80285AA0 002829E0  EC 1D 00 72 */	fmuls f0, f29, f1
/* 80285AA4 002829E4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80285AA8 002829E8  FC 00 E0 50 */	fneg f0, f28
/* 80285AAC 002829EC  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80285AB0 002829F0  EC 1E 07 72 */	fmuls f0, f30, f29
/* 80285AB4 002829F4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80285AB8 002829F8  EC 1F 07 72 */	fmuls f0, f31, f29
/* 80285ABC 002829FC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80285AC0 00282A00  EC 04 07 32 */	fmuls f0, f4, f28
/* 80285AC4 00282A04  EC 00 18 28 */	fsubs f0, f0, f3
/* 80285AC8 00282A08  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80285ACC 00282A0C  EC 02 07 32 */	fmuls f0, f2, f28
/* 80285AD0 00282A10  EC 05 00 2A */	fadds f0, f5, f0
/* 80285AD4 00282A14  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80285AD8 00282A18  EC 05 07 32 */	fmuls f0, f5, f28
/* 80285ADC 00282A1C  EC 02 00 2A */	fadds f0, f2, f0
/* 80285AE0 00282A20  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80285AE4 00282A24  EC 03 07 32 */	fmuls f0, f3, f28
/* 80285AE8 00282A28  EC 00 20 28 */	fsubs f0, f0, f4
/* 80285AEC 00282A2C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80285AF0 00282A30  C0 02 BA 6C */	lfs f0, lbl_8045546C-_SDA2_BASE_(r2)
/* 80285AF4 00282A34  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80285AF8 00282A38  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80285AFC 00282A3C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80285B00 00282A40  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80285B04 00282A44  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80285B08 00282A48  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80285B0C 00282A4C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80285B10 00282A50  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80285B14 00282A54  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80285B18 00282A58  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 80285B1C 00282A5C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80285B20 00282A60  E3 61 00 28 */	psq_l f27, 40(r1), 0, qr0
/* 80285B24 00282A64  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 80285B28 00282A68  E3 41 00 18 */	psq_l f26, 24(r1), 0, qr0
/* 80285B2C 00282A6C  CB 41 00 10 */	lfd f26, 0x10(r1)
/* 80285B30 00282A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285B34 00282A74  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80285B38 00282A78  7C 08 03 A6 */	mtlr r0
/* 80285B3C 00282A7C  38 21 00 70 */	addi r1, r1, 0x70
/* 80285B40 00282A80  4E 80 00 20 */	blr 

.global JStudio_NS_math_NS_getTransformation_SRxyzT
JStudio_NS_math_NS_getTransformation_SRxyzT:
/* 80285B44 00282A84  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80285B48 00282A88  7C 08 02 A6 */	mflr r0
/* 80285B4C 00282A8C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80285B50 00282A90  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80285B54 00282A94  48 0D C6 89 */	bl _savegpr_29
/* 80285B58 00282A98  7C 7D 1B 78 */	mr r29, r3
/* 80285B5C 00282A9C  7C BE 2B 78 */	mr r30, r5
/* 80285B60 00282AA0  7C DF 33 78 */	mr r31, r6
/* 80285B64 00282AA4  38 61 00 68 */	addi r3, r1, 0x68
/* 80285B68 00282AA8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80285B6C 00282AAC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80285B70 00282AB0  C0 64 00 08 */	lfs f3, 8(r4)
/* 80285B74 00282AB4  48 0C 0D F5 */	bl PSMTXScale
/* 80285B78 00282AB8  38 61 00 08 */	addi r3, r1, 8
/* 80285B7C 00282ABC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80285B80 00282AC0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80285B84 00282AC4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80285B88 00282AC8  4B FF FE 55 */	bl JStudio_NS_math_NS_getRotation_xyz
/* 80285B8C 00282ACC  38 61 00 08 */	addi r3, r1, 8
/* 80285B90 00282AD0  38 81 00 68 */	addi r4, r1, 0x68
/* 80285B94 00282AD4  38 A1 00 38 */	addi r5, r1, 0x38
/* 80285B98 00282AD8  48 0C 09 4D */	bl PSMTXConcat
/* 80285B9C 00282ADC  38 61 00 38 */	addi r3, r1, 0x38
/* 80285BA0 00282AE0  7F A4 EB 78 */	mr r4, r29
/* 80285BA4 00282AE4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80285BA8 00282AE8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80285BAC 00282AEC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80285BB0 00282AF0  48 0C 0D 6D */	bl PSMTXTransApply
/* 80285BB4 00282AF4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80285BB8 00282AF8  48 0D C6 71 */	bl _restgpr_29
/* 80285BBC 00282AFC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80285BC0 00282B00  7C 08 03 A6 */	mtlr r0
/* 80285BC4 00282B04  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80285BC8 00282B08  4E 80 00 20 */	blr 

.global JStudio_NS_math_NS_getFromTransformation_SRxyzT
JStudio_NS_math_NS_getFromTransformation_SRxyzT:
/* 80285BCC 00282B0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80285BD0 00282B10  7C 08 02 A6 */	mflr r0
/* 80285BD4 00282B14  90 01 00 84 */	stw r0, 0x84(r1)
/* 80285BD8 00282B18  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80285BDC 00282B1C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80285BE0 00282B20  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80285BE4 00282B24  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80285BE8 00282B28  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80285BEC 00282B2C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 80285BF0 00282B30  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80285BF4 00282B34  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 80285BF8 00282B38  39 61 00 40 */	addi r11, r1, 0x40
/* 80285BFC 00282B3C  48 0D C5 DD */	bl _savegpr_28
/* 80285C00 00282B40  7C 7C 1B 78 */	mr r28, r3
/* 80285C04 00282B44  7C 9D 23 78 */	mr r29, r4
/* 80285C08 00282B48  7C BE 2B 78 */	mr r30, r5
/* 80285C0C 00282B4C  7C DF 33 78 */	mr r31, r6
/* 80285C10 00282B50  C0 06 00 00 */	lfs f0, 0(r6)
/* 80285C14 00282B54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80285C18 00282B58  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 80285C1C 00282B5C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80285C20 00282B60  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 80285C24 00282B64  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80285C28 00282B68  38 61 00 20 */	addi r3, r1, 0x20
/* 80285C2C 00282B6C  48 0C 15 25 */	bl PSVECMag
/* 80285C30 00282B70  D0 3C 00 00 */	stfs f1, 0(r28)
/* 80285C34 00282B74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80285C38 00282B78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80285C3C 00282B7C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80285C40 00282B80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80285C44 00282B84  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80285C48 00282B88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80285C4C 00282B8C  38 61 00 14 */	addi r3, r1, 0x14
/* 80285C50 00282B90  48 0C 15 01 */	bl PSVECMag
/* 80285C54 00282B94  D0 3C 00 04 */	stfs f1, 4(r28)
/* 80285C58 00282B98  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80285C5C 00282B9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80285C60 00282BA0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80285C64 00282BA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80285C68 00282BA8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80285C6C 00282BAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80285C70 00282BB0  38 61 00 08 */	addi r3, r1, 8
/* 80285C74 00282BB4  48 0C 14 DD */	bl PSVECMag
/* 80285C78 00282BB8  D0 3C 00 08 */	stfs f1, 8(r28)
/* 80285C7C 00282BBC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80285C80 00282BC0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80285C84 00282BC4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80285C88 00282BC8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80285C8C 00282BCC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80285C90 00282BD0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80285C94 00282BD4  C8 62 BA 70 */	lfd f3, lbl_80455470-_SDA2_BASE_(r2)
/* 80285C98 00282BD8  FC 80 18 90 */	fmr f4, f3
/* 80285C9C 00282BDC  FC 40 18 90 */	fmr f2, f3
/* 80285CA0 00282BE0  C0 02 BA 6C */	lfs f0, lbl_8045546C-_SDA2_BASE_(r2)
/* 80285CA4 00282BE4  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80285CA8 00282BE8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80285CAC 00282BEC  41 82 00 0C */	beq lbl_80285CB8
/* 80285CB0 00282BF0  C8 02 BA 78 */	lfd f0, lbl_80455478-_SDA2_BASE_(r2)
/* 80285CB4 00282BF4  FC 60 08 24 */	fdiv f3, f0, f1
lbl_80285CB8:
/* 80285CB8 00282BF8  C0 02 BA 6C */	lfs f0, lbl_8045546C-_SDA2_BASE_(r2)
/* 80285CBC 00282BFC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80285CC0 00282C00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80285CC4 00282C04  41 82 00 0C */	beq lbl_80285CD0
/* 80285CC8 00282C08  C8 02 BA 78 */	lfd f0, lbl_80455478-_SDA2_BASE_(r2)
/* 80285CCC 00282C0C  FC 80 08 24 */	fdiv f4, f0, f1
lbl_80285CD0:
/* 80285CD0 00282C10  C0 02 BA 6C */	lfs f0, lbl_8045546C-_SDA2_BASE_(r2)
/* 80285CD4 00282C14  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80285CD8 00282C18  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80285CDC 00282C1C  41 82 00 0C */	beq lbl_80285CE8
/* 80285CE0 00282C20  C8 02 BA 78 */	lfd f0, lbl_80455478-_SDA2_BASE_(r2)
/* 80285CE4 00282C24  FC 40 08 24 */	fdiv f2, f0, f1
lbl_80285CE8:
/* 80285CE8 00282C28  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80285CEC 00282C2C  FC E0 00 B2 */	fmul f7, f0, f2
/* 80285CF0 00282C30  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80285CF4 00282C34  FC C0 01 32 */	fmul f6, f0, f4
/* 80285CF8 00282C38  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80285CFC 00282C3C  FF E0 00 F2 */	fmul f31, f0, f3
/* 80285D00 00282C40  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80285D04 00282C44  FC 40 01 32 */	fmul f2, f0, f4
/* 80285D08 00282C48  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80285D0C 00282C4C  FF A0 00 F2 */	fmul f29, f0, f3
/* 80285D10 00282C50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80285D14 00282C54  FC 20 01 32 */	fmul f1, f0, f4
/* 80285D18 00282C58  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80285D1C 00282C5C  FF C0 00 F2 */	fmul f30, f0, f3
/* 80285D20 00282C60  C8 A2 BA 78 */	lfd f5, lbl_80455478-_SDA2_BASE_(r2)
/* 80285D24 00282C64  FC 9F 28 28 */	fsub f4, f31, f5
/* 80285D28 00282C68  C0 62 BA 80 */	lfs f3, lbl_80455480-_SDA2_BASE_(r2)
/* 80285D2C 00282C6C  3C 60 80 45 */	lis r3, lbl_80450AEC@ha
/* 80285D30 00282C70  C0 03 0A EC */	lfs f0, lbl_80450AEC@l(r3)
/* 80285D34 00282C74  EC 63 00 32 */	fmuls f3, f3, f0
/* 80285D38 00282C78  FC 00 18 50 */	fneg f0, f3
/* 80285D3C 00282C7C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80285D40 00282C80  4C 41 13 82 */	cror 2, 1, 2
/* 80285D44 00282C84  40 82 00 1C */	bne lbl_80285D60
/* 80285D48 00282C88  FC 20 08 50 */	fneg f1, f1
/* 80285D4C 00282C8C  48 0E 69 D5 */	bl func_8036C720
/* 80285D50 00282C90  FF 80 08 90 */	fmr f28, f1
/* 80285D54 00282C94  C8 22 BA 88 */	lfd f1, lbl_80455488-_SDA2_BASE_(r2)
/* 80285D58 00282C98  CB A2 BA 70 */	lfd f29, lbl_80455470-_SDA2_BASE_(r2)
/* 80285D5C 00282C9C  48 00 00 50 */	b lbl_80285DAC
lbl_80285D60:
/* 80285D60 00282CA0  FC 1F 28 2A */	fadd f0, f31, f5
/* 80285D64 00282CA4  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80285D68 00282CA8  4C 40 13 82 */	cror 2, 0, 2
/* 80285D6C 00282CAC  40 82 00 18 */	bne lbl_80285D84
/* 80285D70 00282CB0  48 0E 69 B1 */	bl func_8036C720
/* 80285D74 00282CB4  FF 80 08 90 */	fmr f28, f1
/* 80285D78 00282CB8  C8 22 BA 90 */	lfd f1, lbl_80455490-_SDA2_BASE_(r2)
/* 80285D7C 00282CBC  CB A2 BA 70 */	lfd f29, lbl_80455470-_SDA2_BASE_(r2)
/* 80285D80 00282CC0  48 00 00 2C */	b lbl_80285DAC
lbl_80285D84:
/* 80285D84 00282CC4  FC 20 30 90 */	fmr f1, f6
/* 80285D88 00282CC8  FC 40 38 90 */	fmr f2, f7
/* 80285D8C 00282CCC  48 0E 69 95 */	bl func_8036C720
/* 80285D90 00282CD0  FF 80 08 90 */	fmr f28, f1
/* 80285D94 00282CD4  FC 20 E8 90 */	fmr f1, f29
/* 80285D98 00282CD8  FC 40 F0 90 */	fmr f2, f30
/* 80285D9C 00282CDC  48 0E 69 85 */	bl func_8036C720
/* 80285DA0 00282CE0  FF A0 08 90 */	fmr f29, f1
/* 80285DA4 00282CE4  FC 20 F8 50 */	fneg f1, f31
/* 80285DA8 00282CE8  48 0E 69 59 */	bl func_8036C700
lbl_80285DAC:
/* 80285DAC 00282CEC  C8 02 BA 98 */	lfd f0, lbl_80455498-_SDA2_BASE_(r2)
/* 80285DB0 00282CF0  FF 9C 00 32 */	fmul f28, f28, f0
/* 80285DB4 00282CF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80285DB8 00282CF8  FF BD 00 32 */	fmul f29, f29, f0
/* 80285DBC 00282CFC  FC 00 E0 18 */	frsp f0, f28
/* 80285DC0 00282D00  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80285DC4 00282D04  FC 00 08 18 */	frsp f0, f1
/* 80285DC8 00282D08  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80285DCC 00282D0C  FC 00 E8 18 */	frsp f0, f29
/* 80285DD0 00282D10  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80285DD4 00282D14  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80285DD8 00282D18  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80285DDC 00282D1C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 80285DE0 00282D20  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80285DE4 00282D24  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 80285DE8 00282D28  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80285DEC 00282D2C  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 80285DF0 00282D30  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80285DF4 00282D34  39 61 00 40 */	addi r11, r1, 0x40
/* 80285DF8 00282D38  48 0D C4 2D */	bl _restgpr_28
/* 80285DFC 00282D3C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80285E00 00282D40  7C 08 03 A6 */	mtlr r0
/* 80285E04 00282D44  38 21 00 80 */	addi r1, r1, 0x80
/* 80285E08 00282D48  4E 80 00 20 */	blr 

