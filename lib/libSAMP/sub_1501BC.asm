; =========================================================
; Game Engine Function: sub_1501BC
; Address            : 0x1501BC - 0x150220
; =========================================================

1501BC:  PUSH            {R4-R7,LR}
1501BE:  ADD             R7, SP, #0xC
1501C0:  PUSH.W          {R8-R10}
1501C4:  VPUSH           {D8}
1501C8:  MOV             R4, R0
1501CA:  MOVW            R0, #0xEA60
1501CE:  LDR             R5, [R4,R0]
1501D0:  ADD             R0, R4
1501D2:  MOVW            R8, #0xFFFF
1501D6:  LDR.W           R10, [R0,#4]
1501DA:  CMP             R5, R10
1501DC:  BEQ             loc_150212
1501DE:  VLDR            S16, =10000.0
1501E2:  MOVW            R9, #0x9C40
1501E6:  LDR             R6, [R5]
1501E8:  ADDS            R0, R4, R6
1501EA:  LDRB.W          R0, [R0,R9]
1501EE:  CBZ             R0, loc_15020C
1501F0:  LDR.W           R0, [R4,R6,LSL#2]
1501F4:  BL              sub_F8E1C
1501F8:  VMOV            S0, R0
1501FC:  VCMP.F32        S0, S16
150200:  VMRS            APSR_nzcv, FPSCR
150204:  ITT MI
150206:  MOVMI           R8, R6
150208:  VMOVMI.F32      S16, S0
15020C:  ADDS            R5, #4
15020E:  CMP             R5, R10
150210:  BNE             loc_1501E6
150212:  UXTH.W          R0, R8
150216:  VPOP            {D8}
15021A:  POP.W           {R8-R10}
15021E:  POP             {R4-R7,PC}
