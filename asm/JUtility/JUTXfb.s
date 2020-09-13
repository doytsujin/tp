.include "macros.inc"

.section .text, "ax" # 802e5214


.global JUTXfb_NS_clearIndex
JUTXfb_NS_clearIndex:
/* 802E5214 002E2154  38 00 FF FF */	li r0, -1
/* 802E5218 002E2158  B0 03 00 14 */	sth r0, 0x14(r3)
/* 802E521C 002E215C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802E5220 002E2160  B0 03 00 18 */	sth r0, 0x18(r3)
/* 802E5224 002E2164  4E 80 00 20 */	blr 

.global JUTXfb_NS_common_init
JUTXfb_NS_common_init:
/* 802E5228 002E2168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E522C 002E216C  7C 08 02 A6 */	mflr r0
/* 802E5230 002E2170  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5234 002E2174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E5238 002E2178  7C 7F 1B 78 */	mr r31, r3
/* 802E523C 002E217C  90 83 00 10 */	stw r4, 0x10(r3)
/* 802E5240 002E2180  4B FF FF D5 */	bl JUTXfb_NS_clearIndex
/* 802E5244 002E2184  38 00 00 63 */	li r0, 0x63
/* 802E5248 002E2188  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802E524C 002E218C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5250 002E2190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5254 002E2194  7C 08 03 A6 */	mtlr r0
/* 802E5258 002E2198  38 21 00 10 */	addi r1, r1, 0x10
/* 802E525C 002E219C  4E 80 00 20 */	blr 

.global JUTXfb
JUTXfb:
/* 802E5260 002E21A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E5264 002E21A4  7C 08 02 A6 */	mflr r0
/* 802E5268 002E21A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E526C 002E21AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E5270 002E21B0  48 07 CF 65 */	bl _savegpr_27
/* 802E5274 002E21B4  7C 7B 1B 78 */	mr r27, r3
/* 802E5278 002E21B8  7C 9E 23 78 */	mr r30, r4
/* 802E527C 002E21BC  7C BC 2B 78 */	mr r28, r5
/* 802E5280 002E21C0  7C DD 33 78 */	mr r29, r6
/* 802E5284 002E21C4  7F A4 EB 78 */	mr r4, r29
/* 802E5288 002E21C8  4B FF FF A1 */	bl JUTXfb_NS_common_init
/* 802E528C 002E21CC  28 1E 00 00 */	cmplwi r30, 0
/* 802E5290 002E21D0  41 82 00 20 */	beq lbl_802E52B0
/* 802E5294 002E21D4  7F 63 DB 78 */	mr r3, r27
/* 802E5298 002E21D8  A0 9E 00 04 */	lhz r4, 4(r30)
/* 802E529C 002E21DC  A0 BE 00 08 */	lhz r5, 8(r30)
/* 802E52A0 002E21E0  7F 86 E3 78 */	mr r6, r28
/* 802E52A4 002E21E4  7F A7 EB 78 */	mr r7, r29
/* 802E52A8 002E21E8  48 00 01 AD */	bl JUTXfb_NS_initiate
/* 802E52AC 002E21EC  48 00 00 40 */	b lbl_802E52EC
lbl_802E52B0:
/* 802E52B0 002E21F0  80 6D 8F B8 */	lwz r3, lbl_80451538-_SDA_BASE_(r13)
/* 802E52B4 002E21F4  80 83 00 04 */	lwz r4, 4(r3)
/* 802E52B8 002E21F8  A3 E4 00 04 */	lhz r31, 4(r4)
/* 802E52BC 002E21FC  A0 64 00 06 */	lhz r3, 6(r4)
/* 802E52C0 002E2200  7C 7E 1B 78 */	mr r30, r3
/* 802E52C4 002E2204  A0 84 00 08 */	lhz r4, 8(r4)
/* 802E52C8 002E2208  48 07 7A A5 */	bl GXGetYScaleFactor
/* 802E52CC 002E220C  7F C3 F3 78 */	mr r3, r30
/* 802E52D0 002E2210  48 07 7A 0D */	bl GXGetNumXfbLines
/* 802E52D4 002E2214  7C 65 1B 78 */	mr r5, r3
/* 802E52D8 002E2218  7F 63 DB 78 */	mr r3, r27
/* 802E52DC 002E221C  7F E4 FB 78 */	mr r4, r31
/* 802E52E0 002E2220  7F 86 E3 78 */	mr r6, r28
/* 802E52E4 002E2224  7F A7 EB 78 */	mr r7, r29
/* 802E52E8 002E2228  48 00 01 6D */	bl JUTXfb_NS_initiate
lbl_802E52EC:
/* 802E52EC 002E222C  7F 63 DB 78 */	mr r3, r27
/* 802E52F0 002E2230  39 61 00 20 */	addi r11, r1, 0x20
/* 802E52F4 002E2234  48 07 CF 2D */	bl _restgpr_27
/* 802E52F8 002E2238  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E52FC 002E223C  7C 08 03 A6 */	mtlr r0
/* 802E5300 002E2240  38 21 00 20 */	addi r1, r1, 0x20
/* 802E5304 002E2244  4E 80 00 20 */	blr 

