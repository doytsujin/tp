.include "macros.inc"

.section .text, "ax" # 802d5778


.global JKRArchive_NS_check_mount_already
JKRArchive_NS_check_mount_already:
/* 802D5778 002D26B8  28 04 00 00 */	cmplwi r4, 0
/* 802D577C 002D26BC  40 82 00 08 */	bne lbl_802D5784
/* 802D5780 002D26C0  80 8D 8D F4 */	lwz r4, lbl_80451374-_SDA_BASE_(r13)
lbl_802D5784:
/* 802D5784 002D26C4  3C A0 80 43 */	lis r5, lbl_80434354@ha
/* 802D5788 002D26C8  80 C5 43 54 */	lwz r6, lbl_80434354@l(r5)
/* 802D578C 002D26CC  48 00 00 48 */	b lbl_802D57D4
lbl_802D5790:
/* 802D5790 002D26D0  80 E6 00 00 */	lwz r7, 0(r6)
/* 802D5794 002D26D4  80 A7 00 2C */	lwz r5, 0x2c(r7)
/* 802D5798 002D26D8  3C 05 AD BF */	addis r0, r5, 0xadbf
/* 802D579C 002D26DC  28 00 52 43 */	cmplwi r0, 0x5243
/* 802D57A0 002D26E0  40 82 00 30 */	bne lbl_802D57D0
/* 802D57A4 002D26E4  80 07 00 40 */	lwz r0, 0x40(r7)
/* 802D57A8 002D26E8  7C 00 18 00 */	cmpw r0, r3
/* 802D57AC 002D26EC  40 82 00 24 */	bne lbl_802D57D0
/* 802D57B0 002D26F0  80 07 00 38 */	lwz r0, 0x38(r7)
/* 802D57B4 002D26F4  7C 00 20 40 */	cmplw r0, r4
/* 802D57B8 002D26F8  40 82 00 18 */	bne lbl_802D57D0
/* 802D57BC 002D26FC  80 67 00 34 */	lwz r3, 0x34(r7)
/* 802D57C0 002D2700  38 03 00 01 */	addi r0, r3, 1
/* 802D57C4 002D2704  90 07 00 34 */	stw r0, 0x34(r7)
/* 802D57C8 002D2708  7C E3 3B 78 */	mr r3, r7
/* 802D57CC 002D270C  4E 80 00 20 */	blr 
lbl_802D57D0:
/* 802D57D0 002D2710  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_802D57D4:
/* 802D57D4 002D2714  28 06 00 00 */	cmplwi r6, 0
/* 802D57D8 002D2718  40 82 FF B8 */	bne lbl_802D5790
/* 802D57DC 002D271C  38 60 00 00 */	li r3, 0
/* 802D57E0 002D2720  4E 80 00 20 */	blr 

.global JKRArchive_NS_mount
JKRArchive_NS_mount:
/* 802D57E4 002D2724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D57E8 002D2728  7C 08 02 A6 */	mflr r0
/* 802D57EC 002D272C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D57F0 002D2730  39 61 00 20 */	addi r11, r1, 0x20
/* 802D57F4 002D2734  48 08 C9 E9 */	bl _savegpr_29
/* 802D57F8 002D2738  7C 9D 23 78 */	mr r29, r4
/* 802D57FC 002D273C  7C BE 2B 78 */	mr r30, r5
/* 802D5800 002D2740  7C DF 33 78 */	mr r31, r6
/* 802D5804 002D2744  48 07 2D 25 */	bl DVDConvertPathToEntrynum
/* 802D5808 002D2748  2C 03 00 00 */	cmpwi r3, 0
/* 802D580C 002D274C  40 80 00 0C */	bge lbl_802D5818
/* 802D5810 002D2750  38 60 00 00 */	li r3, 0
/* 802D5814 002D2754  48 00 00 14 */	b lbl_802D5828
lbl_802D5818:
/* 802D5818 002D2758  7F A4 EB 78 */	mr r4, r29
/* 802D581C 002D275C  7F C5 F3 78 */	mr r5, r30
/* 802D5820 002D2760  7F E6 FB 78 */	mr r6, r31
/* 802D5824 002D2764  48 00 00 A5 */	bl JKRArchive_NS_mount_X2_
lbl_802D5828:
/* 802D5828 002D2768  39 61 00 20 */	addi r11, r1, 0x20
/* 802D582C 002D276C  48 08 C9 FD */	bl _restgpr_29
/* 802D5830 002D2770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5834 002D2774  7C 08 03 A6 */	mtlr r0
/* 802D5838 002D2778  38 21 00 20 */	addi r1, r1, 0x20
/* 802D583C 002D277C  4E 80 00 20 */	blr 

.global JKRArchive_NS_mount_X1_
JKRArchive_NS_mount_X1_:
/* 802D5840 002D2780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5844 002D2784  7C 08 02 A6 */	mflr r0
/* 802D5848 002D2788  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D584C 002D278C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5850 002D2790  48 08 C9 8D */	bl _savegpr_29
/* 802D5854 002D2794  7C 7D 1B 78 */	mr r29, r3
/* 802D5858 002D2798  7C 9E 23 78 */	mr r30, r4
/* 802D585C 002D279C  7C BF 2B 78 */	mr r31, r5
/* 802D5860 002D27A0  4B FF FF 19 */	bl JKRArchive_NS_check_mount_already
/* 802D5864 002D27A4  28 03 00 00 */	cmplwi r3, 0
/* 802D5868 002D27A8  41 82 00 08 */	beq lbl_802D5870
/* 802D586C 002D27AC  48 00 00 44 */	b lbl_802D58B0
lbl_802D5870:
/* 802D5870 002D27B0  38 60 00 70 */	li r3, 0x70
/* 802D5874 002D27B4  7F C4 F3 78 */	mr r4, r30
/* 802D5878 002D27B8  2C 1F 00 01 */	cmpwi r31, 1
/* 802D587C 002D27BC  38 A0 FF FC */	li r5, -4
/* 802D5880 002D27C0  40 82 00 08 */	bne lbl_802D5888
/* 802D5884 002D27C4  38 A0 00 04 */	li r5, 4
lbl_802D5888:
/* 802D5888 002D27C8  4B FF 94 11 */	bl __nw_X2_
/* 802D588C 002D27CC  7C 60 1B 79 */	or. r0, r3, r3
/* 802D5890 002D27D0  41 82 00 1C */	beq lbl_802D58AC
/* 802D5894 002D27D4  7F A4 EB 78 */	mr r4, r29
/* 802D5898 002D27D8  3C A0 00 01 */	lis r5, 0x0000FFFF@ha
/* 802D589C 002D27DC  38 A5 FF FF */	addi r5, r5, 0x0000FFFF@l
/* 802D58A0 002D27E0  38 C0 00 00 */	li r6, 0
/* 802D58A4 002D27E4  48 00 11 C9 */	bl JKRMemArchive_X1_
/* 802D58A8 002D27E8  7C 60 1B 78 */	mr r0, r3
lbl_802D58AC:
/* 802D58AC 002D27EC  7C 03 03 78 */	mr r3, r0
lbl_802D58B0:
/* 802D58B0 002D27F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D58B4 002D27F4  48 08 C9 75 */	bl _restgpr_29
/* 802D58B8 002D27F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D58BC 002D27FC  7C 08 03 A6 */	mtlr r0
/* 802D58C0 002D2800  38 21 00 20 */	addi r1, r1, 0x20
/* 802D58C4 002D2804  4E 80 00 20 */	blr 

