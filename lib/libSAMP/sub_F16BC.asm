; =========================================================
; Game Engine Function: sub_F16BC
; Address            : 0xF16BC - 0xF188C
; =========================================================

F16BC:  PUSH            {R4-R7,LR}
F16BE:  ADD             R7, SP, #0xC
F16C0:  PUSH.W          {R8-R11}
F16C4:  SUB             SP, SP, #0x114
F16C6:  STR             R0, [SP,#0x130+var_EC]
F16C8:  LDR             R0, =(off_23496C - 0xF16CE)
F16CA:  ADD             R0, PC; off_23496C
F16CC:  LDR.W           R11, [R0]; dword_23DEF4
F16D0:  LDR.W           R0, [R11]
F16D4:  CMP             R0, #0
F16D6:  BEQ.W           loc_F1884
F16DA:  MOV             R5, R1
F16DC:  LDR.W           R1, [R0,#0x20C]
F16E0:  LDRB.W          R1, [R1,#0x34]
F16E4:  CMP             R1, #0
F16E6:  BEQ.W           loc_F1884
F16EA:  LDR             R1, =(off_234970 - 0xF16F4)
F16EC:  LDR.W           R0, [R0,#0x3B0]
F16F0:  ADD             R1, PC; off_234970
F16F2:  LDR             R1, [R1]; dword_23DEF0
F16F4:  LDR             R6, [R0]
F16F6:  LDR             R0, [R1]
F16F8:  BL              sub_E35A0
F16FC:  ADD             R1, SP, #0x130+var_68
F16FE:  BL              sub_F8910
F1702:  LDR             R0, =(unk_922F8 - 0xF170C)
F1704:  MOV.W           R9, #0
F1708:  ADD             R0, PC; unk_922F8
F170A:  STR             R0, [SP,#0x130+var_F0]
F170C:  ADD.W           R0, R6, R9
F1710:  LDRB.W          R0, [R0,#0xFB4]
F1714:  CBZ             R0, loc_F1732
F1716:  ADD.W           R0, R6, R9,LSL#2
F171A:  LDR             R0, [R0,#4]
F171C:  CBZ             R0, loc_F1732
F171E:  LDR             R4, [R0]
F1720:  CBZ             R4, loc_F1732
F1722:  LDR.W           R8, [R4,#0x128]
F1726:  CMP.W           R8, #0
F172A:  ITT NE
F172C:  LDRBNE          R0, [R4,#0x19]
F172E:  CMPNE           R0, #0
F1730:  BNE             loc_F173E
F1732:  ADD.W           R9, R9, #1
F1736:  CMP.W           R9, #0x3EC
F173A:  BNE             loc_F170C
F173C:  B               loc_F1884
F173E:  LDRB            R0, [R4]
F1740:  CMP             R0, #0
F1742:  BEQ             loc_F1732
F1744:  LDR.W           R0, [R11]
F1748:  BL              sub_144B84
F174C:  MOV             R10, R0
F174E:  MOV             R0, R8
F1750:  BL              sub_F8D40
F1754:  CMP.W           R10, #0
F1758:  BNE             loc_F1774
F175A:  LDR.W           R1, [R11]
F175E:  VMOV            S0, R0
F1762:  LDR.W           R1, [R1,#0x20C]
F1766:  VLDR            S2, [R1,#0x20]
F176A:  VCMP.F32        S0, S2
F176E:  VMRS            APSR_nzcv, FPSCR
F1772:  BHI             loc_F1732
F1774:  LDRB            R0, [R4,#0x19]
F1776:  CMP             R0, #0x13
F1778:  BNE             loc_F1796
F177A:  LDR             R0, [R4,#4]
F177C:  CBZ             R0, loc_F1796
F177E:  BL              sub_109A0C
F1782:  CBZ             R0, loc_F1796
F1784:  LDR             R0, [R4,#4]
F1786:  ADD             R1, SP, #0x130+var_A8
F1788:  BL              sub_F8910
F178C:  ADD             R2, SP, #0x130+var_78
F178E:  ADD             R3, SP, #0x130+var_28
F1790:  LDM             R2, {R0-R2}
F1792:  STM             R3!, {R0-R2}
F1794:  B               loc_F17B2
F1796:  MOV             R0, R8
F1798:  BL              sub_F8C70
F179C:  CMP             R0, #0
F179E:  BEQ             loc_F1732
F17A0:  MOVS            R0, #0
F17A2:  ADD             R2, SP, #0x130+var_28
F17A4:  STR             R0, [SP,#0x130+var_20]
F17A6:  MOVS            R1, #8
F17A8:  STRD.W          R0, R0, [SP,#0x130+var_28]
F17AC:  MOV             R0, R8
F17AE:  BL              sub_104D90
F17B2:  BL              sub_F7FE0
F17B6:  LDR.W           R1, [R11]
F17BA:  LDR.W           R1, [R1,#0x20C]
F17BE:  LDRB.W          R1, [R1,#0x28]
F17C2:  CBZ             R1, loc_F183E
F17C4:  VLDR            S0, [SP,#0x130+var_28]
F17C8:  MOVS            R1, #0
F17CA:  VLDR            S2, [SP,#0x130+var_24]
F17CE:  VCVT.F64.F32    D16, S0
F17D2:  VMOV            R2, R3, D16
F17D6:  VLDR            S4, [SP,#0x130+var_20]
F17DA:  VLDR            S0, [R0,#0xC]
F17DE:  VLDR            S6, [R0,#0x10]
F17E2:  VLDR            S8, [R0,#0x14]
F17E6:  EOR.W           R0, R10, #1
F17EA:  VCVT.F64.F32    D16, S4
F17EE:  STR             R0, [SP,#0x130+var_108]
F17F0:  STRD.W          R0, R1, [SP,#0x130+var_FC]
F17F4:  LDR             R0, [SP,#0x130+var_F0]
F17F6:  STRD.W          R1, R1, [SP,#0x130+var_104]
F17FA:  VCVT.F64.F32    D17, S2
F17FE:  VCVT.F64.F32    D18, S6
F1802:  VCVT.F64.F32    D19, S0
F1806:  VCVT.F64.F32    D20, S8
F180A:  VSTR            D17, [SP,#0x130+var_130]
F180E:  VSTR            D16, [SP,#0x130+var_128]
F1812:  VSTR            D19, [SP,#0x130+var_120]
F1816:  VSTR            D18, [SP,#0x130+var_118]
F181A:  VSTR            D20, [SP,#0x130+var_110]
F181E:  BL              sub_107188
F1822:  LDR.W           R1, [R11]
F1826:  LDR.W           R1, [R1,#0x20C]
F182A:  LDRB.W          R1, [R1,#0x28]
F182E:  CBZ             R1, loc_F183E
F1830:  CMP             R0, #0
F1832:  BEQ.W           loc_F1732
F1836:  LDRB            R0, [R4,#0x18]
F1838:  CMP             R0, #0
F183A:  BNE.W           loc_F1732
F183E:  UXTH.W          R1, R9
F1842:  MOV             R0, R6
F1844:  BL              sub_148E64
F1848:  MOV             R3, R0
F184A:  ADD             R0, SP, #0x130+var_E8
F184C:  STR.W           R9, [SP,#0x130+var_130]
F1850:  BL              sub_F1898
F1854:  MOV             R0, R4
F1856:  BL              sub_14A402
F185A:  MOV             R10, R5
F185C:  MOV             R5, R0
F185E:  MOV             R0, R8
F1860:  BL              sub_F8D40
F1864:  ADD.W           R12, SP, #0x130+var_130+4
F1868:  LDRD.W          R1, R2, [R4,#8]
F186C:  LDRB            R3, [R4,#0x10]
F186E:  STM.W           R12, {R0-R3}
F1872:  ADD             R2, SP, #0x130+var_28; int
F1874:  ADD             R3, SP, #0x130+var_E8; int
F1876:  LDR             R0, [SP,#0x130+var_EC]; int
F1878:  MOV             R1, R10; int
F187A:  STR             R5, [SP,#0x130+var_130]; int
F187C:  MOV             R5, R10
F187E:  BL              sub_F18C8
F1882:  B               loc_F1732
F1884:  ADD             SP, SP, #0x114
F1886:  POP.W           {R8-R11}
F188A:  POP             {R4-R7,PC}
