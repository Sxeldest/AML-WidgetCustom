; =========================================================
; Game Engine Function: _ZN9CBuildingnwEj
; Address            : 0x280094 - 0x2800F4
; =========================================================

280094:  PUSH            {R7,LR}
280096:  MOV             R7, SP
280098:  LDR             R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x2800A2)
28009A:  MOV.W           LR, #0
28009E:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
2800A0:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
2800A2:  LDR             R1, [R0]; CPools::ms_pBuildingPool
2800A4:  LDRD.W          R12, R0, [R1,#8]
2800A8:  ADDS            R0, #1
2800AA:  STR             R0, [R1,#0xC]
2800AC:  CMP             R0, R12
2800AE:  BNE             loc_2800C0
2800B0:  MOVS            R0, #0
2800B2:  MOVS.W          R2, LR,LSL#31
2800B6:  STR             R0, [R1,#0xC]
2800B8:  IT NE
2800BA:  POPNE           {R7,PC}
2800BC:  MOV.W           LR, #1
2800C0:  LDR             R2, [R1,#4]
2800C2:  LDRSB           R3, [R2,R0]
2800C4:  CMP.W           R3, #0xFFFFFFFF
2800C8:  BGT             loc_2800A8
2800CA:  AND.W           R3, R3, #0x7F
2800CE:  STRB            R3, [R2,R0]
2800D0:  LDR             R0, [R1,#4]
2800D2:  LDR             R2, [R1,#0xC]
2800D4:  LDRB            R3, [R0,R2]
2800D6:  AND.W           R12, R3, #0x80
2800DA:  ADDS            R3, #1
2800DC:  AND.W           R3, R3, #0x7F
2800E0:  ORR.W           R3, R3, R12
2800E4:  STRB            R3, [R0,R2]
2800E6:  LDR             R0, [R1]
2800E8:  LDR             R1, [R1,#0xC]
2800EA:  RSB.W           R1, R1, R1,LSL#4
2800EE:  ADD.W           R0, R0, R1,LSL#2
2800F2:  POP             {R7,PC}