.global JKRArchive_NS_mount_X2_
JKRArchive_NS_mount_X2_:
/* 802D58C8 002D2808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D58CC 002D280C  7C 08 02 A6 */	mflr r0
/* 802D58D0 002D2810  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D58D4 002D2814  39 61 00 20 */	addi r11, r1, 0x20
/* 802D58D8 002D2818  48 08 C8 FD */	bl _savegpr_27
/* 802D58DC 002D281C  7C 7B 1B 78 */	mr r27, r3
/* 802D58E0 002D2820  7C 9C 23 78 */	mr r28, r4
/* 802D58E4 002D2824  7C BD 2B 78 */	mr r29, r5
/* 802D58E8 002D2828  7C DE 33 78 */	mr r30, r6
/* 802D58EC 002D282C  7F A4 EB 78 */	mr r4, r29
/* 802D58F0 002D2830  4B FF FE 89 */	bl JKRArchive_NS_check_mount_already
/* 802D58F4 002D2834  28 03 00 00 */	cmplwi r3, 0
/* 802D58F8 002D2838  41 82 00 08 */	beq lbl_802D5900
/* 802D58FC 002D283C  48 00 01 24 */	b lbl_802D5A20
lbl_802D5900:
/* 802D5900 002D2840  2C 1E 00 01 */	cmpwi r30, 1
/* 802D5904 002D2844  38 A0 FF FC */	li r5, -4
/* 802D5908 002D2848  40 82 00 08 */	bne lbl_802D5910
/* 802D590C 002D284C  38 A0 00 04 */	li r5, 4
lbl_802D5910:
/* 802D5910 002D2850  2C 1C 00 03 */	cmpwi r28, 3
/* 802D5914 002D2854  41 82 00 7C */	beq lbl_802D5990
/* 802D5918 002D2858  40 80 00 14 */	bge lbl_802D592C
/* 802D591C 002D285C  2C 1C 00 01 */	cmpwi r28, 1
/* 802D5920 002D2860  41 82 00 18 */	beq lbl_802D5938
/* 802D5924 002D2864  40 80 00 40 */	bge lbl_802D5964
/* 802D5928 002D2868  48 00 00 BC */	b lbl_802D59E4
lbl_802D592C:
/* 802D592C 002D286C  2C 1C 00 05 */	cmpwi r28, 5
/* 802D5930 002D2870  40 80 00 B4 */	bge lbl_802D59E4
/* 802D5934 002D2874  48 00 00 88 */	b lbl_802D59BC
lbl_802D5938:
/* 802D5938 002D2878  38 60 00 70 */	li r3, 0x70
/* 802D593C 002D287C  7F A4 EB 78 */	mr r4, r29
/* 802D5940 002D2880  4B FF 93 59 */	bl __nw_X2_
/* 802D5944 002D2884  7C 60 1B 79 */	or. r0, r3, r3
/* 802D5948 002D2888  41 82 00 14 */	beq lbl_802D595C
/* 802D594C 002D288C  7F 64 DB 78 */	mr r4, r27
/* 802D5950 002D2890  7F C5 F3 78 */	mr r5, r30
/* 802D5954 002D2894  48 00 10 65 */	bl JKRMemArchive
/* 802D5958 002D2898  7C 60 1B 78 */	mr r0, r3
lbl_802D595C:
/* 802D595C 002D289C  7C 1F 03 78 */	mr r31, r0
/* 802D5960 002D28A0  48 00 00 84 */	b lbl_802D59E4
lbl_802D5964:
/* 802D5964 002D28A4  38 60 00 6C */	li r3, 0x6c
/* 802D5968 002D28A8  7F A4 EB 78 */	mr r4, r29
/* 802D596C 002D28AC  4B FF 93 2D */	bl __nw_X2_
/* 802D5970 002D28B0  7C 60 1B 79 */	or. r0, r3, r3
/* 802D5974 002D28B4  41 82 00 14 */	beq lbl_802D5988
/* 802D5978 002D28B8  7F 64 DB 78 */	mr r4, r27
/* 802D597C 002D28BC  7F C5 F3 78 */	mr r5, r30
/* 802D5980 002D28C0  48 00 17 41 */	bl JKRAramArchive
/* 802D5984 002D28C4  7C 60 1B 78 */	mr r0, r3
lbl_802D5988:
/* 802D5988 002D28C8  7C 1F 03 78 */	mr r31, r0
/* 802D598C 002D28CC  48 00 00 58 */	b lbl_802D59E4
lbl_802D5990:
/* 802D5990 002D28D0  38 60 00 6C */	li r3, 0x6c
/* 802D5994 002D28D4  7F A4 EB 78 */	mr r4, r29
/* 802D5998 002D28D8  4B FF 93 01 */	bl __nw_X2_
/* 802D599C 002D28DC  7C 60 1B 79 */	or. r0, r3, r3
/* 802D59A0 002D28E0  41 82 00 14 */	beq lbl_802D59B4
/* 802D59A4 002D28E4  7F 64 DB 78 */	mr r4, r27
/* 802D59A8 002D28E8  7F C5 F3 78 */	mr r5, r30
/* 802D59AC 002D28EC  48 00 22 45 */	bl JKRDvdArchive
/* 802D59B0 002D28F0  7C 60 1B 78 */	mr r0, r3
lbl_802D59B4:
/* 802D59B4 002D28F4  7C 1F 03 78 */	mr r31, r0
/* 802D59B8 002D28F8  48 00 00 2C */	b lbl_802D59E4
lbl_802D59BC:
/* 802D59BC 002D28FC  38 60 00 80 */	li r3, 0x80
/* 802D59C0 002D2900  7F A4 EB 78 */	mr r4, r29
/* 802D59C4 002D2904  4B FF 92 D5 */	bl __nw_X2_
/* 802D59C8 002D2908  7C 60 1B 79 */	or. r0, r3, r3
/* 802D59CC 002D290C  41 82 00 14 */	beq lbl_802D59E0
/* 802D59D0 002D2910  7F 64 DB 78 */	mr r4, r27
/* 802D59D4 002D2914  7F C5 F3 78 */	mr r5, r30
/* 802D59D8 002D2918  48 00 2D FD */	bl JKRCompArchive
/* 802D59DC 002D291C  7C 60 1B 78 */	mr r0, r3
lbl_802D59E0:
/* 802D59E0 002D2920  7C 1F 03 78 */	mr r31, r0
lbl_802D59E4:
/* 802D59E4 002D2924  28 1F 00 00 */	cmplwi r31, 0
/* 802D59E8 002D2928  41 82 00 34 */	beq lbl_802D5A1C
/* 802D59EC 002D292C  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 802D59F0 002D2930  28 00 00 00 */	cmplwi r0, 0
/* 802D59F4 002D2934  40 82 00 28 */	bne lbl_802D5A1C
/* 802D59F8 002D2938  28 1F 00 00 */	cmplwi r31, 0
/* 802D59FC 002D293C  41 82 00 1C */	beq lbl_802D5A18
/* 802D5A00 002D2940  7F E3 FB 78 */	mr r3, r31
/* 802D5A04 002D2944  38 80 00 01 */	li r4, 1
/* 802D5A08 002D2948  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5A0C 002D294C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D5A10 002D2950  7D 89 03 A6 */	mtctr r12
/* 802D5A14 002D2954  4E 80 04 21 */	bctrl 
lbl_802D5A18:
/* 802D5A18 002D2958  3B E0 00 00 */	li r31, 0
lbl_802D5A1C:
/* 802D5A1C 002D295C  7F E3 FB 78 */	mr r3, r31
lbl_802D5A20:
/* 802D5A20 002D2960  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5A24 002D2964  48 08 C7 FD */	bl _restgpr_27
/* 802D5A28 002D2968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5A2C 002D296C  7C 08 03 A6 */	mtlr r0
/* 802D5A30 002D2970  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5A34 002D2974  4E 80 00 20 */	blr 
/* 802D5A38 002D2978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5A3C 002D297C  7C 08 02 A6 */	mflr r0
/* 802D5A40 002D2980  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5A44 002D2984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5A48 002D2988  7C 7F 1B 78 */	mr r31, r3
/* 802D5A4C 002D298C  88 04 00 00 */	lbz r0, 0(r4)
/* 802D5A50 002D2990  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D5A54 002D2994  40 82 00 24 */	bne lbl_802D5A78
/* 802D5A58 002D2998  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802D5A5C 002D299C  7C 00 07 75 */	extsb. r0, r0
/* 802D5A60 002D29A0  40 82 00 08 */	bne lbl_802D5A68
/* 802D5A64 002D29A4  38 80 00 00 */	li r4, 0
lbl_802D5A68:
/* 802D5A68 002D29A8  7F E3 FB 78 */	mr r3, r31
/* 802D5A6C 002D29AC  38 A0 00 00 */	li r5, 0
/* 802D5A70 002D29B0  48 00 09 AD */	bl JKRArchive_NS_findDirectory
/* 802D5A74 002D29B4  48 00 00 0C */	b lbl_802D5A80
lbl_802D5A78:
/* 802D5A78 002D29B8  80 AD 8E A0 */	lwz r5, lbl_80451420-_SDA_BASE_(r13)
/* 802D5A7C 002D29BC  48 00 09 A1 */	bl JKRArchive_NS_findDirectory
lbl_802D5A80:
/* 802D5A80 002D29C0  30 03 FF FF */	addic r0, r3, -1
/* 802D5A84 002D29C4  7C 80 19 10 */	subfe r4, r0, r3
/* 802D5A88 002D29C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802D5A8C 002D29CC  41 82 00 1C */	beq lbl_802D5AA8
/* 802D5A90 002D29D0  93 ED 8E 98 */	stw r31, lbl_80451418-_SDA_BASE_(r13)
/* 802D5A94 002D29D4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 802D5A98 002D29D8  7C 00 18 50 */	subf r0, r0, r3
/* 802D5A9C 002D29DC  7C 00 26 70 */	srawi r0, r0, 4
/* 802D5AA0 002D29E0  7C 00 01 94 */	addze r0, r0
/* 802D5AA4 002D29E4  90 0D 8E A0 */	stw r0, lbl_80451420-_SDA_BASE_(r13)
lbl_802D5AA8:
/* 802D5AA8 002D29E8  7C 83 23 78 */	mr r3, r4
/* 802D5AAC 002D29EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5AB0 002D29F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5AB4 002D29F4  7C 08 03 A6 */	mtlr r0
/* 802D5AB8 002D29F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5ABC 002D29FC  4E 80 00 20 */	blr 

