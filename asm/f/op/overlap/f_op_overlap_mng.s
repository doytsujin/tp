.include "macros.inc"

.section .text, "ax" # 8001e484


.global fopOvlpM_SceneIsStop
fopOvlpM_SceneIsStop:
/* 8001E484 0001B3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E488 0001B3C8  7C 08 02 A6 */	mflr r0
/* 8001E48C 0001B3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E490 0001B3D0  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E494 0001B3D4  28 03 00 00 */	cmplwi r3, 0
/* 8001E498 0001B3D8  41 82 00 18 */	beq lbl_8001E4B0
/* 8001E49C 0001B3DC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8001E4A0 0001B3E0  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8001E4A4 0001B3E4  48 00 2E B5 */	bl fpcEx_SearchByID
/* 8001E4A8 0001B3E8  48 00 20 A1 */	bl fopScnPause_Enable
/* 8001E4AC 0001B3EC  48 00 00 08 */	b lbl_8001E4B4
lbl_8001E4B0:
/* 8001E4B0 0001B3F0  38 60 00 00 */	li r3, 0
lbl_8001E4B4:
/* 8001E4B4 0001B3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E4B8 0001B3F8  7C 08 03 A6 */	mtlr r0
/* 8001E4BC 0001B3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E4C0 0001B400  4E 80 00 20 */	blr 

.global fopOvlpM_SceneIsStart
fopOvlpM_SceneIsStart:
/* 8001E4C4 0001B404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E4C8 0001B408  7C 08 02 A6 */	mflr r0
/* 8001E4CC 0001B40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E4D0 0001B410  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E4D4 0001B414  28 03 00 00 */	cmplwi r3, 0
/* 8001E4D8 0001B418  41 82 00 18 */	beq lbl_8001E4F0
/* 8001E4DC 0001B41C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8001E4E0 0001B420  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8001E4E4 0001B424  48 00 2E 75 */	bl fpcEx_SearchByID
/* 8001E4E8 0001B428  48 00 20 AD */	bl fopScnPause_Disable
/* 8001E4EC 0001B42C  48 00 00 08 */	b lbl_8001E4F4
lbl_8001E4F0:
/* 8001E4F0 0001B430  38 60 00 00 */	li r3, 0
lbl_8001E4F4:
/* 8001E4F4 0001B434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E4F8 0001B438  7C 08 03 A6 */	mtlr r0
/* 8001E4FC 0001B43C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E500 0001B440  4E 80 00 20 */	blr 

.global fopOvlpM_IsOutReq
fopOvlpM_IsOutReq:
/* 8001E504 0001B444  88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 8001E508 0001B448  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8001E50C 0001B44C  20 00 00 02 */	subfic r0, r0, 2
/* 8001E510 0001B450  7C 00 00 34 */	cntlzw r0, r0
/* 8001E514 0001B454  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8001E518 0001B458  4E 80 00 20 */	blr 

.global fopOvlpM_Done
fopOvlpM_Done:
/* 8001E51C 0001B45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E520 0001B460  7C 08 02 A6 */	mflr r0
/* 8001E524 0001B464  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E528 0001B468  38 63 00 C4 */	addi r3, r3, 0xc4
/* 8001E52C 0001B46C  48 24 82 D5 */	bl cReq_Done
/* 8001E530 0001B470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E534 0001B474  7C 08 03 A6 */	mtlr r0
/* 8001E538 0001B478  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E53C 0001B47C  4E 80 00 20 */	blr 

.global fopOvlpM_ToldAboutID
fopOvlpM_ToldAboutID:
/* 8001E540 0001B480  80 8D 80 30 */	lwz r4, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E544 0001B484  28 04 00 00 */	cmplwi r4, 0
/* 8001E548 0001B488  4D 82 00 20 */	beqlr 
/* 8001E54C 0001B48C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8001E550 0001B490  90 64 00 C8 */	stw r3, 0xc8(r4)
/* 8001E554 0001B494  4E 80 00 20 */	blr 

