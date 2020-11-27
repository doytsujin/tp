.include "macros.inc"

.section .text, "ax" # 80021040


.global fpcDt_IsComplete
fpcDt_IsComplete:
/* 80021040 0001DF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021044 0001DF84  7C 08 02 A6 */	mflr r0
/* 80021048 0001DF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002104C 0001DF8C  4B FF FE E5 */	bl fpcDtTg_IsEmpty
/* 80021050 0001DF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021054 0001DF94  7C 08 03 A6 */	mtlr r0
/* 80021058 0001DF98  38 21 00 10 */	addi r1, r1, 0x10
/* 8002105C 0001DF9C  4E 80 00 20 */	blr 
.global fpcDt_deleteMethod
fpcDt_deleteMethod:
/* 80021060 0001DFA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021064 0001DFA4  7C 08 02 A6 */	mflr r0
/* 80021068 0001DFA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002106C 0001DFAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80021070 0001DFB0  48 34 11 6D */	bl _savegpr_29
/* 80021074 0001DFB4  7C 7D 1B 78 */	mr r29, r3
/* 80021078 0001DFB8  83 E3 00 60 */	lwz r31, 0x60(r3)
/* 8002107C 0001DFBC  AB C3 00 0E */	lha r30, 0xe(r3)
/* 80021080 0001DFC0  7F E3 FB 78 */	mr r3, r31
/* 80021084 0001DFC4  48 00 06 69 */	bl fpcLy_SetCurrentLayer
/* 80021088 0001DFC8  38 7D 00 34 */	addi r3, r29, 0x34
/* 8002108C 0001DFCC  48 00 25 75 */	bl fpcLnTg_QueueTo
/* 80021090 0001DFD0  7F A3 EB 78 */	mr r3, r29
/* 80021094 0001DFD4  4B FF F7 29 */	bl fpcBs_Delete
/* 80021098 0001DFD8  2C 03 00 01 */	cmpwi r3, 1
/* 8002109C 0001DFDC  40 82 00 1C */	bne lbl_800210B8
/* 800210A0 0001DFE0  7F E3 FB 78 */	mr r3, r31
/* 800210A4 0001DFE4  48 00 05 E5 */	bl fpcLy_DeletedMesg
/* 800210A8 0001DFE8  7F C3 F3 78 */	mr r3, r30
/* 800210AC 0001DFEC  48 00 0F 81 */	bl fpcLd_Free
/* 800210B0 0001DFF0  38 60 00 01 */	li r3, 1
/* 800210B4 0001DFF4  48 00 00 08 */	b lbl_800210BC
lbl_800210B8:
/* 800210B8 0001DFF8  38 60 00 00 */	li r3, 0
lbl_800210BC:
/* 800210BC 0001DFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 800210C0 0001E000  48 34 11 69 */	bl _restgpr_29
/* 800210C4 0001E004  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800210C8 0001E008  7C 08 03 A6 */	mtlr r0
/* 800210CC 0001E00C  38 21 00 20 */	addi r1, r1, 0x20
/* 800210D0 0001E010  4E 80 00 20 */	blr 

.global fpcDt_Handler
fpcDt_Handler:
/* 800210D4 0001E014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800210D8 0001E018  7C 08 02 A6 */	mflr r0
/* 800210DC 0001E01C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800210E0 0001E020  3C 60 80 3A */	lis r3, lbl_803A39A0@ha
/* 800210E4 0001E024  38 63 39 A0 */	addi r3, r3, lbl_803A39A0@l
.global fpcDtTg_Do
/* 800210E8 0001E028  3C 80 80 02 */	lis r4, fpcDtTg_Do@ha
.global fpcDtTg_Do
/* 800210EC 0001E02C  38 84 0F 9C */	addi r4, r4, fpcDtTg_Do@l
.global fpcDt_deleteMethod
/* 800210F0 0001E030  3C A0 80 02 */	lis r5, fpcDt_deleteMethod@ha
.global fpcDt_deleteMethod
/* 800210F4 0001E034  38 A5 10 60 */	addi r5, r5, fpcDt_deleteMethod@l
/* 800210F8 0001E038  48 24 4F 69 */	bl cLsIt_Method
/* 800210FC 0001E03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021100 0001E040  7C 08 03 A6 */	mtlr r0
/* 80021104 0001E044  38 21 00 10 */	addi r1, r1, 0x10
/* 80021108 0001E048  4E 80 00 20 */	blr 

