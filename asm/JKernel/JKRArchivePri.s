.include "macros.inc"

.section .text, "ax" # 802d6294


.global JKRArchive
JKRArchive:
/* 802D6294 002D31D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6298 002D31D8  7C 08 02 A6 */	mflr r0
/* 802D629C 002D31DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D62A0 002D31E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D62A4 002D31E4  48 08 BF 39 */	bl _savegpr_29
/* 802D62A8 002D31E8  7C 7D 1B 78 */	mr r29, r3
/* 802D62AC 002D31EC  7C 9E 23 78 */	mr r30, r4
/* 802D62B0 002D31F0  7C BF 2B 78 */	mr r31, r5
/* 802D62B4 002D31F4  4B FF DE 3D */	bl JKRFileLoader
/* 802D62B8 002D31F8  3C 60 80 3D */	lis r3, lbl_803CC288@ha
/* 802D62BC 002D31FC  38 03 C2 88 */	addi r0, r3, lbl_803CC288@l
/* 802D62C0 002D3200  90 1D 00 00 */	stw r0, 0(r29)
/* 802D62C4 002D3204  38 00 00 00 */	li r0, 0
/* 802D62C8 002D3208  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D62CC 002D320C  9B FD 00 3C */	stb r31, 0x3c(r29)
/* 802D62D0 002D3210  38 00 00 01 */	li r0, 1
/* 802D62D4 002D3214  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802D62D8 002D3218  90 1D 00 58 */	stw r0, 0x58(r29)
/* 802D62DC 002D321C  7F A3 EB 78 */	mr r3, r29
/* 802D62E0 002D3220  4B FF 85 5D */	bl JKRHeap_NS_findFromRoot
/* 802D62E4 002D3224  90 7D 00 38 */	stw r3, 0x38(r29)
/* 802D62E8 002D3228  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802D62EC 002D322C  28 00 00 00 */	cmplwi r0, 0
/* 802D62F0 002D3230  40 82 00 0C */	bne lbl_802D62FC
/* 802D62F4 002D3234  80 0D 8D F4 */	lwz r0, lbl_80451374-_SDA_BASE_(r13)
/* 802D62F8 002D3238  90 1D 00 38 */	stw r0, 0x38(r29)
lbl_802D62FC:
/* 802D62FC 002D323C  93 DD 00 40 */	stw r30, 0x40(r29)
/* 802D6300 002D3240  80 0D 8E 98 */	lwz r0, lbl_80451418-_SDA_BASE_(r13)
/* 802D6304 002D3244  28 00 00 00 */	cmplwi r0, 0
/* 802D6308 002D3248  40 82 00 10 */	bne lbl_802D6318
/* 802D630C 002D324C  93 AD 8E 98 */	stw r29, lbl_80451418-_SDA_BASE_(r13)
/* 802D6310 002D3250  38 00 00 00 */	li r0, 0
/* 802D6314 002D3254  90 0D 8E A0 */	stw r0, lbl_80451420-_SDA_BASE_(r13)
lbl_802D6318:
/* 802D6318 002D3258  7F A3 EB 78 */	mr r3, r29
/* 802D631C 002D325C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6320 002D3260  48 08 BF 09 */	bl _restgpr_29
/* 802D6324 002D3264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6328 002D3268  7C 08 03 A6 */	mtlr r0
/* 802D632C 002D326C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6330 002D3270  4E 80 00 20 */	blr 

.global JKRArchive_NS_dtor
JKRArchive_NS_dtor:
/* 802D6334 002D3274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6338 002D3278  7C 08 02 A6 */	mflr r0
/* 802D633C 002D327C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6340 002D3280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6344 002D3284  93 C1 00 08 */	stw r30, 8(r1)
/* 802D6348 002D3288  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D634C 002D328C  7C 9F 23 78 */	mr r31, r4
/* 802D6350 002D3290  41 82 00 28 */	beq lbl_802D6378
/* 802D6354 002D3294  3C 80 80 3D */	lis r4, lbl_803CC288@ha
/* 802D6358 002D3298  38 04 C2 88 */	addi r0, r4, lbl_803CC288@l
/* 802D635C 002D329C  90 1E 00 00 */	stw r0, 0(r30)
/* 802D6360 002D32A0  38 80 00 00 */	li r4, 0
/* 802D6364 002D32A4  4B FF DD E5 */	bl JKRFileLoader_NS_dtor
/* 802D6368 002D32A8  7F E0 07 35 */	extsh. r0, r31
/* 802D636C 002D32AC  40 81 00 0C */	ble lbl_802D6378
/* 802D6370 002D32B0  7F C3 F3 78 */	mr r3, r30
/* 802D6374 002D32B4  4B FF 89 C9 */	bl __dl
lbl_802D6378:
/* 802D6378 002D32B8  7F C3 F3 78 */	mr r3, r30
/* 802D637C 002D32BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6380 002D32C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D6384 002D32C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6388 002D32C8  7C 08 03 A6 */	mtlr r0
/* 802D638C 002D32CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6390 002D32D0  4E 80 00 20 */	blr 

