; =========================================================
; Game Engine Function: sub_17C270
; Address            : 0x17C270 - 0x17C2A2
; =========================================================

17C270:  PUSH            {R4-R7,LR}
17C272:  ADD             R7, SP, #0xC
17C274:  PUSH.W          {R11}
17C278:  MOV             R4, R0
17C27A:  MOVS            R5, #0
17C27C:  MOVS            R6, #1
17C27E:  ADDS            R0, R4, R5
17C280:  LDRB.W          R1, [R0,#0x68]
17C284:  CBZ             R1, loc_17C296
17C286:  STRB.W          R6, [R0,#0x4C]
17C28A:  UXTB            R1, R5
17C28C:  MOV             R0, R4
17C28E:  MOVS            R2, #0
17C290:  MOVS            R3, #0
17C292:  BL              sub_17C2A4
17C296:  ADDS            R5, #1
17C298:  CMP             R5, #0x1C
17C29A:  BNE             loc_17C27E
17C29C:  POP.W           {R11}
17C2A0:  POP             {R4-R7,PC}
