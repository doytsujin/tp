/* 80099EFC 00096E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099F00 00096E40  7C 08 02 A6 */	mflr r0
/* 80099F04 00096E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099F08 00096E48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099F0C 00096E4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099F10 00096E50  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099F14 00096E54  38 80 00 04 */	li r4, 4
/* 80099F18 00096E58  38 A0 00 00 */	li r5, 0
/* 80099F1C 00096E5C  4B F9 91 15 */	bl getItem__17dSv_player_item_cCFib
/* 80099F20 00096E60  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099F24 00096E64  20 00 00 43 */	subfic r0, r0, 0x43
/* 80099F28 00096E68  7C 00 00 34 */	cntlzw r0, r0
/* 80099F2C 00096E6C  54 03 D9 7E */	srwi r3, r0, 5
/* 80099F30 00096E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099F34 00096E74  7C 08 03 A6 */	mtlr r0
/* 80099F38 00096E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80099F3C 00096E7C  4E 80 00 20 */	blr 