.global fopOvlpM_IsPeek
fopOvlpM_IsPeek:
/* 8001E558 0001B498  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E55C 0001B49C  28 03 00 00 */	cmplwi r3, 0
/* 8001E560 0001B4A0  41 82 00 0C */	beq lbl_8001E56C
/* 8001E564 0001B4A4  80 63 00 08 */	lwz r3, 8(r3)
/* 8001E568 0001B4A8  4E 80 00 20 */	blr 
lbl_8001E56C:
/* 8001E56C 0001B4AC  38 60 00 00 */	li r3, 0
/* 8001E570 0001B4B0  4E 80 00 20 */	blr 

.global fopOvlpM_IsDone
fopOvlpM_IsDone:
/* 8001E574 0001B4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E578 0001B4B8  7C 08 02 A6 */	mflr r0
/* 8001E57C 0001B4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E580 0001B4C0  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E584 0001B4C4  28 03 00 00 */	cmplwi r3, 0
/* 8001E588 0001B4C8  41 82 00 0C */	beq lbl_8001E594
/* 8001E58C 0001B4CC  48 24 82 49 */	bl cReq_Is_Done
/* 8001E590 0001B4D0  48 00 00 08 */	b lbl_8001E598
lbl_8001E594:
/* 8001E594 0001B4D4  38 60 00 00 */	li r3, 0
lbl_8001E598:
/* 8001E598 0001B4D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E59C 0001B4DC  7C 08 03 A6 */	mtlr r0
/* 8001E5A0 0001B4E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E5A4 0001B4E4  4E 80 00 20 */	blr 

.global fopOvlpM_IsDoingReq
fopOvlpM_IsDoingReq:
/* 8001E5A8 0001B4E8  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E5AC 0001B4EC  28 03 00 00 */	cmplwi r3, 0
/* 8001E5B0 0001B4F0  41 82 00 18 */	beq lbl_8001E5C8
/* 8001E5B4 0001B4F4  A0 03 00 04 */	lhz r0, 4(r3)
/* 8001E5B8 0001B4F8  28 00 00 01 */	cmplwi r0, 1
/* 8001E5BC 0001B4FC  40 82 00 0C */	bne lbl_8001E5C8
/* 8001E5C0 0001B500  38 60 00 01 */	li r3, 1
/* 8001E5C4 0001B504  4E 80 00 20 */	blr 
lbl_8001E5C8:
/* 8001E5C8 0001B508  38 60 00 00 */	li r3, 0
/* 8001E5CC 0001B50C  4E 80 00 20 */	blr 

.global fopOvlpM_ClearOfReq
fopOvlpM_ClearOfReq:
/* 8001E5D0 0001B510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E5D4 0001B514  7C 08 02 A6 */	mflr r0
/* 8001E5D8 0001B518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E5DC 0001B51C  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E5E0 0001B520  28 03 00 00 */	cmplwi r3, 0
/* 8001E5E4 0001B524  41 82 00 0C */	beq lbl_8001E5F0
/* 8001E5E8 0001B528  48 00 04 F1 */	bl fopOvlpReq_OverlapClr
/* 8001E5EC 0001B52C  48 00 00 08 */	b lbl_8001E5F4
lbl_8001E5F0:
/* 8001E5F0 0001B530  38 60 00 00 */	li r3, 0
lbl_8001E5F4:
/* 8001E5F4 0001B534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E5F8 0001B538  7C 08 03 A6 */	mtlr r0
/* 8001E5FC 0001B53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E600 0001B540  4E 80 00 20 */	blr 

