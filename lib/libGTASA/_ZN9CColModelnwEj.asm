; =========================================================
; Game Engine Function: _ZN9CColModelnwEj
; Address            : 0x2E1860 - 0x2E18C0
; =========================================================

2E1860:  PUSH            {R7,LR}
2E1862:  MOV             R7, SP
2E1864:  LDR             R0, =(_ZN6CPools16ms_pColModelPoolE_ptr - 0x2E186E)
2E1866:  MOV.W           LR, #0
2E186A:  ADD             R0, PC; _ZN6CPools16ms_pColModelPoolE_ptr
2E186C:  LDR             R0, [R0]; CPools::ms_pColModelPool ...
2E186E:  LDR             R1, [R0]; CPools::ms_pColModelPool
2E1870:  LDRD.W          R12, R0, [R1,#8]
2E1874:  ADDS            R0, #1
2E1876:  STR             R0, [R1,#0xC]
2E1878:  CMP             R0, R12
2E187A:  BNE             loc_2E188C
2E187C:  MOVS            R0, #0
2E187E:  MOVS.W          R2, LR,LSL#31
2E1882:  STR             R0, [R1,#0xC]
2E1884:  IT NE
2E1886:  POPNE           {R7,PC}
2E1888:  MOV.W           LR, #1
2E188C:  LDR             R2, [R1,#4]
2E188E:  LDRSB           R3, [R2,R0]
2E1890:  CMP.W           R3, #0xFFFFFFFF
2E1894:  BGT             loc_2E1874
2E1896:  AND.W           R3, R3, #0x7F
2E189A:  STRB            R3, [R2,R0]
2E189C:  LDR             R0, [R1,#4]
2E189E:  LDR             R2, [R1,#0xC]
2E18A0:  LDRB            R3, [R0,R2]
2E18A2:  AND.W           R12, R3, #0x80
2E18A6:  ADDS            R3, #1
2E18A8:  AND.W           R3, R3, #0x7F
2E18AC:  ORR.W           R3, R3, R12
2E18B0:  STRB            R3, [R0,R2]
2E18B2:  LDR             R0, [R1]
2E18B4:  LDR             R1, [R1,#0xC]
2E18B6:  ADD.W           R1, R1, R1,LSL#1
2E18BA:  ADD.W           R0, R0, R1,LSL#4
2E18BE:  POP             {R7,PC}
