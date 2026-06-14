; =========================================================
; Game Engine Function: sub_127DC4
; Address            : 0x127DC4 - 0x127DE0
; =========================================================

127DC4:  PUSH            {R4,R5,R7,LR}
127DC6:  ADD             R7, SP, #8
127DC8:  MOV             R4, R1
127DCA:  MOV             R5, R0
127DCC:  BL              sub_127DE4
127DD0:  LDR             R0, =(unk_3140D0 - 0x127DDA)
127DD2:  MOV             R1, R5
127DD4:  MOV             R2, R4
127DD6:  ADD             R0, PC; unk_3140D0
127DD8:  POP.W           {R4,R5,R7,LR}
127DDC:  B.W             sub_127EB0