.global fopOvlpM_Request
fopOvlpM_Request:
/* 8001E604 0001B544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E608 0001B548  7C 08 02 A6 */	mflr r0
/* 8001E60C 0001B54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E610 0001B550  7C 66 1B 78 */	mr r6, r3
/* 8001E614 0001B554  7C 85 23 78 */	mr r5, r4
/* 8001E618 0001B558  80 0D 80 30 */	lwz r0, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E61C 0001B55C  28 00 00 00 */	cmplwi r0, 0
/* 8001E620 0001B560  40 82 00 1C */	bne lbl_8001E63C
/* 8001E624 0001B564  3C 60 80 3F */	lis r3, lbl_803F1DE8@ha
/* 8001E628 0001B568  38 63 1D E8 */	addi r3, r3, lbl_803F1DE8@l
/* 8001E62C 0001B56C  7C C4 33 78 */	mr r4, r6
/* 8001E630 0001B570  48 00 03 25 */	bl fopOvlpReq_Request
/* 8001E634 0001B574  90 6D 80 30 */	stw r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E638 0001B578  48 00 00 08 */	b lbl_8001E640
lbl_8001E63C:
/* 8001E63C 0001B57C  38 60 00 00 */	li r3, 0
lbl_8001E640:
/* 8001E640 0001B580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E644 0001B584  7C 08 03 A6 */	mtlr r0
/* 8001E648 0001B588  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E64C 0001B58C  4E 80 00 20 */	blr 

.global fopOvlpM_Management
fopOvlpM_Management:
/* 8001E650 0001B590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E654 0001B594  7C 08 02 A6 */	mflr r0
/* 8001E658 0001B598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E65C 0001B59C  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E660 0001B5A0  28 03 00 00 */	cmplwi r3, 0
/* 8001E664 0001B5A4  41 82 00 24 */	beq lbl_8001E688
/* 8001E668 0001B5A8  48 00 03 89 */	bl fopOvlpReq_Handler
/* 8001E66C 0001B5AC  2C 03 00 06 */	cmpwi r3, 6
/* 8001E670 0001B5B0  40 80 00 18 */	bge lbl_8001E688
/* 8001E674 0001B5B4  2C 03 00 03 */	cmpwi r3, 3
/* 8001E678 0001B5B8  40 80 00 08 */	bge lbl_8001E680
/* 8001E67C 0001B5BC  48 00 00 0C */	b lbl_8001E688
lbl_8001E680:
/* 8001E680 0001B5C0  38 00 00 00 */	li r0, 0
/* 8001E684 0001B5C4  90 0D 80 30 */	stw r0, lbl_804505B0-_SDA_BASE_(r13)
lbl_8001E688:
/* 8001E688 0001B5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E68C 0001B5CC  7C 08 03 A6 */	mtlr r0
/* 8001E690 0001B5D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E694 0001B5D4  4E 80 00 20 */	blr 

.global fopOvlpM_Cancel
fopOvlpM_Cancel:
/* 8001E698 0001B5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E69C 0001B5DC  7C 08 02 A6 */	mflr r0
/* 8001E6A0 0001B5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E6A4 0001B5E4  80 6D 80 30 */	lwz r3, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E6A8 0001B5E8  28 03 00 00 */	cmplwi r3, 0
/* 8001E6AC 0001B5EC  40 82 00 0C */	bne lbl_8001E6B8
/* 8001E6B0 0001B5F0  38 60 00 01 */	li r3, 1
/* 8001E6B4 0001B5F4  48 00 00 24 */	b lbl_8001E6D8
lbl_8001E6B8:
/* 8001E6B8 0001B5F8  48 00 03 D1 */	bl fopOvlpReq_Cancel
/* 8001E6BC 0001B5FC  2C 03 00 01 */	cmpwi r3, 1
/* 8001E6C0 0001B600  40 82 00 14 */	bne lbl_8001E6D4
/* 8001E6C4 0001B604  38 00 00 00 */	li r0, 0
/* 8001E6C8 0001B608  90 0D 80 30 */	stw r0, lbl_804505B0-_SDA_BASE_(r13)
/* 8001E6CC 0001B60C  38 60 00 01 */	li r3, 1
/* 8001E6D0 0001B610  48 00 00 08 */	b lbl_8001E6D8
lbl_8001E6D4:
/* 8001E6D4 0001B614  38 60 00 00 */	li r3, 0
lbl_8001E6D8:
/* 8001E6D8 0001B618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E6DC 0001B61C  7C 08 03 A6 */	mtlr r0
/* 8001E6E0 0001B620  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E6E4 0001B624  4E 80 00 20 */	blr 

.global fopOvlpM_Init
fopOvlpM_Init:
/* 8001E6E8 0001B628  4E 80 00 20 */	blr 

