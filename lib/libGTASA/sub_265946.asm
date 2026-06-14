; =========================================================
; Game Engine Function: sub_265946
; Address            : 0x265946 - 0x2659AA
; =========================================================

265946:  PUSH            {R4,R6,R7,LR}
265948:  ADD             R7, SP, #8
26594A:  MOV             R4, R0
26594C:  MOVW            R1, #0x1501
265950:  LDR             R0, [R4,#0x1C]
265952:  SUBS            R1, R0, R1
265954:  CMP             R1, #5
265956:  BHI             loc_26598C
265958:  CMP             R1, #1
26595A:  BEQ             loc_26598C
26595C:  MOV.W           R0, #0xFFFFFFFF
265960:  MOVW            R1, #0x1501
265964:  STR.W           R0, [R4,#0xDC]
265968:  STR             R1, [R4,#0x1C]
26596A:  MOVS            R1, #0
26596C:  STRD.W          R1, R0, [R4,#0xBC]
265970:  MOVS            R1, #1
265972:  STRD.W          R0, R0, [R4,#0xC4]
265976:  STRD.W          R0, R0, [R4,#0xCC]
26597A:  STRD.W          R0, R0, [R4,#0xD4]
26597E:  MOVS            R0, #1
265980:  ADD.W           R0, R4, R0,LSL#2
265984:  STR.W           R1, [R0,#0xBC]
265988:  MOVS            R0, #1
26598A:  POP             {R4,R6,R7,PC}
26598C:  CMP.W           R0, #0x80000000
265990:  BEQ             loc_26595C
265992:  MOV.W           R0, #0x1500
265996:  MOVS            R1, #0x24 ; '$'
265998:  STR             R0, [R4,#0x1C]
26599A:  ADD.W           R0, R4, #0xBC
26599E:  MOVS            R2, #0xFF
2659A0:  BLX             j___aeabi_memset8_0
2659A4:  MOVS            R1, #0
2659A6:  MOVS            R0, #2
2659A8:  B               loc_265980