.global JKRArchive_NS_getDirEntry
JKRArchive_NS_getDirEntry:
/* 802D5AC0 002D2A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5AC4 002D2A04  7C 08 02 A6 */	mflr r0
/* 802D5AC8 002D2A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5ACC 002D2A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5AD0 002D2A10  93 C1 00 08 */	stw r30, 8(r1)
/* 802D5AD4 002D2A14  7C 7E 1B 78 */	mr r30, r3
/* 802D5AD8 002D2A18  7C 9F 23 78 */	mr r31, r4
/* 802D5ADC 002D2A1C  7C A4 2B 78 */	mr r4, r5
/* 802D5AE0 002D2A20  48 00 0B A5 */	bl JKRArchive_NS_findIdxResource
/* 802D5AE4 002D2A24  28 03 00 00 */	cmplwi r3, 0
/* 802D5AE8 002D2A28  40 82 00 0C */	bne lbl_802D5AF4
/* 802D5AEC 002D2A2C  38 60 00 00 */	li r3, 0
/* 802D5AF0 002D2A30  48 00 00 30 */	b lbl_802D5B20
lbl_802D5AF4:
/* 802D5AF4 002D2A34  80 03 00 04 */	lwz r0, 4(r3)
/* 802D5AF8 002D2A38  54 00 46 3E */	srwi r0, r0, 0x18
/* 802D5AFC 002D2A3C  98 1F 00 00 */	stb r0, 0(r31)
/* 802D5B00 002D2A40  A0 03 00 00 */	lhz r0, 0(r3)
/* 802D5B04 002D2A44  B0 1F 00 02 */	sth r0, 2(r31)
/* 802D5B08 002D2A48  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 802D5B0C 002D2A4C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D5B10 002D2A50  54 00 02 3E */	clrlwi r0, r0, 8
/* 802D5B14 002D2A54  7C 04 02 14 */	add r0, r4, r0
/* 802D5B18 002D2A58  90 1F 00 04 */	stw r0, 4(r31)
/* 802D5B1C 002D2A5C  38 60 00 01 */	li r3, 1
lbl_802D5B20:
/* 802D5B20 002D2A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5B24 002D2A64  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D5B28 002D2A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5B2C 002D2A6C  7C 08 03 A6 */	mtlr r0
/* 802D5B30 002D2A70  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5B34 002D2A74  4E 80 00 20 */	blr 

