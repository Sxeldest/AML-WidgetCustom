; =========================================================
; Game Engine Function: silk_corrMatrix_FIX
; Address            : 0xD167A - 0xD1A34
; =========================================================

D167A:  PUSH            {R4-R7,LR}
D167C:  ADD             R7, SP, #0xC
D167E:  PUSH.W          {R8-R11}
D1682:  SUB             SP, SP, #0x44
D1684:  LDRD.W          R10, R9, [R7,#arg_0]
D1688:  MOV             R11, R1
D168A:  MOV             R5, R2
D168C:  MOV             R8, R0
D168E:  ADD.W           R0, R11, R5
D1692:  MOV             R6, R3
D1694:  SUBS            R3, R0, #1
D1696:  MOV             R0, R10
D1698:  MOV             R1, R9
D169A:  MOV             R2, R8
D169C:  BLX             j_silk_sum_sqr_shift
D16A0:  LDR.W           R1, [R10]
D16A4:  MOV             R4, R5
D16A6:  SUBS.W          R10, R4, #1
D16AA:  STR             R6, [SP,#0x60+var_20]
D16AC:  BLE             loc_D171A
D16AE:  LDR.W           R2, [R9]
D16B2:  MOVS            R3, #0
D16B4:  LDRSH.W         R6, [R8,R3,LSL#1]
D16B8:  ADDS            R3, #1
D16BA:  CMP             R10, R3
D16BC:  SMULBB.W        R6, R6, R6
D16C0:  LSR.W           R6, R6, R2
D16C4:  SUB.W           R1, R1, R6
D16C8:  BNE             loc_D16B4
D16CA:  LDR             R6, [SP,#0x60+var_20]
D16CC:  CMP             R4, #2
D16CE:  ADD.W           R0, R8, R10,LSL#1
D16D2:  STR             R1, [R6]
D16D4:  STR             R0, [SP,#0x60+var_50]
D16D6:  BLT             loc_D1722
D16D8:  MOVS            R2, #4
D16DA:  ADD.W           R12, R2, R4,LSL#2
D16DE:  ADD.W           R3, R6, R12
D16E2:  ADD.W           R6, R8, R4,LSL#1
D16E6:  SUBS            R5, R6, #4
D16E8:  MOVS            R0, #1
D16EA:  LDRSH.W         R6, [R5,R11,LSL#1]
D16EE:  ADDS            R0, #1
D16F0:  LDRSH.W         LR, [R5]
D16F4:  LDR.W           R2, [R9]
D16F8:  SUBS            R5, #2
D16FA:  CMP             R4, R0
D16FC:  SMULBB.W        R6, R6, R6
D1700:  SMULBB.W        LR, LR, LR
D1704:  LSR.W           R6, R6, R2
D1708:  SUB.W           R1, R1, R6
D170C:  LSR.W           R2, LR, R2
D1710:  ADD             R1, R2
D1712:  STR             R1, [R3]
D1714:  ADD             R3, R12
D1716:  BNE             loc_D16EA
D1718:  B               loc_D1722
D171A:  STR             R1, [R6]
D171C:  ADD.W           R0, R8, R10,LSL#1
D1720:  STR             R0, [SP,#0x60+var_50]
D1722:  LDR.W           R5, [R9]
D1726:  ADD.W           R3, R8, R4,LSL#1
D172A:  SUB.W           R9, R3, #4
D172E:  STR             R4, [SP,#0x60+var_3C]
D1730:  CMP             R5, #0
D1732:  STR.W           R11, [SP,#0x60+var_24]
D1736:  BLE             loc_D17F6
D1738:  CMP             R4, #2
D173A:  LDR             R4, [SP,#0x60+var_20]
D173C:  BLT.W           loc_D1A2C
D1740:  CMP.W           R11, #0
D1744:  BLE.W           loc_D191A
D1748:  ADD.W           LR, R8, R10,LSL#1
D174C:  LDR.W           R8, [SP,#0x60+var_3C]
D1750:  MOV.W           R12, #1
D1754:  B               loc_D1762
D1756:  LDR             R0, [R7,#arg_4]
D1758:  SUB.W           R9, R9, #2
D175C:  SUB.W           R10, R10, #1
D1760:  LDR             R5, [R0]
D1762:  MOVS            R6, #0
D1764:  MOVS            R3, #0
D1766:  LDRSH.W         R0, [LR,R6,LSL#1]
D176A:  LDRSH.W         R1, [R9,R6,LSL#1]
D176E:  ADDS            R6, #1
D1770:  CMP             R11, R6
D1772:  SMULBB.W        R0, R1, R0
D1776:  ASR.W           R0, R0, R5
D177A:  ADD             R3, R0
D177C:  BNE             loc_D1766
D177E:  MUL.W           R0, R12, R8
D1782:  STR.W           R3, [R4,R0,LSL#2]
D1786:  SUB.W           R0, R8, R12
D178A:  CMP             R0, #2
D178C:  STR.W           R3, [R4,R12,LSL#2]
D1790:  BLT             loc_D17EC
D1792:  MOVS            R5, #1
D1794:  SUB.W           R6, R11, R5
D1798:  SUB.W           R4, R9, R5,LSL#1
D179C:  SUB.W           R1, LR, R5,LSL#1
D17A0:  ADD.W           R2, R5, R12
D17A4:  LDRSH.W         R0, [LR,R6,LSL#1]
D17A8:  LDRSH.W         R6, [R9,R6,LSL#1]
D17AC:  LDRSH.W         R1, [R1]
D17B0:  LDRSH.W         R4, [R4]
D17B4:  MLA.W           R11, R2, R8, R5
D17B8:  SMULBB.W        R0, R6, R0
D17BC:  LDR             R6, [R7,#arg_4]
D17BE:  SMULBB.W        R1, R4, R1
D17C2:  MLA.W           R2, R5, R8, R2
D17C6:  ADDS            R5, #1
D17C8:  LDR             R6, [R6]
D17CA:  CMP             R5, R10
D17CC:  ASR.W           R0, R0, R6
D17D0:  ASR.W           R1, R1, R6
D17D4:  SUB.W           R0, R3, R0
D17D8:  ADD.W           R3, R1, R0
D17DC:  LDR             R0, [SP,#0x60+var_20]
D17DE:  STR.W           R3, [R0,R11,LSL#2]
D17E2:  LDRD.W          R11, R4, [SP,#0x60+var_24]
D17E6:  STR.W           R3, [R4,R2,LSL#2]
D17EA:  BNE             loc_D1794
D17EC:  ADD.W           R12, R12, #1
D17F0:  CMP             R12, R8
D17F2:  BNE             loc_D1756
D17F4:  B               loc_D1A2C
D17F6:  LDR.W           R12, [SP,#0x60+var_20]
D17FA:  CMP             R4, #2
D17FC:  BLT.W           loc_D1A2C
D1800:  LDR             R1, [SP,#0x60+var_3C]
D1802:  MOVS            R0, #4
D1804:  MOVS            R6, #1
D1806:  ADD.W           R10, R0, R1,LSL#2
D180A:  LDR             R0, [SP,#0x60+var_3C]
D180C:  ADD.W           R0, R12, R0,LSL#2
D1810:  ADD.W           R1, R0, #8
D1814:  LDR             R0, [SP,#0x60+var_3C]
D1816:  ADD.W           R0, R12, R0,LSL#3
D181A:  ADDS            R5, R0, #4
D181C:  SUBS            R0, R3, #2
D181E:  STR             R0, [SP,#0x60+var_54]
D1820:  ADD.W           R3, R8, R11,LSL#1
D1824:  LDR             R0, [SP,#0x60+var_3C]
D1826:  STR             R3, [SP,#0x60+var_40]
D1828:  ADD.W           R0, R3, R0,LSL#1
D182C:  SUBS            R0, #2
D182E:  STR             R0, [SP,#0x60+var_58]
D1830:  LDR             R0, [SP,#0x60+var_3C]
D1832:  STR             R0, [SP,#0x60+var_44]
D1834:  LSLS            R3, R0, #2
D1836:  STR             R3, [SP,#0x60+var_5C]
D1838:  LSLS            R3, R0, #1
D183A:  STR             R3, [SP,#0x60+var_60]
D183C:  MOV             R4, R0
D183E:  LDR             R0, [SP,#0x60+var_50]
D1840:  LDR             R3, [R7,#arg_8]
D1842:  MOV             R2, R11
D1844:  MOV             R11, R1
D1846:  MOV             R1, R9
D1848:  STR.W           R8, [SP,#0x60+var_38]
D184C:  MOV             R8, R5
D184E:  STR.W           R9, [SP,#0x60+var_4C]
D1852:  MOV             R5, R12
D1854:  BLX             j_silk_inner_prod_aligned
D1858:  MUL.W           R1, R6, R4
D185C:  STR.W           R0, [R5,R1,LSL#2]
D1860:  SUBS            R1, R4, R6
D1862:  CMP             R1, #2
D1864:  STR.W           R0, [R5,R6,LSL#2]
D1868:  STR             R6, [SP,#0x60+var_48]
D186A:  LDRD.W          R12, R9, [SP,#0x60+var_58]
D186E:  BLT             loc_D18DE
D1870:  LDR             R1, [SP,#0x60+var_38]
D1872:  MOVS            R5, #0
D1874:  LDR             R2, [SP,#0x60+var_60]
D1876:  MOVS            R6, #0
D1878:  STR.W           R11, [SP,#0x60+var_28]
D187C:  ADD             R1, R2
D187E:  SUBS            R1, #2
D1880:  STR             R1, [SP,#0x60+var_2C]
D1882:  LDR             R1, [SP,#0x60+var_40]
D1884:  ADD             R1, R2
D1886:  SUBS            R1, #2
D1888:  STR             R1, [SP,#0x60+var_30]
D188A:  LDR             R1, [SP,#0x60+var_44]
D188C:  SUBS            R1, #2
D188E:  STR             R1, [SP,#0x60+var_34]
D1890:  MOVS            R1, #0
D1892:  LDR             R2, [SP,#0x60+var_30]
D1894:  MOV             R11, R8
D1896:  ADDS            R6, #1
D1898:  ADD.W           LR, R2, R1,LSL#1
D189C:  ADD.W           R2, R9, R1,LSL#1
D18A0:  LDRSH.W         R8, [R2,#-2]
D18A4:  MOV             R2, R10
D18A6:  ADD.W           R10, R12, R1,LSL#1
D18AA:  LDRSH.W         R4, [LR,#-4]
D18AE:  LDRSH.W         R3, [R10,#-2]
D18B2:  MOV             R10, R2
D18B4:  LDR             R2, [SP,#0x60+var_2C]
D18B6:  ADD.W           R2, R2, R1,LSL#1
D18BA:  MLS.W           R0, R4, R3, R0
D18BE:  SUBS            R1, #1
D18C0:  LDRSH.W         R2, [R2,#-4]
D18C4:  SMLABB.W        R0, R2, R8, R0
D18C8:  MOV             R8, R11
D18CA:  LDR.W           R11, [SP,#0x60+var_28]
D18CE:  STR.W           R0, [R8,R5]
D18D2:  STR.W           R0, [R11,R5]
D18D6:  ADD             R5, R10
D18D8:  LDR             R2, [SP,#0x60+var_34]
D18DA:  CMP             R2, R6
D18DC:  BNE             loc_D1892
D18DE:  LDR             R0, [SP,#0x60+var_5C]
D18E0:  ADD.W           R11, R11, #4
D18E4:  LDR             R6, [SP,#0x60+var_48]
D18E6:  ADD             R8, R0
D18E8:  LDR             R0, [SP,#0x60+var_44]
D18EA:  LDR.W           R9, [SP,#0x60+var_4C]
D18EE:  MOV             R4, R11
D18F0:  SUBS            R0, #1
D18F2:  STR             R0, [SP,#0x60+var_44]
D18F4:  LDR             R0, [SP,#0x60+var_40]
D18F6:  MOV             R2, R8
D18F8:  LDR.W           R8, [SP,#0x60+var_38]
D18FC:  ADDS            R6, #1
D18FE:  SUBS            R0, #2
D1900:  STR             R0, [SP,#0x60+var_40]
D1902:  LDR             R0, [SP,#0x60+var_3C]
D1904:  SUB.W           R8, R8, #2
D1908:  LDRD.W          R11, R12, [SP,#0x60+var_24]
D190C:  SUB.W           R9, R9, #2
D1910:  CMP             R6, R0
D1912:  MOV             R1, R4
D1914:  MOV             R5, R2
D1916:  BNE             loc_D183C
D1918:  B               loc_D1A2C
D191A:  LDR.W           R12, [SP,#0x60+var_3C]
D191E:  ADD.W           R6, R8, R11,LSL#1
D1922:  LDR             R1, [SP,#0x60+var_3C]
D1924:  MOVS            R0, #4
D1926:  STR             R6, [SP,#0x60+var_30]
D1928:  SUBS            R3, #2
D192A:  ADD.W           R6, R6, R12,LSL#1
D192E:  ADD.W           R2, R4, R12,LSL#3
D1932:  ADD.W           R5, R0, R1,LSL#2
D1936:  ADD.W           R1, R4, R12,LSL#2
D193A:  SUBS            R6, #2
D193C:  STR             R6, [SP,#0x60+var_24]
D193E:  MOV.W           R6, R12,LSL#2
D1942:  ADDS            R1, #8
D1944:  ADDS            R2, #4
D1946:  STR             R6, [SP,#0x60+var_44]
D1948:  MOV.W           R6, R12,LSL#1
D194C:  MOVS            R0, #1
D194E:  STR             R6, [SP,#0x60+var_48]
D1950:  STR.W           R12, [SP,#0x60+var_34]
D1954:  MUL.W           R6, R0, R12
D1958:  MOV.W           LR, #0
D195C:  STR.W           R8, [SP,#0x60+var_38]
D1960:  STR.W           LR, [R4,R6,LSL#2]
D1964:  SUB.W           R6, R12, R0
D1968:  CMP             R6, #2
D196A:  STR.W           LR, [R4,R0,LSL#2]
D196E:  STR             R0, [SP,#0x60+var_40]
D1970:  BLT             loc_D1A04
D1972:  LDR             R0, [SP,#0x60+var_38]
D1974:  MOV.W           R8, #0
D1978:  LDR             R4, [SP,#0x60+var_48]
D197A:  MOV.W           R10, #0
D197E:  MOV.W           R11, #0
D1982:  MOV.W           R9, #0
D1986:  ADDS            R6, R0, R4
D1988:  SUBS            R0, R6, #2
D198A:  STR             R0, [SP,#0x60+var_28]
D198C:  LDR             R0, [SP,#0x60+var_30]
D198E:  LDR             R6, [SP,#0x60+var_24]
D1990:  ADD             R4, R0
D1992:  SUBS            R0, R4, #2
D1994:  STR             R0, [SP,#0x60+var_2C]
D1996:  LDR             R0, [SP,#0x60+var_34]
D1998:  SUB.W           LR, R0, #2
D199C:  LDR             R0, [SP,#0x60+var_2C]
D199E:  MOV             R12, R3
D19A0:  ADD.W           R10, R10, #1
D19A4:  ADD.W           R4, R0, R11,LSL#1
D19A8:  ADD.W           R0, R3, R11,LSL#1
D19AC:  ADD.W           R3, R6, R11,LSL#1
D19B0:  MOV             R6, R2
D19B2:  MOV             R2, R1
D19B4:  MOV             R1, R5
D19B6:  LDR             R5, [SP,#0x60+var_28]
D19B8:  CMP             LR, R10
D19BA:  LDRSH.W         R3, [R3,#-2]
D19BE:  LDRSH.W         R4, [R4,#-4]
D19C2:  ADD.W           R5, R5, R11,LSL#1
D19C6:  LDRSH.W         R0, [R0,#-2]
D19CA:  SUB.W           R11, R11, #1
D19CE:  LDRSH.W         R5, [R5,#-4]
D19D2:  SMULBB.W        R3, R4, R3
D19D6:  LDR             R4, [R7,#arg_4]
D19D8:  SMULBB.W        R0, R5, R0
D19DC:  MOV             R5, R1
D19DE:  LDR             R4, [R4]
D19E0:  MOV             R1, R2
D19E2:  MOV             R2, R6
D19E4:  LDR             R6, [SP,#0x60+var_24]
D19E6:  ASR.W           R3, R3, R4
D19EA:  SUB.W           R3, R9, R3
D19EE:  ASR.W           R0, R0, R4
D19F2:  ADD.W           R9, R0, R3
D19F6:  STR.W           R9, [R2,R8]
D19FA:  MOV             R3, R12
D19FC:  STR.W           R9, [R1,R8]
D1A00:  ADD             R8, R5
D1A02:  BNE             loc_D199C
D1A04:  LDR             R0, [SP,#0x60+var_44]
D1A06:  ADDS            R1, #4
D1A08:  LDR.W           R8, [SP,#0x60+var_38]
D1A0C:  ADD             R2, R0
D1A0E:  LDR             R0, [SP,#0x60+var_34]
D1A10:  LDR.W           R12, [SP,#0x60+var_3C]
D1A14:  SUB.W           R8, R8, #2
D1A18:  SUBS            R0, #1
D1A1A:  STR             R0, [SP,#0x60+var_34]
D1A1C:  LDR             R0, [SP,#0x60+var_30]
D1A1E:  LDR             R4, [SP,#0x60+var_20]
D1A20:  SUBS            R0, #2
D1A22:  STR             R0, [SP,#0x60+var_30]
D1A24:  LDR             R0, [SP,#0x60+var_40]
D1A26:  ADDS            R0, #1
D1A28:  CMP             R0, R12
D1A2A:  BNE             loc_D1954
D1A2C:  ADD             SP, SP, #0x44 ; 'D'
D1A2E:  POP.W           {R8-R11}
D1A32:  POP             {R4-R7,PC}
