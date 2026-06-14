; =========================================================
; Game Engine Function: sub_264E90
; Address            : 0x264E90 - 0x264EE6
; =========================================================

264E90:  PUSH            {R4,R6,R7,LR}
264E92:  ADD             R7, SP, #8
264E94:  MOV             R4, R1
264E96:  CMP             R2, #2
264E98:  BEQ             loc_264EE0
264E9A:  CMP             R2, #1
264E9C:  ITTT EQ
264E9E:  LDREQ           R0, [R0,#4]
264EA0:  STREQ           R0, [R3]
264EA2:  POPEQ           {R4,R6,R7,PC}
264EA4:  LDR             R0, =(TrapALError_ptr - 0x264EAA)
264EA6:  ADD             R0, PC; TrapALError_ptr
264EA8:  LDR             R0, [R0]; TrapALError
264EAA:  LDRB            R0, [R0]
264EAC:  CMP             R0, #0
264EAE:  ITT NE
264EB0:  MOVNE           R0, #5; sig
264EB2:  BLXNE           raise
264EB6:  LDREX.W         R0, [R4,#0x50]
264EBA:  CBNZ            R0, loc_264ED6
264EBC:  ADD.W           R0, R4, #0x50 ; 'P'
264EC0:  MOVW            R1, #0xA002
264EC4:  DMB.W           ISH
264EC8:  STREX.W         R2, R1, [R0]
264ECC:  CBZ             R2, loc_264EDA
264ECE:  LDREX.W         R2, [R0]
264ED2:  CMP             R2, #0
264ED4:  BEQ             loc_264EC8
264ED6:  CLREX.W
264EDA:  DMB.W           ISH
264EDE:  POP             {R4,R6,R7,PC}
264EE0:  LDR             R0, [R0,#8]
264EE2:  STR             R0, [R3]
264EE4:  POP             {R4,R6,R7,PC}