.global JKRArchive_NS_getGlbResource
JKRArchive_NS_getGlbResource:
/* 802D5B38 002D2A78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5B3C 002D2A7C  7C 08 02 A6 */	mflr r0
/* 802D5B40 002D2A80  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5B44 002D2A84  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5B48 002D2A88  48 08 C6 95 */	bl _savegpr_29
/* 802D5B4C 002D2A8C  7C 7D 1B 78 */	mr r29, r3
/* 802D5B50 002D2A90  7C 9E 23 78 */	mr r30, r4
/* 802D5B54 002D2A94  38 C0 00 00 */	li r6, 0
/* 802D5B58 002D2A98  28 05 00 00 */	cmplwi r5, 0
/* 802D5B5C 002D2A9C  41 82 00 24 */	beq lbl_802D5B80
/* 802D5B60 002D2AA0  7C A3 2B 78 */	mr r3, r5
/* 802D5B64 002D2AA4  7F A4 EB 78 */	mr r4, r29
/* 802D5B68 002D2AA8  7F C5 F3 78 */	mr r5, r30
/* 802D5B6C 002D2AAC  81 83 00 00 */	lwz r12, 0(r3)
/* 802D5B70 002D2AB0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D5B74 002D2AB4  7D 89 03 A6 */	mtctr r12
/* 802D5B78 002D2AB8  4E 80 04 21 */	bctrl 
/* 802D5B7C 002D2ABC  48 00 00 54 */	b lbl_802D5BD0
lbl_802D5B80:
/* 802D5B80 002D2AC0  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D5B84 002D2AC4  83 E3 43 54 */	lwz r31, lbl_80434354@l(r3)
/* 802D5B88 002D2AC8  48 00 00 3C */	b lbl_802D5BC4
lbl_802D5B8C:
/* 802D5B8C 002D2ACC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802D5B90 002D2AD0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D5B94 002D2AD4  3C 04 AD BF */	addis r0, r4, 0xadbf
/* 802D5B98 002D2AD8  28 00 52 43 */	cmplwi r0, 0x5243
/* 802D5B9C 002D2ADC  40 82 00 24 */	bne lbl_802D5BC0
/* 802D5BA0 002D2AE0  7F A4 EB 78 */	mr r4, r29
/* 802D5BA4 002D2AE4  7F C5 F3 78 */	mr r5, r30
/* 802D5BA8 002D2AE8  81 83 00 00 */	lwz r12, 0(r3)
/* 802D5BAC 002D2AEC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D5BB0 002D2AF0  7D 89 03 A6 */	mtctr r12
/* 802D5BB4 002D2AF4  4E 80 04 21 */	bctrl 
/* 802D5BB8 002D2AF8  7C 66 1B 79 */	or. r6, r3, r3
/* 802D5BBC 002D2AFC  40 82 00 10 */	bne lbl_802D5BCC
lbl_802D5BC0:
/* 802D5BC0 002D2B00  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802D5BC4:
/* 802D5BC4 002D2B04  28 1F 00 00 */	cmplwi r31, 0
/* 802D5BC8 002D2B08  40 82 FF C4 */	bne lbl_802D5B8C
lbl_802D5BCC:
/* 802D5BCC 002D2B0C  7C C3 33 78 */	mr r3, r6
lbl_802D5BD0:
/* 802D5BD0 002D2B10  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5BD4 002D2B14  48 08 C6 55 */	bl _restgpr_29
/* 802D5BD8 002D2B18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5BDC 002D2B1C  7C 08 03 A6 */	mtlr r0
/* 802D5BE0 002D2B20  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5BE4 002D2B24  4E 80 00 20 */	blr 
/* 802D5BE8 002D2B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5BEC 002D2B2C  7C 08 02 A6 */	mflr r0
/* 802D5BF0 002D2B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5BF4 002D2B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5BF8 002D2B38  7C 7F 1B 78 */	mr r31, r3
/* 802D5BFC 002D2B3C  88 04 00 00 */	lbz r0, 0(r4)
/* 802D5C00 002D2B40  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D5C04 002D2B44  40 82 00 18 */	bne lbl_802D5C1C
/* 802D5C08 002D2B48  38 84 00 01 */	addi r4, r4, 1
/* 802D5C0C 002D2B4C  38 A0 00 00 */	li r5, 0
/* 802D5C10 002D2B50  48 00 09 95 */	bl JKRArchive_NS_findFsResource
/* 802D5C14 002D2B54  7C 64 1B 78 */	mr r4, r3
/* 802D5C18 002D2B58  48 00 00 10 */	b lbl_802D5C28
lbl_802D5C1C:
/* 802D5C1C 002D2B5C  80 AD 8E A0 */	lwz r5, lbl_80451420-_SDA_BASE_(r13)
/* 802D5C20 002D2B60  48 00 09 85 */	bl JKRArchive_NS_findFsResource
/* 802D5C24 002D2B64  7C 64 1B 78 */	mr r4, r3
lbl_802D5C28:
/* 802D5C28 002D2B68  28 04 00 00 */	cmplwi r4, 0
/* 802D5C2C 002D2B6C  41 82 00 20 */	beq lbl_802D5C4C
/* 802D5C30 002D2B70  7F E3 FB 78 */	mr r3, r31
/* 802D5C34 002D2B74  38 A0 00 00 */	li r5, 0
/* 802D5C38 002D2B78  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5C3C 002D2B7C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5C40 002D2B80  7D 89 03 A6 */	mtctr r12
/* 802D5C44 002D2B84  4E 80 04 21 */	bctrl 
/* 802D5C48 002D2B88  48 00 00 08 */	b lbl_802D5C50
lbl_802D5C4C:
/* 802D5C4C 002D2B8C  38 60 00 00 */	li r3, 0
lbl_802D5C50:
/* 802D5C50 002D2B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5C54 002D2B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5C58 002D2B98  7C 08 03 A6 */	mtlr r0
/* 802D5C5C 002D2B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5C60 002D2BA0  4E 80 00 20 */	blr 
/* 802D5C64 002D2BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5C68 002D2BA8  7C 08 02 A6 */	mflr r0
/* 802D5C6C 002D2BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5C70 002D2BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5C74 002D2BB4  7C 7F 1B 78 */	mr r31, r3
/* 802D5C78 002D2BB8  28 04 00 00 */	cmplwi r4, 0
/* 802D5C7C 002D2BBC  41 82 00 10 */	beq lbl_802D5C8C
/* 802D5C80 002D2BC0  3C 04 C0 C1 */	addis r0, r4, 0xc0c1
/* 802D5C84 002D2BC4  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 802D5C88 002D2BC8  40 82 00 18 */	bne lbl_802D5CA0
lbl_802D5C8C:
/* 802D5C8C 002D2BCC  7F E3 FB 78 */	mr r3, r31
/* 802D5C90 002D2BD0  7C A4 2B 78 */	mr r4, r5
/* 802D5C94 002D2BD4  48 00 0A 19 */	bl JKRArchive_NS_findNameResource
/* 802D5C98 002D2BD8  7C 64 1B 78 */	mr r4, r3
/* 802D5C9C 002D2BDC  48 00 00 0C */	b lbl_802D5CA8
lbl_802D5CA0:
/* 802D5CA0 002D2BE0  48 00 08 55 */	bl JKRArchive_NS_findTypeResource
/* 802D5CA4 002D2BE4  7C 64 1B 78 */	mr r4, r3
lbl_802D5CA8:
/* 802D5CA8 002D2BE8  28 04 00 00 */	cmplwi r4, 0
/* 802D5CAC 002D2BEC  41 82 00 20 */	beq lbl_802D5CCC
/* 802D5CB0 002D2BF0  7F E3 FB 78 */	mr r3, r31
/* 802D5CB4 002D2BF4  38 A0 00 00 */	li r5, 0
/* 802D5CB8 002D2BF8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5CBC 002D2BFC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5CC0 002D2C00  7D 89 03 A6 */	mtctr r12
/* 802D5CC4 002D2C04  4E 80 04 21 */	bctrl 
/* 802D5CC8 002D2C08  48 00 00 08 */	b lbl_802D5CD0
lbl_802D5CCC:
/* 802D5CCC 002D2C0C  38 60 00 00 */	li r3, 0
lbl_802D5CD0:
/* 802D5CD0 002D2C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5CD4 002D2C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5CD8 002D2C18  7C 08 03 A6 */	mtlr r0
/* 802D5CDC 002D2C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5CE0 002D2C20  4E 80 00 20 */	blr 

