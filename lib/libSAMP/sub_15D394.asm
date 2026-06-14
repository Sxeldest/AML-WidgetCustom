; =========================================================
; Game Engine Function: sub_15D394
; Address            : 0x15D394 - 0x15D3CA
; =========================================================

15D394:  PUSH            {R4,R6,R7,LR}
15D396:  ADD             R7, SP, #8
15D398:  MOV             R4, R0
15D39A:  ADDS            R0, #0x14
15D39C:  BL              sub_1587E8
15D3A0:  LDR             R0, [R4,#0x10]
15D3A2:  CBZ             R0, locret_15D3BE
15D3A4:  ADDS            R1, R0, #4
15D3A6:  DMB.W           ISH
15D3AA:  LDREX.W         R2, [R1]
15D3AE:  SUBS            R3, R2, #1
15D3B0:  STREX.W         R4, R3, [R1]
15D3B4:  CMP             R4, #0
15D3B6:  BNE             loc_15D3AA
15D3B8:  DMB.W           ISH
15D3BC:  CBZ             R2, loc_15D3C0
15D3BE:  POP             {R4,R6,R7,PC}
15D3C0:  LDR             R1, [R0]
15D3C2:  LDR             R1, [R1,#8]
15D3C4:  POP.W           {R4,R6,R7,LR}
15D3C8:  BX              R1
