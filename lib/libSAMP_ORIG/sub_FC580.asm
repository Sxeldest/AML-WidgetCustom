; =========================================================
; Game Engine Function: sub_FC580
; Address            : 0xFC580 - 0xFC5CC
; =========================================================

FC580:  PUSH            {R4-R7,LR}
FC582:  ADD             R7, SP, #0xC
FC584:  PUSH.W          {R11}
FC588:  ORR.W           R2, R0, #1
FC58C:  MOVW            R3, #0x4D1
FC590:  CLZ.W           R2, R2
FC594:  ADDS            R2, #0x20 ; ' '
FC596:  CMP             R1, #0
FC598:  IT NE
FC59A:  CLZNE.W         R2, R1
FC59E:  RSB.W           R2, R2, #0x40 ; '@'
FC5A2:  LDR             R5, =(unk_5E1D8 - 0xFC5AE)
FC5A4:  MULS            R2, R3
FC5A6:  MOV.W           R3, #0xFFFFFFFF
FC5AA:  ADD             R5, PC; unk_5E1D8
FC5AC:  LSRS            R4, R2, #0xC
FC5AE:  ADD.W           R6, R5, R4,LSL#3
FC5B2:  LDR.W           R5, [R5,R4,LSL#3]
FC5B6:  LDR             R6, [R6,#4]
FC5B8:  SUBS            R0, R0, R5
FC5BA:  SBCS.W          R0, R1, R6
FC5BE:  IT CC
FC5C0:  ADDCC.W         R4, R3, R2,LSR#12
FC5C4:  ADDS            R0, R4, #1
FC5C6:  POP.W           {R11}
FC5CA:  POP             {R4-R7,PC}
