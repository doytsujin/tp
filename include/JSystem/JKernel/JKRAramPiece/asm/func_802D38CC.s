/* startDMA__12JKRAramPieceFP12JKRAMCommand JKRAramPiece::startDMA(JKRAMCommand *) */
/* JKRAramPiece_NS_startDMA */
/* 802D38CC 002D080C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D38D0 002D0810  7C 08 02 A6 */	mflr r0
/* 802D38D4 002D0814  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D38D8 002D0818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D38DC 002D081C  7C 7F 1B 78 */	mr r31, r3
/* 802D38E0 002D0820  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802D38E4 002D0824  2C 00 00 01 */	cmpwi r0, 1
/* 802D38E8 002D0828  40 82 00 14 */	bne lbl_802D38FC
/* 802D38EC 002D082C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802D38F0 002D0830  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D38F4 002D0834  48 06 7C 8D */	bl DCInvalidateRange
/* 802D38F8 002D0838  48 00 00 10 */	b lbl_802D3908
lbl_802D38FC:
/* 802D38FC 002D083C  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802D3900 002D0840  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D3904 002D0844  48 06 7C D9 */	bl DCStoreRange
lbl_802D3908:
/* 802D3908 002D0848  7F E3 FB 78 */	mr r3, r31
/* 802D390C 002D084C  38 80 00 00 */	li r4, 0
/* 802D3910 002D0850  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 802D3914 002D0854  38 C0 00 00 */	li r6, 0
/* 802D3918 002D0858  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 802D391C 002D085C  81 1F 00 4C */	lwz r8, 0x4c(r31)
/* 802D3920 002D0860  81 3F 00 44 */	lwz r9, 0x44(r31)
/* 802D3924 002D0864  3D 40 80 2D */	lis r10, doneDMA__12JKRAramPieceFUl@ha
/* 802D3928 002D0868  39 4A 39 44 */	addi r10, r10, doneDMA__12JKRAramPieceFUl@l
/* 802D392C 002D086C  48 07 E9 A9 */	bl ARQPostRequest
/* 802D3930 002D0870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3934 002D0874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3938 002D0878  7C 08 03 A6 */	mtlr r0
/* 802D393C 002D087C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3940 002D0880  4E 80 00 20 */	blr