.global JKRArchive_NS_getIdxResource
JKRArchive_NS_getIdxResource:
/* 802D5CE4 002D2C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5CE8 002D2C28  7C 08 02 A6 */	mflr r0
/* 802D5CEC 002D2C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5CF0 002D2C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5CF4 002D2C34  7C 7F 1B 78 */	mr r31, r3
/* 802D5CF8 002D2C38  48 00 09 8D */	bl JKRArchive_NS_findIdxResource
/* 802D5CFC 002D2C3C  7C 64 1B 79 */	or. r4, r3, r3
/* 802D5D00 002D2C40  41 82 00 20 */	beq lbl_802D5D20
/* 802D5D04 002D2C44  7F E3 FB 78 */	mr r3, r31
/* 802D5D08 002D2C48  38 A0 00 00 */	li r5, 0
/* 802D5D0C 002D2C4C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5D10 002D2C50  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5D14 002D2C54  7D 89 03 A6 */	mtctr r12
/* 802D5D18 002D2C58  4E 80 04 21 */	bctrl 
/* 802D5D1C 002D2C5C  48 00 00 08 */	b lbl_802D5D24
lbl_802D5D20:
/* 802D5D20 002D2C60  38 60 00 00 */	li r3, 0
lbl_802D5D24:
/* 802D5D24 002D2C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5D28 002D2C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5D2C 002D2C6C  7C 08 03 A6 */	mtlr r0
/* 802D5D30 002D2C70  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5D34 002D2C74  4E 80 00 20 */	blr 

.global JKRArchive_NS_getResource_X2_
JKRArchive_NS_getResource_X2_:
/* 802D5D38 002D2C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5D3C 002D2C7C  7C 08 02 A6 */	mflr r0
/* 802D5D40 002D2C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5D44 002D2C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5D48 002D2C88  7C 7F 1B 78 */	mr r31, r3
/* 802D5D4C 002D2C8C  48 00 0A 25 */	bl JKRArchive_NS_findIdResource
/* 802D5D50 002D2C90  7C 64 1B 79 */	or. r4, r3, r3
/* 802D5D54 002D2C94  41 82 00 20 */	beq lbl_802D5D74
/* 802D5D58 002D2C98  7F E3 FB 78 */	mr r3, r31
/* 802D5D5C 002D2C9C  38 A0 00 00 */	li r5, 0
/* 802D5D60 002D2CA0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5D64 002D2CA4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5D68 002D2CA8  7D 89 03 A6 */	mtctr r12
/* 802D5D6C 002D2CAC  4E 80 04 21 */	bctrl 
/* 802D5D70 002D2CB0  48 00 00 08 */	b lbl_802D5D78
lbl_802D5D74:
/* 802D5D74 002D2CB4  38 60 00 00 */	li r3, 0
lbl_802D5D78:
/* 802D5D78 002D2CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5D7C 002D2CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5D80 002D2CC0  7C 08 03 A6 */	mtlr r0
/* 802D5D84 002D2CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5D88 002D2CC8  4E 80 00 20 */	blr 
/* 802D5D8C 002D2CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5D90 002D2CD0  7C 08 02 A6 */	mflr r0
/* 802D5D94 002D2CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5D98 002D2CD8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5D9C 002D2CDC  48 08 C4 41 */	bl _savegpr_29
/* 802D5DA0 002D2CE0  7C 7D 1B 78 */	mr r29, r3
/* 802D5DA4 002D2CE4  7C 9E 23 78 */	mr r30, r4
/* 802D5DA8 002D2CE8  7C BF 2B 78 */	mr r31, r5
/* 802D5DAC 002D2CEC  28 06 00 00 */	cmplwi r6, 0
/* 802D5DB0 002D2CF0  41 82 00 10 */	beq lbl_802D5DC0
/* 802D5DB4 002D2CF4  3C 06 C0 C1 */	addis r0, r6, 0xc0c1
/* 802D5DB8 002D2CF8  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 802D5DBC 002D2CFC  40 82 00 18 */	bne lbl_802D5DD4
lbl_802D5DC0:
/* 802D5DC0 002D2D00  7F A3 EB 78 */	mr r3, r29
/* 802D5DC4 002D2D04  7C E4 3B 78 */	mr r4, r7
/* 802D5DC8 002D2D08  48 00 08 E5 */	bl JKRArchive_NS_findNameResource
/* 802D5DCC 002D2D0C  7C 66 1B 78 */	mr r6, r3
/* 802D5DD0 002D2D10  48 00 00 14 */	b lbl_802D5DE4
lbl_802D5DD4:
/* 802D5DD4 002D2D14  7C C4 33 78 */	mr r4, r6
/* 802D5DD8 002D2D18  7C E5 3B 78 */	mr r5, r7
/* 802D5DDC 002D2D1C  48 00 07 19 */	bl JKRArchive_NS_findTypeResource
/* 802D5DE0 002D2D20  7C 66 1B 78 */	mr r6, r3
lbl_802D5DE4:
/* 802D5DE4 002D2D24  28 06 00 00 */	cmplwi r6, 0
/* 802D5DE8 002D2D28  41 82 00 2C */	beq lbl_802D5E14
/* 802D5DEC 002D2D2C  7F A3 EB 78 */	mr r3, r29
/* 802D5DF0 002D2D30  7F C4 F3 78 */	mr r4, r30
/* 802D5DF4 002D2D34  7F E5 FB 78 */	mr r5, r31
/* 802D5DF8 002D2D38  38 E1 00 08 */	addi r7, r1, 8
/* 802D5DFC 002D2D3C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D5E00 002D2D40  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802D5E04 002D2D44  7D 89 03 A6 */	mtctr r12
/* 802D5E08 002D2D48  4E 80 04 21 */	bctrl 
/* 802D5E0C 002D2D4C  80 61 00 08 */	lwz r3, 8(r1)
/* 802D5E10 002D2D50  48 00 00 08 */	b lbl_802D5E18
lbl_802D5E14:
/* 802D5E14 002D2D54  38 60 00 00 */	li r3, 0
lbl_802D5E18:
/* 802D5E18 002D2D58  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5E1C 002D2D5C  48 08 C4 0D */	bl _restgpr_29
/* 802D5E20 002D2D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5E24 002D2D64  7C 08 03 A6 */	mtlr r0
/* 802D5E28 002D2D68  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5E2C 002D2D6C  4E 80 00 20 */	blr 
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
/* 802D5E64 002D2DA4  48 00 07 41 */	bl JKRArchive_NS_findFsResource
/* 802D5E68 002D2DA8  7C 66 1B 78 */	mr r6, r3
/* 802D5E6C 002D2DAC  48 00 00 14 */	b lbl_802D5E80
lbl_802D5E70:
/* 802D5E70 002D2DB0  7C C4 33 78 */	mr r4, r6
/* 802D5E74 002D2DB4  80 AD 8E A0 */	lwz r5, lbl_80451420-_SDA_BASE_(r13)
/* 802D5E78 002D2DB8  48 00 07 2D */	bl JKRArchive_NS_findFsResource
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

