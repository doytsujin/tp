/* 80032CC8 0002FC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032CCC 0002FC0C  7C 08 02 A6 */	mflr r0
/* 80032CD0 0002FC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032CD4 0002FC14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032CD8 0002FC18  7C 7F 1B 78 */	mr r31, r3
/* 80032CDC 0002FC1C  3C 80 80 38 */	lis r4, lbl_80379234@ha
/* 80032CE0 0002FC20  38 84 92 34 */	addi r4, r4, lbl_80379234@l
/* 80032CE4 0002FC24  38 84 00 01 */	addi r4, r4, 1
/* 80032CE8 0002FC28  48 33 5E 45 */	bl strcpy
/* 80032CEC 0002FC2C  38 00 00 01 */	li r0, 1
/* 80032CF0 0002FC30  98 1F 00 09 */	stb r0, 9(r31)
/* 80032CF4 0002FC34  38 60 00 00 */	li r3, 0
/* 80032CF8 0002FC38  98 7F 00 08 */	stb r3, 8(r31)
/* 80032CFC 0002FC3C  38 00 00 15 */	li r0, 0x15
/* 80032D00 0002FC40  98 1F 00 0A */	stb r0, 0xa(r31)
/* 80032D04 0002FC44  98 7F 00 0B */	stb r3, 0xb(r31)
/* 80032D08 0002FC48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032D0C 0002FC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032D10 0002FC50  7C 08 03 A6 */	mtlr r0
/* 80032D14 0002FC54  38 21 00 10 */	addi r1, r1, 0x10
/* 80032D18 0002FC58  4E 80 00 20 */	blr 