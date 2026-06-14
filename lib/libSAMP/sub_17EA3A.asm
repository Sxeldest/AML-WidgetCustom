; =========================================================
; Game Engine Function: sub_17EA3A
; Address            : 0x17EA3A - 0x17EA70
; =========================================================

17EA3A:  PUSH            {R4,R5,R7,LR}
17EA3C:  ADD             R7, SP, #8
17EA3E:  CBZ             R1, loc_17EA64
17EA40:  MOV             R4, R1
17EA42:  LDRB            R1, [R1]
17EA44:  CBZ             R1, loc_17EA64
17EA46:  ADDW            R5, R0, #0x9D4
17EA4A:  MOV             R0, R5
17EA4C:  BL              sub_17D55E
17EA50:  MOV             R0, R4; s
17EA52:  BLX             strlen
17EA56:  ADDS            R2, R0, #1
17EA58:  MOV             R0, R5
17EA5A:  MOV             R1, R4
17EA5C:  POP.W           {R4,R5,R7,LR}
17EA60:  B.W             sub_17D566
17EA64:  ADDW            R0, R0, #0x9D4
17EA68:  POP.W           {R4,R5,R7,LR}
17EA6C:  B.W             sub_17D55E