.global JKRArchive_NS_readIdxResource
JKRArchive_NS_readIdxResource:
/* 802D5ECC 002D2E0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5ED0 002D2E10  7C 08 02 A6 */	mflr r0
/* 802D5ED4 002D2E14  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5ED8 002D2E18  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5EDC 002D2E1C  48 08 C3 01 */	bl _savegpr_29
/* 802D5EE0 002D2E20  7C 7D 1B 78 */	mr r29, r3
/* 802D5EE4 002D2E24  7C 9E 23 78 */	mr r30, r4
/* 802D5EE8 002D2E28  7C BF 2B 78 */	mr r31, r5
/* 802D5EEC 002D2E2C  7C C4 33 78 */	mr r4, r6
/* 802D5EF0 002D2E30  48 00 07 95 */	bl JKRArchive_NS_findIdxResource
/* 802D5EF4 002D2E34  7C 66 1B 79 */	or. r6, r3, r3
/* 802D5EF8 002D2E38  41 82 00 2C */	beq lbl_802D5F24
/* 802D5EFC 002D2E3C  7F A3 EB 78 */	mr r3, r29
/* 802D5F00 002D2E40  7F C4 F3 78 */	mr r4, r30
/* 802D5F04 002D2E44  7F E5 FB 78 */	mr r5, r31
/* 802D5F08 002D2E48  38 E1 00 08 */	addi r7, r1, 8
/* 802D5F0C 002D2E4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D5F10 002D2E50  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802D5F14 002D2E54  7D 89 03 A6 */	mtctr r12
/* 802D5F18 002D2E58  4E 80 04 21 */	bctrl 
/* 802D5F1C 002D2E5C  80 61 00 08 */	lwz r3, 8(r1)
/* 802D5F20 002D2E60  48 00 00 08 */	b lbl_802D5F28
lbl_802D5F24:
/* 802D5F24 002D2E64  38 60 00 00 */	li r3, 0
lbl_802D5F28:
/* 802D5F28 002D2E68  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5F2C 002D2E6C  48 08 C2 FD */	bl _restgpr_29
/* 802D5F30 002D2E70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5F34 002D2E74  7C 08 03 A6 */	mtlr r0
/* 802D5F38 002D2E78  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5F3C 002D2E7C  4E 80 00 20 */	blr 