.global JKRArchive_NS_isSameName
JKRArchive_NS_isSameName:
/* 802D6394 002D32D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6398 002D32D8  7C 08 02 A6 */	mflr r0
/* 802D639C 002D32DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D63A0 002D32E0  A0 E4 00 00 */	lhz r7, 0(r4)
/* 802D63A4 002D32E4  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 802D63A8 002D32E8  7C 07 00 40 */	cmplw r7, r0
/* 802D63AC 002D32EC  41 82 00 0C */	beq lbl_802D63B8
/* 802D63B0 002D32F0  38 60 00 00 */	li r3, 0
/* 802D63B4 002D32F4  48 00 00 1C */	b lbl_802D63D0
lbl_802D63B8:
/* 802D63B8 002D32F8  80 03 00 54 */	lwz r0, 0x54(r3)
/* 802D63BC 002D32FC  7C 60 2A 14 */	add r3, r0, r5
/* 802D63C0 002D3300  38 84 00 04 */	addi r4, r4, 4
/* 802D63C4 002D3304  48 09 25 D1 */	bl func_80368994
/* 802D63C8 002D3308  7C 60 00 34 */	cntlzw r0, r3
/* 802D63CC 002D330C  54 03 D9 7E */	srwi r3, r0, 5
lbl_802D63D0:
/* 802D63D0 002D3310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D63D4 002D3314  7C 08 03 A6 */	mtlr r0
/* 802D63D8 002D3318  38 21 00 10 */	addi r1, r1, 0x10
/* 802D63DC 002D331C  4E 80 00 20 */	blr 

.global JKRArchive_NS_findResType
JKRArchive_NS_findResType:
/* 802D63E0 002D3320  80 A3 00 48 */	lwz r5, 0x48(r3)
/* 802D63E4 002D3324  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802D63E8 002D3328  80 03 00 00 */	lwz r0, 0(r3)
/* 802D63EC 002D332C  7C 09 03 A6 */	mtctr r0
/* 802D63F0 002D3330  28 00 00 00 */	cmplwi r0, 0
/* 802D63F4 002D3334  40 81 00 20 */	ble lbl_802D6414
lbl_802D63F8:
/* 802D63F8 002D3338  80 05 00 00 */	lwz r0, 0(r5)
/* 802D63FC 002D333C  7C 00 20 40 */	cmplw r0, r4
/* 802D6400 002D3340  40 82 00 0C */	bne lbl_802D640C
/* 802D6404 002D3344  7C A3 2B 78 */	mr r3, r5
/* 802D6408 002D3348  4E 80 00 20 */	blr 
lbl_802D640C:
/* 802D640C 002D334C  38 A5 00 10 */	addi r5, r5, 0x10
/* 802D6410 002D3350  42 00 FF E8 */	bdnz lbl_802D63F8
lbl_802D6414:
/* 802D6414 002D3354  38 60 00 00 */	li r3, 0
/* 802D6418 002D3358  4E 80 00 20 */	blr 

