/* 8009B46C 000983AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B470 000983B0  7C 08 02 A6 */	mflr r0
/* 8009B474 000983B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B478 000983B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B47C 000983BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B480 000983C0  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009B484 000983C4  38 80 00 12 */	li r4, 0x12
/* 8009B488 000983C8  38 A0 00 01 */	li r5, 1
/* 8009B48C 000983CC  4B F9 7B A5 */	bl getItem__17dSv_player_item_cCFib
/* 8009B490 000983D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009B494 000983D4  20 00 00 EC */	subfic r0, r0, 0xec
/* 8009B498 000983D8  7C 00 00 34 */	cntlzw r0, r0
/* 8009B49C 000983DC  54 03 D9 7E */	srwi r3, r0, 5
/* 8009B4A0 000983E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B4A4 000983E4  7C 08 03 A6 */	mtlr r0
/* 8009B4A8 000983E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B4AC 000983EC  4E 80 00 20 */	blr 