; =========================================================
; Game Engine Function: sub_126DBE
; Address            : 0x126DBE - 0x126DEE
; =========================================================

126DBE:  PUSH            {R4,R5,R7,LR}
126DC0:  ADD             R7, SP, #8
126DC2:  LDR             R5, [R0,#4]
126DC4:  MOV             R4, R2
126DC6:  CMP             R2, R5
126DC8:  MOV             R2, R5
126DCA:  IT CC
126DCC:  MOVCC           R2, R4; n
126DCE:  CBZ             R2, loc_126DDA
126DD0:  LDR             R0, [R0]; s1
126DD2:  BLX             memcmp
126DD6:  CBZ             R0, loc_126DDA
126DD8:  POP             {R4,R5,R7,PC}
126DDA:  CMP             R5, R4
126DDC:  BNE             loc_126DE2
126DDE:  MOVS            R0, #0
126DE0:  POP             {R4,R5,R7,PC}
126DE2:  MOV.W           R0, #1
126DE6:  IT CC
126DE8:  MOVCC.W         R0, #0xFFFFFFFF
126DEC:  POP             {R4,R5,R7,PC}
