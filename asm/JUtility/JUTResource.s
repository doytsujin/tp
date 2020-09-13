.include "macros.inc"

.section .text, "ax" # 802de078


.global JUTResReference_NS_getResource
JUTResReference_NS_getResource:
/* 802DE078 002DAFB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE07C 002DAFBC  7C 08 02 A6 */	mflr r0
/* 802DE080 002DAFC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE084 002DAFC4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE088 002DAFC8  48 08 41 51 */	bl _savegpr_28
/* 802DE08C 002DAFCC  7C 7C 1B 78 */	mr r28, r3
/* 802DE090 002DAFD0  7C 9D 23 78 */	mr r29, r4
/* 802DE094 002DAFD4  7C BE 2B 78 */	mr r30, r5
/* 802DE098 002DAFD8  7C DF 33 78 */	mr r31, r6
/* 802DE09C 002DAFDC  7F A3 EB 78 */	mr r3, r29
/* 802DE0A0 002DAFE0  7F 84 E3 78 */	mr r4, r28
/* 802DE0A4 002DAFE4  38 A0 00 01 */	li r5, 1
/* 802DE0A8 002DAFE8  4B FF E1 F1 */	bl JSUInputStream_NS_read
/* 802DE0AC 002DAFEC  7F A3 EB 78 */	mr r3, r29
/* 802DE0B0 002DAFF0  38 9C 00 01 */	addi r4, r28, 1
/* 802DE0B4 002DAFF4  38 A0 00 01 */	li r5, 1
/* 802DE0B8 002DAFF8  4B FF E1 E1 */	bl JSUInputStream_NS_read
/* 802DE0BC 002DAFFC  7F A3 EB 78 */	mr r3, r29
/* 802DE0C0 002DB000  38 9C 00 02 */	addi r4, r28, 2
/* 802DE0C4 002DB004  88 BC 00 01 */	lbz r5, 1(r28)
/* 802DE0C8 002DB008  4B FF E1 D1 */	bl JSUInputStream_NS_read
/* 802DE0CC 002DB00C  88 1C 00 00 */	lbz r0, 0(r28)
/* 802DE0D0 002DB010  28 00 00 02 */	cmplwi r0, 2
/* 802DE0D4 002DB014  41 82 00 14 */	beq lbl_802DE0E8
/* 802DE0D8 002DB018  28 00 00 03 */	cmplwi r0, 3
/* 802DE0DC 002DB01C  41 82 00 0C */	beq lbl_802DE0E8
/* 802DE0E0 002DB020  28 00 00 04 */	cmplwi r0, 4
/* 802DE0E4 002DB024  40 82 00 14 */	bne lbl_802DE0F8
lbl_802DE0E8:
/* 802DE0E8 002DB028  38 80 00 00 */	li r4, 0
/* 802DE0EC 002DB02C  88 1C 00 01 */	lbz r0, 1(r28)
/* 802DE0F0 002DB030  7C 7C 02 14 */	add r3, r28, r0
/* 802DE0F4 002DB034  98 83 00 02 */	stb r4, 2(r3)
lbl_802DE0F8:
/* 802DE0F8 002DB038  7F 83 E3 78 */	mr r3, r28
/* 802DE0FC 002DB03C  7F C4 F3 78 */	mr r4, r30
/* 802DE100 002DB040  7F E5 FB 78 */	mr r5, r31
/* 802DE104 002DB044  48 00 00 B9 */	bl JUTResReference_NS_getResource_X2_
/* 802DE108 002DB048  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE10C 002DB04C  48 08 41 19 */	bl _restgpr_28
/* 802DE110 002DB050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE114 002DB054  7C 08 03 A6 */	mtlr r0
/* 802DE118 002DB058  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE11C 002DB05C  4E 80 00 20 */	blr 