.global JUTXfb_NS_dtor
JUTXfb_NS_dtor:
/* 802E5308 002E2248  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E530C 002E224C  7C 08 02 A6 */	mflr r0
/* 802E5310 002E2250  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5314 002E2254  39 61 00 20 */	addi r11, r1, 0x20
/* 802E5318 002E2258  48 07 CE C5 */	bl _savegpr_29
/* 802E531C 002E225C  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E5320 002E2260  7C 9E 23 78 */	mr r30, r4
/* 802E5324 002E2264  41 82 00 38 */	beq lbl_802E535C
/* 802E5328 002E2268  3B E0 00 00 */	li r31, 0
lbl_802E532C:
/* 802E532C 002E226C  7F A3 EB 78 */	mr r3, r29
/* 802E5330 002E2270  7F E4 FB 78 */	mr r4, r31
/* 802E5334 002E2274  48 00 00 45 */	bl JUTXfb_NS_delXfb
/* 802E5338 002E2278  3B FF 00 01 */	addi r31, r31, 1
/* 802E533C 002E227C  2C 1F 00 03 */	cmpwi r31, 3
/* 802E5340 002E2280  41 80 FF EC */	blt lbl_802E532C
/* 802E5344 002E2284  38 00 00 00 */	li r0, 0
/* 802E5348 002E2288  90 0D 8F D0 */	stw r0, lbl_80451550-_SDA_BASE_(r13)
/* 802E534C 002E228C  7F C0 07 35 */	extsh. r0, r30
/* 802E5350 002E2290  40 81 00 0C */	ble lbl_802E535C
/* 802E5354 002E2294  7F A3 EB 78 */	mr r3, r29
/* 802E5358 002E2298  4B FE 99 E5 */	bl __dl
lbl_802E535C:
/* 802E535C 002E229C  7F A3 EB 78 */	mr r3, r29
/* 802E5360 002E22A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802E5364 002E22A4  48 07 CE C5 */	bl _restgpr_29
/* 802E5368 002E22A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E536C 002E22AC  7C 08 03 A6 */	mtlr r0
/* 802E5370 002E22B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E5374 002E22B4  4E 80 00 20 */	blr 

.global JUTXfb_NS_delXfb
JUTXfb_NS_delXfb:
/* 802E5378 002E22B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E537C 002E22BC  7C 08 02 A6 */	mflr r0
/* 802E5380 002E22C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5384 002E22C4  7C A3 22 14 */	add r5, r3, r4
/* 802E5388 002E22C8  88 05 00 0C */	lbz r0, 0xc(r5)
/* 802E538C 002E22CC  28 00 00 00 */	cmplwi r0, 0
/* 802E5390 002E22D0  41 82 00 18 */	beq lbl_802E53A8
/* 802E5394 002E22D4  54 80 10 3A */	slwi r0, r4, 2
/* 802E5398 002E22D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 802E539C 002E22DC  28 03 00 00 */	cmplwi r3, 0
/* 802E53A0 002E22E0  41 82 00 08 */	beq lbl_802E53A8
/* 802E53A4 002E22E4  4B FE 99 99 */	bl __dl
lbl_802E53A8:
/* 802E53A8 002E22E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E53AC 002E22EC  7C 08 03 A6 */	mtlr r0
/* 802E53B0 002E22F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E53B4 002E22F4  4E 80 00 20 */	blr 

