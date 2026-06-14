; =========================================================
; Game Engine Function: sub_216F98
; Address            : 0x216F98 - 0x216FC8
; =========================================================

216F98:  PUSH            {R4-R7,LR}
216F9A:  ADD             R7, SP, #0xC
216F9C:  PUSH.W          {R11}
216FA0:  SUBS            R5, R2, R1
216FA2:  BEQ             loc_216FC2
216FA4:  MOV             R6, R1
216FA6:  MOV             R1, R5
216FA8:  MOV             R4, R0
216FAA:  BL              sub_2155BA
216FAE:  LDRD.W          R0, R1, [R4]
216FB2:  MOV             R2, R5; n
216FB4:  ADD             R0, R1; dest
216FB6:  MOV             R1, R6; src
216FB8:  BLX             j_memmove
216FBC:  LDR             R0, [R4,#4]
216FBE:  ADD             R0, R5
216FC0:  STR             R0, [R4,#4]
216FC2:  POP.W           {R11}
216FC6:  POP             {R4-R7,PC}
