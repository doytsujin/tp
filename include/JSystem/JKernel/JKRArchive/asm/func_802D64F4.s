/* findTypeResource__10JKRArchiveCFUlPCc __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::findTypeResource( const(unsigned long, char const *)) */
/* JKRArchive_NS_findTypeResource */
/* 802D64F4 002D3434  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D64F8 002D3438  7C 08 02 A6 */	mflr r0
/* 802D64FC 002D343C  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D6500 002D3440  39 61 01 20 */	addi r11, r1, 0x120
/* 802D6504 002D3444  48 08 BC D5 */	bl _savegpr_28
/* 802D6508 002D3448  7C 7C 1B 78 */	mr r28, r3
/* 802D650C 002D344C  7C 9D 23 79 */	or. r29, r4, r4
/* 802D6510 002D3450  41 82 00 78 */	beq lbl_802D6588
/* 802D6514 002D3454  38 61 00 08 */	addi r3, r1, 8
/* 802D6518 002D3458  7C A4 2B 78 */	mr r4, r5
/* 802D651C 002D345C  48 00 02 D9 */	bl store__Q210JKRArchive8CArcNameFPCc
/* 802D6520 002D3460  7F 83 E3 78 */	mr r3, r28
/* 802D6524 002D3464  7F A4 EB 78 */	mr r4, r29
/* 802D6528 002D3468  4B FF FE B9 */	bl findResType__10JKRArchiveCFUl
/* 802D652C 002D346C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D6530 002D3470  41 82 00 58 */	beq lbl_802D6588
/* 802D6534 002D3474  80 7C 00 4C */	lwz r3, 0x4c(r28)
/* 802D6538 002D3478  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802D653C 002D347C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802D6540 002D3480  7F C3 02 14 */	add r30, r3, r0
/* 802D6544 002D3484  3B A0 00 00 */	li r29, 0
/* 802D6548 002D3488  48 00 00 34 */	b lbl_802D657C
lbl_802D654C:
/* 802D654C 002D348C  7F 83 E3 78 */	mr r3, r28
/* 802D6550 002D3490  38 81 00 08 */	addi r4, r1, 8
/* 802D6554 002D3494  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6558 002D3498  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D655C 002D349C  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D6560 002D34A0  4B FF FE 35 */	bl isSameName__10JKRArchiveCFRQ210JKRArchive8CArcNameUlUs
/* 802D6564 002D34A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6568 002D34A8  41 82 00 0C */	beq lbl_802D6574
/* 802D656C 002D34AC  7F C3 F3 78 */	mr r3, r30
/* 802D6570 002D34B0  48 00 00 1C */	b lbl_802D658C
lbl_802D6574:
/* 802D6574 002D34B4  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D6578 002D34B8  3B BD 00 01 */	addi r29, r29, 1
lbl_802D657C:
/* 802D657C 002D34BC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D6580 002D34C0  7C 1D 00 00 */	cmpw r29, r0
/* 802D6584 002D34C4  41 80 FF C8 */	blt lbl_802D654C
lbl_802D6588:
/* 802D6588 002D34C8  38 60 00 00 */	li r3, 0
lbl_802D658C:
/* 802D658C 002D34CC  39 61 01 20 */	addi r11, r1, 0x120
/* 802D6590 002D34D0  48 08 BC 95 */	bl _restgpr_28
/* 802D6594 002D34D4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D6598 002D34D8  7C 08 03 A6 */	mtlr r0
/* 802D659C 002D34DC  38 21 01 20 */	addi r1, r1, 0x120
/* 802D65A0 002D34E0  4E 80 00 20 */	blr
