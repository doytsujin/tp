/* 802CE83C 002CB77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE840 002CB780  7C 08 02 A6 */	mflr r0
/* 802CE844 002CB784  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE848 002CB788  7C 64 1B 78 */	mr r4, r3
/* 802CE84C 002CB78C  80 6D 8D F8 */	lwz r3, lbl_80451378-_SDA_BASE_(r13)
/* 802CE850 002CB790  28 03 00 00 */	cmplwi r3, 0
/* 802CE854 002CB794  40 82 00 0C */	bne lbl_802CE860
/* 802CE858 002CB798  38 60 00 00 */	li r3, 0
/* 802CE85C 002CB79C  48 00 00 28 */	b lbl_802CE884
lbl_802CE860:
/* 802CE860 002CB7A0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802CE864 002CB7A4  7C 00 20 40 */	cmplw r0, r4
/* 802CE868 002CB7A8  41 81 00 18 */	bgt lbl_802CE880
/* 802CE86C 002CB7AC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802CE870 002CB7B0  7C 04 00 40 */	cmplw r4, r0
/* 802CE874 002CB7B4  40 80 00 0C */	bge lbl_802CE880
/* 802CE878 002CB7B8  48 00 00 1D */	bl find__7JKRHeapCFPv
/* 802CE87C 002CB7BC  48 00 00 08 */	b lbl_802CE884
lbl_802CE880:
/* 802CE880 002CB7C0  48 00 00 BD */	bl findAllHeap__7JKRHeapCFPv
lbl_802CE884:
/* 802CE884 002CB7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE888 002CB7C8  7C 08 03 A6 */	mtlr r0
/* 802CE88C 002CB7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE890 002CB7D0  4E 80 00 20 */	blr 