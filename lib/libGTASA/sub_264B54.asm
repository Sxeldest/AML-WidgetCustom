; =========================================================
; Game Engine Function: sub_264B54
; Address            : 0x264B54 - 0x264B96
; =========================================================

264B54:  PUSH            {R4,R6,R7,LR}
264B56:  ADD             R7, SP, #8
264B58:  LDR             R0, =(TrapALError_ptr - 0x264B60)
264B5A:  MOV             R4, R1
264B5C:  ADD             R0, PC; TrapALError_ptr
264B5E:  LDR             R0, [R0]; TrapALError
264B60:  LDRB            R0, [R0]
264B62:  CMP             R0, #0
264B64:  ITT NE
264B66:  MOVNE           R0, #5; sig
264B68:  BLXNE           raise
264B6C:  LDREX.W         R0, [R4,#0x50]
264B70:  CBNZ            R0, loc_264B8C
264B72:  ADD.W           R0, R4, #0x50 ; 'P'
264B76:  MOVW            R1, #0xA002
264B7A:  DMB.W           ISH
264B7E:  STREX.W         R2, R1, [R0]
264B82:  CBZ             R2, loc_264B90
264B84:  LDREX.W         R2, [R0]
264B88:  CMP             R2, #0
264B8A:  BEQ             loc_264B7E
264B8C:  CLREX.W
264B90:  DMB.W           ISH
264B94:  POP             {R4,R6,R7,PC}
