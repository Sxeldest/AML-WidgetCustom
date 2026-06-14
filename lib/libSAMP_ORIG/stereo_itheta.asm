; =========================================================
; Game Engine Function: stereo_itheta
; Address            : 0xC18E8 - 0xC1A94
; =========================================================

C18E8:  PUSH            {R4-R7,LR}
C18EA:  ADD             R7, SP, #0xC
C18EC:  PUSH.W          {R8-R10}
C18F0:  MOV             R6, R0
C18F2:  CBZ             R2, loc_C1924
C18F4:  CMP             R3, #1
C18F6:  BLT             loc_C194E
C18F8:  MOVS            R0, #1
C18FA:  MOV.W           R10, #1
C18FE:  LDRSH.W         R2, [R1],#2
C1902:  SUBS            R3, #1
C1904:  LDRSH.W         R5, [R6],#2
C1908:  MOV.W           R4, R2,ASR#1
C190C:  ADD.W           R4, R4, R5,ASR#1
C1910:  MOV.W           R5, R5,ASR#1
C1914:  SUB.W           R2, R5, R2,ASR#1
C1918:  SMLABB.W        R0, R4, R4, R0
C191C:  SMLABB.W        R10, R2, R2, R10
C1920:  BNE             loc_C18FE
C1922:  B               loc_C1954
C1924:  CMP             R3, #1
C1926:  BLT             loc_C194E
C1928:  MOVS            R0, #0
C192A:  MOV             R2, R3
C192C:  LDRSH.W         R5, [R6],#2
C1930:  SUBS            R2, #1
C1932:  SMLABB.W        R0, R5, R5, R0
C1936:  BNE             loc_C192C
C1938:  ADDS            R0, #1
C193A:  MOVS            R2, #0
C193C:  LDRSH.W         R6, [R1],#2
C1940:  SUBS            R3, #1
C1942:  SMLABB.W        R2, R6, R6, R2
C1946:  BNE             loc_C193C
C1948:  ADD.W           R10, R2, #1
C194C:  B               loc_C1954
C194E:  MOV.W           R10, #1
C1952:  MOVS            R0, #1
C1954:  MOVW            R9, #0
C1958:  MOVW            R8, #0
C195C:  MOVT            R9, #0xD159
C1960:  MOVT            R8, #0x7FFF
C1964:  BLX             j_celt_sqrt
C1968:  MOV             R6, R0
C196A:  MOV             R0, R10
C196C:  BLX             j_celt_sqrt
C1970:  SXTH            R4, R6
C1972:  SXTH            R5, R0
C1974:  CMP             R5, R4
C1976:  BGE             loc_C19FA
C1978:  LSLS            R1, R0, #0x10
C197A:  MOV.W           R10, R0,LSL#15
C197E:  MOV             R0, R4
C1980:  ASRS            R6, R1, #0x11
C1982:  BLX             j_celt_rcp
C1986:  SMULBT.W        R5, R6, R0
C198A:  MOV             R0, R4
C198C:  BLX             j_celt_rcp
C1990:  UXTH            R0, R0
C1992:  MULS            R6, R0
C1994:  MOV             R0, R4
C1996:  BLX             j_celt_rcp
C199A:  UXTH.W          R1, R10
C199E:  ASRS            R0, R0, #0x10
C19A0:  MULS            R0, R1
C19A2:  ASRS            R1, R6, #0xF
C19A4:  ADD.W           R1, R1, R5,LSL#1
C19A8:  MOV.W           R2, #0x8000
C19AC:  MOVW            R3, #0x2690
C19B0:  ADD.W           R0, R1, R0,ASR#15
C19B4:  MOVW            R1, #0x7FFF
C19B8:  CMP             R0, R1
C19BA:  IT LT
C19BC:  MOVLT           R1, R0
C19BE:  SXTH            R0, R1
C19C0:  SMLABB.W        R0, R0, R3, R2
C19C4:  MOVW            R3, #0xFFFF
C19C8:  BICS            R0, R3
C19CA:  ADD             R0, R9
C19CC:  SMULTB.W        R0, R0, R1
C19D0:  ADD.W           R0, R2, R0,LSL#1
C19D4:  BFC.W           R0, #0, #0x10
C19D8:  SUB.W           R0, R0, #0x150000
C19DC:  SMULTB.W        R0, R0, R1
C19E0:  LSLS            R1, R1, #0x10
C19E2:  ASRS            R1, R1, #0xF
C19E4:  ADD.W           R0, R2, R0,LSL#1
C19E8:  BFC.W           R0, #0, #0x10
C19EC:  ADD             R0, R8
C19EE:  ASRS            R0, R0, #0x10
C19F0:  MULS            R0, R1
C19F2:  ADD.W           R0, R0, #0x8000
C19F6:  ASRS            R0, R0, #0x11
C19F8:  B               loc_C1A82
C19FA:  LSLS            R0, R6, #0x10
C19FC:  MOV.W           R10, R6,LSL#15
C1A00:  ASRS            R6, R0, #0x11
C1A02:  MOV             R0, R5
C1A04:  BLX             j_celt_rcp
C1A08:  SMULBT.W        R4, R6, R0
C1A0C:  MOV             R0, R5
C1A0E:  BLX             j_celt_rcp
C1A12:  UXTH            R0, R0
C1A14:  MULS            R6, R0
C1A16:  MOV             R0, R5
C1A18:  BLX             j_celt_rcp
C1A1C:  UXTH.W          R1, R10
C1A20:  ASRS            R0, R0, #0x10
C1A22:  MULS            R0, R1
C1A24:  ASRS            R1, R6, #0xF
C1A26:  ADD.W           R1, R1, R4,LSL#1
C1A2A:  MOV.W           R2, #0x8000
C1A2E:  MOVW            R3, #0x2690
C1A32:  ADD.W           R0, R1, R0,ASR#15
C1A36:  MOVW            R1, #0x7FFF
C1A3A:  CMP             R0, R1
C1A3C:  IT LT
C1A3E:  MOVLT           R1, R0
C1A40:  SXTH            R0, R1
C1A42:  SMLABB.W        R0, R0, R3, R2
C1A46:  MOVW            R3, #0xFFFF
C1A4A:  BICS            R0, R3
C1A4C:  ADD             R0, R9
C1A4E:  SMULTB.W        R0, R0, R1
C1A52:  ADD.W           R0, R2, R0,LSL#1
C1A56:  BFC.W           R0, #0, #0x10
C1A5A:  SUB.W           R0, R0, #0x150000
C1A5E:  SMULTB.W        R0, R0, R1
C1A62:  LSLS            R1, R1, #0x10
C1A64:  ASRS            R1, R1, #0xF
C1A66:  ADD.W           R0, R2, R0,LSL#1
C1A6A:  BFC.W           R0, #0, #0x10
C1A6E:  ADD             R0, R8
C1A70:  ASRS            R0, R0, #0x10
C1A72:  MULS            R0, R1
C1A74:  MOVW            R1, #0x6488
C1A78:  ADD.W           R0, R0, #0x8000
C1A7C:  ASRS            R0, R0, #0x10
C1A7E:  SUB.W           R0, R1, R0,LSR#1
C1A82:  SXTH            R0, R0
C1A84:  MOVW            R1, #0x517D
C1A88:  SMULBB.W        R0, R0, R1
C1A8C:  ASRS            R0, R0, #0xF
C1A8E:  POP.W           {R8-R10}
C1A92:  POP             {R4-R7,PC}