.global JKRArchive_NS_readResource_X2_
JKRArchive_NS_readResource_X2_:
/* 802D5F40 002D2E80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5F44 002D2E84  7C 08 02 A6 */	mflr r0
/* 802D5F48 002D2E88  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5F4C 002D2E8C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5F50 002D2E90  48 08 C2 8D */	bl _savegpr_29
/* 802D5F54 002D2E94  7C 7D 1B 78 */	mr r29, r3
/* 802D5F58 002D2E98  7C 9E 23 78 */	mr r30, r4
/* 802D5F5C 002D2E9C  7C BF 2B 78 */	mr r31, r5
/* 802D5F60 002D2EA0  7C C4 33 78 */	mr r4, r6
/* 802D5F64 002D2EA4  48 00 08 0D */	bl JKRArchive_NS_findIdResource
/* 802D5F68 002D2EA8  7C 66 1B 79 */	or. r6, r3, r3
/* 802D5F6C 002D2EAC  41 82 00 2C */	beq lbl_802D5F98
/* 802D5F70 002D2EB0  7F A3 EB 78 */	mr r3, r29
/* 802D5F74 002D2EB4  7F C4 F3 78 */	mr r4, r30
/* 802D5F78 002D2EB8  7F E5 FB 78 */	mr r5, r31
/* 802D5F7C 002D2EBC  38 E1 00 08 */	addi r7, r1, 8
/* 802D5F80 002D2EC0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D5F84 002D2EC4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802D5F88 002D2EC8  7D 89 03 A6 */	mtctr r12
/* 802D5F8C 002D2ECC  4E 80 04 21 */	bctrl 
/* 802D5F90 002D2ED0  80 61 00 08 */	lwz r3, 8(r1)
/* 802D5F94 002D2ED4  48 00 00 08 */	b lbl_802D5F9C
lbl_802D5F98:
/* 802D5F98 002D2ED8  38 60 00 00 */	li r3, 0
lbl_802D5F9C:
/* 802D5F9C 002D2EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5FA0 002D2EE0  48 08 C2 89 */	bl _restgpr_29
/* 802D5FA4 002D2EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5FA8 002D2EE8  7C 08 03 A6 */	mtlr r0
/* 802D5FAC 002D2EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5FB0 002D2EF0  4E 80 00 20 */	blr 
/* 802D5FB4 002D2EF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5FB8 002D2EF8  7C 08 02 A6 */	mflr r0
/* 802D5FBC 002D2EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5FC0 002D2F00  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5FC4 002D2F04  48 08 C2 15 */	bl _savegpr_28
/* 802D5FC8 002D2F08  7C 7C 1B 78 */	mr r28, r3
/* 802D5FCC 002D2F0C  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802D5FD0 002D2F10  28 00 00 00 */	cmplwi r0, 0
/* 802D5FD4 002D2F14  41 82 00 50 */	beq lbl_802D6024
/* 802D5FD8 002D2F18  88 1C 00 3C */	lbz r0, 0x3c(r28)
/* 802D5FDC 002D2F1C  28 00 00 01 */	cmplwi r0, 1
/* 802D5FE0 002D2F20  41 82 00 44 */	beq lbl_802D6024
/* 802D5FE4 002D2F24  83 DC 00 4C */	lwz r30, 0x4c(r28)
/* 802D5FE8 002D2F28  3B A0 00 00 */	li r29, 0
/* 802D5FEC 002D2F2C  3B E0 00 00 */	li r31, 0
/* 802D5FF0 002D2F30  48 00 00 24 */	b lbl_802D6014
lbl_802D5FF4:
/* 802D5FF4 002D2F34  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802D5FF8 002D2F38  28 03 00 00 */	cmplwi r3, 0
/* 802D5FFC 002D2F3C  41 82 00 10 */	beq lbl_802D600C
/* 802D6000 002D2F40  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 802D6004 002D2F44  4B FF 84 FD */	bl JKRHeap_NS_free
/* 802D6008 002D2F48  93 FE 00 10 */	stw r31, 0x10(r30)
lbl_802D600C:
/* 802D600C 002D2F4C  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D6010 002D2F50  3B BD 00 01 */	addi r29, r29, 1
lbl_802D6014:
/* 802D6014 002D2F54  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 802D6018 002D2F58  80 03 00 08 */	lwz r0, 8(r3)
/* 802D601C 002D2F5C  7C 1D 00 40 */	cmplw r29, r0
/* 802D6020 002D2F60  41 80 FF D4 */	blt lbl_802D5FF4
lbl_802D6024:
/* 802D6024 002D2F64  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6028 002D2F68  48 08 C1 FD */	bl _restgpr_28
/* 802D602C 002D2F6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6030 002D2F70  7C 08 03 A6 */	mtlr r0
/* 802D6034 002D2F74  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6038 002D2F78  4E 80 00 20 */	blr 
/* 802D603C 002D2F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6040 002D2F80  7C 08 02 A6 */	mflr r0
/* 802D6044 002D2F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6048 002D2F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D604C 002D2F8C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D6050 002D2F90  7C 7E 1B 78 */	mr r30, r3
/* 802D6054 002D2F94  7C 9F 23 78 */	mr r31, r4
/* 802D6058 002D2F98  48 00 06 DD */	bl JKRArchive_NS_findPtrResource
/* 802D605C 002D2F9C  28 03 00 00 */	cmplwi r3, 0
/* 802D6060 002D2FA0  40 82 00 0C */	bne lbl_802D606C
/* 802D6064 002D2FA4  38 60 00 00 */	li r3, 0
/* 802D6068 002D2FA8  48 00 00 1C */	b lbl_802D6084
lbl_802D606C:
/* 802D606C 002D2FAC  38 00 00 00 */	li r0, 0
/* 802D6070 002D2FB0  90 03 00 10 */	stw r0, 0x10(r3)
/* 802D6074 002D2FB4  7F E3 FB 78 */	mr r3, r31
/* 802D6078 002D2FB8  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D607C 002D2FBC  4B FF 84 85 */	bl JKRHeap_NS_free
/* 802D6080 002D2FC0  38 60 00 01 */	li r3, 1
lbl_802D6084:
/* 802D6084 002D2FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6088 002D2FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D608C 002D2FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6090 002D2FD0  7C 08 03 A6 */	mtlr r0
/* 802D6094 002D2FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6098 002D2FD8  4E 80 00 20 */	blr 
/* 802D609C 002D2FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D60A0 002D2FE0  7C 08 02 A6 */	mflr r0
/* 802D60A4 002D2FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D60A8 002D2FE8  48 00 06 8D */	bl JKRArchive_NS_findPtrResource
/* 802D60AC 002D2FEC  28 03 00 00 */	cmplwi r3, 0
/* 802D60B0 002D2FF0  40 82 00 0C */	bne lbl_802D60BC
/* 802D60B4 002D2FF4  38 60 00 00 */	li r3, 0
/* 802D60B8 002D2FF8  48 00 00 10 */	b lbl_802D60C8
lbl_802D60BC:
/* 802D60BC 002D2FFC  38 00 00 00 */	li r0, 0
/* 802D60C0 002D3000  90 03 00 10 */	stw r0, 0x10(r3)
/* 802D60C4 002D3004  38 60 00 01 */	li r3, 1
lbl_802D60C8:
/* 802D60C8 002D3008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D60CC 002D300C  7C 08 03 A6 */	mtlr r0
/* 802D60D0 002D3010  38 21 00 10 */	addi r1, r1, 0x10
/* 802D60D4 002D3014  4E 80 00 20 */	blr 
/* 802D60D8 002D3018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D60DC 002D301C  7C 08 02 A6 */	mflr r0
/* 802D60E0 002D3020  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D60E4 002D3024  48 00 06 51 */	bl JKRArchive_NS_findPtrResource
/* 802D60E8 002D3028  28 03 00 00 */	cmplwi r3, 0
/* 802D60EC 002D302C  40 82 00 0C */	bne lbl_802D60F8
/* 802D60F0 002D3030  38 60 FF FF */	li r3, -1
/* 802D60F4 002D3034  48 00 00 08 */	b lbl_802D60FC
lbl_802D60F8:
/* 802D60F8 002D3038  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802D60FC:
/* 802D60FC 002D303C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6100 002D3040  7C 08 03 A6 */	mtlr r0
/* 802D6104 002D3044  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6108 002D3048  4E 80 00 20 */	blr 

