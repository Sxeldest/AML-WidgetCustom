; =========================================================
; Game Engine Function: sub_263E54
; Address            : 0x263E54 - 0x263E96
; =========================================================

263E54:  PUSH            {R4,R6,R7,LR}
263E56:  ADD             R7, SP, #8
263E58:  LDR             R0, =(TrapALError_ptr - 0x263E60)
263E5A:  MOV             R4, R1
263E5C:  ADD             R0, PC; TrapALError_ptr
263E5E:  LDR             R0, [R0]; TrapALError
263E60:  LDRB            R0, [R0]
263E62:  CMP             R0, #0
263E64:  ITT NE
263E66:  MOVNE           R0, #5; sig
263E68:  BLXNE           raise
263E6C:  LDREX.W         R0, [R4,#0x50]
263E70:  CBNZ            R0, loc_263E8C
263E72:  ADD.W           R0, R4, #0x50 ; 'P'
263E76:  MOVW            R1, #0xA002
263E7A:  DMB.W           ISH
263E7E:  STREX.W         R2, R1, [R0]
263E82:  CBZ             R2, loc_263E90
263E84:  LDREX.W         R2, [R0]
263E88:  CMP             R2, #0
263E8A:  BEQ             loc_263E7E
263E8C:  CLREX.W
263E90:  DMB.W           ISH
263E94:  POP             {R4,R6,R7,PC}
