; =========================================================
; Game Engine Function: sub_12C0E6
; Address            : 0x12C0E6 - 0x12C102
; =========================================================

12C0E6:  PUSH            {R4,R5,R7,LR}
12C0E8:  ADD             R7, SP, #8
12C0EA:  LDRD.W          R4, R5, [R0,#0x44]
12C0EE:  CMP             R4, R5
12C0F0:  BEQ             locret_12C100
12C0F2:  LDR             R0, [R4]
12C0F4:  CBZ             R0, loc_12C0FC
12C0F6:  LDR             R1, [R0]
12C0F8:  LDR             R1, [R1,#8]
12C0FA:  BLX             R1
12C0FC:  ADDS            R4, #4
12C0FE:  B               loc_12C0EE
12C100:  POP             {R4,R5,R7,PC}
