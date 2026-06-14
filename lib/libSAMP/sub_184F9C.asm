; =========================================================
; Game Engine Function: sub_184F9C
; Address            : 0x184F9C - 0x184FE4
; =========================================================

184F9C:  PUSH            {R4,R5,R7,LR}
184F9E:  ADD             R7, SP, #8
184FA0:  MOV.W           R12, #0
184FA4:  MOV.W           LR, #0
184FA8:  MOVS            R3, #0
184FAA:  LDR.W           R2, [R0,R3,LSL#2]
184FAE:  LDR.W           R4, [R1,R3,LSL#2]
184FB2:  ADD.W           R5, R2, LR
184FB6:  SUBS            R5, R5, R4
184FB8:  STR.W           R5, [R0,R3,LSL#2]
184FBC:  BIC.W           R5, R2, #0x80000000
184FC0:  ADD             LR, R5
184FC2:  BIC.W           R5, R4, #0x80000000
184FC6:  ASRS            R2, R2, #0x1F
184FC8:  SUB.W           R5, LR, R5
184FCC:  ADD.W           R2, R2, R4,LSR#31
184FD0:  ADDS            R3, #1
184FD2:  ADD.W           R2, R2, R5,LSR#31
184FD6:  CMP             R3, #4
184FD8:  ADD.W           R2, R2, #1
184FDC:  SUB.W           LR, R12, R2,LSR#1
184FE0:  BNE             loc_184FAA
184FE2:  POP             {R4,R5,R7,PC}
