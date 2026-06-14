; =========================================================
; Game Engine Function: _ZN4CPednwEj
; Address            : 0x49F8C0 - 0x49F920
; =========================================================

49F8C0:  PUSH            {R7,LR}
49F8C2:  MOV             R7, SP
49F8C4:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x49F8CE)
49F8C6:  MOV.W           LR, #0
49F8CA:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
49F8CC:  LDR             R0, [R0]; CPools::ms_pPedPool ...
49F8CE:  LDR             R1, [R0]; CPools::ms_pPedPool
49F8D0:  LDRD.W          R12, R0, [R1,#8]
49F8D4:  ADDS            R0, #1
49F8D6:  STR             R0, [R1,#0xC]
49F8D8:  CMP             R0, R12
49F8DA:  BNE             loc_49F8EC
49F8DC:  MOVS            R0, #0
49F8DE:  MOVS.W          R2, LR,LSL#31
49F8E2:  STR             R0, [R1,#0xC]
49F8E4:  IT NE
49F8E6:  POPNE           {R7,PC}
49F8E8:  MOV.W           LR, #1
49F8EC:  LDR             R2, [R1,#4]
49F8EE:  LDRSB           R3, [R2,R0]
49F8F0:  CMP.W           R3, #0xFFFFFFFF
49F8F4:  BGT             loc_49F8D4
49F8F6:  AND.W           R3, R3, #0x7F
49F8FA:  STRB            R3, [R2,R0]
49F8FC:  LDR             R0, [R1,#4]
49F8FE:  LDR             R2, [R1,#0xC]
49F900:  LDRB            R3, [R0,R2]
49F902:  AND.W           R12, R3, #0x80
49F906:  ADDS            R3, #1
49F908:  AND.W           R3, R3, #0x7F
49F90C:  ORR.W           R3, R3, R12
49F910:  STRB            R3, [R0,R2]
49F912:  MOVW            R2, #0x7CC
49F916:  LDR             R0, [R1]
49F918:  LDR             R1, [R1,#0xC]
49F91A:  MLA.W           R0, R1, R2, R0
49F91E:  POP             {R7,PC}
