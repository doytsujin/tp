.include "macros.inc"

.section .text, "ax" # 802dc638


.global JSUFileInputStream_ct
JSUFileInputStream_ct:
/* 802DC638 002D9578  3C A0 80 3C */	lis r5, lbl_803C2DF8@ha
/* 802DC63C 002D957C  38 05 2D F8 */	addi r0, r5, lbl_803C2DF8@l
/* 802DC640 002D9580  90 03 00 00 */	stw r0, 0(r3)
/* 802DC644 002D9584  38 C0 00 00 */	li r6, 0
/* 802DC648 002D9588  98 C3 00 04 */	stb r6, 4(r3)
/* 802DC64C 002D958C  3C A0 80 3D */	lis r5, lbl_803CC4D4@ha
/* 802DC650 002D9590  38 05 C4 D4 */	addi r0, r5, lbl_803CC4D4@l
/* 802DC654 002D9594  90 03 00 00 */	stw r0, 0(r3)
/* 802DC658 002D9598  3C A0 80 3D */	lis r5, lbl_803CC4B0@ha
/* 802DC65C 002D959C  38 05 C4 B0 */	addi r0, r5, lbl_803CC4B0@l
/* 802DC660 002D95A0  90 03 00 00 */	stw r0, 0(r3)
/* 802DC664 002D95A4  3C A0 80 3D */	lis r5, lbl_803CC518@ha
/* 802DC668 002D95A8  38 05 C5 18 */	addi r0, r5, lbl_803CC518@l
/* 802DC66C 002D95AC  90 03 00 00 */	stw r0, 0(r3)
/* 802DC670 002D95B0  90 83 00 08 */	stw r4, 8(r3)
/* 802DC674 002D95B4  90 C3 00 0C */	stw r6, 0xc(r3)
/* 802DC678 002D95B8  4E 80 00 20 */	blr 
/* 802DC67C 002D95BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC680 002D95C0  7C 08 02 A6 */	mflr r0
/* 802DC684 002D95C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC688 002D95C8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC68C 002D95CC  48 08 5B 4D */	bl _savegpr_28
/* 802DC690 002D95D0  7C 7C 1B 78 */	mr r28, r3
/* 802DC694 002D95D4  7C 9D 23 78 */	mr r29, r4
/* 802DC698 002D95D8  7C BE 2B 78 */	mr r30, r5
/* 802DC69C 002D95DC  3B E0 00 00 */	li r31, 0
/* 802DC6A0 002D95E0  80 63 00 08 */	lwz r3, 8(r3)
/* 802DC6A4 002D95E4  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802DC6A8 002D95E8  28 00 00 00 */	cmplwi r0, 0
/* 802DC6AC 002D95EC  41 82 00 84 */	beq lbl_802DC730
/* 802DC6B0 002D95F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC6B4 002D95F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC6B8 002D95F8  7D 89 03 A6 */	mtctr r12
/* 802DC6BC 002D95FC  4E 80 04 21 */	bctrl 
/* 802DC6C0 002D9600  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DC6C4 002D9604  7C 00 F2 14 */	add r0, r0, r30
/* 802DC6C8 002D9608  7C 00 18 40 */	cmplw r0, r3
/* 802DC6CC 002D960C  40 81 00 20 */	ble lbl_802DC6EC
/* 802DC6D0 002D9610  80 7C 00 08 */	lwz r3, 8(r28)
/* 802DC6D4 002D9614  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC6D8 002D9618  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC6DC 002D961C  7D 89 03 A6 */	mtctr r12
/* 802DC6E0 002D9620  4E 80 04 21 */	bctrl 
/* 802DC6E4 002D9624  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DC6E8 002D9628  7F C0 18 50 */	subf r30, r0, r3
lbl_802DC6EC:
/* 802DC6EC 002D962C  2C 1E 00 00 */	cmpwi r30, 0
/* 802DC6F0 002D9630  40 81 00 40 */	ble lbl_802DC730
/* 802DC6F4 002D9634  80 7C 00 08 */	lwz r3, 8(r28)
/* 802DC6F8 002D9638  7F A4 EB 78 */	mr r4, r29
/* 802DC6FC 002D963C  7F C5 F3 78 */	mr r5, r30
/* 802DC700 002D9640  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 802DC704 002D9644  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC708 002D9648  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802DC70C 002D964C  7D 89 03 A6 */	mtctr r12
/* 802DC710 002D9650  4E 80 04 21 */	bctrl 
/* 802DC714 002D9654  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DC718 002D9658  40 80 00 0C */	bge lbl_802DC724
/* 802DC71C 002D965C  38 60 00 00 */	li r3, 0
/* 802DC720 002D9660  48 00 00 14 */	b lbl_802DC734
lbl_802DC724:
/* 802DC724 002D9664  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DC728 002D9668  7C 00 FA 14 */	add r0, r0, r31
/* 802DC72C 002D966C  90 1C 00 0C */	stw r0, 0xc(r28)
lbl_802DC730:
/* 802DC730 002D9670  7F E3 FB 78 */	mr r3, r31
lbl_802DC734:
/* 802DC734 002D9674  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC738 002D9678  48 08 5A ED */	bl _restgpr_28
/* 802DC73C 002D967C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC740 002D9680  7C 08 03 A6 */	mtlr r0
/* 802DC744 002D9684  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC748 002D9688  4E 80 00 20 */	blr 
/* 802DC74C 002D968C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC750 002D9690  7C 08 02 A6 */	mflr r0
/* 802DC754 002D9694  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC758 002D9698  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC75C 002D969C  48 08 5A 81 */	bl _savegpr_29
/* 802DC760 002D96A0  7C 7D 1B 78 */	mr r29, r3
/* 802DC764 002D96A4  7C 9E 23 78 */	mr r30, r4
/* 802DC768 002D96A8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802DC76C 002D96AC  2C 05 00 01 */	cmpwi r5, 1
/* 802DC770 002D96B0  41 82 00 48 */	beq lbl_802DC7B8
/* 802DC774 002D96B4  40 80 00 10 */	bge lbl_802DC784
/* 802DC778 002D96B8  2C 05 00 00 */	cmpwi r5, 0
/* 802DC77C 002D96BC  40 80 00 14 */	bge lbl_802DC790
/* 802DC780 002D96C0  48 00 00 40 */	b lbl_802DC7C0
lbl_802DC784:
/* 802DC784 002D96C4  2C 05 00 03 */	cmpwi r5, 3
/* 802DC788 002D96C8  40 80 00 38 */	bge lbl_802DC7C0
/* 802DC78C 002D96CC  48 00 00 0C */	b lbl_802DC798
lbl_802DC790:
/* 802DC790 002D96D0  93 DD 00 0C */	stw r30, 0xc(r29)
/* 802DC794 002D96D4  48 00 00 2C */	b lbl_802DC7C0
lbl_802DC798:
/* 802DC798 002D96D8  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC79C 002D96DC  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC7A0 002D96E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC7A4 002D96E4  7D 89 03 A6 */	mtctr r12
/* 802DC7A8 002D96E8  4E 80 04 21 */	bctrl 
/* 802DC7AC 002D96EC  7C 1E 18 50 */	subf r0, r30, r3
/* 802DC7B0 002D96F0  90 1D 00 0C */	stw r0, 0xc(r29)
/* 802DC7B4 002D96F4  48 00 00 0C */	b lbl_802DC7C0
lbl_802DC7B8:
/* 802DC7B8 002D96F8  7C 1F F2 14 */	add r0, r31, r30
/* 802DC7BC 002D96FC  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_802DC7C0:
/* 802DC7C0 002D9700  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DC7C4 002D9704  2C 00 00 00 */	cmpwi r0, 0
/* 802DC7C8 002D9708  40 80 00 0C */	bge lbl_802DC7D4
/* 802DC7CC 002D970C  38 00 00 00 */	li r0, 0
/* 802DC7D0 002D9710  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_802DC7D4:
/* 802DC7D4 002D9714  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC7D8 002D9718  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC7DC 002D971C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC7E0 002D9720  7D 89 03 A6 */	mtctr r12
/* 802DC7E4 002D9724  4E 80 04 21 */	bctrl 
/* 802DC7E8 002D9728  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DC7EC 002D972C  7C 00 18 00 */	cmpw r0, r3
/* 802DC7F0 002D9730  40 81 00 1C */	ble lbl_802DC80C
/* 802DC7F4 002D9734  80 7D 00 08 */	lwz r3, 8(r29)
/* 802DC7F8 002D9738  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC7FC 002D973C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC800 002D9740  7D 89 03 A6 */	mtctr r12
/* 802DC804 002D9744  4E 80 04 21 */	bctrl 
/* 802DC808 002D9748  90 7D 00 0C */	stw r3, 0xc(r29)
lbl_802DC80C:
/* 802DC80C 002D974C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DC810 002D9750  7C 7F 00 50 */	subf r3, r31, r0
/* 802DC814 002D9754  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC818 002D9758  48 08 5A 11 */	bl _restgpr_29
/* 802DC81C 002D975C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC820 002D9760  7C 08 03 A6 */	mtlr r0
/* 802DC824 002D9764  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC828 002D9768  4E 80 00 20 */	blr 
/* 802DC82C 002D976C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC830 002D9770  7C 08 02 A6 */	mflr r0
/* 802DC834 002D9774  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC838 002D9778  80 63 00 08 */	lwz r3, 8(r3)
/* 802DC83C 002D977C  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC840 002D9780  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC844 002D9784  7D 89 03 A6 */	mtctr r12
/* 802DC848 002D9788  4E 80 04 21 */	bctrl 
/* 802DC84C 002D978C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC850 002D9790  7C 08 03 A6 */	mtlr r0
/* 802DC854 002D9794  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC858 002D9798  4E 80 00 20 */	blr 
/* 802DC85C 002D979C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802DC860 002D97A0  4E 80 00 20 */	blr 

