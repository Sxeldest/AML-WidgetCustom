; =========================================================
; Game Engine Function: silk_NLSF_encode
; Address            : 0x1B15F4 - 0x1B18CA
; =========================================================

1B15F4:  PUSH            {R4-R7,LR}
1B15F6:  ADD             R7, SP, #0xC
1B15F8:  PUSH.W          {R8-R11}
1B15FC:  SUB             SP, SP, #0xAC
1B15FE:  STR.W           R0, [R7,#var_C4]
1B1602:  MOV             R5, R2
1B1604:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B1610)
1B1606:  MOV             R6, R1
1B1608:  STR.W           R3, [R7,#var_A0]
1B160C:  ADD             R0, PC; __stack_chk_guard_ptr
1B160E:  LDR             R0, [R0]; __stack_chk_guard
1B1610:  LDR             R0, [R0]
1B1612:  STR.W           R0, [R7,#var_24]
1B1616:  MOV             R0, R6
1B1618:  LDRSH.W         R2, [R5,#2]
1B161C:  LDR             R1, [R5,#0x24]
1B161E:  BLX             j_silk_NLSF_stabilize
1B1622:  LDRSH.W         R0, [R5]
1B1626:  MOVS            R4, #7
1B1628:  ADD.W           R1, R4, R0,LSL#2
1B162C:  BIC.W           R1, R1, #7
1B1630:  SUB.W           R8, SP, R1
1B1634:  MOV             SP, R8
1B1636:  LDRD.W          R2, R3, [R5,#8]
1B163A:  LDRSH.W         R1, [R5,#2]
1B163E:  STRD.W          R0, R1, [SP,#0xC8+var_D0]!
1B1642:  MOV             R1, R6
1B1644:  MOV             R0, R8
1B1646:  STR.W           R1, [R7,#var_9C]
1B164A:  BLX             j_silk_NLSF_VQ
1B164E:  ADD             SP, SP, #8
1B1650:  LDR.W           R9, [R7,#arg_4]
1B1654:  ADD.W           R0, R4, R9,LSL#2
1B1658:  BIC.W           R4, R0, #7
1B165C:  SUB.W           R1, SP, R4
1B1660:  MOV             SP, R1
1B1662:  STR.W           R5, [R7,#var_A4]
1B1666:  MOV             R0, R8
1B1668:  LDRSH.W         R2, [R5]
1B166C:  MOV             R3, R9
1B166E:  STR.W           R1, [R7,#var_B0]
1B1672:  BLX             j_silk_insertion_sort_increasing
1B1676:  SUB.W           R8, SP, R4
1B167A:  MOV             SP, R8
1B167C:  SUB.W           R0, SP, R9,LSL#4
1B1680:  STR.W           R0, [R7,#var_B4]
1B1684:  MOV             SP, R0
1B1686:  CMP.W           R9, #1
1B168A:  BLT.W           loc_1B1862
1B168E:  LDR             R0, [R7,#arg_8]
1B1690:  MOVS            R5, #0
1B1692:  LDR             R1, [R7,#arg_0]
1B1694:  ASRS            R0, R0, #1
1B1696:  SBFX.W          R1, R1, #2, #0x10
1B169A:  STR.W           R1, [R7,#var_BC]
1B169E:  STR.W           R0, [R7,#var_C0]
1B16A2:  STR.W           R8, [R7,#var_B8]
1B16A6:  LDR.W           R0, [R7,#var_B0]
1B16AA:  STR.W           R5, [R7,#var_AC]
1B16AE:  LDR.W           R0, [R0,R5,LSL#2]
1B16B2:  STR.W           R0, [R7,#var_A8]
1B16B6:  LDR.W           R0, [R7,#var_A4]
1B16BA:  LDRSH.W         R4, [R0,#2]
1B16BE:  CMP             R4, #1
1B16C0:  BLT             loc_1B17C0
1B16C2:  LDR.W           R3, [R7,#var_A8]
1B16C6:  MOV.W           R11, #0
1B16CA:  LDR.W           R2, [R7,#var_A4]
1B16CE:  MUL.W           R0, R3, R4
1B16D2:  LDRD.W          R1, R2, [R2,#8]
1B16D6:  MLA.W           R10, R3, R4, R1
1B16DA:  ADD.W           R8, R2, R0,LSL#1
1B16DE:  LDR.W           R1, [R7,#var_9C]
1B16E2:  LDRB.W          R0, [R10,R11]
1B16E6:  LDRSH.W         R2, [R8,R11,LSL#1]
1B16EA:  LDRH.W          R1, [R1,R11,LSL#1]
1B16EE:  SUB.W           R0, R1, R0,LSL#7
1B16F2:  SMULBB.W        R1, R2, R2
1B16F6:  SXTH            R0, R0
1B16F8:  SMULBB.W        R0, R0, R2
1B16FC:  SUB.W           R2, R7, #-var_44
1B1700:  CMP             R1, #0
1B1702:  MOV.W           R0, R0,LSR#14
1B1706:  STRH.W          R0, [R2,R11,LSL#1]
1B170A:  MOV             R0, R1
1B170C:  IT EQ
1B170E:  NEGEQ           R0, R0
1B1710:  CLZ.W           R9, R0
1B1714:  SUB.W           R0, R9, #1
1B1718:  LSL.W           R6, R1, R0
1B171C:  MOV             R0, #0x1FFFFFFF
1B1720:  ASRS            R1, R6, #0x10
1B1722:  BLX             sub_220A40
1B1726:  LDR.W           R1, [R7,#var_A0]
1B172A:  LDRSH.W         R2, [R1,R11,LSL#1]
1B172E:  SXTH            R1, R0
1B1730:  CMP             R2, #0
1B1732:  MOV             R3, R2
1B1734:  IT MI
1B1736:  NEGMI           R3, R2
1B1738:  CLZ.W           R3, R3
1B173C:  SUBS            R5, R3, #1
1B173E:  LSLS            R2, R5
1B1740:  UXTH            R5, R2
1B1742:  MULS            R5, R1
1B1744:  ASRS            R5, R5, #0x10
1B1746:  SMLATB.W        R5, R2, R0, R5
1B174A:  SMMUL.W         R6, R5, R6
1B174E:  SUB.W           R2, R2, R6,LSL#3
1B1752:  UXTH            R6, R2
1B1754:  SMLABT.W        R0, R0, R2, R5
1B1758:  MULS            R1, R6
1B175A:  ADD.W           R0, R0, R1,ASR#16
1B175E:  RSB.W           R1, R9, #1
1B1762:  ADD             R1, R3
1B1764:  ADDS            R1, #0x1C
1B1766:  CMP             R1, #0x14
1B1768:  BGT             loc_1B178C
1B176A:  RSB.W           R1, R1, #0x15
1B176E:  MOV             R2, #0x7FFFFFFF
1B1772:  MOV.W           R3, #0x80000000
1B1776:  LSRS            R2, R1
1B1778:  ASRS            R3, R1
1B177A:  CMP             R3, R2
1B177C:  BLE             loc_1B179E
1B177E:  CMP             R0, R3
1B1780:  MOV             R6, R3
1B1782:  BGT             loc_1B17AC
1B1784:  CMP             R0, R2
1B1786:  IT LT
1B1788:  MOVLT           R0, R2
1B178A:  B               loc_1B17AA
1B178C:  SUB.W           R2, R1, #0x15
1B1790:  CMP             R1, #0x35 ; '5'
1B1792:  MOV.W           R1, #0
1B1796:  IT LT
1B1798:  ASRLT.W         R1, R0, R2
1B179C:  B               loc_1B17B0
1B179E:  CMP             R0, R2
1B17A0:  MOV             R6, R2
1B17A2:  BGT             loc_1B17AC
1B17A4:  CMP             R0, R3
1B17A6:  IT LT
1B17A8:  MOVLT           R0, R3
1B17AA:  MOV             R6, R0
1B17AC:  LSL.W           R1, R6, R1
1B17B0:  SUB.W           R0, R7, #-var_64
1B17B4:  STRH.W          R1, [R0,R11,LSL#1]
1B17B8:  ADD.W           R11, R11, #1
1B17BC:  CMP             R11, R4
1B17BE:  BLT             loc_1B16DE
1B17C0:  LDR.W           R4, [R7,#var_A4]
1B17C4:  SUB.W           R5, R7, #-var_94
1B17C8:  LDR.W           R6, [R7,#var_A8]
1B17CC:  SUB.W           R8, R7, #-var_74
1B17D0:  MOV             R0, R5
1B17D2:  MOV             R1, R8
1B17D4:  MOV             R2, R4
1B17D6:  MOV             R3, R6
1B17D8:  BLX             j_silk_NLSF_unpack
1B17DC:  LDRSH.W         R0, [R4,#2]
1B17E0:  LDRSH.W         R1, [R4,#4]
1B17E4:  LDRSH.W         R2, [R4,#6]
1B17E8:  LDR             R3, [R4,#0x20]
1B17EA:  SUB             SP, SP, #0x18
1B17EC:  STRD.W          R5, R3, [SP,#0xE0+var_E0]; int
1B17F0:  MOV             R3, R8; int
1B17F2:  STRD.W          R1, R2, [SP,#0xE0+var_D8]; __int16
1B17F6:  SUB.W           R2, R7, #-var_64; int
1B17FA:  LDR             R1, [R7,#arg_0]
1B17FC:  STRD.W          R1, R0, [SP,#0xE0+var_D0]; int
1B1800:  SUB.W           R1, R7, #-var_44; int
1B1804:  LDR.W           R5, [R7,#var_AC]
1B1808:  LDR.W           R0, [R7,#var_B4]
1B180C:  ADD.W           R0, R0, R5,LSL#4; int
1B1810:  BLX             j_silk_NLSF_del_dec_quant
1B1814:  ADD             SP, SP, #0x18
1B1816:  LDR.W           R8, [R7,#var_B8]
1B181A:  CMP             R6, #0
1B181C:  LDR.W           R2, [R7,#var_C0]
1B1820:  STR.W           R0, [R8,R5,LSL#2]
1B1824:  LDRSH.W         R0, [R4]
1B1828:  LDR             R1, [R4,#0x10]
1B182A:  MLA.W           R0, R2, R0, R1
1B182E:  ITTE NE
1B1830:  ADDNE           R1, R0, R6
1B1832:  LDRBNE.W        R1, [R1,#-1]
1B1836:  MOVEQ.W         R1, #0x100
1B183A:  LDRB            R0, [R0,R6]
1B183C:  SUBS            R0, R1, R0
1B183E:  BLX             j_silk_lin2log
1B1842:  RSB.W           R0, R0, #0x400
1B1846:  LDR.W           R2, [R7,#var_BC]
1B184A:  LDR.W           R1, [R8,R5,LSL#2]
1B184E:  SXTH            R0, R0
1B1850:  SMLABB.W        R0, R0, R2, R1
1B1854:  STR.W           R0, [R8,R5,LSL#2]
1B1858:  ADDS            R5, #1
1B185A:  LDR             R0, [R7,#arg_4]
1B185C:  CMP             R5, R0
1B185E:  BNE.W           loc_1B16A6
1B1862:  LDR             R2, [R7,#arg_4]
1B1864:  SUB.W           R1, R7, #-var_98
1B1868:  MOV             R0, R8
1B186A:  MOVS            R3, #1
1B186C:  BLX             j_silk_insertion_sort_increasing
1B1870:  LDR.W           R1, [R7,#var_98]
1B1874:  LDR.W           R0, [R7,#var_B0]
1B1878:  LDR.W           R5, [R7,#var_C4]
1B187C:  LDR.W           R2, [R0,R1,LSL#2]
1B1880:  MOV             R0, R5
1B1882:  STRB.W          R2, [R0],#1; dest
1B1886:  LDR.W           R4, [R7,#var_A4]
1B188A:  LDR.W           R3, [R7,#var_B4]
1B188E:  LDRSH.W         R2, [R4,#2]; n
1B1892:  ADD.W           R1, R3, R1,LSL#4; src
1B1896:  BLX             j_memcpy
1B189A:  LDR.W           R0, [R7,#var_9C]
1B189E:  MOV             R1, R5
1B18A0:  MOV             R2, R4
1B18A2:  BLX             j_silk_NLSF_decode
1B18A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1B18B0)
1B18A8:  LDR.W           R0, [R8]
1B18AC:  ADD             R1, PC; __stack_chk_guard_ptr
1B18AE:  LDR.W           R2, [R7,#var_24]
1B18B2:  LDR             R1, [R1]; __stack_chk_guard
1B18B4:  LDR             R1, [R1]
1B18B6:  SUBS            R1, R1, R2
1B18B8:  ITTTT EQ
1B18BA:  SUBEQ.W         R4, R7, #-var_1C
1B18BE:  MOVEQ           SP, R4
1B18C0:  POPEQ.W         {R8-R11}
1B18C4:  POPEQ           {R4-R7,PC}
1B18C6:  BLX             __stack_chk_fail
