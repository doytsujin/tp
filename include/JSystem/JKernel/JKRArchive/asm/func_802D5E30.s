/* readResource__10JKRArchiveFPvUlPCc __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::readResource(void *, unsigned long, char const *) */
/* missing reference */
/* 802D5E30 002D2D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5E34 002D2D74  7C 08 02 A6 */	mflr r0
/* 802D5E38 002D2D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5E3C 002D2D7C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5E40 002D2D80  48 08 C3 9D */	bl _savegpr_29
/* 802D5E44 002D2D84  7C 7D 1B 78 */	mr r29, r3
/* 802D5E48 002D2D88  7C 9E 23 78 */	mr r30, r4
/* 802D5E4C 002D2D8C  7C BF 2B 78 */	mr r31, r5
/* 802D5E50 002D2D90  88 06 00 00 */	lbz r0, 0(r6)
/* 802D5E54 002D2D94  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D5E58 002D2D98  40 82 00 18 */	bne lbl_802D5E70
/* 802D5E5C 002D2D9C  38 86 00 01 */	addi r4, r6, 1
/* 802D5E60 002D2DA0  38 A0 00 00 */	li r5, 0
/* 802D5E64 002D2DA4  48 00 07 41 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 802D5E68 002D2DA8  7C 66 1B 78 */	mr r6, r3
/* 802D5E6C 002D2DAC  48 00 00 14 */	b lbl_802D5E80
lbl_802D5E70:
/* 802D5E70 002D2DB0  7C C4 33 78 */	mr r4, r6
/* 802D5E74 002D2DB4  80 AD 8E A0 */	lwz r5, lbl_80451420-_SDA_BASE_(r13)
/* 802D5E78 002D2DB8  48 00 07 2D */	bl findFsResource__10JKRArchiveCFPCcUl
/* 802D5E7C 002D2DBC  7C 66 1B 78 */	mr r6, r3
lbl_802D5E80:
/* 802D5E80 002D2DC0  28 06 00 00 */	cmplwi r6, 0
/* 802D5E84 002D2DC4  41 82 00 2C */	beq lbl_802D5EB0
/* 802D5E88 002D2DC8  7F A3 EB 78 */	mr r3, r29
/* 802D5E8C 002D2DCC  7F C4 F3 78 */	mr r4, r30
/* 802D5E90 002D2DD0  7F E5 FB 78 */	mr r5, r31
/* 802D5E94 002D2DD4  38 E1 00 08 */	addi r7, r1, 8
/* 802D5E98 002D2DD8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D5E9C 002D2DDC  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802D5EA0 002D2DE0  7D 89 03 A6 */	mtctr r12
/* 802D5EA4 002D2DE4  4E 80 04 21 */	bctrl
/* 802D5EA8 002D2DE8  80 61 00 08 */	lwz r3, 8(r1)
/* 802D5EAC 002D2DEC  48 00 00 08 */	b lbl_802D5EB4
lbl_802D5EB0:
/* 802D5EB0 002D2DF0  38 60 00 00 */	li r3, 0
lbl_802D5EB4:
/* 802D5EB4 002D2DF4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5EB8 002D2DF8  48 08 C3 71 */	bl _restgpr_29
/* 802D5EBC 002D2DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5EC0 002D2E00  7C 08 03 A6 */	mtlr r0
/* 802D5EC4 002D2E04  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5EC8 002D2E08  4E 80 00 20 */	blr
