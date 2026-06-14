; =========================================================
; Game Engine Function: clt_mdct_forward_c
; Address            : 0x1A162C - 0x1A1A42
; =========================================================

1A162C:  PUSH            {R4-R7,LR}
1A162E:  ADD             R7, SP, #0xC
1A1630:  PUSH.W          {R8-R11}
1A1634:  SUB             SP, SP, #0x44
1A1636:  LDR.W           R6, =(__stack_chk_guard_ptr - 0x1A1640)
1A163A:  LDR             R4, [R7,#arg_4]
1A163C:  ADD             R6, PC; __stack_chk_guard_ptr
1A163E:  LDR.W           R8, [R7,#arg_0]
1A1642:  CMP             R4, #1
1A1644:  LDR             R6, [R6]; __stack_chk_guard
1A1646:  LDR             R6, [R6]
1A1648:  STR.W           R6, [R7,#var_24]
1A164C:  ADD.W           R6, R0, R4,LSL#2
1A1650:  LDR             R6, [R6,#8]
1A1652:  STR.W           R6, [R7,#var_34]
1A1656:  LDR             R5, [R0]
1A1658:  LDR.W           R10, [R0,#0x18]
1A165C:  LDR             R0, [R6,#8]
1A165E:  STR.W           R0, [R7,#var_50]
1A1662:  MOV.W           R0, R5,ASR#1
1A1666:  LDRSH.W         R6, [R6,#4]
1A166A:  BLT             loc_1A167A
1A166C:  MOV             R5, R0
1A166E:  SUBS            R4, #1
1A1670:  ADD.W           R10, R10, R5,LSL#1
1A1674:  MOV.W           R0, R5,ASR#1
1A1678:  BNE             loc_1A166C
1A167A:  STRD.W          R6, R2, [R7,#var_4C]
1A167E:  MOVS            R2, #7
1A1680:  ADD.W           R2, R2, R0,LSL#2
1A1684:  BIC.W           R2, R2, #7
1A1688:  SUB.W           R9, SP, R2
1A168C:  MOV             SP, R9
1A168E:  MOV.W           LR, R5,ASR#2
1A1692:  MOV.W           R12, R8,ASR#1
1A1696:  ADD.W           R4, R8, #3
1A169A:  SUB.W           R2, SP, LR,LSL#3
1A169E:  ADD.W           R6, R1, R12,LSL#2
1A16A2:  STR.W           R2, [R7,#var_30]
1A16A6:  ASRS            R5, R4, #2
1A16A8:  MOV             SP, R2
1A16AA:  CMP             R5, #1
1A16AC:  STRD.W          LR, R9, [R7,#var_2C]
1A16B0:  STRD.W          R0, R3, [R7,#var_44]
1A16B4:  BLT             loc_1A178E
1A16B6:  LSLS            R4, R0, #2
1A16B8:  BIC.W           R2, R8, #1
1A16BC:  ADD.W           R4, R4, R12,LSL#2
1A16C0:  STR.W           R1, [R7,#var_54]
1A16C4:  ADD             R1, R4
1A16C6:  ADD             R2, R3
1A16C8:  STR.W           R1, [R7,#var_3C]
1A16CC:  ADD.W           R1, R0, R12
1A16D0:  ADD.W           R11, R9, R5,LSL#3
1A16D4:  STR.W           R2, [R7,#var_38]
1A16D8:  ADD.W           R2, R12, R5,LSL#1
1A16DC:  SUBS            R1, #1
1A16DE:  MOV.W           R12, #0
1A16E2:  MOV.W           R8, #0xFFFFFFFF
1A16E6:  SUB.W           R0, R1, R5,LSL#1
1A16EA:  STR.W           R10, [R7,#var_58]
1A16EE:  STR.W           R2, [R7,#var_5C]
1A16F2:  STR.W           R0, [R7,#var_60]
1A16F6:  LDR.W           R0, [R7,#var_3C]
1A16FA:  MOV             R10, R5
1A16FC:  LDR.W           R1, [R0,R12,LSL#3]
1A1700:  LDR.W           R9, [R0,R8,LSL#2]
1A1704:  LDR.W           R0, [R7,#var_38]
1A1708:  UXTH.W          LR, R9
1A170C:  UXTH            R2, R1
1A170E:  LDRSH.W         R3, [R0,R12,LSL#2]
1A1712:  LDRSH.W         R0, [R0,R8,LSL#1]
1A1716:  MUL.W           R5, LR, R3
1A171A:  LDR.W           LR, [R7,#var_28]
1A171E:  MULS            R2, R0
1A1720:  SMULTB.W        R4, R9, R3
1A1724:  SMLATB.W        R1, R1, R0, R4
1A1728:  ASRS            R5, R5, #0xF
1A172A:  ADD.W           R2, R5, R2,ASR#15
1A172E:  ADD.W           R1, R2, R1,LSL#1
1A1732:  STR.W           R1, [LR,R12,LSL#3]
1A1736:  LDR.W           R5, [R6,R12,LSL#3]
1A173A:  LDR.W           R1, [R6,R8,LSL#2]
1A173E:  SUB.W           R8, R8, #2
1A1742:  UXTH            R4, R5
1A1744:  UXTH            R2, R1
1A1746:  MULS            R4, R3
1A1748:  ASRS            R1, R1, #0x10
1A174A:  SMULTB.W        R3, R5, R3
1A174E:  MOV             R5, R10
1A1750:  MULS            R2, R0
1A1752:  MLS.W           R0, R1, R0, R3
1A1756:  ASRS            R1, R4, #0xF
1A1758:  SUB.W           R1, R1, R2,ASR#15
1A175C:  ADD.W           R0, R1, R0,LSL#1
1A1760:  ADD.W           R1, LR, R12,LSL#3
1A1764:  ADD.W           R12, R12, #1
1A1768:  CMP             R5, R12
1A176A:  STR             R0, [R1,#4]
1A176C:  BNE             loc_1A16F6
1A176E:  LDR.W           R1, [R7,#var_60]
1A1772:  MOV             R4, R5
1A1774:  LDR.W           R0, [R7,#var_54]
1A1778:  LDR.W           R3, [R7,#var_2C]
1A177C:  ADD.W           R8, R0, R1,LSL#2
1A1780:  LDR.W           R1, [R7,#var_5C]
1A1784:  LDR.W           R10, [R7,#var_58]
1A1788:  ADD.W           R6, R0, R1,LSL#2
1A178C:  B               loc_1A17A0
1A178E:  ADD.W           R2, R1, R0,LSL#2
1A1792:  MOVS            R4, #0
1A1794:  ADD.W           R2, R2, R12,LSL#2
1A1798:  MOV             R11, R9
1A179A:  SUB.W           R8, R2, #4
1A179E:  MOV             R3, LR
1A17A0:  SUBS            R0, R3, R5
1A17A2:  CMP             R4, R0
1A17A4:  BGE             loc_1A17EE
1A17A6:  STR.W           R0, [R7,#var_38]
1A17AA:  SUBS            R2, R0, R4
1A17AC:  ADDS            R0, R4, R5
1A17AE:  MOV             R5, R3
1A17B0:  MOV             R9, R6
1A17B2:  MOV             R12, R8
1A17B4:  LSLS            R1, R0, #1
1A17B6:  SUB.W           R1, R1, R3,LSL#1
1A17BA:  STR.W           R1, [R7,#var_3C]
1A17BE:  LSLS            R1, R3, #1
1A17C0:  SUB.W           R4, R1, R0,LSL#1
1A17C4:  MOV             R1, R6
1A17C6:  ADD.W           LR, R11, R4,LSL#2
1A17CA:  LDR.W           R3, [R9],#8
1A17CE:  SUBS            R2, #1
1A17D0:  LDR.W           R0, [R12],#-8
1A17D4:  STRD.W          R0, R3, [R11],#8
1A17D8:  BNE             loc_1A17CA
1A17DA:  LDR.W           R0, [R7,#var_3C]
1A17DE:  ADD.W           R1, R1, R4,LSL#2
1A17E2:  LDR.W           R4, [R7,#var_38]
1A17E6:  MOV             R3, R5
1A17E8:  ADD.W           R8, R8, R0,LSL#2
1A17EC:  B               loc_1A17F2
1A17EE:  MOV             R1, R6
1A17F0:  MOV             LR, R11
1A17F2:  LDR.W           R12, [R7,#var_40]
1A17F6:  CMP             R4, R3
1A17F8:  STR.W           R1, [R7,#var_38]
1A17FC:  BGE             loc_1A1896
1A17FE:  LDR             R1, [R7,#arg_0]
1A1800:  MOV             R0, #0xFFFFFFFE
1A1804:  ADD.W           R2, R0, R1,LSL#1
1A1808:  LDR.W           R0, [R7,#var_44]
1A180C:  LDR.W           R1, [R7,#var_38]
1A1810:  SUB.W           R0, R1, R0,LSL#2
1A1814:  STR.W           R0, [R7,#var_3C]
1A1818:  LDR.W           R0, [R7,#var_2C]
1A181C:  SUB.W           R11, R0, R4
1A1820:  MOVS            R4, #0
1A1822:  LDR.W           R0, [R7,#var_3C]
1A1826:  LDRSH.W         R3, [R12,R2]
1A182A:  SUBS            R2, #4
1A182C:  LDR.W           R5, [R8]
1A1830:  LDR.W           R0, [R0,R4,LSL#3]
1A1834:  LDRSH.W         R1, [R12,R4,LSL#2]
1A1838:  SMULTB.W        R9, R5, R3
1A183C:  UXTH            R5, R5
1A183E:  ASRS            R6, R0, #0x10
1A1840:  UXTH            R0, R0
1A1842:  MULS            R5, R3
1A1844:  MULS            R0, R1
1A1846:  MLS.W           R6, R6, R1, R9
1A184A:  ASRS            R5, R5, #0xF
1A184C:  SUB.W           R0, R5, R0,ASR#15
1A1850:  ADD.W           R0, R0, R6,LSL#1
1A1854:  STR.W           R0, [LR,R4,LSL#3]
1A1858:  LDR.W           R0, [R7,#var_44]
1A185C:  LDR.W           R0, [R8,R0,LSL#2]
1A1860:  SUB.W           R8, R8, #8
1A1864:  UXTH            R5, R0
1A1866:  SMULTB.W        R0, R0, R1
1A186A:  MUL.W           R9, R5, R1
1A186E:  LDR.W           R5, [R7,#var_38]
1A1872:  LDR.W           R6, [R5,R4,LSL#3]
1A1876:  MOV.W           R1, R9,ASR#15
1A187A:  UXTH            R5, R6
1A187C:  SMLATB.W        R0, R6, R3, R0
1A1880:  MULS            R5, R3
1A1882:  ADD.W           R1, R1, R5,ASR#15
1A1886:  ADD.W           R0, R1, R0,LSL#1
1A188A:  ADD.W           R1, LR, R4,LSL#3
1A188E:  ADDS            R4, #1
1A1890:  CMP             R11, R4
1A1892:  STR             R0, [R1,#4]
1A1894:  BNE             loc_1A1822
1A1896:  LDR.W           R0, [R7,#var_2C]
1A189A:  CMP             R0, #0
1A189C:  BLE.W           loc_1A1A1A
1A18A0:  LDR.W           R1, [R7,#var_50]
1A18A4:  ADD.W           R0, R10, R0,LSL#1
1A18A8:  STR.W           R0, [R7,#var_3C]
1A18AC:  MOVS            R0, #1
1A18AE:  SUBS            R1, #1
1A18B0:  LDR.W           LR, [R7,#var_4C]
1A18B4:  LDR.W           R9, [R7,#var_2C]
1A18B8:  MOVS            R4, #0
1A18BA:  LSLS            R0, R1
1A18BC:  STR.W           R1, [R7,#var_38]
1A18C0:  ASRS            R0, R0, #1
1A18C2:  STR.W           R0, [R7,#var_40]
1A18C6:  LDR.W           R1, [R7,#var_3C]
1A18CA:  LDRSH.W         R0, [R10,R4,LSL#1]
1A18CE:  LDRSH.W         R6, [R1,R4,LSL#1]
1A18D2:  LDR.W           R1, [R7,#var_28]
1A18D6:  ADD.W           R2, R1, R4,LSL#3
1A18DA:  LDR.W           R5, [R1,R4,LSL#3]
1A18DE:  LDR             R2, [R2,#4]
1A18E0:  SMULTB.W        R1, R5, R0
1A18E4:  ASRS            R3, R2, #0x10
1A18E6:  UXTH.W          R8, R2
1A18EA:  MLS.W           R11, R3, R6, R1
1A18EE:  UXTH            R3, R5
1A18F0:  MUL.W           R1, R3, R0
1A18F4:  MUL.W           R12, R8, R6
1A18F8:  MUL.W           R8, R8, R0
1A18FC:  MULS            R3, R6
1A18FE:  ASRS            R1, R1, #0xF
1A1900:  SMULTB.W        R0, R2, R0
1A1904:  SUB.W           R1, R1, R12,ASR#15
1A1908:  SMLATB.W        R6, R5, R6, R0
1A190C:  ADD.W           R1, R1, R11,LSL#1
1A1910:  MOV.W           R2, R8,ASR#15
1A1914:  LDR.W           R0, [R7,#var_34]
1A1918:  LDR.W           R5, [R7,#var_40]
1A191C:  ADD.W           R2, R2, R3,ASR#15
1A1920:  UXTH            R3, R1
1A1922:  MUL.W           R12, R3, LR
1A1926:  ADD.W           R3, R2, R6,LSL#1
1A192A:  SMLABT.W        R1, LR, R1, R5
1A192E:  LDR             R6, [R0,#0x30]
1A1930:  UXTH            R2, R3
1A1932:  SMLABT.W        R3, LR, R3, R5
1A1936:  MUL.W           R8, R2, LR
1A193A:  LDR.W           R2, [R7,#var_38]
1A193E:  LDRSH.W         R6, [R6,R4,LSL#1]
1A1942:  ADD.W           R1, R1, R12,ASR#16
1A1946:  LDR.W           R5, [R7,#var_30]
1A194A:  ADDS            R4, #1
1A194C:  ASRS            R1, R2
1A194E:  CMP             R9, R4
1A1950:  STR.W           R1, [R5,R6,LSL#3]
1A1954:  ADD.W           R1, R3, R8,ASR#16
1A1958:  ASR.W           R2, R1, R2
1A195C:  ADD.W           R1, R5, R6,LSL#3
1A1960:  STR             R2, [R1,#4]
1A1962:  BNE             loc_1A18C6
1A1964:  LDR.W           R4, [R7,#var_30]
1A1968:  MOV             R1, R4
1A196A:  BLX             j_opus_fft_impl
1A196E:  LDR.W           LR, [R7,#var_48]
1A1972:  CMP.W           R9, #1
1A1976:  BLT             loc_1A1A22
1A1978:  LDR.W           R0, [R7,#var_44]
1A197C:  ADDS            R2, R4, #4
1A197E:  LDR             R1, [R7,#arg_8]
1A1980:  MOV             R8, R9
1A1982:  SUBS            R0, #1
1A1984:  MOV             R6, R1
1A1986:  MUL.W           R1, R0, R6
1A198A:  MOVS            R0, #0
1A198C:  SUB.W           R0, R0, R6,LSL#3
1A1990:  STR.W           R0, [R7,#var_34]
1A1994:  LSLS            R0, R6, #3
1A1996:  STR.W           R0, [R7,#var_30]
1A199A:  ADD.W           R1, LR, R1,LSL#2
1A199E:  LDRSH.W         R6, [R10,R9,LSL#1]
1A19A2:  SUBS.W          R8, R8, #1
1A19A6:  LDR.W           R4, [R2,#-4]
1A19AA:  LDR             R0, [R2]
1A19AC:  ADD.W           R2, R2, #8
1A19B0:  LDRSH.W         R3, [R10]
1A19B4:  ADD.W           R10, R10, #2
1A19B8:  SMULTB.W        R5, R4, R6
1A19BC:  SMULTB.W        R11, R0, R6
1A19C0:  SMLATB.W        R5, R0, R3, R5
1A19C4:  UXTH            R0, R0
1A19C6:  MUL.W           R12, R0, R3
1A19CA:  MUL.W           R0, R6, R0
1A19CE:  STR.W           R5, [R7,#var_28]
1A19D2:  MOV.W           R5, R4,ASR#16
1A19D6:  UXTH            R4, R4
1A19D8:  MLS.W           R11, R5, R3, R11
1A19DC:  MUL.W           R3, R4, R3
1A19E0:  MUL.W           R5, R4, R6
1A19E4:  MOV.W           R0, R0,ASR#15
1A19E8:  SUB.W           R0, R0, R3,ASR#15
1A19EC:  ADD.W           R0, R0, R11,LSL#1
1A19F0:  STR.W           R0, [LR]
1A19F4:  LDR.W           R6, [R7,#var_28]
1A19F8:  MOV.W           R0, R5,ASR#15
1A19FC:  ADD.W           R0, R0, R12,ASR#15
1A1A00:  LDR.W           R9, [R7,#var_2C]
1A1A04:  ADD.W           R0, R0, R6,LSL#1
1A1A08:  STR             R0, [R1]
1A1A0A:  LDR.W           R0, [R7,#var_30]
1A1A0E:  ADD             LR, R0
1A1A10:  LDR.W           R0, [R7,#var_34]
1A1A14:  ADD             R1, R0
1A1A16:  BNE             loc_1A199E
1A1A18:  B               loc_1A1A22
1A1A1A:  LDRD.W          R0, R1, [R7,#var_34]
1A1A1E:  BLX             j_opus_fft_impl
1A1A22:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A1A2C)
1A1A24:  LDR.W           R1, [R7,#var_24]
1A1A28:  ADD             R0, PC; __stack_chk_guard_ptr
1A1A2A:  LDR             R0, [R0]; __stack_chk_guard
1A1A2C:  LDR             R0, [R0]
1A1A2E:  SUBS            R0, R0, R1
1A1A30:  ITTTT EQ
1A1A32:  SUBEQ.W         R4, R7, #-var_1C
1A1A36:  MOVEQ           SP, R4
1A1A38:  POPEQ.W         {R8-R11}
1A1A3C:  POPEQ           {R4-R7,PC}
1A1A3E:  BLX             __stack_chk_fail
