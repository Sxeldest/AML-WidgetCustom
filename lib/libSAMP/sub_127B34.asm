; =========================================================
; Game Engine Function: sub_127B34
; Address            : 0x127B34 - 0x127B54
; =========================================================

127B34:  PUSH            {R4,R6,R7,LR}
127B36:  ADD             R7, SP, #8
127B38:  MOV             R4, R0
127B3A:  LDR             R0, [R0,#0x10]
127B3C:  CMP             R4, R0
127B3E:  BEQ             loc_127B46
127B40:  CBZ             R0, loc_127B50
127B42:  MOVS            R1, #5
127B44:  B               loc_127B48
127B46:  MOVS            R1, #4
127B48:  LDR             R2, [R0]
127B4A:  LDR.W           R1, [R2,R1,LSL#2]
127B4E:  BLX             R1
127B50:  MOV             R0, R4
127B52:  POP             {R4,R6,R7,PC}
