.include "macros.inc"

.section .text, "ax" # 802d4638


.global JKRArcFinder
JKRArcFinder:
/* 802D4638 002D1578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D463C 002D157C  7C 08 02 A6 */	mflr r0
/* 802D4640 002D1580  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4644 002D1584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4648 002D1588  7C 7F 1B 78 */	mr r31, r3
/* 802D464C 002D158C  3C E0 80 3D */	lis r7, lbl_803CC228@ha
/* 802D4650 002D1590  38 07 C2 28 */	addi r0, r7, lbl_803CC228@l
/* 802D4654 002D1594  90 03 00 0C */	stw r0, 0xc(r3)
/* 802D4658 002D1598  38 00 00 00 */	li r0, 0
/* 802D465C 002D159C  98 03 00 10 */	stb r0, 0x10(r3)
/* 802D4660 002D15A0  98 03 00 11 */	stb r0, 0x11(r3)
/* 802D4664 002D15A4  3C E0 80 3D */	lis r7, lbl_803CC218@ha
/* 802D4668 002D15A8  38 07 C2 18 */	addi r0, r7, lbl_803CC218@l
/* 802D466C 002D15AC  90 03 00 0C */	stw r0, 0xc(r3)
/* 802D4670 002D15B0  90 83 00 14 */	stw r4, 0x14(r3)
/* 802D4674 002D15B4  7C 06 00 D0 */	neg r0, r6
/* 802D4678 002D15B8  7C 00 30 78 */	andc r0, r0, r6
/* 802D467C 002D15BC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D4680 002D15C0  98 03 00 10 */	stb r0, 0x10(r3)
/* 802D4684 002D15C4  90 A3 00 18 */	stw r5, 0x18(r3)
/* 802D4688 002D15C8  38 06 FF FF */	addi r0, r6, -1
/* 802D468C 002D15CC  7C 05 02 14 */	add r0, r5, r0
/* 802D4690 002D15D0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802D4694 002D15D4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802D4698 002D15D8  90 03 00 20 */	stw r0, 0x20(r3)
/* 802D469C 002D15DC  81 83 00 0C */	lwz r12, 0xc(r3)
/* 802D46A0 002D15E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D46A4 002D15E4  7D 89 03 A6 */	mtctr r12
/* 802D46A8 002D15E8  4E 80 04 21 */	bctrl 
/* 802D46AC 002D15EC  7F E3 FB 78 */	mr r3, r31
/* 802D46B0 002D15F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D46B4 002D15F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D46B8 002D15F8  7C 08 03 A6 */	mtlr r0
/* 802D46BC 002D15FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D46C0 002D1600  4E 80 00 20 */	blr 
/* 802D46C4 002D1604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D46C8 002D1608  7C 08 02 A6 */	mflr r0
/* 802D46CC 002D160C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D46D0 002D1610  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D46D4 002D1614  7C 7F 1B 78 */	mr r31, r3
/* 802D46D8 002D1618  88 03 00 10 */	lbz r0, 0x10(r3)
/* 802D46DC 002D161C  28 00 00 00 */	cmplwi r0, 0
/* 802D46E0 002D1620  41 82 00 78 */	beq lbl_802D4758
/* 802D46E4 002D1624  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 802D46E8 002D1628  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 802D46EC 002D162C  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 802D46F0 002D1630  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 802D46F4 002D1634  7C 05 00 10 */	subfc r0, r5, r0
/* 802D46F8 002D1638  7C 04 19 14 */	adde r0, r4, r3
/* 802D46FC 002D163C  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802D4700 002D1640  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802D4704 002D1644  28 00 00 00 */	cmplwi r0, 0
/* 802D4708 002D1648  41 82 00 50 */	beq lbl_802D4758
/* 802D470C 002D164C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802D4710 002D1650  38 81 00 08 */	addi r4, r1, 8
/* 802D4714 002D1654  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 802D4718 002D1658  48 00 13 A9 */	bl JKRArchive_NS_getDirEntry
/* 802D471C 002D165C  98 7F 00 10 */	stb r3, 0x10(r31)
/* 802D4720 002D1660  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D4724 002D1664  90 1F 00 00 */	stw r0, 0(r31)
/* 802D4728 002D1668  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802D472C 002D166C  90 1F 00 04 */	stw r0, 4(r31)
/* 802D4730 002D1670  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 802D4734 002D1674  B0 1F 00 08 */	sth r0, 8(r31)
/* 802D4738 002D1678  88 01 00 08 */	lbz r0, 8(r1)
/* 802D473C 002D167C  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 802D4740 002D1680  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D4744 002D1684  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 802D4748 002D1688  98 1F 00 11 */	stb r0, 0x11(r31)
/* 802D474C 002D168C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802D4750 002D1690  38 03 00 01 */	addi r0, r3, 1
/* 802D4754 002D1694  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_802D4758:
/* 802D4758 002D1698  88 7F 00 10 */	lbz r3, 0x10(r31)
/* 802D475C 002D169C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D4760 002D16A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4764 002D16A4  7C 08 03 A6 */	mtlr r0
/* 802D4768 002D16A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D476C 002D16AC  4E 80 00 20 */	blr 

