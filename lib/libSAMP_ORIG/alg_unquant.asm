; =========================================================
; Game Engine Function: alg_unquant
; Address            : 0xC1744 - 0xC185C
; =========================================================

C1744:  PUSH            {R4-R7,LR}
C1746:  ADD             R7, SP, #0xC
C1748:  PUSH.W          {R8-R11}
C174C:  SUB             SP, SP, #0xC
C174E:  MOV             R5, R0
C1750:  LDR             R0, =(__stack_chk_guard_ptr - 0xC175C)
C1752:  STR.W           R3, [R7,#var_28]
C1756:  MOV             R8, R1
C1758:  ADD             R0, PC; __stack_chk_guard_ptr
C175A:  LDR             R3, [R7,#arg_4]
C175C:  MOV             R10, R2
C175E:  LDR             R0, [R0]; __stack_chk_guard
C1760:  LDR             R0, [R0]
C1762:  STR.W           R0, [R7,#var_24]
C1766:  MOVS            R0, #7
C1768:  ADD.W           R0, R0, R8,LSL#2
C176C:  BIC.W           R0, R0, #7
C1770:  SUB.W           R4, SP, R0
C1774:  MOV             SP, R4
C1776:  MOV             R0, R4
C1778:  BLX             j_decode_pulses
C177C:  CLZ.W           R1, R0
C1780:  RSB.W           R11, R1, #0x1F
C1784:  BIC.W           R1, R11, #1
C1788:  SUB.W           R2, R1, #0xE
C178C:  RSB.W           R1, R1, #0xE
C1790:  MOV.W           R3, R11,ASR#1
C1794:  CMP             R3, #7
C1796:  LSL.W           R1, R0, R1
C179A:  IT GT
C179C:  ASRGT.W         R1, R0, R2
C17A0:  MOV             R0, R1
C17A2:  BLX             j_celt_rsqrt_norm
C17A6:  LDR             R1, [R7,#arg_8]
C17A8:  MOVS            R2, #1
C17AA:  LDR.W           R9, [R7,#arg_0]
C17AE:  MOVS            R3, #0
C17B0:  SMULBB.W        R0, R1, R0
C17B4:  MOV.W           R1, #0x8000
C17B8:  ADD.W           R0, R1, R0,LSL#1
C17BC:  ADD.W           R1, R2, R11,ASR#1
C17C0:  LSLS            R2, R1
C17C2:  ASRS            R0, R0, #0x10
C17C4:  ASRS            R2, R2, #1
C17C6:  LDRSH.W         R6, [R4,R3,LSL#2]
C17CA:  SMLABB.W        R6, R6, R0, R2
C17CE:  ASRS            R6, R1
C17D0:  STRH.W          R6, [R5,R3,LSL#1]
C17D4:  ADDS            R3, #1
C17D6:  CMP             R3, R8
C17D8:  BLT             loc_C17C6
C17DA:  SUB             SP, SP, #8
C17DC:  LDR.W           R0, [R7,#var_28]
C17E0:  MOV             R1, R8
C17E2:  STR.W           R10, [SP,#0x30+var_30]
C17E6:  MOV.W           R2, #0xFFFFFFFF
C17EA:  STR             R0, [SP,#0x30+var_2C]
C17EC:  MOV             R0, R5
C17EE:  MOV             R3, R9
C17F0:  BLX             j_exp_rotation
C17F4:  ADD             SP, SP, #8
C17F6:  CMP.W           R9, #2
C17FA:  BGE             loc_C1800
C17FC:  MOVS            R0, #1
C17FE:  B               loc_C183C
C1800:  MOV             R0, R8
C1802:  MOV             R1, R9
C1804:  BLX             sub_108874
C1808:  MOV             R1, R0
C180A:  MOVS            R0, #0
C180C:  MOV.W           R12, #0
C1810:  MUL.W           R6, R12, R1
C1814:  MOVS            R5, #0
C1816:  MOVS            R3, #0
C1818:  ADDS            R2, R5, R6
C181A:  ADDS            R5, #1
C181C:  CMP             R5, R1
C181E:  LDR.W           R2, [R4,R2,LSL#2]
C1822:  ORR.W           R3, R3, R2
C1826:  BLT             loc_C1818
C1828:  CMP             R3, #0
C182A:  IT NE
C182C:  MOVNE           R3, #1
C182E:  LSL.W           R2, R3, R12
C1832:  ADD.W           R12, R12, #1
C1836:  ORRS            R0, R2
C1838:  CMP             R12, R9
C183A:  BNE             loc_C1810
C183C:  LDR             R1, =(__stack_chk_guard_ptr - 0xC1846)
C183E:  LDR.W           R2, [R7,#var_24]
C1842:  ADD             R1, PC; __stack_chk_guard_ptr
C1844:  LDR             R1, [R1]; __stack_chk_guard
C1846:  LDR             R1, [R1]
C1848:  SUBS            R1, R1, R2
C184A:  ITTTT EQ
C184C:  SUBEQ.W         R4, R7, #-var_1C
C1850:  MOVEQ           SP, R4
C1852:  POPEQ.W         {R8-R11}
C1856:  POPEQ           {R4-R7,PC}
C1858:  BLX             __stack_chk_fail
