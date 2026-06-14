; =========================================================
; Game Engine Function: sub_FF5E8
; Address            : 0xFF5E8 - 0xFF5FE
; =========================================================

FF5E8:  PUSH            {R4,R5,R7,LR}
FF5EA:  ADD             R7, SP, #8
FF5EC:  MOV             R4, R1
FF5EE:  MOV             R5, R0
FF5F0:  BL              sub_1082E4
FF5F4:  CMP             R0, R4
FF5F6:  IT EQ
FF5F8:  STREQ.W         R5, [R4,#0x560]
FF5FC:  POP             {R4,R5,R7,PC}