.global JKRArchive_NS_findDirectory
JKRArchive_NS_findDirectory:
/* 802D641C 002D335C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802D6420 002D3360  7C 08 02 A6 */	mflr r0
/* 802D6424 002D3364  90 01 01 34 */	stw r0, 0x134(r1)
/* 802D6428 002D3368  39 61 01 30 */	addi r11, r1, 0x130
/* 802D642C 002D336C  48 08 BD A9 */	bl _savegpr_27
/* 802D6430 002D3370  7C 7B 1B 78 */	mr r27, r3
/* 802D6434 002D3374  7C BD 2B 78 */	mr r29, r5
/* 802D6438 002D3378  28 04 00 00 */	cmplwi r4, 0
/* 802D643C 002D337C  40 82 00 14 */	bne lbl_802D6450
/* 802D6440 002D3380  80 7B 00 48 */	lwz r3, 0x48(r27)
/* 802D6444 002D3384  57 A0 20 36 */	slwi r0, r29, 4
/* 802D6448 002D3388  7C 63 02 14 */	add r3, r3, r0
/* 802D644C 002D338C  48 00 00 90 */	b lbl_802D64DC
lbl_802D6450:
/* 802D6450 002D3390  38 61 00 08 */	addi r3, r1, 8
/* 802D6454 002D3394  38 A0 00 2F */	li r5, 0x2f
/* 802D6458 002D3398  48 00 04 2D */	bl JKRArchive_NS_CArcName_NS_store_X1_
/* 802D645C 002D339C  7C 7C 1B 78 */	mr r28, r3
/* 802D6460 002D33A0  80 7B 00 48 */	lwz r3, 0x48(r27)
/* 802D6464 002D33A4  57 A0 20 36 */	slwi r0, r29, 4
/* 802D6468 002D33A8  7F E3 02 14 */	add r31, r3, r0
/* 802D646C 002D33AC  80 7B 00 4C */	lwz r3, 0x4c(r27)
/* 802D6470 002D33B0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802D6474 002D33B4  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802D6478 002D33B8  7F C3 02 14 */	add r30, r3, r0
/* 802D647C 002D33BC  3B A0 00 00 */	li r29, 0
/* 802D6480 002D33C0  48 00 00 4C */	b lbl_802D64CC
lbl_802D6484:
/* 802D6484 002D33C4  7F 63 DB 78 */	mr r3, r27
/* 802D6488 002D33C8  38 81 00 08 */	addi r4, r1, 8
/* 802D648C 002D33CC  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6490 002D33D0  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D6494 002D33D4  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D6498 002D33D8  4B FF FE FD */	bl JKRArchive_NS_isSameName
/* 802D649C 002D33DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D64A0 002D33E0  41 82 00 24 */	beq lbl_802D64C4
/* 802D64A4 002D33E4  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D64A8 002D33E8  54 00 47 BD */	rlwinm. r0, r0, 8, 0x1e, 0x1e
/* 802D64AC 002D33EC  41 82 00 2C */	beq lbl_802D64D8
/* 802D64B0 002D33F0  7F 63 DB 78 */	mr r3, r27
/* 802D64B4 002D33F4  7F 84 E3 78 */	mr r4, r28
/* 802D64B8 002D33F8  80 BE 00 08 */	lwz r5, 8(r30)
/* 802D64BC 002D33FC  4B FF FF 61 */	bl JKRArchive_NS_findDirectory
/* 802D64C0 002D3400  48 00 00 1C */	b lbl_802D64DC
lbl_802D64C4:
/* 802D64C4 002D3404  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D64C8 002D3408  3B BD 00 01 */	addi r29, r29, 1
lbl_802D64CC:
/* 802D64CC 002D340C  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D64D0 002D3410  7C 1D 00 00 */	cmpw r29, r0
/* 802D64D4 002D3414  41 80 FF B0 */	blt lbl_802D6484
lbl_802D64D8:
/* 802D64D8 002D3418  38 60 00 00 */	li r3, 0
lbl_802D64DC:
/* 802D64DC 002D341C  39 61 01 30 */	addi r11, r1, 0x130
/* 802D64E0 002D3420  48 08 BD 41 */	bl _restgpr_27
/* 802D64E4 002D3424  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802D64E8 002D3428  7C 08 03 A6 */	mtlr r0
/* 802D64EC 002D342C  38 21 01 30 */	addi r1, r1, 0x130
/* 802D64F0 002D3430  4E 80 00 20 */	blr 

.global JKRArchive_NS_findTypeResource
JKRArchive_NS_findTypeResource:
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
/* 802D651C 002D345C  48 00 02 D9 */	bl JKRArchive_NS_CArcName_NS_store
/* 802D6520 002D3460  7F 83 E3 78 */	mr r3, r28
/* 802D6524 002D3464  7F A4 EB 78 */	mr r4, r29
/* 802D6528 002D3468  4B FF FE B9 */	bl JKRArchive_NS_findResType
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
/* 802D6560 002D34A0  4B FF FE 35 */	bl JKRArchive_NS_isSameName
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

