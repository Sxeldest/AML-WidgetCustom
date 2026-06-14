; =========================================================
; Game Engine Function: sub_127AF4
; Address            : 0x127AF4 - 0x127B2C
; =========================================================

127AF4:  PUSH            {R4,R5,R7,LR}
127AF6:  ADD             R7, SP, #8
127AF8:  MOV             R4, R0
127AFA:  LDR             R0, =(off_23494C - 0x127B06)
127AFC:  MOVW            R2, #0xDDDC
127B00:  LDR             R1, [R4]
127B02:  ADD             R0, PC; off_23494C
127B04:  MOVT            R2, #0x66 ; 'f'
127B08:  LDR             R5, [R0]; dword_23DF24
127B0A:  LDR             R0, [R5]
127B0C:  ADD             R0, R2
127B0E:  MOVS            R2, #0
127B10:  BL              sub_164196
127B14:  LDR             R0, [R5]
127B16:  MOVW            R2, #0x7D4
127B1A:  LDR             R1, [R4,#4]
127B1C:  MOVT            R2, #0x67 ; 'g'
127B20:  ADD             R0, R2
127B22:  MOVS            R2, #0
127B24:  BL              sub_164196
127B28:  MOV             R0, R4
127B2A:  POP             {R4,R5,R7,PC}