.global JUTXfb_NS_createManager
JUTXfb_NS_createManager:
/* 802E53B8 002E22F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E53BC 002E22FC  7C 08 02 A6 */	mflr r0
/* 802E53C0 002E2300  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E53C4 002E2304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E53C8 002E2308  93 C1 00 08 */	stw r30, 8(r1)
/* 802E53CC 002E230C  7C 7E 1B 78 */	mr r30, r3
/* 802E53D0 002E2310  7C 9F 23 78 */	mr r31, r4
/* 802E53D4 002E2314  80 0D 8F D0 */	lwz r0, lbl_80451550-_SDA_BASE_(r13)
/* 802E53D8 002E2318  28 00 00 00 */	cmplwi r0, 0
/* 802E53DC 002E231C  40 82 00 2C */	bne lbl_802E5408
/* 802E53E0 002E2320  38 60 00 20 */	li r3, 0x20
/* 802E53E4 002E2324  4B FE 98 69 */	bl __nw
/* 802E53E8 002E2328  7C 60 1B 79 */	or. r0, r3, r3
/* 802E53EC 002E232C  41 82 00 18 */	beq lbl_802E5404
/* 802E53F0 002E2330  38 80 00 00 */	li r4, 0
/* 802E53F4 002E2334  7F C5 F3 78 */	mr r5, r30
/* 802E53F8 002E2338  7F E6 FB 78 */	mr r6, r31
/* 802E53FC 002E233C  4B FF FE 65 */	bl JUTXfb
/* 802E5400 002E2340  7C 60 1B 78 */	mr r0, r3
lbl_802E5404:
/* 802E5404 002E2344  90 0D 8F D0 */	stw r0, lbl_80451550-_SDA_BASE_(r13)
lbl_802E5408:
/* 802E5408 002E2348  80 6D 8F D0 */	lwz r3, lbl_80451550-_SDA_BASE_(r13)
/* 802E540C 002E234C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5410 002E2350  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E5414 002E2354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5418 002E2358  7C 08 03 A6 */	mtlr r0
/* 802E541C 002E235C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5420 002E2360  4E 80 00 20 */	blr 

.global JUTXfb_NS_destroyManager
JUTXfb_NS_destroyManager:
/* 802E5424 002E2364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5428 002E2368  7C 08 02 A6 */	mflr r0
/* 802E542C 002E236C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5430 002E2370  80 6D 8F D0 */	lwz r3, lbl_80451550-_SDA_BASE_(r13)
/* 802E5434 002E2374  38 80 00 01 */	li r4, 1
/* 802E5438 002E2378  4B FF FE D1 */	bl JUTXfb_NS_dtor
/* 802E543C 002E237C  38 00 00 00 */	li r0, 0
/* 802E5440 002E2380  90 0D 8F D0 */	stw r0, lbl_80451550-_SDA_BASE_(r13)
/* 802E5444 002E2384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5448 002E2388  7C 08 03 A6 */	mtlr r0
/* 802E544C 002E238C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5450 002E2390  4E 80 00 20 */	blr 