.global JKRArchive_NS_findFsResource
JKRArchive_NS_findFsResource:
/* 802D65A4 002D34E4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802D65A8 002D34E8  7C 08 02 A6 */	mflr r0
/* 802D65AC 002D34EC  90 01 01 34 */	stw r0, 0x134(r1)
/* 802D65B0 002D34F0  39 61 01 30 */	addi r11, r1, 0x130
/* 802D65B4 002D34F4  48 08 BC 21 */	bl _savegpr_27
/* 802D65B8 002D34F8  7C 7B 1B 78 */	mr r27, r3
/* 802D65BC 002D34FC  7C BD 2B 78 */	mr r29, r5
/* 802D65C0 002D3500  28 04 00 00 */	cmplwi r4, 0
/* 802D65C4 002D3504  41 82 00 A4 */	beq lbl_802D6668
/* 802D65C8 002D3508  38 61 00 08 */	addi r3, r1, 8
/* 802D65CC 002D350C  38 A0 00 2F */	li r5, 0x2f
/* 802D65D0 002D3510  48 00 02 B5 */	bl JKRArchive_NS_CArcName_NS_store_X1_
/* 802D65D4 002D3514  7C 7C 1B 78 */	mr r28, r3
/* 802D65D8 002D3518  80 7B 00 48 */	lwz r3, 0x48(r27)
/* 802D65DC 002D351C  57 A0 20 36 */	slwi r0, r29, 4
/* 802D65E0 002D3520  7F E3 02 14 */	add r31, r3, r0
/* 802D65E4 002D3524  80 7B 00 4C */	lwz r3, 0x4c(r27)
/* 802D65E8 002D3528  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802D65EC 002D352C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802D65F0 002D3530  7F C3 02 14 */	add r30, r3, r0
/* 802D65F4 002D3534  3B A0 00 00 */	li r29, 0
/* 802D65F8 002D3538  48 00 00 64 */	b lbl_802D665C
lbl_802D65FC:
/* 802D65FC 002D353C  7F 63 DB 78 */	mr r3, r27
/* 802D6600 002D3540  38 81 00 08 */	addi r4, r1, 8
/* 802D6604 002D3544  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6608 002D3548  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D660C 002D354C  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D6610 002D3550  4B FF FD 85 */	bl JKRArchive_NS_isSameName
/* 802D6614 002D3554  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6618 002D3558  41 82 00 3C */	beq lbl_802D6654
/* 802D661C 002D355C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6620 002D3560  54 00 47 BD */	rlwinm. r0, r0, 8, 0x1e, 0x1e
/* 802D6624 002D3564  41 82 00 18 */	beq lbl_802D663C
/* 802D6628 002D3568  7F 63 DB 78 */	mr r3, r27
/* 802D662C 002D356C  7F 84 E3 78 */	mr r4, r28
/* 802D6630 002D3570  80 BE 00 08 */	lwz r5, 8(r30)
/* 802D6634 002D3574  4B FF FF 71 */	bl JKRArchive_NS_findFsResource
/* 802D6638 002D3578  48 00 00 34 */	b lbl_802D666C
lbl_802D663C:
/* 802D663C 002D357C  28 1C 00 00 */	cmplwi r28, 0
/* 802D6640 002D3580  40 82 00 0C */	bne lbl_802D664C
/* 802D6644 002D3584  7F C3 F3 78 */	mr r3, r30
/* 802D6648 002D3588  48 00 00 24 */	b lbl_802D666C
lbl_802D664C:
/* 802D664C 002D358C  38 60 00 00 */	li r3, 0
/* 802D6650 002D3590  48 00 00 1C */	b lbl_802D666C
lbl_802D6654:
/* 802D6654 002D3594  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D6658 002D3598  3B BD 00 01 */	addi r29, r29, 1
lbl_802D665C:
/* 802D665C 002D359C  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D6660 002D35A0  7C 1D 00 00 */	cmpw r29, r0
/* 802D6664 002D35A4  41 80 FF 98 */	blt lbl_802D65FC
lbl_802D6668:
/* 802D6668 002D35A8  38 60 00 00 */	li r3, 0
lbl_802D666C:
/* 802D666C 002D35AC  39 61 01 30 */	addi r11, r1, 0x130
/* 802D6670 002D35B0  48 08 BB B1 */	bl _restgpr_27
/* 802D6674 002D35B4  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802D6678 002D35B8  7C 08 03 A6 */	mtlr r0
/* 802D667C 002D35BC  38 21 01 30 */	addi r1, r1, 0x130
/* 802D6680 002D35C0  4E 80 00 20 */	blr 

