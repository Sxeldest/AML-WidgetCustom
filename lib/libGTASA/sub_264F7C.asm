; =========================================================
; Game Engine Function: sub_264F7C
; Address            : 0x264F7C - 0x264FBE
; =========================================================

264F7C:  PUSH            {R4,R6,R7,LR}
264F7E:  ADD             R7, SP, #8
264F80:  LDR             R0, =(TrapALError_ptr - 0x264F88)
264F82:  MOV             R4, R1
264F84:  ADD             R0, PC; TrapALError_ptr
264F86:  LDR             R0, [R0]; TrapALError
264F88:  LDRB            R0, [R0]
264F8A:  CMP             R0, #0
264F8C:  ITT NE
264F8E:  MOVNE           R0, #5; sig
264F90:  BLXNE           raise
264F94:  LDREX.W         R0, [R4,#0x50]
264F98:  CBNZ            R0, loc_264FB4
264F9A:  ADD.W           R0, R4, #0x50 ; 'P'
264F9E:  MOVW            R1, #0xA002
264FA2:  DMB.W           ISH
264FA6:  STREX.W         R2, R1, [R0]
264FAA:  CBZ             R2, loc_264FB8
264FAC:  LDREX.W         R2, [R0]
264FB0:  CMP             R2, #0
264FB2:  BEQ             loc_264FA6
264FB4:  CLREX.W
264FB8:  DMB.W           ISH
264FBC:  POP             {R4,R6,R7,PC}