.global JKRDvdFinder
JKRDvdFinder:
/* 802D4770 002D16B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4774 002D16B4  7C 08 02 A6 */	mflr r0
/* 802D4778 002D16B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D477C 002D16BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4780 002D16C0  7C 7F 1B 78 */	mr r31, r3
/* 802D4784 002D16C4  3C 60 80 3D */	lis r3, lbl_803CC228@ha
/* 802D4788 002D16C8  38 03 C2 28 */	addi r0, r3, lbl_803CC228@l
/* 802D478C 002D16CC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D4790 002D16D0  38 00 00 00 */	li r0, 0
/* 802D4794 002D16D4  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802D4798 002D16D8  98 1F 00 11 */	stb r0, 0x11(r31)
/* 802D479C 002D16DC  3C 60 80 3D */	lis r3, lbl_803CC208@ha
/* 802D47A0 002D16E0  38 03 C2 08 */	addi r0, r3, lbl_803CC208@l
/* 802D47A4 002D16E4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D47A8 002D16E8  7C 83 23 78 */	mr r3, r4
/* 802D47AC 002D16EC  38 9F 00 14 */	addi r4, r31, 0x14
/* 802D47B0 002D16F0  48 07 47 D1 */	bl DVDOpenDir
/* 802D47B4 002D16F4  30 03 FF FF */	addic r0, r3, -1
/* 802D47B8 002D16F8  7C 00 19 10 */	subfe r0, r0, r3
/* 802D47BC 002D16FC  98 1F 00 20 */	stb r0, 0x20(r31)
/* 802D47C0 002D1700  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 802D47C4 002D1704  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802D47C8 002D1708  7F E3 FB 78 */	mr r3, r31
/* 802D47CC 002D170C  81 9F 00 0C */	lwz r12, 0xc(r31)
/* 802D47D0 002D1710  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D47D4 002D1714  7D 89 03 A6 */	mtctr r12
/* 802D47D8 002D1718  4E 80 04 21 */	bctrl 
/* 802D47DC 002D171C  7F E3 FB 78 */	mr r3, r31
/* 802D47E0 002D1720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D47E4 002D1724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D47E8 002D1728  7C 08 03 A6 */	mtlr r0
/* 802D47EC 002D172C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D47F0 002D1730  4E 80 00 20 */	blr 
/* 802D47F4 002D1734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D47F8 002D1738  7C 08 02 A6 */	mflr r0
/* 802D47FC 002D173C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4800 002D1740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4804 002D1744  93 C1 00 08 */	stw r30, 8(r1)
/* 802D4808 002D1748  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D480C 002D174C  7C 9F 23 78 */	mr r31, r4
/* 802D4810 002D1750  41 82 00 48 */	beq lbl_802D4858
/* 802D4814 002D1754  3C 60 80 3D */	lis r3, lbl_803CC208@ha
/* 802D4818 002D1758  38 03 C2 08 */	addi r0, r3, lbl_803CC208@l
/* 802D481C 002D175C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802D4820 002D1760  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 802D4824 002D1764  28 00 00 00 */	cmplwi r0, 0
/* 802D4828 002D1768  41 82 00 0C */	beq lbl_802D4834
/* 802D482C 002D176C  38 7E 00 14 */	addi r3, r30, 0x14
/* 802D4830 002D1770  48 07 48 B5 */	bl DVDCloseDir
lbl_802D4834:
/* 802D4834 002D1774  28 1E 00 00 */	cmplwi r30, 0
/* 802D4838 002D1778  41 82 00 10 */	beq lbl_802D4848
/* 802D483C 002D177C  3C 60 80 3D */	lis r3, lbl_803CC228@ha
/* 802D4840 002D1780  38 03 C2 28 */	addi r0, r3, lbl_803CC228@l
/* 802D4844 002D1784  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_802D4848:
/* 802D4848 002D1788  7F E0 07 35 */	extsh. r0, r31
/* 802D484C 002D178C  40 81 00 0C */	ble lbl_802D4858
/* 802D4850 002D1790  7F C3 F3 78 */	mr r3, r30
/* 802D4854 002D1794  4B FF A4 E9 */	bl __dl
lbl_802D4858:
/* 802D4858 002D1798  7F C3 F3 78 */	mr r3, r30
/* 802D485C 002D179C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4860 002D17A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4864 002D17A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4868 002D17A8  7C 08 03 A6 */	mtlr r0
/* 802D486C 002D17AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4870 002D17B0  4E 80 00 20 */	blr 
/* 802D4874 002D17B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D4878 002D17B8  7C 08 02 A6 */	mflr r0
/* 802D487C 002D17BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D4880 002D17C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D4884 002D17C4  7C 7F 1B 78 */	mr r31, r3
/* 802D4888 002D17C8  88 03 00 10 */	lbz r0, 0x10(r3)
/* 802D488C 002D17CC  28 00 00 00 */	cmplwi r0, 0
/* 802D4890 002D17D0  41 82 00 68 */	beq lbl_802D48F8
/* 802D4894 002D17D4  38 7F 00 14 */	addi r3, r31, 0x14
/* 802D4898 002D17D8  38 81 00 08 */	addi r4, r1, 8
/* 802D489C 002D17DC  48 07 47 A5 */	bl DVDReadDir
/* 802D48A0 002D17E0  30 03 FF FF */	addic r0, r3, -1
/* 802D48A4 002D17E4  7C 00 19 10 */	subfe r0, r0, r3
/* 802D48A8 002D17E8  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802D48AC 002D17EC  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802D48B0 002D17F0  28 00 00 00 */	cmplwi r0, 0
/* 802D48B4 002D17F4  41 82 00 44 */	beq lbl_802D48F8
/* 802D48B8 002D17F8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802D48BC 002D17FC  30 03 FF FF */	addic r0, r3, -1
/* 802D48C0 002D1800  7C 00 19 10 */	subfe r0, r0, r3
/* 802D48C4 002D1804  98 1F 00 11 */	stb r0, 0x11(r31)
/* 802D48C8 002D1808  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802D48CC 002D180C  90 1F 00 00 */	stw r0, 0(r31)
/* 802D48D0 002D1810  80 01 00 08 */	lwz r0, 8(r1)
/* 802D48D4 002D1814  90 1F 00 04 */	stw r0, 4(r31)
/* 802D48D8 002D1818  38 00 00 00 */	li r0, 0
/* 802D48DC 002D181C  B0 1F 00 08 */	sth r0, 8(r31)
/* 802D48E0 002D1820  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 802D48E4 002D1824  28 00 00 00 */	cmplwi r0, 0
/* 802D48E8 002D1828  38 00 00 01 */	li r0, 1
/* 802D48EC 002D182C  41 82 00 08 */	beq lbl_802D48F4
/* 802D48F0 002D1830  38 00 00 02 */	li r0, 2
lbl_802D48F4:
/* 802D48F4 002D1834  B0 1F 00 0A */	sth r0, 0xa(r31)
lbl_802D48F8:
/* 802D48F8 002D1838  88 7F 00 10 */	lbz r3, 0x10(r31)
/* 802D48FC 002D183C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D4900 002D1840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4904 002D1844  7C 08 03 A6 */	mtlr r0
/* 802D4908 002D1848  38 21 00 20 */	addi r1, r1, 0x20
/* 802D490C 002D184C  4E 80 00 20 */	blr 
/* 802D4910 002D1850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4914 002D1854  7C 08 02 A6 */	mflr r0
/* 802D4918 002D1858  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D491C 002D185C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4920 002D1860  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D4924 002D1864  41 82 00 1C */	beq lbl_802D4940
/* 802D4928 002D1868  3C A0 80 3D */	lis r5, lbl_803CC228@ha
/* 802D492C 002D186C  38 05 C2 28 */	addi r0, r5, lbl_803CC228@l
/* 802D4930 002D1870  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D4934 002D1874  7C 80 07 35 */	extsh. r0, r4
/* 802D4938 002D1878  40 81 00 08 */	ble lbl_802D4940
/* 802D493C 002D187C  4B FF A4 01 */	bl __dl
lbl_802D4940:
/* 802D4940 002D1880  7F E3 FB 78 */	mr r3, r31
/* 802D4944 002D1884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4948 002D1888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D494C 002D188C  7C 08 03 A6 */	mtlr r0
/* 802D4950 002D1890  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4954 002D1894  4E 80 00 20 */	blr 
/* 802D4958 002D1898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D495C 002D189C  7C 08 02 A6 */	mflr r0
/* 802D4960 002D18A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4964 002D18A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4968 002D18A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D496C 002D18AC  41 82 00 30 */	beq lbl_802D499C
/* 802D4970 002D18B0  3C 60 80 3D */	lis r3, lbl_803CC218@ha
/* 802D4974 002D18B4  38 03 C2 18 */	addi r0, r3, lbl_803CC218@l
/* 802D4978 002D18B8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802D497C 002D18BC  41 82 00 10 */	beq lbl_802D498C
/* 802D4980 002D18C0  3C 60 80 3D */	lis r3, lbl_803CC228@ha
/* 802D4984 002D18C4  38 03 C2 28 */	addi r0, r3, lbl_803CC228@l
/* 802D4988 002D18C8  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_802D498C:
/* 802D498C 002D18CC  7C 80 07 35 */	extsh. r0, r4
/* 802D4990 002D18D0  40 81 00 0C */	ble lbl_802D499C
/* 802D4994 002D18D4  7F E3 FB 78 */	mr r3, r31
/* 802D4998 002D18D8  4B FF A3 A5 */	bl __dl
lbl_802D499C:
/* 802D499C 002D18DC  7F E3 FB 78 */	mr r3, r31
/* 802D49A0 002D18E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D49A4 002D18E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D49A8 002D18E8  7C 08 03 A6 */	mtlr r0
/* 802D49AC 002D18EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D49B0 002D18F0  4E 80 00 20 */	blr 