.global JKRArchive_NS_findIdxResource
JKRArchive_NS_findIdxResource:
/* 802D6684 002D35C4  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 802D6688 002D35C8  80 05 00 08 */	lwz r0, 8(r5)
/* 802D668C 002D35CC  7C 04 00 40 */	cmplw r4, r0
/* 802D6690 002D35D0  40 80 00 14 */	bge lbl_802D66A4
/* 802D6694 002D35D4  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 802D6698 002D35D8  1C 04 00 14 */	mulli r0, r4, 0x14
/* 802D669C 002D35DC  7C 63 02 14 */	add r3, r3, r0
/* 802D66A0 002D35E0  4E 80 00 20 */	blr 
lbl_802D66A4:
/* 802D66A4 002D35E4  38 60 00 00 */	li r3, 0
/* 802D66A8 002D35E8  4E 80 00 20 */	blr 

.global JKRArchive_NS_findNameResource
JKRArchive_NS_findNameResource:
/* 802D66AC 002D35EC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D66B0 002D35F0  7C 08 02 A6 */	mflr r0
/* 802D66B4 002D35F4  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D66B8 002D35F8  39 61 01 20 */	addi r11, r1, 0x120
/* 802D66BC 002D35FC  48 08 BB 1D */	bl _savegpr_28
/* 802D66C0 002D3600  7C 7C 1B 78 */	mr r28, r3
/* 802D66C4 002D3604  83 C3 00 4C */	lwz r30, 0x4c(r3)
/* 802D66C8 002D3608  38 61 00 08 */	addi r3, r1, 8
/* 802D66CC 002D360C  48 00 01 29 */	bl JKRArchive_NS_CArcName_NS_store
/* 802D66D0 002D3610  3B A0 00 00 */	li r29, 0
/* 802D66D4 002D3614  83 FC 00 44 */	lwz r31, 0x44(r28)
/* 802D66D8 002D3618  48 00 00 34 */	b lbl_802D670C
lbl_802D66DC:
/* 802D66DC 002D361C  7F 83 E3 78 */	mr r3, r28
/* 802D66E0 002D3620  38 81 00 08 */	addi r4, r1, 8
/* 802D66E4 002D3624  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D66E8 002D3628  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D66EC 002D362C  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D66F0 002D3630  4B FF FC A5 */	bl JKRArchive_NS_isSameName
/* 802D66F4 002D3634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D66F8 002D3638  41 82 00 0C */	beq lbl_802D6704
/* 802D66FC 002D363C  7F C3 F3 78 */	mr r3, r30
/* 802D6700 002D3640  48 00 00 1C */	b lbl_802D671C
lbl_802D6704:
/* 802D6704 002D3644  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D6708 002D3648  3B BD 00 01 */	addi r29, r29, 1
lbl_802D670C:
/* 802D670C 002D364C  80 1F 00 08 */	lwz r0, 8(r31)
/* 802D6710 002D3650  7C 1D 00 40 */	cmplw r29, r0
/* 802D6714 002D3654  41 80 FF C8 */	blt lbl_802D66DC
/* 802D6718 002D3658  38 60 00 00 */	li r3, 0
lbl_802D671C:
/* 802D671C 002D365C  39 61 01 20 */	addi r11, r1, 0x120
/* 802D6720 002D3660  48 08 BB 05 */	bl _restgpr_28
/* 802D6724 002D3664  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D6728 002D3668  7C 08 03 A6 */	mtlr r0
/* 802D672C 002D366C  38 21 01 20 */	addi r1, r1, 0x120
/* 802D6730 002D3670  4E 80 00 20 */	blr 

