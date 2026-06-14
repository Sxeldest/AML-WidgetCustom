; =========================================================
; Game Engine Function: sub_166EAC
; Address            : 0x166EAC - 0x166EC8
; =========================================================

166EAC:  LDR             R2, =(dword_381B58 - 0x166EB6)
166EAE:  MOVW            R12, #0x1AB4
166EB2:  ADD             R2, PC; dword_381B58
166EB4:  LDR             R2, [R2]
166EB6:  LDR.W           R3, [R2,R12]
166EBA:  ADD             R2, R12
166EBC:  STR             R0, [R2,#4]
166EBE:  ADD.W           R1, R3, R1,LSL#2
166EC2:  STR.W           R0, [R1,#0x30C]
166EC6:  BX              LR
