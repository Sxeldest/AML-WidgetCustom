; =========================================================
; Game Engine Function: renormalise_vector
; Address            : 0xC1864 - 0xC18E8
; =========================================================

C1864:  PUSH            {R4-R7,LR}
C1866:  ADD             R7, SP, #0xC
C1868:  PUSH.W          {R8}
C186C:  MOV             R4, R1
C186E:  MOV             R8, R2
C1870:  MOV             R5, R0
C1872:  CMP             R4, #1
C1874:  BLT             loc_C188C
C1876:  MOVS            R0, #0
C1878:  MOV             R1, R5
C187A:  MOV             R2, R4
C187C:  LDRSH.W         R3, [R1],#2
C1880:  SUBS            R2, #1
C1882:  SMLABB.W        R0, R3, R3, R0
C1886:  BNE             loc_C187C
C1888:  ADDS            R1, R0, #1
C188A:  B               loc_C188E
C188C:  MOVS            R1, #1
C188E:  CLZ.W           R0, R1
C1892:  RSB.W           R2, R0, #0x1F
C1896:  BIC.W           R0, R2, #1
C189A:  SUB.W           R3, R0, #0xE
C189E:  RSB.W           R0, R0, #0xE
C18A2:  ASRS            R6, R2, #1
C18A4:  CMP             R6, #7
C18A6:  LSL.W           R0, R1, R0
C18AA:  IT GT
C18AC:  ASRGT.W         R0, R1, R3
C18B0:  BLX             j_celt_rsqrt_norm
C18B4:  CMP             R4, #1
C18B6:  BLT             loc_C18E2
C18B8:  SMULBB.W        R2, R8, R0
C18BC:  ADDS            R0, R6, #1
C18BE:  MOVS            R1, #1
C18C0:  MOV.W           R3, #0x8000
C18C4:  LSLS            R1, R0
C18C6:  ASRS            R1, R1, #1
C18C8:  ADD.W           R2, R3, R2,LSL#1
C18CC:  ASRS            R2, R2, #0x10
C18CE:  LDRSH.W         R3, [R5]
C18D2:  SUBS            R4, #1
C18D4:  SMLABB.W        R3, R2, R3, R1
C18D8:  ASR.W           R3, R3, R0
C18DC:  STRH.W          R3, [R5],#2
C18E0:  BNE             loc_C18CE
C18E2:  POP.W           {R8}
C18E6:  POP             {R4-R7,PC}