.global JKRArchive_NS_findPtrResource
JKRArchive_NS_findPtrResource:
/* 802D6734 002D3674  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 802D6738 002D3678  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802D673C 002D367C  80 03 00 08 */	lwz r0, 8(r3)
/* 802D6740 002D3680  7C 09 03 A6 */	mtctr r0
/* 802D6744 002D3684  28 00 00 00 */	cmplwi r0, 0
/* 802D6748 002D3688  40 81 00 20 */	ble lbl_802D6768
lbl_802D674C:
/* 802D674C 002D368C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 802D6750 002D3690  7C 00 20 40 */	cmplw r0, r4
/* 802D6754 002D3694  40 82 00 0C */	bne lbl_802D6760
/* 802D6758 002D3698  7C A3 2B 78 */	mr r3, r5
/* 802D675C 002D369C  4E 80 00 20 */	blr 
lbl_802D6760:
/* 802D6760 002D36A0  38 A5 00 14 */	addi r5, r5, 0x14
/* 802D6764 002D36A4  42 00 FF E8 */	bdnz lbl_802D674C
lbl_802D6768:
/* 802D6768 002D36A8  38 60 00 00 */	li r3, 0
/* 802D676C 002D36AC  4E 80 00 20 */	blr 

.global JKRArchive_NS_findIdResource
JKRArchive_NS_findIdResource:
/* 802D6770 002D36B0  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 802D6774 002D36B4  28 06 FF FF */	cmplwi r6, 0xffff
/* 802D6778 002D36B8  41 82 00 74 */	beq lbl_802D67EC
/* 802D677C 002D36BC  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 802D6780 002D36C0  80 E5 00 08 */	lwz r7, 8(r5)
/* 802D6784 002D36C4  7C 06 38 40 */	cmplw r6, r7
/* 802D6788 002D36C8  40 80 00 30 */	bge lbl_802D67B8
/* 802D678C 002D36CC  80 A3 00 4C */	lwz r5, 0x4c(r3)
/* 802D6790 002D36D0  1C 06 00 14 */	mulli r0, r6, 0x14
/* 802D6794 002D36D4  7C A5 02 14 */	add r5, r5, r0
/* 802D6798 002D36D8  A0 05 00 00 */	lhz r0, 0(r5)
/* 802D679C 002D36DC  7C 00 30 40 */	cmplw r0, r6
/* 802D67A0 002D36E0  40 82 00 18 */	bne lbl_802D67B8
/* 802D67A4 002D36E4  80 05 00 04 */	lwz r0, 4(r5)
/* 802D67A8 002D36E8  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D67AC 002D36EC  41 82 00 0C */	beq lbl_802D67B8
/* 802D67B0 002D36F0  7C A3 2B 78 */	mr r3, r5
/* 802D67B4 002D36F4  4E 80 00 20 */	blr 
lbl_802D67B8:
/* 802D67B8 002D36F8  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 802D67BC 002D36FC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 802D67C0 002D3700  7C E9 03 A6 */	mtctr r7
/* 802D67C4 002D3704  28 07 00 00 */	cmplwi r7, 0
/* 802D67C8 002D3708  40 81 00 24 */	ble lbl_802D67EC
lbl_802D67CC:
/* 802D67CC 002D370C  A0 03 00 00 */	lhz r0, 0(r3)
/* 802D67D0 002D3710  7C 00 20 40 */	cmplw r0, r4
/* 802D67D4 002D3714  40 82 00 10 */	bne lbl_802D67E4
/* 802D67D8 002D3718  80 03 00 04 */	lwz r0, 4(r3)
/* 802D67DC 002D371C  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D67E0 002D3720  4C 82 00 20 */	bnelr 
lbl_802D67E4:
/* 802D67E4 002D3724  38 63 00 14 */	addi r3, r3, 0x14
/* 802D67E8 002D3728  42 00 FF E4 */	bdnz lbl_802D67CC
lbl_802D67EC:
/* 802D67EC 002D372C  38 60 00 00 */	li r3, 0
/* 802D67F0 002D3730  4E 80 00 20 */	blr 