.global JKRArchive_NS_countResource
JKRArchive_NS_countResource:
/* 802D610C 002D304C  38 C0 00 00 */	li r6, 0
/* 802D6110 002D3050  38 80 00 00 */	li r4, 0
/* 802D6114 002D3054  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 802D6118 002D3058  80 05 00 08 */	lwz r0, 8(r5)
/* 802D611C 002D305C  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 802D6120 002D3060  7C 09 03 A6 */	mtctr r0
/* 802D6124 002D3064  28 00 00 00 */	cmplwi r0, 0
/* 802D6128 002D3068  40 81 00 20 */	ble lbl_802D6148
lbl_802D612C:
/* 802D612C 002D306C  38 04 00 04 */	addi r0, r4, 4
/* 802D6130 002D3070  7C 03 00 2E */	lwzx r0, r3, r0
/* 802D6134 002D3074  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D6138 002D3078  41 82 00 08 */	beq lbl_802D6140
/* 802D613C 002D307C  38 C6 00 01 */	addi r6, r6, 1
lbl_802D6140:
/* 802D6140 002D3080  38 84 00 14 */	addi r4, r4, 0x14
/* 802D6144 002D3084  42 00 FF E8 */	bdnz lbl_802D612C
lbl_802D6148:
/* 802D6148 002D3088  7C C3 33 78 */	mr r3, r6
/* 802D614C 002D308C  4E 80 00 20 */	blr 
/* 802D6150 002D3090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6154 002D3094  7C 08 02 A6 */	mflr r0
/* 802D6158 002D3098  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D615C 002D309C  88 04 00 00 */	lbz r0, 0(r4)
/* 802D6160 002D30A0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D6164 002D30A4  40 82 00 20 */	bne lbl_802D6184
/* 802D6168 002D30A8  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802D616C 002D30AC  7C 00 07 75 */	extsb. r0, r0
/* 802D6170 002D30B0  40 82 00 08 */	bne lbl_802D6178
/* 802D6174 002D30B4  38 80 00 00 */	li r4, 0
lbl_802D6178:
/* 802D6178 002D30B8  38 A0 00 00 */	li r5, 0
/* 802D617C 002D30BC  48 00 02 A1 */	bl JKRArchive_NS_findDirectory
/* 802D6180 002D30C0  48 00 00 0C */	b lbl_802D618C
lbl_802D6184:
/* 802D6184 002D30C4  80 AD 8E A0 */	lwz r5, lbl_80451420-_SDA_BASE_(r13)
/* 802D6188 002D30C8  48 00 02 95 */	bl JKRArchive_NS_findDirectory
lbl_802D618C:
/* 802D618C 002D30CC  28 03 00 00 */	cmplwi r3, 0
/* 802D6190 002D30D0  41 82 00 0C */	beq lbl_802D619C
/* 802D6194 002D30D4  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 802D6198 002D30D8  48 00 00 08 */	b lbl_802D61A0
lbl_802D619C:
/* 802D619C 002D30DC  38 60 00 00 */	li r3, 0
lbl_802D61A0:
/* 802D61A0 002D30E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D61A4 002D30E4  7C 08 03 A6 */	mtlr r0
/* 802D61A8 002D30E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D61AC 002D30EC  4E 80 00 20 */	blr 
/* 802D61B0 002D30F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D61B4 002D30F4  7C 08 02 A6 */	mflr r0
/* 802D61B8 002D30F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D61BC 002D30FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D61C0 002D3100  93 C1 00 08 */	stw r30, 8(r1)
/* 802D61C4 002D3104  7C 7E 1B 78 */	mr r30, r3
/* 802D61C8 002D3108  88 04 00 00 */	lbz r0, 0(r4)
/* 802D61CC 002D310C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D61D0 002D3110  40 82 00 28 */	bne lbl_802D61F8
/* 802D61D4 002D3114  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802D61D8 002D3118  7C 00 07 75 */	extsb. r0, r0
/* 802D61DC 002D311C  40 82 00 08 */	bne lbl_802D61E4
/* 802D61E0 002D3120  38 80 00 00 */	li r4, 0
lbl_802D61E4:
/* 802D61E4 002D3124  7F C3 F3 78 */	mr r3, r30
/* 802D61E8 002D3128  38 A0 00 00 */	li r5, 0
/* 802D61EC 002D312C  48 00 02 31 */	bl JKRArchive_NS_findDirectory
/* 802D61F0 002D3130  7C 7F 1B 78 */	mr r31, r3
/* 802D61F4 002D3134  48 00 00 10 */	b lbl_802D6204
lbl_802D61F8:
/* 802D61F8 002D3138  80 AD 8E A0 */	lwz r5, lbl_80451420-_SDA_BASE_(r13)
/* 802D61FC 002D313C  48 00 02 21 */	bl JKRArchive_NS_findDirectory
/* 802D6200 002D3140  7C 7F 1B 78 */	mr r31, r3
lbl_802D6204:
/* 802D6204 002D3144  28 1F 00 00 */	cmplwi r31, 0
/* 802D6208 002D3148  41 82 00 38 */	beq lbl_802D6240
/* 802D620C 002D314C  38 60 00 24 */	li r3, 0x24
/* 802D6210 002D3150  80 8D 8D F0 */	lwz r4, lbl_80451370-_SDA_BASE_(r13)
/* 802D6214 002D3154  38 A0 00 00 */	li r5, 0
/* 802D6218 002D3158  4B FF 8A 81 */	bl __nw_X2_
/* 802D621C 002D315C  7C 60 1B 79 */	or. r0, r3, r3
/* 802D6220 002D3160  41 82 00 18 */	beq lbl_802D6238
/* 802D6224 002D3164  7F C4 F3 78 */	mr r4, r30
/* 802D6228 002D3168  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802D622C 002D316C  A0 DF 00 0A */	lhz r6, 0xa(r31)
/* 802D6230 002D3170  4B FF E4 09 */	bl JKRArcFinder
/* 802D6234 002D3174  7C 60 1B 78 */	mr r0, r3
lbl_802D6238:
/* 802D6238 002D3178  7C 03 03 78 */	mr r3, r0
/* 802D623C 002D317C  48 00 00 08 */	b lbl_802D6244
lbl_802D6240:
/* 802D6240 002D3180  38 60 00 00 */	li r3, 0
lbl_802D6244:
/* 802D6244 002D3184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6248 002D3188  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D624C 002D318C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6250 002D3190  7C 08 03 A6 */	mtlr r0
/* 802D6254 002D3194  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6258 002D3198  4E 80 00 20 */	blr 

.global JKRArchive_NS_getFileAttribute
JKRArchive_NS_getFileAttribute:
/* 802D625C 002D319C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6260 002D31A0  7C 08 02 A6 */	mflr r0
/* 802D6264 002D31A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6268 002D31A8  48 00 04 1D */	bl JKRArchive_NS_findIdxResource
/* 802D626C 002D31AC  28 03 00 00 */	cmplwi r3, 0
/* 802D6270 002D31B0  41 82 00 10 */	beq lbl_802D6280
/* 802D6274 002D31B4  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6278 002D31B8  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D627C 002D31BC  48 00 00 08 */	b lbl_802D6284
lbl_802D6280:
/* 802D6280 002D31C0  38 60 00 00 */	li r3, 0
lbl_802D6284:
/* 802D6284 002D31C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6288 002D31C8  7C 08 03 A6 */	mtlr r0
/* 802D628C 002D31CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6290 002D31D0  4E 80 00 20 */	blr 

