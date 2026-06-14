; =========================================================
; Game Engine Function: sub_264E34
; Address            : 0x264E34 - 0x264E8A
; =========================================================

264E34:  PUSH            {R4,R6,R7,LR}
264E36:  ADD             R7, SP, #8
264E38:  MOV             R4, R1
264E3A:  CMP             R2, #2
264E3C:  BEQ             loc_264E84
264E3E:  CMP             R2, #1
264E40:  ITTT EQ
264E42:  LDREQ           R0, [R0,#4]
264E44:  STREQ           R0, [R3]
264E46:  POPEQ           {R4,R6,R7,PC}
264E48:  LDR             R0, =(TrapALError_ptr - 0x264E4E)
264E4A:  ADD             R0, PC; TrapALError_ptr
264E4C:  LDR             R0, [R0]; TrapALError
264E4E:  LDRB            R0, [R0]
264E50:  CMP             R0, #0
264E52:  ITT NE
264E54:  MOVNE           R0, #5; sig
264E56:  BLXNE           raise
264E5A:  LDREX.W         R0, [R4,#0x50]
264E5E:  CBNZ            R0, loc_264E7A
264E60:  ADD.W           R0, R4, #0x50 ; 'P'
264E64:  MOVW            R1, #0xA002
264E68:  DMB.W           ISH
264E6C:  STREX.W         R2, R1, [R0]
264E70:  CBZ             R2, loc_264E7E
264E72:  LDREX.W         R2, [R0]
264E76:  CMP             R2, #0
264E78:  BEQ             loc_264E6C
264E7A:  CLREX.W
264E7E:  DMB.W           ISH
264E82:  POP             {R4,R6,R7,PC}
264E84:  LDR             R0, [R0,#8]
264E86:  STR             R0, [R3]
264E88:  POP             {R4,R6,R7,PC}