.global JKRArchive_NS_CArcName_NS_store
JKRArchive_NS_CArcName_NS_store:
/* 802D67F4 002D3734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D67F8 002D3738  7C 08 02 A6 */	mflr r0
/* 802D67FC 002D373C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6800 002D3740  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6804 002D3744  48 08 B9 D9 */	bl _savegpr_29
/* 802D6808 002D3748  7C 7D 1B 78 */	mr r29, r3
/* 802D680C 002D374C  7C 9E 23 78 */	mr r30, r4
/* 802D6810 002D3750  38 00 00 00 */	li r0, 0
/* 802D6814 002D3754  B0 03 00 00 */	sth r0, 0(r3)
/* 802D6818 002D3758  3B E0 00 00 */	li r31, 0
/* 802D681C 002D375C  48 00 00 34 */	b lbl_802D6850
lbl_802D6820:
/* 802D6820 002D3760  7C 63 07 74 */	extsb r3, r3
/* 802D6824 002D3764  48 08 EC 4D */	bl func_80365470
/* 802D6828 002D3768  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802D682C 002D376C  1C 00 00 03 */	mulli r0, r0, 3
/* 802D6830 002D3770  7C 03 02 14 */	add r0, r3, r0
/* 802D6834 002D3774  B0 1D 00 00 */	sth r0, 0(r29)
/* 802D6838 002D3778  2C 1F 01 00 */	cmpwi r31, 0x100
/* 802D683C 002D377C  40 80 00 10 */	bge lbl_802D684C
/* 802D6840 002D3780  38 1F 00 04 */	addi r0, r31, 4
/* 802D6844 002D3784  7C 7D 01 AE */	stbx r3, r29, r0
/* 802D6848 002D3788  3B FF 00 01 */	addi r31, r31, 1
lbl_802D684C:
/* 802D684C 002D378C  3B DE 00 01 */	addi r30, r30, 1
lbl_802D6850:
/* 802D6850 002D3790  88 7E 00 00 */	lbz r3, 0(r30)
/* 802D6854 002D3794  7C 60 07 75 */	extsb. r0, r3
/* 802D6858 002D3798  40 82 FF C8 */	bne lbl_802D6820
/* 802D685C 002D379C  B3 FD 00 02 */	sth r31, 2(r29)
/* 802D6860 002D37A0  38 00 00 00 */	li r0, 0
/* 802D6864 002D37A4  7C 7D FA 14 */	add r3, r29, r31
/* 802D6868 002D37A8  98 03 00 04 */	stb r0, 4(r3)
/* 802D686C 002D37AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6870 002D37B0  48 08 B9 B9 */	bl _restgpr_29
/* 802D6874 002D37B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6878 002D37B8  7C 08 03 A6 */	mtlr r0
/* 802D687C 002D37BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6880 002D37C0  4E 80 00 20 */	blr 

