; =========================================================
; Game Engine Function: sub_127B54
; Address            : 0x127B54 - 0x127B74
; =========================================================

127B54:  PUSH            {R4,R6,R7,LR}
127B56:  ADD             R7, SP, #8
127B58:  MOV             R4, R0
127B5A:  LDR             R0, [R0,#0x10]
127B5C:  CMP             R4, R0
127B5E:  BEQ             loc_127B66
127B60:  CBZ             R0, loc_127B70
127B62:  MOVS            R1, #5
127B64:  B               loc_127B68
127B66:  MOVS            R1, #4
127B68:  LDR             R2, [R0]
127B6A:  LDR.W           R1, [R2,R1,LSL#2]
127B6E:  BLX             R1
127B70:  MOV             R0, R4
127B72:  POP             {R4,R6,R7,PC}