.global fpcDt_ToQueue
fpcDt_ToQueue:
/* 8002110C 0001E04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021110 0001E050  7C 08 02 A6 */	mflr r0
/* 80021114 0001E054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021118 0001E058  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002111C 0001E05C  7C 7F 1B 78 */	mr r31, r3
/* 80021120 0001E060  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80021124 0001E064  2C 00 00 01 */	cmpwi r0, 1
/* 80021128 0001E068  41 82 00 48 */	beq lbl_80021170
/* 8002112C 0001E06C  4B FF F6 35 */	bl fpcBs_IsDelete
/* 80021130 0001E070  2C 03 00 01 */	cmpwi r3, 1
/* 80021134 0001E074  40 82 00 3C */	bne lbl_80021170
/* 80021138 0001E078  38 7F 00 68 */	addi r3, r31, 0x68
/* 8002113C 0001E07C  48 00 1F F5 */	bl fpcPi_IsInQueue
/* 80021140 0001E080  2C 03 00 01 */	cmpwi r3, 1
/* 80021144 0001E084  40 82 00 0C */	bne lbl_80021150
/* 80021148 0001E088  38 7F 00 68 */	addi r3, r31, 0x68
/* 8002114C 0001E08C  48 00 21 1D */	bl fpcPi_Delete
lbl_80021150:
/* 80021150 0001E090  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80021154 0001E094  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80021158 0001E098  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8002115C 0001E09C  4B FF FD ED */	bl fpcDtTg_ToDeleteQ
/* 80021160 0001E0A0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80021164 0001E0A4  48 00 05 15 */	bl fpcLy_DeletingMesg
/* 80021168 0001E0A8  38 60 00 01 */	li r3, 1
/* 8002116C 0001E0AC  48 00 00 08 */	b lbl_80021174
lbl_80021170:
/* 80021170 0001E0B0  38 60 00 00 */	li r3, 0
lbl_80021174:
/* 80021174 0001E0B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021178 0001E0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002117C 0001E0BC  7C 08 03 A6 */	mtlr r0
/* 80021180 0001E0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80021184 0001E0C4  4E 80 00 20 */	blr 

.global fpcDt_ToDeleteQ
fpcDt_ToDeleteQ:
/* 80021188 0001E0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002118C 0001E0CC  7C 08 02 A6 */	mflr r0
/* 80021190 0001E0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021194 0001E0D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021198 0001E0D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8002119C 0001E0DC  7C 7E 1B 78 */	mr r30, r3
/* 800211A0 0001E0E0  88 03 00 0A */	lbz r0, 0xa(r3)
/* 800211A4 0001E0E4  2C 00 00 01 */	cmpwi r0, 1
/* 800211A8 0001E0E8  40 82 00 0C */	bne lbl_800211B4
/* 800211AC 0001E0EC  38 60 00 00 */	li r3, 0
/* 800211B0 0001E0F0  48 00 00 DC */	b lbl_8002128C
lbl_800211B4:
/* 800211B4 0001E0F4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 800211B8 0001E0F8  48 24 56 C9 */	bl cTg_IsUse
/* 800211BC 0001E0FC  2C 03 00 00 */	cmpwi r3, 0
/* 800211C0 0001E100  41 82 00 0C */	beq lbl_800211CC
/* 800211C4 0001E104  38 60 00 01 */	li r3, 1
/* 800211C8 0001E108  48 00 00 C4 */	b lbl_8002128C
lbl_800211CC:
/* 800211CC 0001E10C  80 6D 87 C0 */	lwz r3, lbl_80450D40-_SDA_BASE_(r13)
/* 800211D0 0001E110  80 9E 00 B4 */	lwz r4, 0xb4(r30)
/* 800211D4 0001E114  4B FF F4 79 */	bl fpcBs_Is_JustOfType
/* 800211D8 0001E118  2C 03 00 00 */	cmpwi r3, 0
/* 800211DC 0001E11C  41 82 00 4C */	beq lbl_80021228
/* 800211E0 0001E120  7F C3 F3 78 */	mr r3, r30
/* 800211E4 0001E124  48 00 14 79 */	bl fpcNd_IsDeleteTiming
/* 800211E8 0001E128  2C 03 00 00 */	cmpwi r3, 0
/* 800211EC 0001E12C  40 82 00 0C */	bne lbl_800211F8
/* 800211F0 0001E130  38 60 00 00 */	li r3, 0
/* 800211F4 0001E134  48 00 00 98 */	b lbl_8002128C
lbl_800211F8:
/* 800211F8 0001E138  3B FE 00 BC */	addi r31, r30, 0xbc
/* 800211FC 0001E13C  7F E3 FB 78 */	mr r3, r31
/* 80021200 0001E140  48 00 06 9D */	bl fpcLy_Cancel
/* 80021204 0001E144  7F E3 FB 78 */	mr r3, r31
/* 80021208 0001E148  3C 80 80 02 */	lis r4, fpcDt_ToDeleteQ@ha
/* 8002120C 0001E14C  38 84 11 88 */	addi r4, r4, fpcDt_ToDeleteQ@l
/* 80021210 0001E150  38 A0 00 00 */	li r5, 0
/* 80021214 0001E154  48 00 09 AD */	bl fpcLyIt_OnlyHereLY
/* 80021218 0001E158  2C 03 00 00 */	cmpwi r3, 0
/* 8002121C 0001E15C  40 82 00 0C */	bne lbl_80021228
/* 80021220 0001E160  38 60 00 00 */	li r3, 0
/* 80021224 0001E164  48 00 00 68 */	b lbl_8002128C
lbl_80021228:
/* 80021228 0001E168  7F C3 F3 78 */	mr r3, r30
/* 8002122C 0001E16C  4B FF FE E1 */	bl fpcDt_ToQueue
/* 80021230 0001E170  2C 03 00 01 */	cmpwi r3, 1
/* 80021234 0001E174  40 82 00 54 */	bne lbl_80021288
/* 80021238 0001E178  80 7E 00 04 */	lwz r3, 4(r30)
/* 8002123C 0001E17C  48 00 01 61 */	bl fpcEx_IsExist
/* 80021240 0001E180  2C 03 00 01 */	cmpwi r3, 1
/* 80021244 0001E184  40 82 00 1C */	bne lbl_80021260
/* 80021248 0001E188  7F C3 F3 78 */	mr r3, r30
/* 8002124C 0001E18C  48 00 02 79 */	bl fpcEx_ExecuteQTo
/* 80021250 0001E190  2C 03 00 00 */	cmpwi r3, 0
/* 80021254 0001E194  40 82 00 24 */	bne lbl_80021278
/* 80021258 0001E198  38 60 00 00 */	li r3, 0
/* 8002125C 0001E19C  48 00 00 30 */	b lbl_8002128C
lbl_80021260:
/* 80021260 0001E1A0  7F C3 F3 78 */	mr r3, r30
/* 80021264 0001E1A4  4B FF FC 89 */	bl fpcCt_Abort
/* 80021268 0001E1A8  2C 03 00 00 */	cmpwi r3, 0
/* 8002126C 0001E1AC  40 82 00 0C */	bne lbl_80021278
/* 80021270 0001E1B0  38 60 00 00 */	li r3, 0
/* 80021274 0001E1B4  48 00 00 18 */	b lbl_8002128C
lbl_80021278:
/* 80021278 0001E1B8  38 00 00 03 */	li r0, 3
/* 8002127C 0001E1BC  98 1E 00 0C */	stb r0, 0xc(r30)
/* 80021280 0001E1C0  38 60 00 01 */	li r3, 1
/* 80021284 0001E1C4  48 00 00 08 */	b lbl_8002128C
lbl_80021288:
/* 80021288 0001E1C8  38 60 00 00 */	li r3, 0
lbl_8002128C:
/* 8002128C 0001E1CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021290 0001E1D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80021294 0001E1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021298 0001E1D8  7C 08 03 A6 */	mtlr r0
/* 8002129C 0001E1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800212A0 0001E1E0  4E 80 00 20 */	blr 