.global JKRArchive_NS_CArcName_NS_store_X1_
JKRArchive_NS_CArcName_NS_store_X1_:
/* 802D6884 002D37C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6888 002D37C8  7C 08 02 A6 */	mflr r0
/* 802D688C 002D37CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6890 002D37D0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6894 002D37D4  48 08 B9 45 */	bl _savegpr_28
/* 802D6898 002D37D8  7C 7C 1B 78 */	mr r28, r3
/* 802D689C 002D37DC  7C 9D 23 78 */	mr r29, r4
/* 802D68A0 002D37E0  38 00 00 00 */	li r0, 0
/* 802D68A4 002D37E4  B0 03 00 00 */	sth r0, 0(r3)
/* 802D68A8 002D37E8  3B C0 00 00 */	li r30, 0
/* 802D68AC 002D37EC  7C BF 07 74 */	extsb r31, r5
/* 802D68B0 002D37F0  48 00 00 34 */	b lbl_802D68E4
lbl_802D68B4:
/* 802D68B4 002D37F4  7C 63 07 74 */	extsb r3, r3
/* 802D68B8 002D37F8  48 08 EB B9 */	bl func_80365470
/* 802D68BC 002D37FC  A0 1C 00 00 */	lhz r0, 0(r28)
/* 802D68C0 002D3800  1C 00 00 03 */	mulli r0, r0, 3
/* 802D68C4 002D3804  7C 03 02 14 */	add r0, r3, r0
/* 802D68C8 002D3808  B0 1C 00 00 */	sth r0, 0(r28)
/* 802D68CC 002D380C  2C 1E 01 00 */	cmpwi r30, 0x100
/* 802D68D0 002D3810  40 80 00 10 */	bge lbl_802D68E0
/* 802D68D4 002D3814  38 1E 00 04 */	addi r0, r30, 4
/* 802D68D8 002D3818  7C 7C 01 AE */	stbx r3, r28, r0
/* 802D68DC 002D381C  3B DE 00 01 */	addi r30, r30, 1
lbl_802D68E0:
/* 802D68E0 002D3820  3B BD 00 01 */	addi r29, r29, 1
lbl_802D68E4:
/* 802D68E4 002D3824  88 7D 00 00 */	lbz r3, 0(r29)
/* 802D68E8 002D3828  7C 60 07 75 */	extsb. r0, r3
/* 802D68EC 002D382C  41 82 00 10 */	beq lbl_802D68FC
/* 802D68F0 002D3830  7C 60 07 74 */	extsb r0, r3
/* 802D68F4 002D3834  7C 00 F8 00 */	cmpw r0, r31
/* 802D68F8 002D3838  40 82 FF BC */	bne lbl_802D68B4
lbl_802D68FC:
/* 802D68FC 002D383C  B3 DC 00 02 */	sth r30, 2(r28)
/* 802D6900 002D3840  38 00 00 00 */	li r0, 0
/* 802D6904 002D3844  7C 7C F2 14 */	add r3, r28, r30
/* 802D6908 002D3848  98 03 00 04 */	stb r0, 4(r3)
/* 802D690C 002D384C  88 1D 00 00 */	lbz r0, 0(r29)
/* 802D6910 002D3850  7C 00 07 75 */	extsb. r0, r0
/* 802D6914 002D3854  40 82 00 0C */	bne lbl_802D6920
/* 802D6918 002D3858  38 60 00 00 */	li r3, 0
/* 802D691C 002D385C  48 00 00 08 */	b lbl_802D6924
lbl_802D6920:
/* 802D6920 002D3860  38 7D 00 01 */	addi r3, r29, 1
lbl_802D6924:
/* 802D6924 002D3864  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6928 002D3868  48 08 B8 FD */	bl _restgpr_28
/* 802D692C 002D386C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6930 002D3870  7C 08 03 A6 */	mtlr r0
/* 802D6934 002D3874  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6938 002D3878  4E 80 00 20 */	blr 
/* 802D693C 002D387C  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 802D6940 002D3880  7C 80 20 50 */	subf r4, r0, r4
/* 802D6944 002D3884  38 00 00 14 */	li r0, 0x14
/* 802D6948 002D3888  7C C4 03 D6 */	divw r6, r4, r0
/* 802D694C 002D388C  80 83 00 50 */	lwz r4, 0x50(r3)
/* 802D6950 002D3890  28 04 00 00 */	cmplwi r4, 0
/* 802D6954 002D3894  4D 82 00 20 */	beqlr 
/* 802D6958 002D3898  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802D695C 002D389C  80 03 00 08 */	lwz r0, 8(r3)
/* 802D6960 002D38A0  7C 06 00 40 */	cmplw r6, r0
/* 802D6964 002D38A4  41 80 00 08 */	blt lbl_802D696C
/* 802D6968 002D38A8  4E 80 00 20 */	blr 
lbl_802D696C:
/* 802D696C 002D38AC  54 C0 10 3A */	slwi r0, r6, 2
/* 802D6970 002D38B0  7C A4 01 2E */	stwx r5, r4, r0
/* 802D6974 002D38B4  4E 80 00 20 */	blr 
/* 802D6978 002D38B8  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 802D697C 002D38BC  7C 80 20 50 */	subf r4, r0, r4
/* 802D6980 002D38C0  38 00 00 14 */	li r0, 0x14
/* 802D6984 002D38C4  7C A4 03 D6 */	divw r5, r4, r0
/* 802D6988 002D38C8  80 83 00 50 */	lwz r4, 0x50(r3)
/* 802D698C 002D38CC  28 04 00 00 */	cmplwi r4, 0
/* 802D6990 002D38D0  41 82 00 14 */	beq lbl_802D69A4
/* 802D6994 002D38D4  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802D6998 002D38D8  80 03 00 08 */	lwz r0, 8(r3)
/* 802D699C 002D38DC  7C 05 00 40 */	cmplw r5, r0
/* 802D69A0 002D38E0  41 80 00 0C */	blt lbl_802D69AC
lbl_802D69A4:
/* 802D69A4 002D38E4  38 60 00 00 */	li r3, 0
/* 802D69A8 002D38E8  4E 80 00 20 */	blr 
lbl_802D69AC:
/* 802D69AC 002D38EC  54 A0 10 3A */	slwi r0, r5, 2
/* 802D69B0 002D38F0  7C 64 00 2E */	lwzx r3, r4, r0
/* 802D69B4 002D38F4  4E 80 00 20 */	blr 