.global JUTResReference_NS_getResource_X1_
JUTResReference_NS_getResource_X1_:
/* 802DE120 002DB060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE124 002DB064  7C 08 02 A6 */	mflr r0
/* 802DE128 002DB068  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE12C 002DB06C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE130 002DB070  48 08 40 AD */	bl _savegpr_29
/* 802DE134 002DB074  7C 7D 1B 78 */	mr r29, r3
/* 802DE138 002DB078  7C BE 2B 78 */	mr r30, r5
/* 802DE13C 002DB07C  7C DF 33 78 */	mr r31, r6
/* 802DE140 002DB080  88 04 00 00 */	lbz r0, 0(r4)
/* 802DE144 002DB084  98 03 00 00 */	stb r0, 0(r3)
/* 802DE148 002DB088  88 04 00 01 */	lbz r0, 1(r4)
/* 802DE14C 002DB08C  98 03 00 01 */	stb r0, 1(r3)
/* 802DE150 002DB090  88 A3 00 01 */	lbz r5, 1(r3)
/* 802DE154 002DB094  28 05 00 00 */	cmplwi r5, 0
/* 802DE158 002DB098  41 82 00 10 */	beq lbl_802DE168
/* 802DE15C 002DB09C  38 7D 00 02 */	addi r3, r29, 2
/* 802DE160 002DB0A0  38 84 00 02 */	addi r4, r4, 2
/* 802DE164 002DB0A4  4B D2 53 DD */	bl func_80003540
lbl_802DE168:
/* 802DE168 002DB0A8  88 1D 00 00 */	lbz r0, 0(r29)
/* 802DE16C 002DB0AC  28 00 00 02 */	cmplwi r0, 2
/* 802DE170 002DB0B0  41 82 00 14 */	beq lbl_802DE184
/* 802DE174 002DB0B4  28 00 00 03 */	cmplwi r0, 3
/* 802DE178 002DB0B8  41 82 00 0C */	beq lbl_802DE184
/* 802DE17C 002DB0BC  28 00 00 04 */	cmplwi r0, 4
/* 802DE180 002DB0C0  40 82 00 14 */	bne lbl_802DE194
lbl_802DE184:
/* 802DE184 002DB0C4  38 80 00 00 */	li r4, 0
/* 802DE188 002DB0C8  88 1D 00 01 */	lbz r0, 1(r29)
/* 802DE18C 002DB0CC  7C 7D 02 14 */	add r3, r29, r0
/* 802DE190 002DB0D0  98 83 00 02 */	stb r4, 2(r3)
lbl_802DE194:
/* 802DE194 002DB0D4  7F A3 EB 78 */	mr r3, r29
/* 802DE198 002DB0D8  7F C4 F3 78 */	mr r4, r30
/* 802DE19C 002DB0DC  7F E5 FB 78 */	mr r5, r31
/* 802DE1A0 002DB0E0  48 00 00 1D */	bl JUTResReference_NS_getResource_X2_
/* 802DE1A4 002DB0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE1A8 002DB0E8  48 08 40 81 */	bl _restgpr_29
/* 802DE1AC 002DB0EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE1B0 002DB0F0  7C 08 03 A6 */	mtlr r0
/* 802DE1B4 002DB0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE1B8 002DB0F8  4E 80 00 20 */	blr 

.global JUTResReference_NS_getResource_X2_
JUTResReference_NS_getResource_X2_:
/* 802DE1BC 002DB0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE1C0 002DB100  7C 08 02 A6 */	mflr r0
/* 802DE1C4 002DB104  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE1C8 002DB108  7C 66 1B 78 */	mr r6, r3
/* 802DE1CC 002DB10C  38 60 00 00 */	li r3, 0
/* 802DE1D0 002DB110  88 06 00 00 */	lbz r0, 0(r6)
/* 802DE1D4 002DB114  2C 00 00 03 */	cmpwi r0, 3
/* 802DE1D8 002DB118  41 82 00 34 */	beq lbl_802DE20C
/* 802DE1DC 002DB11C  40 80 00 14 */	bge lbl_802DE1F0
/* 802DE1E0 002DB120  2C 00 00 01 */	cmpwi r0, 1
/* 802DE1E4 002DB124  41 82 00 40 */	beq lbl_802DE224
/* 802DE1E8 002DB128  40 80 00 14 */	bge lbl_802DE1FC
/* 802DE1EC 002DB12C  48 00 00 38 */	b lbl_802DE224
lbl_802DE1F0:
/* 802DE1F0 002DB130  2C 00 00 05 */	cmpwi r0, 5
/* 802DE1F4 002DB134  40 80 00 30 */	bge lbl_802DE224
/* 802DE1F8 002DB138  48 00 00 24 */	b lbl_802DE21C
lbl_802DE1FC:
/* 802DE1FC 002DB13C  7C 83 23 78 */	mr r3, r4
/* 802DE200 002DB140  38 86 00 02 */	addi r4, r6, 2
/* 802DE204 002DB144  4B FF 79 35 */	bl JKRArchive_NS_getGlbResource
/* 802DE208 002DB148  48 00 00 1C */	b lbl_802DE224
lbl_802DE20C:
/* 802DE20C 002DB14C  38 66 00 02 */	addi r3, r6, 2
/* 802DE210 002DB150  7C A4 2B 78 */	mr r4, r5
/* 802DE214 002DB154  4B FF 60 5D */	bl JKRFileLoader_NS_getGlbResource_X1_
/* 802DE218 002DB158  48 00 00 0C */	b lbl_802DE224
lbl_802DE21C:
/* 802DE21C 002DB15C  38 66 00 02 */	addi r3, r6, 2
/* 802DE220 002DB160  4B FF 60 05 */	bl JKRFileLoader_NS_getGlbResource
lbl_802DE224:
/* 802DE224 002DB164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE228 002DB168  7C 08 03 A6 */	mtlr r0
/* 802DE22C 002DB16C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE230 002DB170  4E 80 00 20 */	blr 