.global fpcDt_Delete
fpcDt_Delete:
/* 800212A4 0001E1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800212A8 0001E1E8  7C 08 02 A6 */	mflr r0
/* 800212AC 0001E1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800212B0 0001E1F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800212B4 0001E1F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800212B8 0001E1F8  41 82 00 38 */	beq lbl_800212F0
/* 800212BC 0001E1FC  4B FF FC 0D */	bl fpcCt_IsDoing
/* 800212C0 0001E200  2C 03 00 01 */	cmpwi r3, 1
/* 800212C4 0001E204  40 82 00 0C */	bne lbl_800212D0
/* 800212C8 0001E208  38 60 00 00 */	li r3, 0
/* 800212CC 0001E20C  48 00 00 28 */	b lbl_800212F4
lbl_800212D0:
/* 800212D0 0001E210  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 800212D4 0001E214  2C 00 00 03 */	cmpwi r0, 3
/* 800212D8 0001E218  40 82 00 0C */	bne lbl_800212E4
/* 800212DC 0001E21C  38 60 00 00 */	li r3, 0
/* 800212E0 0001E220  48 00 00 14 */	b lbl_800212F4
lbl_800212E4:
/* 800212E4 0001E224  7F E3 FB 78 */	mr r3, r31
/* 800212E8 0001E228  4B FF FE A1 */	bl fpcDt_ToDeleteQ
/* 800212EC 0001E22C  48 00 00 08 */	b lbl_800212F4
lbl_800212F0:
/* 800212F0 0001E230  38 60 00 01 */	li r3, 1
lbl_800212F4:
/* 800212F4 0001E234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800212F8 0001E238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800212FC 0001E23C  7C 08 03 A6 */	mtlr r0
/* 80021300 0001E240  38 21 00 10 */	addi r1, r1, 0x10
/* 80021304 0001E244  4E 80 00 20 */	blr 
