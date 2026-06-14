; =========================================================
; Game Engine Function: _ZN48CTaskComplexGoToPointUntilCollisionAndStandStill13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x51DA40 - 0x51DAA2
; =========================================================

51DA40:  PUSH            {R4-R7,LR}
51DA42:  ADD             R7, SP, #0xC
51DA44:  PUSH.W          {R8}
51DA48:  MOV             R5, R3
51DA4A:  MOV             R8, R2
51DA4C:  MOV             R4, R1
51DA4E:  MOV             R6, R0
51DA50:  CBZ             R5, loc_51DA82
51DA52:  LDR             R0, [R5]
51DA54:  LDR             R1, [R0,#8]
51DA56:  MOV             R0, R5
51DA58:  BLX             R1
51DA5A:  CMP             R0, #6
51DA5C:  BHI             loc_51DA68
51DA5E:  MOVS            R1, #1
51DA60:  LSLS            R1, R0
51DA62:  TST.W           R1, #0x62
51DA66:  BNE             loc_51DA6C
51DA68:  CMP             R0, #0x3C ; '<'
51DA6A:  BNE             loc_51DA8A
51DA6C:  LDR             R0, [R6,#8]
51DA6E:  MOVS            R2, #0
51DA70:  MOV             R3, R5
51DA72:  LDR             R1, [R0]
51DA74:  LDR             R6, [R1,#0x1C]
51DA76:  MOV             R1, R4
51DA78:  BLX             R6
51DA7A:  MOVS            R0, #0
51DA7C:  POP.W           {R8}
51DA80:  POP             {R4-R7,PC}
51DA82:  LDR             R0, [R6,#8]
51DA84:  MOV             R2, R8
51DA86:  MOVS            R3, #0
51DA88:  B               loc_51DA90
51DA8A:  LDR             R0, [R6,#8]
51DA8C:  MOV             R2, R8
51DA8E:  MOV             R3, R5
51DA90:  LDR             R1, [R0]
51DA92:  LDR.W           R12, [R1,#0x1C]
51DA96:  MOV             R1, R4
51DA98:  POP.W           {R8}
51DA9C:  POP.W           {R4-R7,LR}
51DAA0:  BX              R12