.global JUTXfb_NS_initiate
JUTXfb_NS_initiate:
/* 802E5454 002E2394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E5458 002E2398  7C 08 02 A6 */	mflr r0
/* 802E545C 002E239C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5460 002E23A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802E5464 002E23A4  48 07 CD 75 */	bl _savegpr_28
/* 802E5468 002E23A8  7C 7C 1B 78 */	mr r28, r3
/* 802E546C 002E23AC  7C DD 33 79 */	or. r29, r6, r6
/* 802E5470 002E23B0  7C FE 3B 78 */	mr r30, r7
/* 802E5474 002E23B4  40 82 00 08 */	bne lbl_802E547C
/* 802E5478 002E23B8  83 AD 8D F0 */	lwz r29, lbl_80451370-_SDA_BASE_(r13)
lbl_802E547C:
/* 802E547C 002E23BC  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 802E5480 002E23C0  38 03 00 0F */	addi r0, r3, 0xf
/* 802E5484 002E23C4  54 03 04 36 */	rlwinm r3, r0, 0, 0x10, 0x1b
/* 802E5488 002E23C8  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 802E548C 002E23CC  7C 03 01 D6 */	mullw r0, r3, r0
/* 802E5490 002E23D0  54 03 08 3C */	slwi r3, r0, 1
/* 802E5494 002E23D4  7C 7F 1B 78 */	mr r31, r3
/* 802E5498 002E23D8  7F A4 EB 78 */	mr r4, r29
/* 802E549C 002E23DC  38 A0 00 20 */	li r5, 0x20
/* 802E54A0 002E23E0  4B FE 98 71 */	bl __nwa_X2_
/* 802E54A4 002E23E4  90 7C 00 00 */	stw r3, 0(r28)
/* 802E54A8 002E23E8  38 00 00 01 */	li r0, 1
/* 802E54AC 002E23EC  98 1C 00 0C */	stb r0, 0xc(r28)
/* 802E54B0 002E23F0  2C 1E 00 02 */	cmpwi r30, 2
/* 802E54B4 002E23F4  41 80 00 24 */	blt lbl_802E54D8
/* 802E54B8 002E23F8  7F E3 FB 78 */	mr r3, r31
/* 802E54BC 002E23FC  7F A4 EB 78 */	mr r4, r29
/* 802E54C0 002E2400  38 A0 00 20 */	li r5, 0x20
/* 802E54C4 002E2404  4B FE 98 4D */	bl __nwa_X2_
/* 802E54C8 002E2408  90 7C 00 04 */	stw r3, 4(r28)
/* 802E54CC 002E240C  38 00 00 01 */	li r0, 1
/* 802E54D0 002E2410  98 1C 00 0D */	stb r0, 0xd(r28)
/* 802E54D4 002E2414  48 00 00 10 */	b lbl_802E54E4
lbl_802E54D8:
/* 802E54D8 002E2418  38 00 00 00 */	li r0, 0
/* 802E54DC 002E241C  90 1C 00 04 */	stw r0, 4(r28)
/* 802E54E0 002E2420  98 1C 00 0D */	stb r0, 0xd(r28)
lbl_802E54E4:
/* 802E54E4 002E2424  2C 1E 00 03 */	cmpwi r30, 3
/* 802E54E8 002E2428  41 80 00 24 */	blt lbl_802E550C
/* 802E54EC 002E242C  7F E3 FB 78 */	mr r3, r31
/* 802E54F0 002E2430  7F A4 EB 78 */	mr r4, r29
/* 802E54F4 002E2434  38 A0 00 20 */	li r5, 0x20
/* 802E54F8 002E2438  4B FE 98 19 */	bl __nwa_X2_
/* 802E54FC 002E243C  90 7C 00 08 */	stw r3, 8(r28)
/* 802E5500 002E2440  38 00 00 01 */	li r0, 1
/* 802E5504 002E2444  98 1C 00 0E */	stb r0, 0xe(r28)
/* 802E5508 002E2448  48 00 00 10 */	b lbl_802E5518
lbl_802E550C:
/* 802E550C 002E244C  38 00 00 00 */	li r0, 0
/* 802E5510 002E2450  90 1C 00 08 */	stw r0, 8(r28)
/* 802E5514 002E2454  98 1C 00 0E */	stb r0, 0xe(r28)
lbl_802E5518:
/* 802E5518 002E2458  39 61 00 20 */	addi r11, r1, 0x20
/* 802E551C 002E245C  48 07 CD 09 */	bl _restgpr_28
/* 802E5520 002E2460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E5524 002E2464  7C 08 03 A6 */	mtlr r0
/* 802E5528 002E2468  38 21 00 20 */	addi r1, r1, 0x20
/* 802E552C 002E246C  4E 80 00 20 */	blr 

