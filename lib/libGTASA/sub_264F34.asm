; =========================================================
; Game Engine Function: sub_264F34
; Address            : 0x264F34 - 0x264F76
; =========================================================

264F34:  PUSH            {R4,R6,R7,LR}
264F36:  ADD             R7, SP, #8
264F38:  LDR             R0, =(TrapALError_ptr - 0x264F40)
264F3A:  MOV             R4, R1
264F3C:  ADD             R0, PC; TrapALError_ptr
264F3E:  LDR             R0, [R0]; TrapALError
264F40:  LDRB            R0, [R0]
264F42:  CMP             R0, #0
264F44:  ITT NE
264F46:  MOVNE           R0, #5; sig
264F48:  BLXNE           raise
264F4C:  LDREX.W         R0, [R4,#0x50]
264F50:  CBNZ            R0, loc_264F6C
264F52:  ADD.W           R0, R4, #0x50 ; 'P'
264F56:  MOVW            R1, #0xA002
264F5A:  DMB.W           ISH
264F5E:  STREX.W         R2, R1, [R0]
264F62:  CBZ             R2, loc_264F70
264F64:  LDREX.W         R2, [R0]
264F68:  CMP             R2, #0
264F6A:  BEQ             loc_264F5E
264F6C:  CLREX.W
264F70:  DMB.W           ISH
264F74:  POP             {R4,R6,R7,PC}
